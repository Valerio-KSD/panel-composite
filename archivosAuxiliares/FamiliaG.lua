-- VECTRIC LUA SCRIPT
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- Familia G ---------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Familia G -> [004-005-006-012]

function OnLuaButton_modeloG(framePrincipal)



	if modelo == 104 then  --G1
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia004.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia004.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES G1")
		
		textoDescriptivo="BANDEJA G1"
		alturaPlaca=500 anchuraPlaca=1000 margenM=107.5401 margenL=565.4093		
		alaSuperior=45 alaInferior=45 alaIzquierda=45 alaDerecha=45 pliegueSuperior=45  
		
        modelo000:AddTextField("textoDescriptivo", textoDescriptivo)
		modelo000:AddDoubleField("alturaPlaca", alturaPlaca)
		modelo000:AddDoubleField("anchuraPlaca", anchuraPlaca)
		modelo000:AddDoubleField("margenM", margenM)
		modelo000:AddDoubleField("margenL", margenL)
		modelo000:AddDoubleField("alaSuperior", alaSuperior)
		modelo000:AddDoubleField("alaInferior", alaInferior)
		modelo000:AddDoubleField("alaIzquierda", alaIzquierda)
		modelo000:AddDoubleField("alaDerecha", alaDerecha)
		modelo000:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modelo000:AddDoubleField("margenMecanizado", margenMecanizado)
		
	    if  not modelo000:ShowDialog() then
				return false;
		end
	
	elseif modelo == 105 then  --G2
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia005.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia005.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES G2")
		
		textoDescriptivo="BANDEJA G2"
		alturaPlaca=500 anchuraPlaca=1000 margenL=565.4093		
		alaSuperior=45 alaInferior=45 alaIzquierda=45 alaDerecha=45 pliegueSuperior=45  
		
        modelo000:AddTextField("textoDescriptivo", textoDescriptivo)
		modelo000:AddDoubleField("alturaPlaca", alturaPlaca)
		modelo000:AddDoubleField("anchuraPlaca", anchuraPlaca)
		modelo000:AddDoubleField("margenL", margenL)
		modelo000:AddDoubleField("alaSuperior", alaSuperior)
		modelo000:AddDoubleField("alaInferior", alaInferior)
		modelo000:AddDoubleField("alaIzquierda", alaIzquierda)
		modelo000:AddDoubleField("alaDerecha", alaDerecha)
		modelo000:AddDoubleField("pliegueSuperior", pliegueSuperior)
		
		modelo000:AddDoubleField("margenMecanizado", margenMecanizado)-----
		
	    if  not modelo000:ShowDialog() then
				return false;
		end
	
	elseif modelo == 106 then  --G3
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia006.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia006.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES G3")
		
		textoDescriptivo="BANDEJA G3"
		alturaPlaca=500 anchuraPlaca=733.5821 margenL=985.9861	margenS=522.6872 margenM=311.5437
		alaSuperior=45 alaInferior=45 alaIzquierda=45 alaDerecha=45 pliegueSuperior=50  	
		
        modelo000:AddTextField("textoDescriptivo", textoDescriptivo)
		
		modelo000:AddDoubleField("alturaPlaca", alturaPlaca)
		modelo000:AddDoubleField("anchuraPlaca", anchuraPlaca)
		modelo000:AddDoubleField("margenL", margenL)
		modelo000:AddDoubleField("margenM", margenM)
		modelo000:AddDoubleField("margenS", margenS)
		
		modelo000:AddDoubleField("alaSuperior", alaSuperior)
		modelo000:AddDoubleField("alaInferior", alaInferior)
		modelo000:AddDoubleField("alaIzquierda", alaIzquierda)
		modelo000:AddDoubleField("alaDerecha", alaDerecha)
		
		modelo000:AddDoubleField("pliegueSuperior", pliegueSuperior)
		
		modelo000:AddDoubleField("margenMecanizado", margenMecanizado)
		
	    if  not modelo000:ShowDialog() then
				return false;
		end
	
	elseif modelo == 112 then  --G4
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia012.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia012.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES G4")
		
		textoDescriptivo="[G4]Tapa Machon"
		alturaPlaca=500 anchuraPlaca=1000
		pliegueIzq1=15 pliegueIzq2=30 pliegueIzq3=80
		pliegueInf1=15 pliegueInf2=30 pliegueInf3=80
		margenFresado=1
		
        modelo000:AddTextField("textoDescriptivo", textoDescriptivo)
		
		modelo000:AddDoubleField("alturaPlaca", alturaPlaca)
		modelo000:AddDoubleField("anchuraPlaca", anchuraPlaca)
		
		modelo000:AddDoubleField("pliegueIzq1", pliegueIzq1)
		modelo000:AddDoubleField("pliegueIzq2", pliegueIzq2)
		modelo000:AddDoubleField("pliegueIzq3", pliegueIzq3)
		
		modelo000:AddDoubleField("pliegueInf1", pliegueInf1)
		modelo000:AddDoubleField("pliegueInf2", pliegueInf2)
		modelo000:AddDoubleField("pliegueInf3", pliegueInf3)
		
		modelo000:AddDoubleField("margenFresado", margenFresado)
		
		modelo000:AddDoubleField("margenMecanizado", margenMecanizado)-----
		
	    if  not modelo000:ShowDialog() then
				return false;
		end
		
	
	end
	
end


function OnLuaButton_aceptarG(modelo000)

	if modelo==104 then  --PIEZA G1
		
		textoDescriptivo = modelo000:GetTextField("textoDescriptivo")
		alturaPlaca = modelo000:GetDoubleField("alturaPlaca")
		anchuraPlaca = modelo000:GetDoubleField("anchuraPlaca")
		margenM = modelo000:GetDoubleField("margenM")
		margenL = modelo000:GetDoubleField("margenL")
		alaSuperior = modelo000:GetDoubleField("alaSuperior")
		alaInferior = modelo000:GetDoubleField("alaInferior")
		alaDerecha = modelo000:GetDoubleField("alaDerecha")
		alaIzquierda = modelo000:GetDoubleField("alaIzquierda")
		pliegueSuperior = modelo000:GetDoubleField("pliegueSuperior")
		margenMecanizado=modelo000:GetDoubleField("margenMecanizado")
		
		--Punto inicial de la pieza
			origenX=-(anchuraPlaca+alaIzquierda+alaDerecha+400)
			origenY= 400
		
		dibujarFresado004(doc)
		dibujarCorte004(doc)
		dibujarTexto(doc)
		DisplayMessageBox("MODELO 004 CREADO CORRECTAMENTE")
	
	elseif modelo==105 then  --PIEZA G2
		
		textoDescriptivo = modelo000:GetTextField("textoDescriptivo")
		alturaPlaca = modelo000:GetDoubleField("alturaPlaca")
		anchuraPlaca = modelo000:GetDoubleField("anchuraPlaca")
		margenL = modelo000:GetDoubleField("margenL")
		alaSuperior = modelo000:GetDoubleField("alaSuperior")
		alaInferior = modelo000:GetDoubleField("alaInferior")
		alaDerecha = modelo000:GetDoubleField("alaDerecha")
		alaIzquierda = modelo000:GetDoubleField("alaIzquierda")
		pliegueSuperior = modelo000:GetDoubleField("pliegueSuperior")
		margenMecanizado=modelo000:GetDoubleField("margenMecanizado")
		
		--Punto inicial de la pieza
			origenX=-(anchuraPlaca+alaIzquierda+alaDerecha+400)
			origenY= 400
		
		dibujarFresado005(doc)
		dibujarCorte005(doc)
		dibujarTexto(doc)
		DisplayMessageBox("MODELO 005 CREADO CORRECTAMENTE")
		
	elseif modelo==106 then  --PIEZA G3
		
		textoDescriptivo = modelo000:GetTextField("textoDescriptivo")
		alturaPlaca = modelo000:GetDoubleField("alturaPlaca")
		anchuraPlaca = modelo000:GetDoubleField("anchuraPlaca")
		margenL = modelo000:GetDoubleField("margenL")
		
		alaSuperior = modelo000:GetDoubleField("alaSuperior")
		alaInferior = modelo000:GetDoubleField("alaInferior")
		alaDerecha = modelo000:GetDoubleField("alaDerecha")
		alaIzquierda = modelo000:GetDoubleField("alaIzquierda")
		
		margenL = modelo000:GetDoubleField("margenL")
		margenM = modelo000:GetDoubleField("margenM")
		margenS = modelo000:GetDoubleField("margenS")
		
		pliegueSuperior = modelo000:GetDoubleField("pliegueSuperior")
		
		margenMecanizado=modelo000:GetDoubleField("margenMecanizado")
		
		--Punto inicial de la pieza
			origenX=-(margenL+alaIzquierda+alaDerecha+400)
			origenY= 400
		
		dibujarFresado006(doc)
		dibujarCorte006(doc)
		
		DisplayMessageBox("MODELO 006 CREADO CORRECTAMENTE")
		
	elseif modelo==112 then  --PIEZA G4
		
		textoDescriptivo = modelo000:GetTextField("textoDescriptivo")
		
		alturaPlaca = modelo000:GetDoubleField("alturaPlaca")
		anchuraPlaca = modelo000:GetDoubleField("anchuraPlaca")
		
		pliegueIzq1 = modelo000:GetDoubleField("pliegueIzq1")
		pliegueIzq2 = modelo000:GetDoubleField("pliegueIzq2")
		pliegueIzq3 = modelo000:GetDoubleField("pliegueIzq3")
		
		pliegueInf1 = modelo000:GetDoubleField("pliegueInf1")
		pliegueInf2 = modelo000:GetDoubleField("pliegueInf2")
		pliegueInf3 = modelo000:GetDoubleField("pliegueInf3")
		
		margenFresado = modelo000:GetDoubleField("margenFresado")
		
		
		--AJUSTES DEBIDOS A LA SIMETRIA DE LA PIEZA--
		pliegueSup1=pliegueInf1
		pliegueSup2=pliegueInf2
		pliegueSup3=pliegueInf3

		pliegueDer1=pliegueIzq1
		pliegueDer2=pliegueIzq2
		pliegueDer3=pliegueIzq3
		
		--Punto inicial de la pieza
			origenX=-(pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca+pliegueDer1+pliegueDer2+pliegueDer3+400)
			origenY= 400
		
		
		dibujarFresado012(doc)
		dibujarCorte012(doc)
		dibujarTexto(doc)
		DisplayMessageBox("MODELO 012 CREADO CORRECTAMENTE")
		
	
	end
	
	
return true;

end






---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------ DIBUJAR BANDEJAS CLIENTES PERSONALIZADAS ----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- [REFERENCIA 004] -----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


function dibujarFresado004(doc)
	
	--Puntos trayectoria 
	local Contour = Contour(0.0)
	
	local fresado1 = Point2D(origenX+alaIzquierda+anchuraPlaca-margenL,origenY)
	local fresado2 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY)
	local fresado3 = Point2D(origenX+alaIzquierda+anchuraPlaca-margenL,origenY+alaInferior)
	local fresado4 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior)
	local fresado5 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca-margenM)
	local fresado6 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca)
	local fresado7 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior+alturaPlaca)
	local fresado8 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	local fresado9 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	local fresado10
	
	if margenM>=alaIzquierda then
		fresado10 = Point2D(origenX,origenY+alaInferior+alturaPlaca-margenM)
	else
		fresado10 = Point2D(origenX+alaIzquierda-margenM,origenY+alaInferior+alturaPlaca-margenM)
	end
	
	dibujarFresado_auxiliar(doc,fresado1,fresado3)
	dibujarFresado_auxiliar(doc,fresado3,fresado4)
	dibujarFresado_auxiliar(doc,fresado2,fresado9)
	dibujarFresado_auxiliar(doc,fresado7,fresado6)
	dibujarFresado_auxiliar(doc,fresado8,fresado9)
	dibujarFresado_auxiliar(doc,fresado8,fresado5)
	dibujarFresado_auxiliar(doc,fresado5,fresado10)
	dibujarFresado_auxiliar(doc,fresado5,fresado3)
	
	--------------------------------------------------------
	local cad_object = CreateCadContour(Contour)
	local cur_layer = doc.LayerManager:GetActiveLayer()
	local layer = doc.LayerManager:GetLayerWithName("Fresado")
	layer:AddObject(cad_object, true)
	layer:SetColor(0.3,0.8,0.4)
	layer.Visible = true 
	doc.LayerManager:SetActiveLayer(cur_layer)
	doc:Refresh2DView()	
	--------------------------------------------------------
	return true; 
end



function dibujarCorte004(doc)
	
	local Contour = Contour(0.0)
	
	--PARTE INFERIOR-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	
	local corte1 = Point2D(origenX+alaIzquierda+anchuraPlaca-margenL,origenY+alaInferior)
	local corte2 = Point2D(origenX+alaIzquierda+anchuraPlaca-margenL-alaInferior,origenY)
	local corte3 = Point2D(origenX+alaIzquierda+anchuraPlaca+alaInferior,origenY)
	local corte4 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior)
	local corte5 = Point2D(origenX+alaIzquierda+anchuraPlaca+alaDerecha,origenY+alaInferior+alaDerecha)
	local corte6 = Point2D(origenX+alaIzquierda+anchuraPlaca+alaDerecha,origenY+alaInferior+alturaPlaca-alaDerecha)
	local corte7 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior+alturaPlaca)
	local corte8 = Point2D(origenX+alaIzquierda+anchuraPlaca+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	local corte9 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	local corte10 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
	local corte11 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
	local corte12 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	local corte13 = Point2D(origenX,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	local corte14 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca)
	local corte15
	local corte16
	
	if margenM>=alaIzquierda then
		corte15 = Point2D(origenX,origenY+alaInferior+alturaPlaca-alaIzquierda)
		corte16 = Point2D(origenX,origenY+alaInferior+alturaPlaca-margenM-alaIzquierda)
	else
		corte15 = Point2D(origenX+alaIzquierda-margenM,origenY+alaInferior+alturaPlaca-margenM)
		corte16 = Point2D(origenX+alaInferior-margenM,origenY+alaInferior+alturaPlaca-margenM*2)
	end
	
	local corte17 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca-margenM)
	
	
	--Angulo de abajo
	local alfa2=math.atan((anchuraPlaca-margenL)/(alturaPlaca-margenM))
	local alfa=alfa2+math.rad(90)
	
	local hipot = (alaIzquierda)/(math.cos(math.rad(45)))
	
	local distanciaX = hipot*math.sin(math.rad(45)+alfa2)
	local distanciaY = hipot*math.cos(math.rad(45)+alfa2)
	
	local corte19 = Point2D(origenX+alaIzquierda+anchuraPlaca-margenL-distanciaX,origenY+alaInferior+distanciaY)
	
	
	--Angulo de arriba
	local hipot2=(alaIzquierda)/math.sin(math.rad(45))
	
	local alfa3=math.rad(90)-alfa2
	local alfa4=math.rad(180-45)-alfa3
	
	local distanciaX2 = hipot2*math.sin(alfa4)
	local distanciaY2 = hipot2*math.cos(alfa4)
	
	local corte18 = Point2D(origenX+alaIzquierda-distanciaY2,origenY+alaInferior+alturaPlaca-margenM-distanciaX2)
	
	
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
	Contour:LineTo(corte11)
	Contour:LineTo(corte12)
	Contour:LineTo(corte13)
	Contour:LineTo(corte14)
	Contour:LineTo(corte15)
	Contour:LineTo(corte16)
	Contour:LineTo(corte17)
	Contour:LineTo(corte18)
	Contour:LineTo(corte19)
	Contour:LineTo(corte1)	
		
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








----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------ DIBUJAR BANDEJAS CLIENTES PERSONALIZADAS ----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- [REFERENCIA 005] -----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


function dibujarFresado005(doc)
	
	--Puntos trayectoria 
	local Contour = Contour(0.0)
	
	local fresado1 = Point2D(origenX+alaIzquierda+anchuraPlaca-margenL,origenY)
	local fresado2 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY)
	local fresado3 = Point2D(origenX+alaIzquierda+anchuraPlaca-margenL,origenY+alaInferior)
	local fresado4 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior)
	local fresado6 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca)
	local fresado7 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior+alturaPlaca)
	local fresado8 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	local fresado9 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior+alturaPlaca+pliegueSuperior)

	
	dibujarFresado_auxiliar(doc,fresado1,fresado3)
	dibujarFresado_auxiliar(doc,fresado3,fresado4)
	dibujarFresado_auxiliar(doc,fresado2,fresado9)
	dibujarFresado_auxiliar(doc,fresado7,fresado6)
	dibujarFresado_auxiliar(doc,fresado6,fresado8)
	dibujarFresado_auxiliar(doc,fresado8,fresado9)
	dibujarFresado_auxiliar(doc,fresado6,fresado3)
	
	--------------------------------------------------------
	local cad_object = CreateCadContour(Contour)
	local cur_layer = doc.LayerManager:GetActiveLayer()
	local layer = doc.LayerManager:GetLayerWithName("Fresado")
	layer:AddObject(cad_object, true)
	layer:SetColor(0.3,0.8,0.4)
	layer.Visible = true 
	doc.LayerManager:SetActiveLayer(cur_layer)
	doc:Refresh2DView()	
	--------------------------------------------------------
	return true; 
end



function dibujarCorte005(doc)
	
	local Contour = Contour(0.0)
	
	--PARTE INFERIOR-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	
	local corte1 = Point2D(origenX+alaIzquierda+anchuraPlaca-margenL,origenY+alaInferior)
	local corte2 = Point2D(origenX+alaIzquierda+anchuraPlaca-margenL-alaInferior,origenY)
	local corte3 = Point2D(origenX+alaIzquierda+anchuraPlaca+alaInferior,origenY)
	local corte4 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior)
	local corte5 = Point2D(origenX+alaIzquierda+anchuraPlaca+alaDerecha,origenY+alaInferior+alaDerecha)
	local corte6 = Point2D(origenX+alaIzquierda+anchuraPlaca+alaDerecha,origenY+alaInferior+alturaPlaca-alaDerecha)
	local corte7 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior+alturaPlaca)
	local corte8 = Point2D(origenX+alaIzquierda+anchuraPlaca+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	local corte9 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	local corte10 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
	local corte11 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
	local corte12 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	local corte13 = Point2D(origenX,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	local corte14 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca)
	
	
	--local corte17 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca-margenM)
	
	
	--Angulo de abajo
	local alfa2=math.atan((anchuraPlaca-margenL)/(alturaPlaca))
	local alfa=alfa2+math.rad(90)
	
	local hipot = (alaIzquierda)/(math.cos(math.rad(45)))
	
	local distanciaX = hipot*math.sin(math.rad(45)+alfa2)
	local distanciaY = hipot*math.cos(math.rad(45)+alfa2)
	
	local corte19 = Point2D(origenX+alaIzquierda+anchuraPlaca-margenL-distanciaX,origenY+alaInferior+distanciaY)
	
	
	--Angulo de arriba
	local hipot2=(alaIzquierda)/math.sin(math.rad(45))
	
	local alfa3=math.rad(90)-alfa2
	local alfa4=math.rad(180-45)-alfa3
	
	local distanciaX2 = hipot2*math.sin(alfa4)
	local distanciaY2 = hipot2*math.cos(alfa4)
	
	local corte18 = Point2D(origenX+alaIzquierda-distanciaY2,origenY+alaInferior+alturaPlaca-distanciaX2)
	
	
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
	Contour:LineTo(corte11)
	Contour:LineTo(corte12)
	Contour:LineTo(corte13)
	Contour:LineTo(corte14)
	--Contour:LineTo(corte15)
	--Contour:LineTo(corte16)
	--Contour:LineTo(corte17)
	Contour:LineTo(corte18)
	Contour:LineTo(corte19)
	Contour:LineTo(corte1)	
		
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









----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------ DIBUJAR BANDEJAS CLIENTES PERSONALIZADAS ----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- [REFERENCIA 006] -----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


function dibujarFresado006(doc)
	--[[
	alturaPlaca=500 --[A][borrar]
	anchuraPlaca=733.5821 --[B][borrar]
	
	alaInferior=45 --[C4][borrar]
	alaDerecha=45 --[C2][borrar]
	alaSuperior=45 --[C3][borrar]
	pliegueSuperior=50 --[P][borrar]
	alaIzquierda=45 --[C1][borrar]
	
	margenL=985.9861 --[L][borrar]
	margenS=522.6872 --[S][borrar]
	margenM=311.5437 --[M][borrar]
	--alfa=45 --[alfa][borrar]
	--]]
	
	
	--Puntos trayectoria 
	local Contour = Contour(0.0)
	
	local fresado1 = Point2D(origenX+alaInferior,origenY)
	local fresado2 = Point2D(origenX+alaInferior+margenL,origenY)
	local fresado3 = Point2D(origenX+alaInferior,origenY+alaInferior)
	local fresado4 = Point2D(origenX+alaInferior+margenL,origenY+alaInferior)
	
	--Calculo punto inclinado
	local z=anchuraPlaca-margenL
	local k=margenM^2-alturaPlaca^2-z^2-margenS^2
	--DisplayMessageBox("z: " ..z.. "    k: " ..k.. "")
	
	local y=((4*k*alturaPlaca)+math.sqrt((-4*k*alturaPlaca)^2-4*(-4*alturaPlaca^2-4*z^2)*(4*z^2*margenS^2-k^2)))/(2*(-4*alturaPlaca^2-4*z^2))
	local x=math.sqrt(margenS^2-y^2)
	--DisplayMessageBox("x: " ..x.. "    y: " ..y.. "")
	
	
	local fresado5 = Point2D(origenX+alaInferior+x,origenY+alaInferior+y)
	local fresado6 = Point2D(origenX+alaInferior+margenL-anchuraPlaca,origenY+alaInferior+alturaPlaca)
	local fresado7 = Point2D(origenX+alaInferior+margenL,origenY+alaInferior+alturaPlaca)
	local fresado8 = Point2D(origenX+alaInferior+margenL-anchuraPlaca,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	local fresado9 = Point2D(origenX+alaInferior+margenL,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	
	
	
	
	dibujarFresado_auxiliar(doc,fresado1,fresado3)
	dibujarFresado_auxiliar(doc,fresado3,fresado4)
	dibujarFresado_auxiliar(doc,fresado2,fresado9)
	dibujarFresado_auxiliar(doc,fresado9,fresado8)
	dibujarFresado_auxiliar(doc,fresado8,fresado6)
	dibujarFresado_auxiliar(doc,fresado6,fresado7)
	dibujarFresado_auxiliar(doc,fresado6,fresado5)
	dibujarFresado_auxiliar(doc,fresado5,fresado3)
	
	--------------------------------------------------------
	local cad_object = CreateCadContour(Contour)
	local cur_layer = doc.LayerManager:GetActiveLayer()
	local layer = doc.LayerManager:GetLayerWithName("Fresado")
	layer:AddObject(cad_object, true)
	layer:SetColor(0.3,0.8,0.4)
	layer.Visible = true 
	doc.LayerManager:SetActiveLayer(cur_layer)
	doc:Refresh2DView()	
	--------------------------------------------------------
	return true; 
end




function dibujarCorte006(doc)
	--Calculo punto inclinado
	local z=anchuraPlaca-margenL
	local k=margenM^2-alturaPlaca^2-z^2-margenS^2
	
	local y=((4*k*alturaPlaca)+math.sqrt((-4*k*alturaPlaca)^2-4*(-4*alturaPlaca^2-4*z^2)*(4*z^2*margenS^2-k^2)))/(2*(-4*alturaPlaca^2-4*z^2))
	local x=math.sqrt(margenS^2-y^2)
	
	
	
	
	
	
	
	local Contour = Contour(0.0)
	
	local corte1 = Point2D(origenX+alaInferior,origenY+alaInferior)
	local corte2 = Point2D(origenX,origenY)
	local corte3 = Point2D(origenX+alaInferior+margenL+alaInferior,origenY)
	local corte4 = Point2D(origenX+alaInferior+margenL,origenY+alaInferior)
	local corte5 = Point2D(origenX+alaInferior+margenL+alaDerecha,origenY+alaInferior+alaDerecha)
	local corte6 = Point2D(origenX+alaInferior+margenL+alaDerecha,origenY+alaInferior+alturaPlaca-alaDerecha)
	local corte7 = Point2D(origenX+alaInferior+margenL,origenY+alaInferior+alturaPlaca)
	local corte8 = Point2D(origenX+alaInferior+margenL+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	local corte9 = Point2D(origenX+alaInferior+margenL,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	local corte10 = Point2D(origenX+alaInferior+margenL,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
	local corte11 = Point2D(origenX+alaInferior+margenL-anchuraPlaca,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
	local corte12 = Point2D(origenX+alaInferior+margenL-anchuraPlaca,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	local corte13 = Point2D(origenX+alaInferior+margenL-anchuraPlaca-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	local corte14 = Point2D(origenX+alaInferior+margenL-anchuraPlaca,origenY+alaInferior+alturaPlaca)
	
	
	
	
	
	--Angulo de arriba
	local beta=math.atan((alturaPlaca-y)/(anchuraPlaca-margenL+x))
	local hipot=alaIzquierda/math.sin(math.rad(45))
	local distanciaX=hipot*math.cos(math.rad(45)+beta)
	--distanciaX=math.abs(distanciaX)
	local distanciaY=math.sqrt(hipot^2-distanciaX^2)
	--DisplayMessageBox("distx: " ..distanciaX.. "")
	--DisplayMessageBox("disty: " ..distanciaY.. "")
	local corte15 = Point2D(origenX+alaInferior+margenL-anchuraPlaca+distanciaX,origenY+alaInferior+alturaPlaca-distanciaY)
	
	
	
	--Angulo de abajo
	local fi=math.atan(y/x)
	local hipot=alaIzquierda/math.sin(math.rad(45)) 
	local distanciaX=hipot*math.cos(math.rad(45)+fi)
	distanciaX=math.abs(distanciaX)
	local distanciaY=math.sqrt(hipot^2-distanciaX^2)
	--DisplayMessageBox("distx: " ..distanciaX.. "")
	--DisplayMessageBox("disty: " ..distanciaY.. "")	
	local corte18 = Point2D(origenX+alaInferior+distanciaX,origenY+alaInferior+distanciaY)
	
	
	
	--Angulo de en medio
	local alfa=-beta-fi
	alfa=math.abs(alfa)
	local alfa1=alfa/2
	local alfa11=alfa1-fi
	local hipot=alaIzquierda/math.sin(alfa1)
	local distanciaY=hipot*math.sin(alfa11)
	local distanciaX=hipot*math.cos(alfa11)
	
	--DisplayMessageBox("distx: " ..distanciaX.. "")
	--DisplayMessageBox("disty: " ..distanciaY.. "")
	local corte16 = Point2D(origenX+alaInferior+x-distanciaX,origenY+alaInferior+y+distanciaY)
	local corte17 = Point2D(origenX+alaInferior+x,origenY+alaInferior+y)
	
	
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
	Contour:LineTo(corte11)
	Contour:LineTo(corte12)
	Contour:LineTo(corte13)
	Contour:LineTo(corte14)
	Contour:LineTo(corte15)
	Contour:LineTo(corte16)
	Contour:LineTo(corte17)
	Contour:LineTo(corte16)
	Contour:LineTo(corte18)
	Contour:LineTo(corte1)
	
	
	
	
	
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








----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------ DIBUJAR BANDEJAS CLIENTES PERSONALIZADAS ----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- [REFERENCIA 012] -----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function dibujarFresado012(doc)
	
	--[[pliegueSup1=15
	pliegueSup2=30
	pliegueSup3=80
	
	pliegueIzq1=15
	pliegueIzq2=30
	pliegueIzq3=80
	
	pliegueDer1=15
	pliegueDer2=30
	pliegueDer3=80
	
	pliegueInf1=15
	pliegueInf2=30
	pliegueInf3=80
	
	anchuraPlaca=1000
	alturaPlaca=500--]]
	
	
	
	--Puntos trayectoria 
	local Contour = Contour(0.0)
	
	local fresado1 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3,origenY+pliegueInf1+pliegueInf2+pliegueInf3)
	local fresado2 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca,origenY+pliegueInf1+pliegueInf2+pliegueInf3)
	local fresado3 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca)
	local fresado4 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca)
	
	local fresado5 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3,origenY+pliegueInf1+pliegueInf2)
	local fresado6 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca,origenY+pliegueInf1+pliegueInf2)
	local fresado7 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+pliegueInf2,origenY+pliegueInf1)
	local fresado8 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca-pliegueInf2,origenY+pliegueInf1)
	
	local fresado9 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca+pliegueDer3,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca)
	local fresado10 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca+pliegueDer3,origenY+pliegueInf1+pliegueInf2+pliegueInf3)
	local fresado11 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca+pliegueDer3+pliegueDer2,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca-pliegueDer2)
	local fresado12 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca+pliegueDer3+pliegueDer2,origenY+pliegueInf1+pliegueInf2+pliegueInf3+pliegueDer2)
	
	local fresado13 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+pliegueSup3)
	local fresado14 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+pliegueSup3)
	local fresado15 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+pliegueSup2,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+pliegueSup3+pliegueSup2)
	local fresado16 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca-pliegueSup2,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+pliegueSup3+pliegueSup2)
	
	local fresado17 = Point2D(origenX+pliegueIzq1+pliegueIzq2,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca)
	local fresado18 = Point2D(origenX+pliegueIzq1+pliegueIzq2,origenY+pliegueInf1+pliegueInf2+pliegueInf3)
	local fresado19 = Point2D(origenX+pliegueIzq1,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca-pliegueIzq2)
	local fresado20 = Point2D(origenX+pliegueIzq1,origenY+pliegueInf1+pliegueInf2+pliegueInf3+pliegueIzq2)
	
	
	dibujarFresado_auxiliar(doc,fresado1,fresado2)
	dibujarFresado_auxiliar(doc,fresado2,fresado3)
	dibujarFresado_auxiliar(doc,fresado3,fresado4)
	dibujarFresado_auxiliar(doc,fresado4,fresado1)
	
	dibujarFresado_auxiliar(doc,fresado5,fresado6)
	dibujarFresado_auxiliar(doc,fresado7,fresado8)
	
	dibujarFresado_auxiliar(doc,fresado9,fresado10)
	dibujarFresado_auxiliar(doc,fresado11,fresado12)
	
	dibujarFresado_auxiliar(doc,fresado13,fresado14)
	dibujarFresado_auxiliar(doc,fresado15,fresado16)
	
	dibujarFresado_auxiliar(doc,fresado17,fresado18)
	dibujarFresado_auxiliar(doc,fresado19,fresado20)
	
	
	--FRESADO EXTERNO--
	if crearFresado==1 then 
		local fresado1 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3-margenFresado,origenY+pliegueInf1+pliegueInf2+pliegueInf3-margenFresado)
		local fresado2 = Point2D(origenX+pliegueIzq1+pliegueIzq2,origenY+pliegueInf1+pliegueInf2+pliegueInf3-margenFresado)
		local fresado3 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3-margenFresado,origenY+pliegueInf1+pliegueInf2)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		dibujarFresado_auxiliar(doc,fresado1,fresado3)
		
		local fresado1 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca+margenFresado,origenY+pliegueInf1+pliegueInf2+pliegueInf3-margenFresado)
		local fresado2 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca+pliegueDer3,origenY+pliegueInf1+pliegueInf2+pliegueInf3-margenFresado)
		local fresado3 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca+margenFresado,origenY+pliegueInf1+pliegueInf2)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		dibujarFresado_auxiliar(doc,fresado1,fresado3)
		
		local fresado1 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+margenFresado+anchuraPlaca,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+margenFresado)
		local fresado2 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+pliegueDer3+anchuraPlaca,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+margenFresado)
		local fresado3 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+margenFresado+anchuraPlaca,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+pliegueSup3)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		dibujarFresado_auxiliar(doc,fresado1,fresado3)
		
		local fresado1 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3-margenFresado,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+margenFresado)
		local fresado2 = Point2D(origenX+pliegueIzq1+pliegueIzq2,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+margenFresado)
		local fresado3 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3-margenFresado,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+pliegueSup3)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		dibujarFresado_auxiliar(doc,fresado1,fresado3)
		
		
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
	--------------------------------------------------------
	return true; 
end


function dibujarCorte012(doc)
	
	--[[pliegueSup1=15
	pliegueSup2=30
	pliegueSup3=80
	
	pliegueIzq1=15
	pliegueIzq2=30
	pliegueIzq3=80
	
	pliegueDer1=15
	pliegueDer2=30
	pliegueDer3=80
	
	pliegueInf1=15
	pliegueInf2=30
	pliegueInf3=80
	
	anchuraPlaca=1000
	alturaPlaca=500--]]
	
	
	
	local Contour = Contour(0.0)
	
	local corte1 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3,origenY+pliegueInf1+pliegueInf2+pliegueInf3)
	local corte2 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3,origenY+pliegueInf1+pliegueInf2)
	local corte3 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+pliegueInf2,origenY+pliegueInf1)
	local corte4 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+pliegueInf2,origenY)
	local corte5 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca-pliegueInf2,origenY)
	local corte6 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca-pliegueInf2,origenY+pliegueInf1)
	local corte7 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca,origenY+pliegueInf1+pliegueInf2)
	local corte8 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca,origenY+pliegueInf1+pliegueInf2+pliegueInf3)
	local corte9 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca+pliegueDer3,origenY+pliegueInf1+pliegueInf2+pliegueInf3)
	local corte10 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca+pliegueDer3+pliegueDer2,origenY+pliegueInf1+pliegueInf2+pliegueInf3+pliegueDer2)
	local corte11 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca+pliegueDer3+pliegueDer2+pliegueDer1,origenY+pliegueInf1+pliegueInf2+pliegueInf3+pliegueDer2)
	local corte12 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca+pliegueDer3+pliegueDer2+pliegueDer1,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca-pliegueDer2)
	local corte13 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca+pliegueDer3+pliegueDer2,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca-pliegueDer2)
	local corte14 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca+pliegueDer3,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca)
	local corte15 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca)
	local corte16 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+pliegueSup3)
	local corte17 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca-pliegueSup2,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+pliegueSup3+pliegueSup2)
	local corte18 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca-pliegueSup2,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+pliegueSup3+pliegueSup2+pliegueSup1)
	local corte19 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+pliegueSup2,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+pliegueSup3+pliegueSup2+pliegueSup1)
	local corte20 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+pliegueSup2,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+pliegueSup3+pliegueSup2)
	local corte21 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+pliegueSup3)
	local corte22 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca)
	local corte23 = Point2D(origenX+pliegueIzq1+pliegueIzq2,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca)
	local corte24 = Point2D(origenX+pliegueIzq1,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca-pliegueIzq2)
	local corte25 = Point2D(origenX,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca-pliegueIzq2)
	local corte26 = Point2D(origenX,origenY+pliegueInf1+pliegueInf2+pliegueInf3+pliegueIzq2)
	local corte27 = Point2D(origenX+pliegueIzq1,origenY+pliegueInf1+pliegueInf2+pliegueInf3+pliegueIzq2)
	local corte28 = Point2D(origenX+pliegueIzq1+pliegueIzq2,origenY+pliegueInf1+pliegueInf2+pliegueInf3)
	
	
	
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
	Contour:LineTo(corte11)
	Contour:LineTo(corte12)
	Contour:LineTo(corte13)
	Contour:LineTo(corte14)
	Contour:LineTo(corte15)
	Contour:LineTo(corte16)
	Contour:LineTo(corte17)
	Contour:LineTo(corte18)
	Contour:LineTo(corte19)
	Contour:LineTo(corte20)
	Contour:LineTo(corte21)
	Contour:LineTo(corte22)
	Contour:LineTo(corte23)
	Contour:LineTo(corte24)
	Contour:LineTo(corte25)
	Contour:LineTo(corte26)
	Contour:LineTo(corte27)
	Contour:LineTo(corte28)
	Contour:LineTo(corte1)
	
	
	
	
	
	--------------------------------------------------------
	local cad_object = CreateCadContour(Contour)
	local cur_layer = doc.LayerManager:GetActiveLayer()
	local layer = doc.LayerManager:GetLayerWithName("Corte")
	layer:AddObject(cad_object, true)
    layer:SetColor(0.9,0.2,0.2)
	layer.Visible = true 
	doc.LayerManager:SetActiveLayer(cur_layer)
	doc:Refresh2DView()	
	-------------------------------------------------------
	
	return true; 
end























