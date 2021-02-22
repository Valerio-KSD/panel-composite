-- VECTRIC LUA SCRIPT

require "strict"

f_pliegueSuperior=40
f_pliegueInferior=32
f_pliegueIzquierda=40
f_pliegueDerecha=40

f_AnchuraPlaca  = 1000
f_MargenPlaca  = 3
f_AlturaPlaca  = 500


f_dobladilloSuperior=36
f_dobladilloInferior=0



f_OrigenX=0
f_OrigenY=0

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

--[[
function OnLuaButton_modeloAH()
	Dibujar_Fresado1_AH()
	Dibujar_Solapas()
	Dibujar_Botas()
	Dibujar_Escuadras()
end
function OnLuaButton_modeloAH1()
	Dibujar_FresadoAH()
	Dibujar_Solapas()
	Dibujar_Botas()
	Dibujar_Escuadras()
end
function OnLuaButton_modeloAH2()
	Dibujar_FresadoAH()
	Dibujar_Solapas()
	Dibujar_Botas()
	Dibujar_Escuadras()
end
function OnLuaButton_modeloAH3()
	Dibujar_FresadoAH()
	Dibujar_Solapas()
	Dibujar_Botas()
	Dibujar_Escuadras()
end
function OnLuaButton_modeloAH4()
	Dibujar_FresadoAH()
	Dibujar_Solapas()
	Dibujar_Botas()
	Dibujar_Escuadras()
end
function OnLuaButton_modeloAH5()
	Dibujar_FresadoAH()
	Dibujar_Solapas()
	Dibujar_Botas()
	Dibujar_Escuadras()
end
function OnLuaButton_modeloAH6()
	Dibujar_FresadoAH()
	Dibujar_Solapas()
	Dibujar_Botas()
	Dibujar_Escuadras()
end
function OnLuaButton_modeloAH7()
	Dibujar_FresadoAH()
	Dibujar_Solapas()
	Dibujar_Botas()
	Dibujar_Escuadras()
end
function OnLuaButton_modeloAH8()
	Dibujar_FresadoAH()
	Dibujar_Solapas()
	Dibujar_Botas()
	Dibujar_Escuadras()
end
]]


function Dibujar_Fresado1_AH(doc,f_AnchuraPlaca,f_AlturaPlaca,f_MargenPlaca,f_OrigenX,f_OrigenY,LineaSuperior,LineaInferior)
	f_pliegueSuperior=40
	f_pliegueInferior=32
	f_pliegueIzquierda=40
	f_pliegueDerecha=40

	
	f_dobladilloSuperior=36
	f_dobladilloInferior=10
	
	
	
	
	
	local Contour = Contour(0.0)
	
	local fresado9 = Point2D(f_OrigenX+f_pliegueIzquierda,f_OrigenY)
	local fresado1 = Point2D(f_OrigenX+f_pliegueIzquierda, f_OrigenY+f_pliegueInferior)
	local fresado2 = Point2D(f_OrigenX+f_pliegueIzquierda, f_OrigenY+f_pliegueInferior+f_dobladilloInferior)
	local fresado3 = Point2D(f_OrigenX+f_AnchuraPlaca+f_pliegueIzquierda,f_OrigenY+f_pliegueInferior+f_dobladilloInferior)
	local fresado4 = Point2D(f_OrigenX+f_AnchuraPlaca+f_pliegueIzquierda,f_OrigenY+f_pliegueInferior)
 	local fresado10 = Point2D(f_OrigenX+f_pliegueIzquierda+f_AnchuraPlaca,f_OrigenY)
  	local fresado5 = Point2D(f_OrigenX+f_AnchuraPlaca+f_pliegueIzquierda,f_OrigenY+f_pliegueInferior+f_AlturaPlaca+f_dobladilloSuperior+f_dobladilloInferior)
   	local fresado6 = Point2D(f_OrigenX+f_pliegueIzquierda,f_OrigenY+f_pliegueInferior+f_AlturaPlaca+f_dobladilloSuperior+f_dobladilloInferior)
   	local fresado7 = Point2D(f_OrigenX+f_pliegueIzquierda,f_OrigenY+f_pliegueInferior+f_AlturaPlaca+f_dobladilloInferior)
	local fresado8 = Point2D(f_OrigenX+f_AnchuraPlaca+f_pliegueIzquierda,f_OrigenY+f_pliegueInferior+f_AlturaPlaca+f_dobladilloInferior)
	local fresado11 = Point2D(f_OrigenX+f_AnchuraPlaca+f_pliegueIzquierda,f_OrigenY+f_pliegueInferior+f_dobladilloInferior+f_AlturaPlaca+f_dobladilloSuperior+f_pliegueSuperior)
	
	
	--local fresado9 = Point2D(f_OrigenX+f_pliegueIzquierda,f_OrigenY+f_pliegueInferior+f_AlturaPlaca)
	--
	--
	--
	--[[
	Contour:AppendPoint(fresado1)
	Contour:LineTo(fresado6)
	
	Contour:AppendPoint(fresado8)
	Contour:LineTo(fresado7)
	
	Contour:AppendPoint(fresado4)
	Contour:LineTo(fresado5)
	
	Contour:AppendPoint(fresado2)
	Contour:LineTo(fresado3)
	]]
	
	
	Contour:AppendPoint(fresado1)
	Contour:LineTo(fresado2)
	Contour:LineTo(fresado3)
	Contour:LineTo(fresado4)
	Contour:LineTo(fresado5)
	Contour:LineTo(fresado8)
	Contour:LineTo(fresado7)
	Contour:LineTo(fresado6)
	Contour:LineTo(fresado2)
	Contour:LineTo(fresado9)
	Contour:LineTo(fresado1)
	Contour:LineTo(fresado4)
	Contour:LineTo(fresado10)
	Contour:LineTo(fresado11)
	Contour:LineTo(fresado5)
	Contour:LineTo(fresado6)
	
	
	
	
	
	--[[
	Contour:AppendPoint(fresado1)
   	Contour:LineTo(fresado2)
	Contour:LineTo(fresado3)
	Contour:LineTo(fresado4)
	Contour:LineTo(fresado5)
	Contour:LineTo(fresado6)
	Contour:LineTo(fresado7)
	Contour:LineTo(fresado8)
	Contour:LineTo(fresado7)--Contour:LineTo(fresado9)
	Contour:LineTo(fresado1)
	]]
	
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
	
	 

	modeloAH:AddDoubleField("anchuraPlacaAH", f_AnchuraPlaca)
    modeloAH:AddDoubleField("margenPlacaAH", f_MargenPlaca)
    modeloAH:AddDoubleField("alturaPlacaAH", f_AlturaPlaca)
	modeloAH:AddDoubleField("origenXAH", f_OrigenX)
	modeloAH:AddDoubleField("origenYAH", f_OrigenY)	
	
	
    if  not modeloAH:ShowDialog() then
		
			return false;
				
	end
	
	
	
return true;

end

function OnLuaButton_aceptarAH(modeloAH)

    	
	f_AnchuraPlaca  = modeloAH:GetDoubleField("anchuraPlacaAH")
    f_MargenPlaca  = modeloAH:GetDoubleField("margenPlacaAH")
    f_AlturaPlaca  = modeloAH:GetDoubleField("alturaPlacaAH")
	f_OrigenX = modeloAH:GetDoubleField("origenXAH")
	f_OrigenY = modeloAH:GetDoubleField("origenYAH")	
	
	
	f_AnchuraPlaca=f_AnchuraPlaca-f_MargenPlaca
    f_AlturaPlaca=f_AlturaPlaca-f_MargenPlaca
	
	if f_AnchuraPlaca < 0 then
		
		DisplayMessageBox("La anchura de la placa NO puede ser negativa.Creación Modelo AH Fallida")
				
	
	elseif f_MargenPlaca < 0 then
		
		DisplayMessageBox("El margen de la placa NO puede ser negativo.Creación Modelo AH Fallida")
	
	elseif  f_AlturaPlaca < 0 then
		
		DisplayMessageBox("La altura de la placa NO puede ser negativa.Creación Modelo AH Fallida")
	
    	
	else
	
		--Dibujar_FresadoAH(doc,f_AnchuraPlaca,f_AlturaPlaca,f_MargenPlaca, f_OrigenX,f_OrigenY)
		Dibujar_Fresado1_AH(doc,f_AnchuraPlaca,f_AlturaPlaca,f_MargenPlaca, f_OrigenX,f_OrigenY)
		--Dibujar_CorteAH(doc,f_AnchuraPlaca,f_AlturaPlaca,f_MargenPlaca,f_OrigenX,f_OrigenY)
	
		DisplayMessageBox("Modelo AH Creado Correctamente")
	
	end
	
return true;

end


function Dibujar_FresadoAH(doc,f_AnchuraPlaca,f_AlturaPlaca,f_MargenPlaca,f_OrigenX,f_OrigenY)

	f_pliegueSuperior=40
	f_pliegueInferior=32
	f_pliegueIzquierda=40
	f_pliegueDerecha=40

	
	f_dobladilloSuperior=36
	f_dobladilloInferior=0
	
	
	
	local Contour = Contour(0.0)
	
 	local fresado1 = Point2D(f_OrigenX+f_pliegueIzquierda, f_OrigenY)
  	local fresado2 = Point2D(f_OrigenX+f_pliegueIzquierda, f_OrigenY+f_pliegueInferior)
   	local fresado3 = Point2D(f_OrigenX+f_AnchuraPlaca+f_pliegueIzquierda,f_OrigenY+f_pliegueInferior)
   	local fresado4 = Point2D(f_OrigenX+f_AnchuraPlaca+f_pliegueIzquierda,f_OrigenY)
	local fresado5 = Point2D(f_OrigenX+f_AnchuraPlaca+f_pliegueIzquierda,f_OrigenY+f_pliegueInferior+f_AlturaPlaca+f_dobladilloSuperior)
	local fresado6 = Point2D(f_OrigenX+f_pliegueIzquierda,f_OrigenY+f_pliegueInferior+f_AlturaPlaca+f_dobladilloSuperior)
	local fresado7 = Point2D(f_OrigenX+f_pliegueIzquierda,f_OrigenY+f_pliegueInferior+f_AlturaPlaca)
	local fresado8 = Point2D(f_OrigenX+f_AnchuraPlaca+f_pliegueIzquierda,f_OrigenY+f_pliegueInferior+f_AlturaPlaca)
	local fresado9 = Point2D(f_OrigenX+f_pliegueIzquierda,f_OrigenY+f_pliegueInferior+f_AlturaPlaca)
	
	
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

function Dibujar_CorteAH(doc,f_AnchuraPlaca,f_AlturaPlaca,f_MargenPlaca,f_OrigenX,f_OrigenY)

	f_pliegueSuperior=40
	f_pliegueInferior=32
	f_pliegueIzquierda=40
	f_pliegueDerecha=40

	
	f_dobladilloSuperior=36
	f_dobladilloInferior=0
	
	
	local f_sumaComienzoFin=109
	local f_alturaBotaDeCuelgue=56
	local f_anchoBota=18.5
	
	
	local f_anchoLateral1=21.5
	local f_alturaLateral1=15.3
	
	local f_anchoLateral2=36.9
	local f_alturaLateral2=36.7
	
	local f_tramoRecto1BotaDerecha=52
	local f_radioArcoBotaDerecha=4
	local f_tramoRecto2BotaDerecha=18
	local f_tramoRecto3BotaDerecha=7.5
	local f_tramoRecto4BotaDerecha=26
	
	--Parte Inferior

	local Contour = Contour(0.0)

	local corte1 = Point2D(f_OrigenX+(f_pliegueIzquierda-f_pliegueInferior),f_OrigenY)
	local corte2 = Point2D(f_OrigenX+f_pliegueIzquierda+f_AnchuraPlaca+f_pliegueInferior,f_OrigenY)
	local corte3 = Point2D(f_OrigenX+f_pliegueIzquierda+f_AnchuraPlaca,f_OrigenY+f_pliegueInferior)
	local corte4 = Point2D(f_OrigenX+f_pliegueIzquierda+f_AnchuraPlaca+f_anchoLateral2,f_OrigenY+f_pliegueInferior+f_alturaLateral2)
	local corte5 = Point2D(f_OrigenX+f_pliegueIzquierda+f_AnchuraPlaca+f_anchoLateral1,f_OrigenY+f_pliegueInferior+f_alturaLateral1+f_alturaLateral2)
	
	Contour:AppendPoint(corte1)
   	Contour:LineTo(corte2)
	Contour:LineTo(corte3)
	Contour:LineTo(corte4)
	Contour:LineTo(corte5)
	
	local repeticiones=2--math.ceiling((f_AlturaPlaca-f_sumaComienzoFin)/500.0)
	local f_tramoRectoEntreBotaDeCuelgue=(f_AlturaPlaca-f_sumaComienzoFin-((repeticiones+1)*f_alturaBotaDeCuelgue)-(repeticiones*f_anchoBota))/repeticiones
	
	local puntoInicioX=(f_OrigenX+f_pliegueIzquierda+f_AnchuraPlaca+f_anchoLateral1)
	local puntoInicioY=(f_OrigenY+f_pliegueInferior+f_alturaLateral1+f_alturaLateral2)
	
	
	
	
	--Bucle con bota de cuelgue + Bota----
	
	for n=1, repeticiones do
	
	    local corte6 = Point2D(puntoInicioX, puntoInicioY+f_tramoRecto1BotaDerecha)
		Contour:LineTo(corte6)
		
		puntoInicioY=puntoInicioY+f_tramoRecto1BotaDerecha
		
		local corte7=Point2D(puntoInicioX+(2*f_radioArcoBotaDerecha),puntoInicioY)
		local corte8=Point2D(puntoInicioX+(f_radioArcoBotaDerecha),puntoInicioY)
		Contour:ArcTo(corte7,corte8,false)
		puntoInicioX=puntoInicioX+(2*f_radioArcoBotaDerecha)
		
		local corte9=Point2D(puntoInicioX, puntoInicioY-f_tramoRecto2BotaDerecha)
		Contour:LineTo(corte9)
		puntoInicioY=puntoInicioY-f_tramoRecto2BotaDerecha
		
		local corte10=Point2D(puntoInicioX+(f_radioArcoBotaDerecha),puntoInicioY-f_radioArcoBotaDerecha)
		local corte11=Point2D(puntoInicioX+(f_radioArcoBotaDerecha),puntoInicioY)
		Contour:ArcTo(corte10,corte11,true)
		puntoInicioX=puntoInicioX+f_radioArcoBotaDerecha
		puntoInicioY=puntoInicioY-f_radioArcoBotaDerecha
		
		local corte12=Point2D(puntoInicioX+f_tramoRecto3BotaDerecha,puntoInicioY)
		Contour:LineTo(corte12)
		puntoInicioX=puntoInicioX+f_tramoRecto3BotaDerecha
		
		local corte13=Point2D(puntoInicioX,puntoInicioY+f_tramoRecto4BotaDerecha)
		Contour:LineTo(corte13)
		puntoInicioY=puntoInicioY+f_tramoRecto4BotaDerecha
		
		local corte14=Point2D(puntoInicioX,puntoInicioY+f_tramoRectoEntreBotaDeCuelgue)
		Contour:LineTo(corte14)
		puntoInicioY=puntoInicioY+f_tramoRectoEntreBotaDeCuelgue
		
		local corte15=Point2D(puntoInicioX-(f_pliegueDerecha-f_anchoLateral1),puntoInicioY+(f_pliegueDerecha-f_anchoLateral1))
		Contour:LineTo(corte15)
		puntoInicioX=puntoInicioX-(f_pliegueDerecha-f_anchoLateral1)
		puntoInicioY=puntoInicioY+(f_pliegueDerecha-f_anchoLateral1)

	end
	
	  --Última bota de cuelgue
	
        local corte16 = Point2D(puntoInicioX, puntoInicioY+f_tramoRecto1BotaDerecha)
		Contour:LineTo(corte16)
		
		puntoInicioY=puntoInicioY+f_tramoRecto1BotaDerecha
		
		local corte17=Point2D(puntoInicioX+(2*f_radioArcoBotaDerecha),puntoInicioY)
		local corte18=Point2D(puntoInicioX+(f_radioArcoBotaDerecha),puntoInicioY)
		Contour:ArcTo(corte17,corte18,false)
		puntoInicioX=puntoInicioX+(2*f_radioArcoBotaDerecha)
		
		local corte19=Point2D(puntoInicioX, puntoInicioY-f_tramoRecto2BotaDerecha)
		Contour:LineTo(corte19)
		puntoInicioY=puntoInicioY-f_tramoRecto2BotaDerecha
		
		local corte20=Point2D(puntoInicioX+(f_radioArcoBotaDerecha),puntoInicioY-f_radioArcoBotaDerecha)
		local corte21=Point2D(puntoInicioX+(f_radioArcoBotaDerecha),puntoInicioY)
		Contour:ArcTo(corte20,corte21,true)
		puntoInicioX=puntoInicioX+f_radioArcoBotaDerecha
		puntoInicioY=puntoInicioY-f_radioArcoBotaDerecha
		
		local corte22=Point2D(puntoInicioX+f_tramoRecto3BotaDerecha,puntoInicioY)
		Contour:LineTo(corte22)
		puntoInicioX=puntoInicioX+f_tramoRecto3BotaDerecha
		
		local corte23=Point2D(puntoInicioX,puntoInicioY+f_tramoRecto4BotaDerecha)
		Contour:LineTo(corte23)
		puntoInicioY=puntoInicioY+f_tramoRecto4BotaDerecha
		
		----------------------------------------------
		--Parte superior
		
		
	  local corte24 = Point2D(f_OrigenX+f_AnchuraPlaca+f_pliegueIzquierda,f_OrigenY+f_AlturaPlaca+f_pliegueInferior)
	  Contour:LineTo(corte24)
	  
	  local corte24 = Point2D(f_OrigenX+f_AnchuraPlaca+f_pliegueIzquierda+f_dobladilloSuperior,f_OrigenY+f_AlturaPlaca+f_pliegueInferior+f_dobladilloSuperior)
	  Contour:LineTo(corte24)
	  
	  local corte25 = Point2D(f_OrigenX+f_AnchuraPlaca+f_pliegueIzquierda,f_OrigenY+f_AlturaPlaca+f_pliegueInferior+f_dobladilloSuperior)
	  Contour:LineTo(corte25)
	  
	  local corte26 = Point2D(f_OrigenX+f_AnchuraPlaca+f_pliegueIzquierda,f_OrigenY+f_AlturaPlaca+f_pliegueInferior+f_dobladilloSuperior+f_pliegueSuperior)
	  Contour:LineTo(corte26)
	  
	  local corte27 = Point2D(f_OrigenX+f_pliegueIzquierda,f_OrigenY+f_AlturaPlaca+f_pliegueInferior+f_dobladilloSuperior+f_pliegueSuperior)
	  Contour:LineTo(corte27)
	  
	  local corte28 = Point2D(f_OrigenX+f_pliegueIzquierda,f_OrigenY+f_AlturaPlaca+f_pliegueInferior+f_dobladilloSuperior)
	  Contour:LineTo(corte28)
	  
	  local corte29 = Point2D(f_OrigenX+(f_pliegueIzquierda-f_dobladilloSuperior),f_OrigenY+f_AlturaPlaca+f_pliegueInferior+f_dobladilloSuperior)
	  Contour:LineTo(corte29)
	  
	  local corte30 = Point2D(f_OrigenX+f_pliegueIzquierda,f_OrigenY+f_AlturaPlaca+f_pliegueInferior)
	  Contour:LineTo(corte30)
	  
	  local corte31 = Point2D(f_OrigenX,f_OrigenY+f_AlturaPlaca+f_pliegueInferior-f_pliegueSuperior)
	  Contour:LineTo(corte31)
	  
	  
	local f_tramoRecto1BotaIzquierda=26
	local f_radioArcoBotaIzquierda=4
	local f_tramoRecto2BotaIzquierda=7.5
	local f_tramoRecto3BotaIzquierda=18
	local f_tramoRecto4BotaIzquierda=52
		
	local puntoInicioX=(f_OrigenX)
	local puntoInicioY=(f_OrigenY+f_AlturaPlaca+f_pliegueInferior-f_pliegueSuperior)
	
	
	
	
	--Bucle con bota de cuelgue + Bota----
	
	for n=1, repeticiones do
	
	    local corte32 = Point2D(puntoInicioX, puntoInicioY-f_tramoRecto1BotaIzquierda)
		Contour:LineTo(corte32)
		
		puntoInicioY=puntoInicioY-f_tramoRecto1BotaIzquierda
		
		local corte33=Point2D(puntoInicioX+f_tramoRecto2BotaIzquierda, puntoInicioY)
		Contour:LineTo(corte33)
		puntoInicioX=puntoInicioX+f_tramoRecto2BotaIzquierda
		
		local corte34=Point2D(puntoInicioX+(f_radioArcoBotaIzquierda),puntoInicioY+f_radioArcoBotaIzquierda)
		local corte35=Point2D(puntoInicioX,puntoInicioY+f_radioArcoBotaIzquierda)
		Contour:ArcTo(corte34,corte35,true)
		puntoInicioX=puntoInicioX+f_radioArcoBotaIzquierda
		puntoInicioY=puntoInicioY+f_radioArcoBotaIzquierda
		
		local corte36=Point2D(puntoInicioX, puntoInicioY+f_tramoRecto3BotaIzquierda)
		Contour:LineTo(corte36)
		puntoInicioY=puntoInicioY+f_tramoRecto3BotaIzquierda
		
		local corte37=Point2D(puntoInicioX+(2*f_radioArcoBotaIzquierda),puntoInicioY)
		local corte38=Point2D(puntoInicioX+(f_radioArcoBotaIzquierda),puntoInicioY)
		Contour:ArcTo(corte37,corte38,false)
		puntoInicioX=puntoInicioX+(2*f_radioArcoBotaIzquierda)
		
		
		local corte39=Point2D(puntoInicioX,puntoInicioY-f_tramoRecto4BotaIzquierda)
		Contour:LineTo(corte39)
		puntoInicioY=puntoInicioY-f_tramoRecto4BotaIzquierda
		
		local corte40=Point2D(puntoInicioX-(f_pliegueIzquierda-f_anchoLateral1),puntoInicioY-(f_pliegueIzquierda-f_anchoLateral1))
		Contour:LineTo(corte40)
		
		puntoInicioY=puntoInicioY-(f_pliegueIzquierda-f_anchoLateral1)
		puntoInicioX=puntoInicioX-(f_pliegueIzquierda-f_anchoLateral1)
			
		local corte41=Point2D(puntoInicioX,puntoInicioY-f_tramoRectoEntreBotaDeCuelgue)
		Contour:LineTo(corte41)
		puntoInicioY=puntoInicioY-f_tramoRectoEntreBotaDeCuelgue
		
		

	end
	
    --Última bota de culegue
	
		local corte42 = Point2D(puntoInicioX, puntoInicioY-f_tramoRecto1BotaIzquierda)
		Contour:LineTo(corte42)
		
		puntoInicioY=puntoInicioY-f_tramoRecto1BotaIzquierda
		
		local corte43=Point2D(puntoInicioX+f_tramoRecto2BotaIzquierda, puntoInicioY)
		Contour:LineTo(corte43)
		puntoInicioX=puntoInicioX+f_tramoRecto2BotaIzquierda
		
		local corte44=Point2D(puntoInicioX+(f_radioArcoBotaIzquierda),puntoInicioY+f_radioArcoBotaIzquierda)
		local corte45=Point2D(puntoInicioX,puntoInicioY+f_radioArcoBotaIzquierda)
		Contour:ArcTo(corte44,corte45,true)
		puntoInicioX=puntoInicioX+f_radioArcoBotaIzquierda
		puntoInicioY=puntoInicioY+f_radioArcoBotaIzquierda
		
		local corte46=Point2D(puntoInicioX, puntoInicioY+f_tramoRecto3BotaIzquierda)
		Contour:LineTo(corte46)
		puntoInicioY=puntoInicioY+f_tramoRecto3BotaIzquierda
		
		local corte47=Point2D(puntoInicioX+(2*f_radioArcoBotaIzquierda),puntoInicioY)
		local corte48=Point2D(puntoInicioX+(f_radioArcoBotaIzquierda),puntoInicioY)
		Contour:ArcTo(corte47,corte48,false)
		puntoInicioX=puntoInicioX+(2*f_radioArcoBotaIzquierda)
		
		
		local corte49=Point2D(puntoInicioX,puntoInicioY-f_tramoRecto4BotaIzquierda)
		Contour:LineTo(corte49)
		puntoInicioY=puntoInicioY-f_tramoRecto4BotaIzquierda
		
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

function Dibujar_Taladros(doc,f_AnchuraPlaca,f_AlturaPlaca,f_MargenPlaca,f_Alturapliegue)

	local Contour = Contour(0.0)

	local corte1 = Point2D(f_OrigenX,f_OrigenY)
	
   
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