-- VECTRIC LUA SCRIPT


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- FUNCIONES AUXILIARES -------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function dibujarFresado_auxiliar(doc,punto1,punto2)
    
  if punto1.X==punto2.X and punto1.Y==punto2.Y then
    return
  end 
  
  local Contour = Contour(0.0)
  
  Contour:AppendPoint(punto1)
  Contour:LineTo(punto2)
  
  --------------------------------------------------------
  local cad_object = CreateCadContour(Contour)
  local cur_layer = doc.LayerManager:GetActiveLayer()
  local layer = doc.LayerManager:GetLayerWithName("Fresado")
  layer:AddObject(cad_object, true)
  layer:SetColor(0.3,0.8,0.4)
  layer.Visible = true 
  doc.LayerManager:SetActiveLayer(cur_layer)
  --------------------------------------------------------
end





function dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)



	local Contour = Contour(0.0)


    
    Contour:AppendPoint(origenColiso)
	Contour:LineTo(pt2Coliso)
	Contour:LineTo(pt3Coliso)
	Contour:LineTo(pt4Coliso)
	Contour:LineTo(origenColiso)

	local cad_object = CreateCadContour(Contour)

	local cur_layer = doc.LayerManager:GetActiveLayer()
	local layer = doc.LayerManager:GetLayerWithName("Taladros")

	layer:AddObject(cad_object, true)
	layer:SetColor(0,0,1)
	layer.Visible = true 
	doc.LayerManager:SetActiveLayer(cur_layer)
	doc:Refresh2DView()	

	

end



function dibujarTaladro(puntoCentro, Radio, Layer)

	
    
    local function Polar2D(pt, ang, dis)     
      return Point2D((pt.X + dis * math.cos(math.rad(ang))), 
                     (pt.Y + dis * math.sin(math.rad(ang))))  
    end -- End Fuction
    local pa = Polar2D(puntoCentro,   180.0, Radio) 
    local pb = Polar2D(puntoCentro,     0.0, Radio)
    local line = Contour(0.0)
    local layer = doc.LayerManager:GetLayerWithName(Layer)
    line:AppendPoint(pa) ;    
    line:ArcTo(pb,1);   
    line:ArcTo(pa,1);    
    layer:AddObject(CreateCadContour(line), true)
    local cur_layer = doc.LayerManager:GetActiveLayer()
    layer:SetColor(0,0,1)
	layer.Visible = true 
	doc.LayerManager:SetActiveLayer(cur_layer)
	doc:Refresh2DView()	
    return true 
  end -- function end




--Función de redondeo
function round(num, numeroDecimales)
  if numeroDecimales and numeroDecimales>0 then
    local mult = 10^numeroDecimales
    return math.floor(num * mult + 0.5) / mult
  end
  return math.floor(num + 0.5)
end


function dibujarTexto(doc)
  --------------------------------------------------------
  local cur_layer = doc.LayerManager:GetActiveLayer()
  local layer = doc.LayerManager:GetLayerWithName("Descripcion")
  
  local origenTexto



  local areaTotal
  local areaPlana

  if (modelo<=8) then --Modelo A

    origenTexto = Point2D(origenX+(alaIzquierda+anchuraPlaca+alaDerecha)/2,origenY+(alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)/2)

    areaTotal= (((2*margenMecanizado)+(alaDerecha+alaIzquierda+anchuraPlaca))*((2*margenMecanizado)+(alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)))/1000000
    areaPlana=(((anchuraPlaca))*((alturaPlaca)))/1000000

    textoDescriptivo=textoDescriptivo .. "\nArea Total: " .. round(areaTotal,2) .. " m2" .. "\nArea Plana: " .. round(areaPlana,2) .. " m2"

  elseif (modelo>8) and (modelo<=26) then --Modelo B

    origenTexto = Point2D(origenX+(alaDerecha+alaIzquierda+anchura1+anchura2)/2,origenY+(alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)/2)

    areaTotal= (((2*margenMecanizado)+(alaDerecha+alaIzquierda+anchura1+anchura2))*((2*margenMecanizado)+(alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)))/1000000
    areaPlana=(((anchura1+anchura2))*((alturaPlaca)))/1000000

    textoDescriptivo=textoDescriptivo .. "\nArea Total: " .. round(areaTotal,2) .. " m2" .. "\nArea Plana: " .. round(areaPlana,2) .. " m2"

  elseif (modelo>26) and (modelo<=35) then--Modelo C

    origenTexto = Point2D(origenX+(alaDerecha+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha)/2,origenY+(alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)/2)

    areaTotal= (((2*margenMecanizado)+(alaDerecha+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha))*((2*margenMecanizado)+(alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)))/1000000
    areaPlana=(((anchuraIzq+anchuraCentro+anchuraDerecha))*((alturaPlaca)))/1000000

    textoDescriptivo=textoDescriptivo .. "\nArea Total: " .. round(areaTotal,2) .. " m2" .. "\nArea Plana: " .. round(areaPlana,2) .. " m2"

  elseif (modelo==40) then --Modelo D0

    origenTexto = Point2D(origenX+(anchuraPlaca)/2,origenY+(alturaPlaca)/2)

    areaTotal= (((2*margenMecanizado)+(anchuraPlaca))*((2*margenMecanizado)+(alturaPlaca)))/1000000
    areaPlana=(((anchuraPlaca))*((alturaPlaca)))/1000000

    textoDescriptivo=textoDescriptivo .. "\nArea Total: " .. round(areaTotal,2) .. " m2" .. "\nArea Plana: " .. round(areaPlana,2) .. " m2"


  elseif (modelo==41) then --Modelo D1

    origenTexto = Point2D(origenX+(anchuraPlaca)/2,origenY+(altura1+altura2+alaSuperior+alaInferior)/2)

    areaTotal= (((2*margenMecanizado)+(anchuraPlaca))*((2*margenMecanizado)+(altura1+altura2+alaSuperior+alaInferior)))/1000000
    areaPlana=(((anchuraPlaca))*((altura1+altura2)))/1000000

    textoDescriptivo=textoDescriptivo .. "\nArea Total: " .. round(areaTotal,2) .. " m2" .. "\nArea Plana: " .. round(areaPlana,2) .. " m2"


  elseif (modelo==42) then --Modelo D2

    origenTexto = Point2D(origenX+(anchuraPlaca)/2,origenY+(alturaPlaca+pliegueInferior+alaInferior)/2)

    areaTotal= (((2*margenMecanizado)+(anchuraPlaca))*((2*margenMecanizado)+(alturaPlaca+pliegueInferior+alaInferior)))/1000000
    areaPlana=(((anchuraPlaca))*((alturaPlaca)))/1000000

    textoDescriptivo=textoDescriptivo .. "\nArea Total: " .. round(areaTotal,2) .. " m2" .. "\nArea Plana: " .. round(areaPlana,2) .. " m2"


  elseif (modelo==43) then --Modelo D3

    origenTexto = Point2D(origenX+(anchuraPlaca)/2,origenY+(alturaPlaca+pliegueInferior+alaInferior+alaSuperior+pliegueSuperior)/2)

    areaTotal= (((2*margenMecanizado)+(anchuraPlaca))*((2*margenMecanizado)+(alturaPlaca+pliegueInferior+alaInferior+alaSuperior+pliegueSuperior)))/1000000
    areaPlana=(((anchuraPlaca))*((alturaPlaca)))/1000000

    textoDescriptivo=textoDescriptivo .. "\nArea Total: " .. round(areaTotal,2) .. " m2" .. "\nArea Plana: " .. round(areaPlana,2) .. " m2"

  elseif (modelo==44) then --Modelo D4

    origenTexto = Point2D(origenX+(anchura1+anchura2)/2,origenY+(alturaPlaca)/2)

    areaTotal= (((2*margenMecanizado)+(anchura1+anchura2))*((2*margenMecanizado)+(alturaPlaca)))/1000000
    areaPlana=(((anchura1+anchura2))*((alturaPlaca)))/1000000

    textoDescriptivo=textoDescriptivo .. "\nArea Total: " .. round(areaTotal,2) .. " m2" .. "\nArea Plana: " .. round(areaPlana,2) .. " m2"

  
  elseif (modelo==45) then --Modelo D5

    origenTexto = Point2D(origenX+(anchura1+anchura2+anchura3+anchura4)/2,origenY+(alturaPlaca)/2)

    areaTotal= (((2*margenMecanizado)+(anchura1+anchura2+anchura3+anchura4))*((2*margenMecanizado)+(alturaPlaca)))/1000000
    areaPlana=(((anchura1+anchura2+anchura3+anchura4))*((alturaPlaca)))/1000000

    textoDescriptivo=textoDescriptivo .. "\nArea Total: " .. round(areaTotal,2) .. " m2" .. "\nArea Plana: " .. round(areaPlana,2) .. " m2"

    elseif (modelo==46) then --Modelo D6

    origenTexto = Point2D(origenX+(alaIzquierda+alaDerecha+anchuraPlaca)/2,origenY+(alturaPlaca+alaSuperior+alaInferior)/2)

    areaTotal= (((2*margenMecanizado)+(alaIzquierda+alaDerecha+anchuraPlaca))*((2*margenMecanizado)+(alturaPlaca+alaSuperior+alaInferior)))/1000000
    areaPlana=(((anchuraPlaca))*((alturaPlaca)))/1000000

    textoDescriptivo=textoDescriptivo .. "\nArea Total: " .. round(areaTotal,2) .. " m2" .. "\nArea Plana: " .. round(areaPlana,2) .. " m2"

    elseif (modelo==47) then --Modelo D7

    origenTexto = Point2D(origenX+(pliegueIzq+alaIzquierda+alaDerecha+pliegueDer+anchuraPlaca)/2,origenY+(alturaPlaca+alaSuperior+alaInferior)/2)


    areaTotal= (((2*margenMecanizado)+(pliegueIzq+alaIzquierda+alaDerecha+pliegueDer+anchuraPlaca))*((2*margenMecanizado)+(alturaPlaca+alaSuperior+alaInferior)))/1000000
    areaPlana=(((anchuraPlaca))*((alturaPlaca)))/1000000

    textoDescriptivo=textoDescriptivo .. "\nArea Total: " .. round(areaTotal,2) .. " m2" .. "\nArea Plana: " .. round(areaPlana,2) .. " m2"

  elseif modelo==50  then --MODELO E0

    origenTexto = Point2D(origenX+(anchuraPlaca+margenM1+margenM2)/2,origenY+(altura1+altura2+altura3+altura4+altura5)/2)

    areaTotal= (((2*margenMecanizado)+(anchuraPlaca+margenM1+margenM2))*((2*margenMecanizado)+(altura1+altura2+altura3+altura4+altura5)))/1000000

    areaPlana=((((anchuraPlaca))*((altura1+altura2+altura3+altura4+altura5)))+(0.5*((altura2+altura3+altura4+altura3)*margenM1))+(0.5*(margenM2*(margenM2*math.tan(math.rad(45)))))+(margenM2*altura2)+(0.5*altura3*margenM2)-((0.5*((altura1/math.tan(math.rad(45)))-margenM2)*(altura1-margenM2*math.tan(math.rad(45))))))/1000000  --Se toma el área base y se incorporan las figuras sobrantes (trapecio, triángulos, cuadrados...)

    textoDescriptivo=textoDescriptivo .. "\nArea Total: " .. round(areaTotal,2) .. " m2" .. "\nArea Plana: " .. round(areaPlana,2) .. " m2"

  elseif modelo==51 then --MODELO E1

    origenTexto = Point2D(origenX+(anchuraPlaca+margenM1+margenM2)/2,origenY+(altura1+altura2+altura3+altura4+altura5)/2)

    areaTotal= (((2*margenMecanizado)+(anchuraPlaca+margenM1+margenM2))*((2*margenMecanizado)+(altura1+altura2+altura3+altura4+altura5)))/1000000

    areaPlana=((((anchuraPlaca))*((altura1+altura2+altura3+altura4+altura5)))+(0.5*((altura2+altura3+altura4+altura3)*margenM2))+(0.5*(margenM1*(margenM1*math.tan(math.rad(45)))))+(margenM1*altura2)+(0.5*altura3*margenM1)-((0.5*((altura1/math.tan(math.rad(45)))-margenM1)*(altura1-margenM1*math.tan(math.rad(45))))))/1000000  --Se toma el área base y se incorporan las figuras sobrantes (trapecio, triángulos, cuadrados...)

    textoDescriptivo=textoDescriptivo .. "\nArea Total: " .. round(areaTotal,2) .. " m2" .. "\nArea Plana: " .. round(areaPlana,2) .. " m2"

  elseif modelo==52 then --Modelo E2

    origenTexto = Point2D(origenX+((anchura2)+margenM1+margenM2)/2,origenY+(altura1+altura2+altura3+altura4)/2)

    areaTotal= (((2*margenMecanizado)+((anchura2)+margenM1+margenM2))*((2*margenMecanizado)+(altura1+altura2+altura3+altura4)))/1000000
    areaPlana=(((((anchura2)))*((altura1+altura2+altura3+altura4)))-(margenM1*altura1)-(0.5*margenM1*altura2)-(0.5*(anchura2-anchura1)*altura4)+(margenM2*altura2)+(0.5*altura3*margenM2)+(0.5*(margenM2*math.tan(math.rad(45))*margenM2))-((0.5*((altura1/math.tan(math.rad(45)))-margenM2)*(altura1-margenM2*math.tan(math.rad(45))))))/1000000

    textoDescriptivo=textoDescriptivo .. "\nArea Total: " .. round(areaTotal,2) .. " m2" .. "\nArea Plana: " .. round(areaPlana,2) .. " m2"

  elseif modelo==53 then --Modelo E3

    origenTexto = Point2D(origenX+((anchura2)+margenM1+margenM2)/2,origenY+(altura1+altura2+altura3+altura4)/2)

    areaTotal= (((2*margenMecanizado)+((anchura2)+margenM1+margenM2))*((2*margenMecanizado)+(altura1+altura2+altura3+altura4)))/1000000
    areaPlana=(((((anchura2)))*((altura1+altura2+altura3+altura4)))-(margenM2*altura1)-(0.5*margenM2*altura2)-(0.5*(anchura2-anchura1)*altura4)+(margenM1*altura2)+(0.5*altura3*margenM1)+(0.5*(margenM1*math.tan(math.rad(45))*margenM1))-((0.5*((altura1/math.tan(math.rad(45)))-margenM1)*(altura1-margenM1*math.tan(math.rad(45))))))/1000000

    textoDescriptivo=textoDescriptivo .. "\nArea Total: " .. round(areaTotal,2) .. " m2" .. "\nArea Plana: " .. round(areaPlana,2) .. " m2"

  elseif  modelo==54 or modelo==55 then --Modelo E4, E5

    origenTexto = Point2D(origenX+(anchura2+margenM1+margenM2)/2,origenY+(altura1+altura2+altura3+altura4)/2)

    areaTotal= (((2*margenMecanizado)+(anchura2+margenM1+margenM2))*((2*margenMecanizado)+(altura1+altura2+altura3+altura4)))/1000000
    areaPlana=((((anchura2))*((altura1+altura2+altura3+altura4)))+(0.5*altura3*margenM2)+(margenM2*altura2)+(0.5*margenM2*(margenM2*math.tan(math.rad(45))))+(0.5*margenM1*(margenM1*math.tan(math.rad(45))))+(altura2*margenM1)+(0.5*margenM1*altura3)-(0.5*anchura1*altura4)-((0.5*((-altura1/math.tan(math.rad(45)))+margenM1)*(-altura1+margenM1*math.tan(math.rad(45)))))-((0.5*((-altura1/math.tan(math.rad(45)))+margenM2)*(-altura1+margenM2*math.tan(math.rad(45))))))/1000000

    textoDescriptivo=textoDescriptivo .. "\nArea Total: " .. round(areaTotal,2) .. " m2" .. "\nArea Plana: " .. round(areaPlana,2) .. " m2"

  elseif modelo==101 then --modelo 001

    origenTexto = Point2D(origenX+(anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+anchura7)/2,origenY+(alturaPlaca+alaInferior+alaSuperior+pliegueSuperior)/2)

    areaTotal= (((2*margenMecanizado)+(anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+anchura7))*((2*margenMecanizado)+(alturaPlaca+alaInferior+alaSuperior+pliegueSuperior)))/1000000
    areaPlana=(((anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+anchura7))*((alturaPlaca)))/1000000

    textoDescriptivo=textoDescriptivo .. "\nArea Total: " .. round(areaTotal,2) .. " m2" .. "\nArea Plana: " .. round(areaPlana,2) .. " m2"

    elseif modelo==102 then --modelo 002

      origenTexto = Point2D(origenX+(anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+anchura7)/2,origenY+(pliegueInf1+pliegueInf2+pliegueInf3+pliegueInf4+pliegueInf5+pliegueInf6+pliegueInf7+alturaPlaca+alaInferior+alaSuperior+pliegueSuperior)/2)

    areaTotal= (((2*margenMecanizado)+(anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+anchura7))*((2*margenMecanizado)+(pliegueInf1+pliegueInf2+pliegueInf3+pliegueInf4+pliegueInf5+pliegueInf6+pliegueInf7+alturaPlaca+alaInferior+alaSuperior+pliegueSuperior)))/1000000
    areaPlana=(((anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+anchura7))*((alturaPlaca)))/1000000

    textoDescriptivo=textoDescriptivo .. "\nArea Total: " .. round(areaTotal,2) .. " m2" .. "\nArea Plana: " .. round(areaPlana,2) .. " m2"

  elseif modelo==103 then --modelo 003

    origenTexto = Point2D(origenX+(anchuraPlaca+alaIzquierda+alaDerecha)/2,origenY+(altura1+altura2+altura3+altura4+altura5+altura6+altura7+altura8+altura9+altura10)/2)

    areaTotal= (((2*margenMecanizado)+(anchuraPlaca+alaIzquierda+alaDerecha))*((2*margenMecanizado)+(altura1+altura2+altura3+altura4+altura5+altura6+altura7+altura8+altura9+altura10)))/1000000
    areaPlana=(((anchuraPlaca))*((altura1+altura2+altura3+altura4+altura5+altura6+altura7+altura8+altura9+altura10)))/1000000

    textoDescriptivo=textoDescriptivo .. "\nArea Total: " .. round(areaTotal,2) .. " m2" .. "\nArea Plana: " .. round(areaPlana,2) .. " m2"

  elseif modelo==104 then --modelo 004

    origenTexto = Point2D(origenX+(anchuraPlaca+alaIzquierda+alaDerecha)/2,origenY+(alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)/2)

    areaTotal= (((2*margenMecanizado)+(anchuraPlaca+alaIzquierda+alaDerecha))*((2*margenMecanizado)+(alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)))/1000000
    areaPlana=((anchuraPlaca*alturaPlaca)-(0.5*(anchuraPlaca-margenL)*(alturaPlaca-margenM)))/1000000

    textoDescriptivo=textoDescriptivo .. "\nArea Total: " .. round(areaTotal,2) .. " m2" .. "\nArea Plana: " .. round(areaPlana,2) .. " m2"

    elseif modelo==105 then --modelo 005

    origenTexto = Point2D(origenX+(anchuraPlaca+alaIzquierda+alaDerecha)/2,origenY+(alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)/2)

    areaTotal= (((2*margenMecanizado)+(anchuraPlaca+alaIzquierda+alaDerecha))*((2*margenMecanizado)+(alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)))/1000000
    areaPlana=((anchuraPlaca*alturaPlaca)-(0.5*(anchuraPlaca-margenL)*(alturaPlaca)))/1000000

    textoDescriptivo=textoDescriptivo .. "\nArea Total: " .. round(areaTotal,2) .. " m2" .. "\nArea Plana: " .. round(areaPlana,2) .. " m2"

  --elseif modelo==106 then --modelo 106



  elseif modelo==107 then --modelo 107

    origenTexto = Point2D(origenX+(anchura1+anchura2+anchura3+anchura4+alaDerecha)/2,origenY+(alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)/2)

    areaTotal= (((2*margenMecanizado)+(anchura1+anchura2+anchura3+anchura4+alaDerecha))*((2*margenMecanizado)+(alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)))/1000000
    areaPlana=((anchura1+anchura2+anchura3+anchura4)*(alturaPlaca))/1000000

    textoDescriptivo=textoDescriptivo .. "\nArea Total: " .. round(areaTotal,2) .. " m2" .. "\nArea Plana: " .. round(areaPlana,2) .. " m2"


  elseif modelo==108 then --modelo 108

    origenTexto = Point2D(origenX+(anchura1+anchura2+anchura3+anchura4+anchura5+alaDerecha)/2,origenY+(alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)/2)

    areaTotal= (((2*margenMecanizado)+(anchura1+anchura2+anchura3+anchura4+anchura5+alaDerecha))*((2*margenMecanizado)+(alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)))/1000000
    areaPlana=((anchura1+anchura2+anchura3+anchura4+anchura5)*(alturaPlaca))/1000000

    textoDescriptivo=textoDescriptivo .. "\nArea Total: " .. round(areaTotal,2) .. " m2" .. "\nArea Plana: " .. round(areaPlana,2) .. " m2"

  elseif modelo==109 then --modelo 109

    
    origenTexto = Point2D(origenX+(anchura1+anchura2+anchura3+anchura4+alaIzquierda+pliegueIzq)/2,origenY+(math.max(pliegueInf1,pliegueInf2,pliegueInf3,pliegueInf4)+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)/2)

    areaTotal= (((2*margenMecanizado)+(anchura1+anchura2+anchura3+anchura4+alaIzquierda+pliegueIzq))*((2*margenMecanizado)+(math.max(pliegueInf1,pliegueInf2,pliegueInf3,pliegueInf4)+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)))/1000000
    areaPlana=((anchura1+anchura2+anchura3+anchura4)*(alturaPlaca))/1000000

    textoDescriptivo=textoDescriptivo .. "\nArea Total: " .. round(areaTotal,2) .. " m2" .. "\nArea Plana: " .. round(areaPlana,2) .. " m2"


  elseif modelo==110 then --modelo 110

    origenTexto = Point2D(origenX+(anchura1+anchura2+anchura3+anchura4+alaDerecha)/2,origenY+(math.max(pliegueInf1,pliegueInf2,pliegueInf3,pliegueInf4)+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)/2)

    areaTotal= (((2*margenMecanizado)+(anchura1+anchura2+anchura3+anchura4+alaDerecha))*((2*margenMecanizado)+(math.max(pliegueInf1,pliegueInf2,pliegueInf3,pliegueInf4)+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)))/1000000
    areaPlana=((anchura1+anchura2+anchura3+anchura4)*(alturaPlaca))/1000000

    textoDescriptivo=textoDescriptivo .. "\nArea Total: " .. round(areaTotal,2) .. " m2" .. "\nArea Plana: " .. round(areaPlana,2) .. " m2"

  elseif modelo==111 then --modelo 111

    origenTexto = Point2D(origenX+(anchura1+anchura2+anchura3+anchura4+anchura5+alaDerecha)/2,origenY+(math.max(pliegueInf1,pliegueInf2,pliegueInf3,pliegueInf4,pliegueInf5)+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)/2)

    areaTotal= (((2*margenMecanizado)+(anchura1+anchura2+anchura3+anchura4+anchura5+alaDerecha))*((2*margenMecanizado)+(math.max(pliegueInf1,pliegueInf2,pliegueInf3,pliegueInf4,pliegueInf5)+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)))/1000000
    areaPlana=((anchura1+anchura2+anchura3+anchura4+anchura5)*(alturaPlaca))/1000000

    textoDescriptivo=textoDescriptivo .. "\nArea Total: " .. round(areaTotal,2) .. " m2" .. "\nArea Plana: " .. round(areaPlana,2) .. " m2"

  --elseif modelo==112 then --modelo 112




  else
    origenTexto = Point2D(origenX+(anchuraPlaca/3)-(2*alaIzquierda),origenY+(alturaPlaca/2)+pliegueInferior+alaInferior)
    end
  
  
  local texto=CadMarker(textoDescriptivo,origenTexto,0)
    texto:SetColor(0,0,1)
  
  layer:AddObject(texto,true)
  layer:SetColor(0,0,1)
  layer.Visible = true 
  doc.LayerManager:SetActiveLayer(cur_layer)
  doc:Refresh2DView() 
  -----------------------------------------------------------------
  return true; 
  
end