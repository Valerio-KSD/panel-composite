-- VECTRIC LUA SCRIPT

require "strict"

alaSuperior=40
alaInferior=32
alaIzquierda=40
alaDerecha=40

anchuraPlaca  = 1000
margenPlaca  = 3
alturaPlaca  = 500


pliegueSuperior=36
pliegueInferior=0



origenX=0
origenY=0

ruta=""
doc = VectricJob()

		
function main(script_path)

    ruta=script_path
	
		
	if not doc.Exists then
	   DisplayMessageBox("Trabajo NO Cargado")
		return false;
	end
	
	
		
	local html_path = "file:" .. script_path .. "\\Paneles\\Paneles.html"
	
	local framePrincipal = HTML_Dialog(false, html_path, 1375, 735, "KSD Motion Control S.L.U.")
	
	if  not framePrincipal:ShowDialog() then
	
		return false;
		
	end
		
	
	
		
	return true; 
end 



function dibujarFresado_AH(doc,anchuraPlaca,alturaPlaca,margenPlaca,origenX,origenY,modelo)
	
	
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
	
	
	if modelo==0 then --REF AH
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
	elseif modelo==1 then --REF AH1
		Contour:AppendPoint(fresado9)
		Contour:LineTo(fresado2)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado6)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado8)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado1)
	elseif modelo==2 then --REF AH2
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
	elseif modelo==3 then --REF AH3
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
	elseif modelo==4 then --REF AH4
		Contour:AppendPoint(fresado9)
		Contour:LineTo(fresado2)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado8)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado6)
		Contour:LineTo(fresado1)
	elseif modelo==5 then --REF AH5
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
	elseif modelo==6 then --REF AH6
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
	elseif modelo==7 then --REF AH7
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
	else  --REF AH8
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
	layer:SetColor(0,0,0) --(0,255,0)
	layer.Visible = true 
	doc.LayerManager:SetActiveLayer(cur_layer)
	doc:Refresh2DView()	
	-----------------------------------------------------------------
	return true; 
end








function OnLuaButton_modeloAH(framePrincipal)

   

	local html_path = "file:" .. ruta .. "\\Paneles\\modeloAH.html"
		
	local modeloAH = HTML_Dialog(false, html_path, 1375, 735, "Modelo AH")
	
	 

	modeloAH:AddDoubleField("anchuraPlacaAH", anchuraPlaca)
    modeloAH:AddDoubleField("margenPlacaAH", margenPlaca)
    modeloAH:AddDoubleField("alturaPlacaAH", alturaPlaca)
	modeloAH:AddDoubleField("origenXAH", origenX)
	modeloAH:AddDoubleField("origenYAH", origenY)	
	
	
    if  not modeloAH:ShowDialog() then
		
			return false;
				
	end
	
	
	
return true;

end

function OnLuaButton_aceptarAH(modeloAH)

    	
	anchuraPlaca  = modeloAH:GetDoubleField("anchuraPlacaAH")
    margenPlaca  = modeloAH:GetDoubleField("margenPlacaAH")
    alturaPlaca  = modeloAH:GetDoubleField("alturaPlacaAH")
	origenX = modeloAH:GetDoubleField("origenXAH")
	origenY = modeloAH:GetDoubleField("origenYAH")	
	
	
	anchuraPlaca=anchuraPlaca-margenPlaca
    alturaPlaca=alturaPlaca-margenPlaca
	
	if anchuraPlaca < 0 then
		
		DisplayMessageBox("La anchura de la placa NO puede ser negativa.Creación Modelo AH Fallida")
				
	
	elseif margenPlaca < 0 then
		
		DisplayMessageBox("El margen de la placa NO puede ser negativo.Creación Modelo AH Fallida")
	
	elseif  alturaPlaca < 0 then
		
		DisplayMessageBox("La altura de la placa NO puede ser negativa.Creación Modelo AH Fallida")
	
    	
	else
	
		--Dibujar_FresadoAH(doc,anchuraPlaca,alturaPlaca,margenPlaca, origenX,origenY)
		dibujarFresado_AH(doc,anchuraPlaca,alturaPlaca,margenPlaca, origenX,origenY,0)
		
		Dibujar_CorteAH(doc,anchuraPlaca,alturaPlaca,margenPlaca,origenX,origenY)
		
		
		DisplayMessageBox("Modelo AH Creado Correctamente")
	
	end
	
return true;

end

--[[
function Dibujar_FresadoAH(doc,anchuraPlaca,alturaPlaca,margenPlaca,origenX,origenY)
	
	
	local Contour = Contour(0.0)
	
 	local fresado1 = Point2D(origenX+alaIzquierda, origenY)
  	local fresado2 = Point2D(origenX+alaIzquierda, origenY+alaInferior)
   	local fresado3 = Point2D(origenX+anchuraPlaca+alaIzquierda,origenY+alaInferior)
   	local fresado4 = Point2D(origenX+anchuraPlaca+alaIzquierda,origenY)
	local fresado5 = Point2D(origenX+anchuraPlaca+alaIzquierda,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	local fresado6 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	local fresado7 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca)
	local fresado8 = Point2D(origenX+anchuraPlaca+alaIzquierda,origenY+alaInferior+alturaPlaca)
	local fresado9 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca)
	
	
	Contour:AppendPoint(fresado1)
   	Contour:LineTo(fresado2)
	Contour:LineTo(fresado3)
	Contour:LineTo(fresado4)
	Contour:LineTo(fresado5)
	Contour:LineTo(fresado6)
	Contour:LineTo(fresado7)
	Contour:LineTo(fresado8)
	Contour:LineTo(fresado9)
	Contour:LineTo(fresado1)
	
	--------------------------------------------------------
	local cad_object = CreateCadContour(Contour)
	local cur_layer = doc.LayerManager:GetActiveLayer()
	local layer = doc.LayerManager:GetLayerWithName("Fresado")
	layer:AddObject(cad_object, true)
	layer:SetColor(0,255,0)
	layer.Visible = true 
	doc.LayerManager:SetActiveLayer(cur_layer)
	doc:Refresh2DView()	
	-----------------------------------------------------------------
	return true; 
end
]]

function Dibujar_CorteAH(doc,anchuraPlaca,alturaPlaca,margenPlaca,origenX,origenY)
	
	
	local sumaComienzoFin=109
	local alturaBotaDeCuelgue=56
	local anchoBota=18.5
	
	
	local anchoLateral1=21.5
	local alturaLateral1=15.3
	
	local anchoLateral2=36.9
	local alturaLateral2=36.7
	
	local tramoRecto1BotaDerecha=52
	local radioArcoBotaDerecha=4
	local tramoRecto2BotaDerecha=18
	local tramoRecto3BotaDerecha=7.5
	local tramoRecto4BotaDerecha=26
	
	--Parte Inferior

	local Contour = Contour(0.0)

	local corte1 = Point2D(origenX+(alaIzquierda-alaInferior),origenY)
	local corte2 = Point2D(origenX+alaIzquierda+anchuraPlaca+alaInferior,origenY)
	local corte3 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior)
	local corte4 = Point2D(origenX+alaIzquierda+anchuraPlaca+anchoLateral2,origenY+alaInferior+alturaLateral2)
	local corte5 = Point2D(origenX+alaIzquierda+anchuraPlaca+anchoLateral1,origenY+alaInferior+alturaLateral1+alturaLateral2)
	
	Contour:AppendPoint(corte1)
   	Contour:LineTo(corte2)
	Contour:LineTo(corte3)
	Contour:LineTo(corte4)
	Contour:LineTo(corte5)
	
	
	
	--Bucle con bota de cuelgue + Bota----
	
	
	local repeticiones=2--math.ceiling((alturaPlaca-sumaComienzoFin)/500.0)
	local tramoRectoEntreBotaDeCuelgue=(alturaPlaca-sumaComienzoFin-((repeticiones+1)*alturaBotaDeCuelgue)-(repeticiones*anchoBota))/repeticiones
	
	local puntoInicioX=(origenX+alaIzquierda+anchuraPlaca+anchoLateral1)
	local puntoInicioY=(origenY+alaInferior+alturaLateral1+alturaLateral2)
	
	for n=1, repeticiones do
	
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
		
		local corte14=Point2D(puntoInicioX,puntoInicioY+tramoRectoEntreBotaDeCuelgue)
		Contour:LineTo(corte14)
		puntoInicioY=puntoInicioY+tramoRectoEntreBotaDeCuelgue
		
		local corte15=Point2D(puntoInicioX-(alaDerecha-anchoLateral1),puntoInicioY+(alaDerecha-anchoLateral1))
		Contour:LineTo(corte15)
		puntoInicioX=puntoInicioX-(alaDerecha-anchoLateral1)
		puntoInicioY=puntoInicioY+(alaDerecha-anchoLateral1)

	end
	
	  --Última bota de cuelgue
	
        local corte16 = Point2D(puntoInicioX, puntoInicioY+tramoRecto1BotaDerecha)
		Contour:LineTo(corte16)
		
		puntoInicioY=puntoInicioY+tramoRecto1BotaDerecha
		
		local corte17=Point2D(puntoInicioX+(2*radioArcoBotaDerecha),puntoInicioY)
		local corte18=Point2D(puntoInicioX+(radioArcoBotaDerecha),puntoInicioY)
		Contour:ArcTo(corte17,corte18,false)
		puntoInicioX=puntoInicioX+(2*radioArcoBotaDerecha)
		
		local corte19=Point2D(puntoInicioX, puntoInicioY-tramoRecto2BotaDerecha)
		Contour:LineTo(corte19)
		puntoInicioY=puntoInicioY-tramoRecto2BotaDerecha
		
		local corte20=Point2D(puntoInicioX+(radioArcoBotaDerecha),puntoInicioY-radioArcoBotaDerecha)
		local corte21=Point2D(puntoInicioX+(radioArcoBotaDerecha),puntoInicioY)
		Contour:ArcTo(corte20,corte21,true)
		puntoInicioX=puntoInicioX+radioArcoBotaDerecha
		puntoInicioY=puntoInicioY-radioArcoBotaDerecha
		
		local corte22=Point2D(puntoInicioX+tramoRecto3BotaDerecha,puntoInicioY)
		Contour:LineTo(corte22)
		puntoInicioX=puntoInicioX+tramoRecto3BotaDerecha
		
		local corte23=Point2D(puntoInicioX,puntoInicioY+tramoRecto4BotaDerecha)
		Contour:LineTo(corte23)
		puntoInicioY=puntoInicioY+tramoRecto4BotaDerecha
		
		----------------------------------------------
		--Parte superior
		
		
	  local corte24 = Point2D(origenX+anchuraPlaca+alaIzquierda,origenY+alturaPlaca+alaInferior)
	  Contour:LineTo(corte24)
	  
	  local corte24 = Point2D(origenX+anchuraPlaca+alaIzquierda+pliegueSuperior,origenY+alturaPlaca+alaInferior+pliegueSuperior)
	  Contour:LineTo(corte24)
	  
	  local corte25 = Point2D(origenX+anchuraPlaca+alaIzquierda,origenY+alturaPlaca+alaInferior+pliegueSuperior)
	  Contour:LineTo(corte25)
	  
	  local corte26 = Point2D(origenX+anchuraPlaca+alaIzquierda,origenY+alturaPlaca+alaInferior+pliegueSuperior+alaSuperior)
	  Contour:LineTo(corte26)
	  
	  local corte27 = Point2D(origenX+alaIzquierda,origenY+alturaPlaca+alaInferior+pliegueSuperior+alaSuperior)
	  Contour:LineTo(corte27)
	  
	  local corte28 = Point2D(origenX+alaIzquierda,origenY+alturaPlaca+alaInferior+pliegueSuperior)
	  Contour:LineTo(corte28)
	  
	  local corte29 = Point2D(origenX+(alaIzquierda-pliegueSuperior),origenY+alturaPlaca+alaInferior+pliegueSuperior)
	  Contour:LineTo(corte29)
	  
	  local corte30 = Point2D(origenX+alaIzquierda,origenY+alturaPlaca+alaInferior)
	  Contour:LineTo(corte30)
	  
	  local corte31 = Point2D(origenX,origenY+alturaPlaca+alaInferior-alaSuperior)
	  Contour:LineTo(corte31)
	  
	  
	local tramoRecto1BotaIzquierda=26
	local radioArcoBotaIzquierda=4
	local tramoRecto2BotaIzquierda=7.5
	local tramoRecto3BotaIzquierda=18
	local tramoRecto4BotaIzquierda=52
		
	local puntoInicioX=(origenX)
	local puntoInicioY=(origenY+alturaPlaca+alaInferior-alaSuperior)
	
	
	
	
	--Bucle con bota de cuelgue + Bota----
	
	for n=1, repeticiones do
	
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
		
		local corte40=Point2D(puntoInicioX-(alaIzquierda-anchoLateral1),puntoInicioY-(alaIzquierda-anchoLateral1))
		Contour:LineTo(corte40)
		
		puntoInicioY=puntoInicioY-(alaIzquierda-anchoLateral1)
		puntoInicioX=puntoInicioX-(alaIzquierda-anchoLateral1)
			
		local corte41=Point2D(puntoInicioX,puntoInicioY-tramoRectoEntreBotaDeCuelgue)
		Contour:LineTo(corte41)
		puntoInicioY=puntoInicioY-tramoRectoEntreBotaDeCuelgue
		
		

	end
	
    --Última bota de culegue
	
		local corte42 = Point2D(puntoInicioX, puntoInicioY-tramoRecto1BotaIzquierda)
		Contour:LineTo(corte42)
		
		puntoInicioY=puntoInicioY-tramoRecto1BotaIzquierda
		
		local corte43=Point2D(puntoInicioX+tramoRecto2BotaIzquierda, puntoInicioY)
		Contour:LineTo(corte43)
		puntoInicioX=puntoInicioX+tramoRecto2BotaIzquierda
		
		local corte44=Point2D(puntoInicioX+(radioArcoBotaIzquierda),puntoInicioY+radioArcoBotaIzquierda)
		local corte45=Point2D(puntoInicioX,puntoInicioY+radioArcoBotaIzquierda)
		Contour:ArcTo(corte44,corte45,true)
		puntoInicioX=puntoInicioX+radioArcoBotaIzquierda
		puntoInicioY=puntoInicioY+radioArcoBotaIzquierda
		
		local corte46=Point2D(puntoInicioX, puntoInicioY+tramoRecto3BotaIzquierda)
		Contour:LineTo(corte46)
		puntoInicioY=puntoInicioY+tramoRecto3BotaIzquierda
		
		local corte47=Point2D(puntoInicioX+(2*radioArcoBotaIzquierda),puntoInicioY)
		local corte48=Point2D(puntoInicioX+(radioArcoBotaIzquierda),puntoInicioY)
		Contour:ArcTo(corte47,corte48,false)
		puntoInicioX=puntoInicioX+(2*radioArcoBotaIzquierda)
		
		
		local corte49=Point2D(puntoInicioX,puntoInicioY-tramoRecto4BotaIzquierda)
		Contour:LineTo(corte49)
		puntoInicioY=puntoInicioY-tramoRecto4BotaIzquierda
		
		--------------------------------------------
		
		
		
		
		
	--------------------------------------------------------
	local cad_object = CreateCadContour(Contour)
	local cur_layer = doc.LayerManager:GetActiveLayer()
	local layer = doc.LayerManager:GetLayerWithName("Corte")
	layer:AddObject(cad_object, true)
	layer:SetColor(255,0,0)
	layer.Visible = true 
	doc.LayerManager:SetActiveLayer(cur_layer)
	doc:Refresh2DView()	
	-----------------------------------------------------------------
	return true; 
end

function Dibujar_Taladros(doc,anchuraPlaca,alturaPlaca,margenPlaca,alturaAla)

	local Contour = Contour(0.0)

	local corte1 = Point2D(origenX,origenY)
	
   
   	Contour:AppendPoint(corte1)
   
   
	--------------------------------------------------------
	local cad_object = CreateCadContour(Contour)
	local cur_layer = doc.LayerManager:GetActiveLayer()
	local layer = doc.LayerManager:GetLayerWithName("Taladros")
	layer:AddObject(cad_object, true)
	layer.Colour = 255255255 
	layer.Visible = true 
	doc.LayerManager:SetActiveLayer(cur_layer)
	doc:Refresh2DView()	
	-----------------------------------------------------------------
	return true; 
end