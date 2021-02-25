-- VECTRIC LUA SCRIPT


require "strict"

--Matrices
cantidadX=1
cantidadY=1
distanciaX=100
distanciaY=100

--Entradas comunes a todos los modelos [AH][BH][CH]
alaSuperior=40
alaInferior=40
alaDerecha=40
alaIzquierda=alaDerecha

pliegueSuperior=36
pliegueInferior=36

margenA=57 --Margen Superior
margenB=108 --132 --Margen Inferior

anchuraPlaca = 2000 --1000
margenPlaca = 3
alturaPlaca = 1000 --500



origenX=0
origenY=0


--Entrada para modelo [BH]
anchura1=1200 --izquierda
anchura2=800 --derecha
anchuraPlaca=anchura1+anchura2




modelo=0
--[AH=0 - AH1=1 - AH2=2 - AH3=3 - AH4=4 - AH5=5 - AH6=6 - AH7=7 - AH8=8]
--[BH=9 - BH1=10 - BH2=11 - BH3=12 - BH4=13 - BH5=14 - BH6=15 - BH7=16 - BH8=17]
--[BH9=18 - BH10=19 - BH11=20 - BH12=21 - BH13=22 - BH14=23 - BH15=24 - BH16=25 - BH17=26]
--[CH=27 - CH1=28 - CH2=329 - CH3=30 - CH4=31 - CH5=32 - CH6=33 - CH7=34 - CH8=35]


 

ruta=""
doc = VectricJob()

		
function main(script_path)

    ruta=script_path
	
		
	if not doc.Exists then
	   DisplayMessageBox("Trabajo NO Cargado")
		return false;
	end
	
	
		
	local html_path = "file:" .. script_path .. "\\Paneles\\Paneles.html"
	
	local framePrincipal = HTML_Dialog(false, html_path, 1900, 950, "KSD Motion Control S.L.U.")

	--framePrincipal:AddRadioGroup("refAH", 1)
		
	if  not framePrincipal:ShowDialog() then
	
		return false;
		
	end

	--modelo=framePrincipal:GetRadioIndex("refAH")
		
	return true; 
end 

function OnLuaButton_refAH()
	modelo=0
  return true
end

function OnLuaButton_refAH1()
	modelo=1
  return true
end

function OnLuaButton_refAH2()
	modelo=2
  return true
end

function OnLuaButton_refAH3()
	modelo=3
  return true
end

function OnLuaButton_refAH4()
	modelo=4
  return true
end

function OnLuaButton_refAH5()
	modelo=5
  return true
end

function OnLuaButton_refAH6()
	modelo=6
  return true
end

function OnLuaButton_refAH7()
	modelo=7
  return true
end

function OnLuaButton_refAH8()
	modelo=8
  return true
end


function OnLuaButton_modeloAH(framePrincipal)



	if modelo == 0 then 
		
		local html_path = "file:" .. ruta .. "\\Paneles\\referenciaAH.html"
			
		local modeloAH = HTML_Dialog(false, html_path, 1900, 950, "REFERENCIA AH")
		
		 

		modeloAH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    modeloAH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloAH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloAH:AddDoubleField("origenX", origenX)
		--modeloAH:AddDoubleField("origenY", origenY)

		modeloAH:AddIntegerField("cantidadX", cantidadX)
		modeloAH:AddIntegerField("cantidadY", cantidadY)
		modeloAH:AddDoubleField("distanciaX", distanciaX)
		modeloAH:AddDoubleField("distanciaY", distanciaY)

		modeloAH:AddDoubleField("alaLateral", alaIzquierda)
		modeloAH:AddDoubleField("alaSuperior", alaSuperior)
		modeloAH:AddDoubleField("alaInferior", alaInferior)
		modeloAH:AddDoubleField("pliegueInferior", pliegueInferior)
		modeloAH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloAH:AddDoubleField("margenA", margenA)
		modeloAH:AddDoubleField("margenB", margenB)
		
		
		
	    if  not modeloAH:ShowDialog() then
			
				return false;
					
		end

   	elseif modelo==1 then

   		
    elseif modelo==2 then


    elseif modelo==3 then


    elseif modelo==4 then


    elseif modelo==5 then


    elseif modelo==6 then


    elseif modelo==7 then


    elseif modelo==8 then



  	end

	
	
	
	
return true;

end

function OnLuaButton_aceptarAH(modeloAH)

    	
	anchuraPlaca  = modeloAH:GetDoubleField("anchuraPlaca")
    margenPlaca  = modeloAH:GetDoubleField("margenPlaca")
    alturaPlaca  = modeloAH:GetDoubleField("alturaPlaca")
	--origenX = modeloAH:GetDoubleField("origenXAH")
	--origenY = modeloAH:GetDoubleField("origenYAH")

	cantidadX=modeloAH:GetIntegerField("cantidadX")
	cantidadY=modeloAH:GetIntegerField("cantidadY")
	distanciaX=modeloAH:GetDoubleField("distanciaX")
	distanciaY=modeloAH:GetDoubleField("distanciaY")

	alaIzquierda=modeloAH:GetDoubleField("alaLateral")
	alaSuperior=modeloAH:GetDoubleField("alaSuperior")
	alaInferior=modeloAH:GetDoubleField("alaInferior")
	pliegueInferior=modeloAH:GetDoubleField("pliegueInferior")
	pliegueSuperior=modeloAH:GetDoubleField("pliegueSuperior")
	margenA=modeloAH:GetDoubleField("margenA")
	margenB=modeloAH:GetDoubleField("margenB")
	
	
	anchuraPlaca=anchuraPlaca-margenPlaca
    alturaPlaca=alturaPlaca-margenPlaca
	
	if anchuraPlaca < 0 then
		
		DisplayMessageBox("La anchura de la placa NO puede ser negativa.Creación Modelo AH Fallida")
				
	
	elseif margenPlaca < 0 then
		
		DisplayMessageBox("El margen de la placa NO puede ser negativo.Creación Modelo AH Fallida")
	
	elseif  alturaPlaca < 0 then
		
		DisplayMessageBox("La altura de la placa NO puede ser negativa.Creación Modelo AH Fallida")
	
    	
	else
		
		
		
		
		dibujarFresadoAH(doc)
		dibujarCorteAH(doc)
		
		
		
		--dibujarFresadoBH(doc)
		
		
		DisplayMessageBox("Modelo AH Creado Correctamente")
	
	end
	
return true;

end



function dibujarFresadoAH(doc)
	
	local Contour = Contour(0.0)
	
	local fresado9 = Point2D(origenX+alaIzquierda,origenY)
	local fresado1 = Point2D(origenX+alaIzquierda, origenY+alaInferior)
	local fresado2 = Point2D(origenX+alaIzquierda, origenY+alaInferior+pliegueInferior)
	local fresado3 = Point2D(origenX+anchuraPlaca+alaIzquierda,origenY+alaInferior+pliegueInferior)
	local fresado4 = Point2D(origenX+anchuraPlaca+alaIzquierda,origenY+alaInferior)
 	local fresado10 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY)
  	local fresado5 = Point2D(origenX+anchuraPlaca+alaIzquierda,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
   	local fresado6 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
   	local fresado7 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca+pliegueInferior)
	local fresado8 = Point2D(origenX+anchuraPlaca+alaIzquierda,origenY+alaInferior+alturaPlaca+pliegueInferior)
	local fresado11 = Point2D(origenX+anchuraPlaca+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
	
	
	if modelo==0 or modelo==1 then --REF [AH][AH1]
		Contour:AppendPoint(fresado9)
		Contour:LineTo(fresado2)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado6)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado8)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado2)
	elseif modelo==2 or modelo==3 then --REF [AH2][AH3]
		Contour:AppendPoint(fresado1)
		Contour:LineTo(fresado2)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado4)
		Contour:LineTo(fresado1)
		Contour:LineTo(fresado6)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado4)
		Contour:LineTo(fresado8)
		Contour:LineTo(fresado7)
	elseif modelo==4 then --REF [AH4]
		Contour:AppendPoint(fresado9)
		Contour:LineTo(fresado2)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado8)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado6)
		Contour:LineTo(fresado1)
	elseif modelo==5 then --REF [AH5]
		Contour:AppendPoint(fresado1)
		Contour:LineTo(fresado2)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado4)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado8)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado6)
		Contour:LineTo(fresado1)
		Contour:LineTo(fresado4)
	elseif modelo==6 then --REF [AH6]
		Contour:AppendPoint(fresado9)
		Contour:LineTo(fresado2)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado6)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado8)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado1)
	elseif modelo==7 then --REF [AH7]
		Contour:AppendPoint(fresado1)
		Contour:LineTo(fresado2)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado4)
		Contour:LineTo(fresado1)
		Contour:LineTo(fresado6)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado8)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado8)
		Contour:LineTo(fresado4)
	elseif modelo==8 then  --REF [AH8]
		Contour:AppendPoint(fresado9)
		Contour:LineTo(fresado2)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado4)
		Contour:LineTo(fresado1)
		Contour:LineTo(fresado6)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado8)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado8)
		Contour:LineTo(fresado4)
	end
	
	
	--------------------------------------------------------
	local cad_object = CreateCadContour(Contour)
	local cur_layer = doc.LayerManager:GetActiveLayer()
	local layer = doc.LayerManager:GetLayerWithName("Fresado")
	layer:AddObject(cad_object, true)
	layer:SetColor(0.3,0.8,0.4)
	layer.Visible = true 
	doc.LayerManager:SetActiveLayer(cur_layer)
	doc:Refresh2DView()	
	-----------------------------------------------------------------
	return true; 
end





function dibujarCorteAH(doc)
	
	local Contour = Contour(0.0)
	
	--PARTE INFERIOR-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	if (modelo==0 or modelo==1 or modelo==4 or modelo==6) then --Parte Inferior para los modelos (AH-AH1-AH4-AH6-AH8)   ->[el tamaño de la escuadra depende del ALA]
		local corte1 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
		local corte2 = Point2D(origenX+(alaIzquierda-alaInferior),origenY)
		local corte3 = Point2D(origenX+alaIzquierda+anchuraPlaca+alaInferior,origenY)
		local corte4 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior)
		
		Contour:AppendPoint(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
		
	elseif (modelo==2 or modelo==3 or modelo==5 or modelo==7) then --Parte Inferior para los modelos (AH2-AH3-AH5-AH7)   ->[el tamaño de la escuadra depende del PLIEGUE]
		local corte1 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior)
		local corte2 = Point2D(origenX+(alaIzquierda-pliegueInferior),origenY+alaInferior)
		local corte3 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
		local corte4 = Point2D(origenX+alaIzquierda,origenY)
		local corte5 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY)
		local corte6 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior)
		local corte7 = Point2D(origenX+alaIzquierda+anchuraPlaca+pliegueInferior,origenY+alaInferior)
		local corte8 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior+pliegueInferior)
		
		Contour:AppendPoint(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
		Contour:LineTo(corte5)
		Contour:LineTo(corte6)
		Contour:LineTo(corte7)
		Contour:LineTo(corte8)
		
	else --Parte Inferior para el modelo (AH8)
		local corte1 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior)
		local corte2 = Point2D(origenX+(alaIzquierda-alaInferior),origenY+pliegueInferior)
		local corte3 = Point2D(origenX+(alaIzquierda-alaInferior),origenY+alaInferior*2)
		local corte4 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
		local corte5 = Point2D(origenX+(alaIzquierda-alaInferior),origenY)
		local corte6 = Point2D(origenX+alaIzquierda+anchuraPlaca+alaInferior,origenY)
		local corte7 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior)
		local corte8 = Point2D(origenX+alaIzquierda+anchuraPlaca+alaInferior,origenY+alaInferior*2)
		local corte9 = Point2D(origenX+alaIzquierda+anchuraPlaca+alaInferior,origenY+pliegueInferior)
		local corte10 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+pliegueInferior+alaInferior)
		
		Contour:AppendPoint(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
		Contour:LineTo(corte5)
		Contour:LineTo(corte6)
		Contour:LineTo(corte7)
		Contour:LineTo(corte8)
		Contour:LineTo(corte9)
		Contour:LineTo(corte10)
	end
	
	
	
	
	
	
	
	--PARTE DERECHA (BOTAS)------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
		--Variables BOTAS
	local alturaBotaDeCuelgue=56
	local anchoBota=18.5
	
	local tramoRecto1BotaDerecha=52
	local radioArcoBotaDerecha=4
	local tramoRecto2BotaDerecha=18
	local tramoRecto3BotaDerecha=6.5
	local tramoRecto4BotaDerecha=26
	
	
		--Variables MARGENES superior e inferior
	local cotaInicioDerecha=(margenB-alturaBotaDeCuelgue)*(36.8/52) --36.8 
	
	local anchoLateral1=alaDerecha-anchoBota  --21.5 --variable para reducir codigo (se podria eliminar)
	local alturaLateral1=cotaInicioDerecha-alaDerecha+anchoBota --15.3  --variable para reducir codigo (se podria eliminar)
	
	local sumaComienzoFin=(margenA)+(margenB-alturaBotaDeCuelgue) --109
	
	
	--Parte inicial
	local corte20 = Point2D(origenX+alaIzquierda+anchuraPlaca+cotaInicioDerecha,origenY+alaInferior+pliegueInferior+cotaInicioDerecha)
	local corte21 = Point2D(origenX+alaIzquierda+anchuraPlaca+anchoLateral1,origenY+alaInferior+pliegueInferior+alturaLateral1+cotaInicioDerecha)
	Contour:LineTo(corte20)
	Contour:LineTo(corte21)
	
	--Parte botas
	local repeticiones=math.ceil((alturaPlaca-sumaComienzoFin)/500.0)
	local tramoRectoEntreBotaDeCuelgue=(alturaPlaca-sumaComienzoFin-((repeticiones+1)*alturaBotaDeCuelgue)-(repeticiones*anchoBota))/repeticiones
	
	local puntoInicioX=(origenX+alaIzquierda+anchuraPlaca+anchoLateral1)
	local puntoInicioY=(origenY+alaInferior+pliegueInferior+cotaInicioDerecha+alturaLateral1)
	
	for n=1, (repeticiones+1) do
		--Dibujar bota
	    local corte6 = Point2D(puntoInicioX, puntoInicioY+tramoRecto1BotaDerecha)
		Contour:LineTo(corte6)
		
		puntoInicioY=puntoInicioY+tramoRecto1BotaDerecha
		
		local corte7=Point2D(puntoInicioX+(2*radioArcoBotaDerecha),puntoInicioY)
		local corte8=Point2D(puntoInicioX+(radioArcoBotaDerecha),puntoInicioY)
		Contour:ArcTo(corte7,corte8,false)
		puntoInicioX=puntoInicioX+(2*radioArcoBotaDerecha)
		
		local corte9=Point2D(puntoInicioX, puntoInicioY-tramoRecto2BotaDerecha)
		Contour:LineTo(corte9)
		puntoInicioY=puntoInicioY-tramoRecto2BotaDerecha
		
		local corte10=Point2D(puntoInicioX+(radioArcoBotaDerecha),puntoInicioY-radioArcoBotaDerecha)
		local corte11=Point2D(puntoInicioX+(radioArcoBotaDerecha),puntoInicioY)
		Contour:ArcTo(corte10,corte11,true)
		puntoInicioX=puntoInicioX+radioArcoBotaDerecha
		puntoInicioY=puntoInicioY-radioArcoBotaDerecha
		
		local corte12=Point2D(puntoInicioX+tramoRecto3BotaDerecha,puntoInicioY)
		Contour:LineTo(corte12)
		puntoInicioX=puntoInicioX+tramoRecto3BotaDerecha
		
		local corte13=Point2D(puntoInicioX,puntoInicioY+tramoRecto4BotaDerecha)
		Contour:LineTo(corte13)
		puntoInicioY=puntoInicioY+tramoRecto4BotaDerecha
		
		--Dibujar tramo recto
		if n==(repeticiones+1) then
			break
		else
			local corte14=Point2D(puntoInicioX,puntoInicioY+tramoRectoEntreBotaDeCuelgue)
			Contour:LineTo(corte14)
			puntoInicioY=puntoInicioY+tramoRectoEntreBotaDeCuelgue
			
			local corte15=Point2D(puntoInicioX-(alaDerecha-anchoLateral1),puntoInicioY+(alaDerecha-anchoLateral1))
			Contour:LineTo(corte15)
			puntoInicioX=puntoInicioX-(alaDerecha-anchoLateral1)
			puntoInicioY=puntoInicioY+(alaDerecha-anchoLateral1)
		end

	end
	
	--Parte final
	local corte22 = Point2D(origenX+alaIzquierda+anchuraPlaca+alaDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca-alaDerecha)
	Contour:LineTo(corte22)
	
	
	
	
	
	
	--PARTE SUPERIOR------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	if (modelo==0 or modelo==1 or modelo==2 or modelo==3 or modelo==4 or modelo==5 or modelo==8) then --Parte Superior para los modelos (AH-AH1-AH2-AH3-AH4-AH5-AH8)   ->[el tamaño de la escuadra depende del PLIEGUE]
		local corte40 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior+pliegueInferior+alturaPlaca)
		local corte41 = Point2D(origenX+alaIzquierda+anchuraPlaca+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte42 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte43 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte44 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte45 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte46 = Point2D(origenX+(alaIzquierda-pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte47 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca)
		
		Contour:LineTo(corte40)
		Contour:LineTo(corte41)
		Contour:LineTo(corte42)
		Contour:LineTo(corte43)
		Contour:LineTo(corte44)
		Contour:LineTo(corte45)
		Contour:LineTo(corte46)
		Contour:LineTo(corte47)
		
		
	else --Parte Superior para los modelos (AH6-AH7)   ->[el tamaño de la escuadra depende del ALA]
		local corte40 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior+pliegueInferior+alturaPlaca)
		local corte41 = Point2D(origenX+alaIzquierda+anchuraPlaca+alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+alaSuperior)
		local corte42 = Point2D(origenX+alaIzquierda+anchuraPlaca+alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior-alaSuperior)
		local corte43 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte44 = Point2D(origenX+alaIzquierda+anchuraPlaca+alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte45 = Point2D(origenX+(alaIzquierda-alaSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte46 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte47 = Point2D(origenX+(alaIzquierda-alaSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior-alaSuperior)
		local corte48 = Point2D(origenX+(alaIzquierda-alaSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+alaSuperior)
		local corte49 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca)
		
		Contour:LineTo(corte40)
		Contour:LineTo(corte41)
		Contour:LineTo(corte42)
		Contour:LineTo(corte43)
		Contour:LineTo(corte44)
		Contour:LineTo(corte45)
		Contour:LineTo(corte46)
		Contour:LineTo(corte47)
		Contour:LineTo(corte48)
		Contour:LineTo(corte49)
		
	end
	
	
	
	
	
	
	
	--PARTE IZQUIERDA (BOTAS)------------------------------------------------------------------------------------------------------------------------------------------------------------------
		--Variables BOTAS
	local tramoRecto1BotaIzquierda=26
	local radioArcoBotaIzquierda=4
	local tramoRecto2BotaIzquierda=6.5
	local tramoRecto3BotaIzquierda=18
	local tramoRecto4BotaIzquierda=52
	
		--Variables por si el ala derecha e izquierda no son simetricas
	local margenA_izq = margenA --Al igualarlo al tamaño de los margenes de la derecha la figura es simetrica, si deja de ser simetrica, hay que pedirle que introduzca manualmente los margenes de la izquierda
	local margenB_izq = margenB
	local cotaInicioIzquierda=(margenB_izq-alturaBotaDeCuelgue)*(36.8/52)
	
	
	--Parte inicial
	local lineaIzquierda=(margenA_izq)*(17/57)
	
	local corte60 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca-alaIzquierda)
	Contour:LineTo(corte60)
	local corte61 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca-alaIzquierda-lineaIzquierda)
	Contour:LineTo(corte61)
	
	
	--Parte botas
	local puntoInicioX=(origenX)
	local puntoInicioY=(origenY+alaInferior+pliegueInferior+alturaPlaca-margenA_izq)
		
	for n=1, (repeticiones+1) do
		--Dibujar bota
	    local corte32 = Point2D(puntoInicioX, puntoInicioY-tramoRecto1BotaIzquierda)
		Contour:LineTo(corte32)
		
		puntoInicioY=puntoInicioY-tramoRecto1BotaIzquierda
		
		local corte33=Point2D(puntoInicioX+tramoRecto2BotaIzquierda, puntoInicioY)
		Contour:LineTo(corte33)
		puntoInicioX=puntoInicioX+tramoRecto2BotaIzquierda
		
		local corte34=Point2D(puntoInicioX+(radioArcoBotaIzquierda),puntoInicioY+radioArcoBotaIzquierda)
		local corte35=Point2D(puntoInicioX,puntoInicioY+radioArcoBotaIzquierda)
		Contour:ArcTo(corte34,corte35,true)
		puntoInicioX=puntoInicioX+radioArcoBotaIzquierda
		puntoInicioY=puntoInicioY+radioArcoBotaIzquierda
		
		local corte36=Point2D(puntoInicioX, puntoInicioY+tramoRecto3BotaIzquierda)
		Contour:LineTo(corte36)
		puntoInicioY=puntoInicioY+tramoRecto3BotaIzquierda
		
		local corte37=Point2D(puntoInicioX+(2*radioArcoBotaIzquierda),puntoInicioY)
		local corte38=Point2D(puntoInicioX+(radioArcoBotaIzquierda),puntoInicioY)
		Contour:ArcTo(corte37,corte38,false)
		puntoInicioX=puntoInicioX+(2*radioArcoBotaIzquierda)
		
		
		local corte39=Point2D(puntoInicioX,puntoInicioY-tramoRecto4BotaIzquierda)
		Contour:LineTo(corte39)
		puntoInicioY=puntoInicioY-tramoRecto4BotaIzquierda
		
		--Dibujar tramo recto
		if n==(repeticiones+1) then
			break
		else
			local corte40=Point2D(puntoInicioX-(anchoBota),puntoInicioY-(anchoBota))
			Contour:LineTo(corte40)
			puntoInicioY=puntoInicioY-(anchoBota)
			puntoInicioX=puntoInicioX-(anchoBota)
			
			
			local corte41=Point2D(puntoInicioX,puntoInicioY-tramoRectoEntreBotaDeCuelgue)
			Contour:LineTo(corte41)
			puntoInicioY=puntoInicioY-tramoRectoEntreBotaDeCuelgue
		end
		

	end
	
	--Parte final
	local corte65 = Point2D(origenX+alaIzquierda-cotaInicioIzquierda,origenY+alaInferior+pliegueInferior+cotaInicioIzquierda)
	local corte66 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior)
	Contour:LineTo(corte65)
	Contour:LineTo(corte66)
	
		
	--------------------------------------------------------
	local cad_object = CreateCadContour(Contour)
	local cur_layer = doc.LayerManager:GetActiveLayer()
	local layer = doc.LayerManager:GetLayerWithName("Corte")
	layer:AddObject(cad_object, true)
    layer:SetColor(0.9,0.2,0.2)
	layer.Visible = true 
	doc.LayerManager:SetActiveLayer(cur_layer)
	doc:Refresh2DView()	
	-----------------------------------------------------------------
	return true; 
end




function dibujarTaldrosAH(doc)

	local Contour = Contour(0.0)

	local corte1 = Point2D(origenX,origenY)
   
   	Contour:AppendPoint(corte1)
   
	--------------------------------------------------------
	local cad_object = CreateCadContour(Contour)
	local cur_layer = doc.LayerManager:GetActiveLayer()
	local layer = doc.LayerManager:GetLayerWithName("Taladros")
	layer:AddObject(cad_object, true)
	layer:SetColor(0.1,0.1,0.1)
	layer.Visible = true 
	doc.LayerManager:SetActiveLayer(cur_layer)
	doc:Refresh2DView()	
	-----------------------------------------------------------------
	return true; 
end



function dibujarFresadoBH(doc)
	
	--Variables
	local separacionPliegues=4
	
	--Puntos trayectoria
	local Contour = Contour(0.0)
	
	
	local fresado1 = Point2D(origenX+alaIzquierda,origenY)
	local fresado2 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
	local fresado3 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior)
	local fresado4 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior+pliegueInferior)
	local fresado5 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior)
	local fresado6 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY)
	local fresado7 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior)
	
	local fresado8
	local fresado9
	
	local fresado10 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado11 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	
	local fresado12
	local fresado13
	
	local fresado14 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	local fresado15 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado16 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado17 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
	
	
	modelo=24
	
	if modelo>=10 and modelo<=18 then
		fresado8 = Point2D(origenX+alaIzquierda+anchura1-pliegueInferior,origenY+alaInferior)
		fresado9 = Point2D(origenX+alaIzquierda+anchura1+pliegueInferior,origenY+alaInferior)
		fresado12 = Point2D(origenX+alaIzquierda+anchura1-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		fresado13 = Point2D(origenX+alaIzquierda+anchura1+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	elseif modelo>=19 and modelo<=27 then
		fresado8 = Point2D(origenX+alaIzquierda+anchura1-(separacionPliegues/2),origenY+alaInferior)	
		fresado9 = Point2D(origenX+alaIzquierda+anchura1+(separacionPliegues/2),origenY+alaInferior)
		fresado12 = Point2D(origenX+alaIzquierda+anchura1-(separacionPliegues/2),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		fresado13 = Point2D(origenX+alaIzquierda+anchura1+(separacionPliegues/2),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	end
	
	
	if modelo==9 or modelo==10 or modelo==18 or modelo==19  then --REF [BH][BH1] [BH9][BH10]
		Contour:AppendPoint(fresado1)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado4)
		Contour:LineTo(fresado6)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado13)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado15)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado12)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado16)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado10)
		
	elseif modelo==11 or modelo==12  or modelo==20 or modelo==21  then --REF [BH2][BH3] [BH11][BH12]
		Contour:AppendPoint(fresado8)
		Contour:LineTo(fresado2)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado4)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado9)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado13)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado15)
		Contour:LineTo(fresado16)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado12)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado15)
		
	elseif modelo==14 or modelo==22  then --REF [BH4]  [BH13]
		Contour:AppendPoint(fresado1)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado4)
		Contour:LineTo(fresado6)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado15)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado16)
		
	elseif modelo==14 or modelo==23  then --REF [BH5]  [BH14]
		Contour:AppendPoint(fresado8)
		Contour:LineTo(fresado2)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado4)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado9)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado15)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado16)
		
	elseif modelo==15 or modelo==24  then --REF [BH6] [BH15]
		Contour:AppendPoint(fresado1)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado4)
		Contour:LineTo(fresado6)
		Contour:LineTo(fresado17)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado13)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado15)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado12)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado16)
		
	elseif modelo==16 or modelo==25  then --REF [BH7]  [BH16]
		Contour:AppendPoint(fresado8)
		Contour:LineTo(fresado2)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado4)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado9)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado17)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado13)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado15)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado12)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado16)
		
	elseif modelo==17 or modelo==26  then --REF [BH8] [BH17]
		Contour:AppendPoint(fresado8)
		Contour:LineTo(fresado2)
		Contour:LineTo(fresado1)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado4)
		Contour:LineTo(fresado6)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado9)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado13)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado15)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado12)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado16)	
	end
	
	
	--------------------------------------------------------
	local cad_object = CreateCadContour(Contour)
	local cur_layer = doc.LayerManager:GetActiveLayer()
	local layer = doc.LayerManager:GetLayerWithName("Fresado")
	layer:AddObject(cad_object, true)
	layer:SetColor(0.3,0.8,0.4)
	layer.Visible = true 
	doc.LayerManager:SetActiveLayer(cur_layer)
	doc:Refresh2DView()	
	-----------------------------------------------------------------
	return true; 
end




