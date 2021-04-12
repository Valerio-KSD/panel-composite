-- VECTRIC LUA SCRIPT
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- Familia D ---------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Familia D
function OnLuaButton_modeloDH(framePrincipal)
	
	if modelo == 40 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaDH.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaDH.html"
		end
		
		
		local modeloDH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA D0")
		
		textoDescriptivo="D0"
		anchuraPlaca=500 alturaPlaca=500 
		
        modeloDH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloDH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    modeloDH:AddDoubleField("alturaPlaca", alturaPlaca)
		modeloDH:AddDoubleField("margenMecanizado", margenMecanizado)
	    if  not modeloDH:ShowDialog() then
				return false;
		end
	
	elseif modelo == 41 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaDH1.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaDH1.html"
		end
		
		local modeloDH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA D1")
		
		textoDescriptivo="D1"
		altura1=400 altura2=400 anchuraPlaca=1000
		alaSuperior=50 alaInferior=50 
		
        modeloDH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloDH:AddDoubleField("anchuraPlaca", anchuraPlaca)
		modeloDH:AddDoubleField("altura1", altura1)
		modeloDH:AddDoubleField("altura2", altura2)
		modeloDH:AddDoubleField("margenMecanizado", margenMecanizado)
		modeloDH:AddDoubleField("alaSuperior", alaSuperior)
		modeloDH:AddDoubleField("alaInferior", alaInferior)
		
	    if  not modeloDH:ShowDialog() then
				return false;
		end
		
	elseif modelo == 42 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaDH2.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaDH2.html"
		end
		
		local modeloDH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA D2")
		
		textoDescriptivo="D2"
		anchuraPlaca=1000 alturaPlaca=500 
		alaInferior=20 pliegueInferior=30
		
        modeloDH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloDH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    modeloDH:AddDoubleField("alturaPlaca", alturaPlaca)
		modeloDH:AddDoubleField("margenMecanizado", margenMecanizado)
		modeloDH:AddDoubleField("alaInferior", alaInferior)
		modeloDH:AddDoubleField("pliegueInferior", pliegueInferior)
		
	    if  not modeloDH:ShowDialog() then
				return false;
		end
		
	elseif modelo == 43 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaDH3.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaDH3.html"
		end
		
		local modeloDH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA D3")
		
		textoDescriptivo="D3"
		anchuraPlaca=1000 alturaPlaca=500 
		alaInferior=20 alaSuperior=20 pliegueSuperior=30 pliegueInferior=30		
		
        modeloDH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloDH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    modeloDH:AddDoubleField("alturaPlaca", alturaPlaca)
	    modeloDH:AddDoubleField("margenMecanizado", margenMecanizado)
		modeloDH:AddDoubleField("alaInferior", alaInferior)
		modeloDH:AddDoubleField("alaSuperior", alaSuperior)
		modeloDH:AddDoubleField("pliegueInferior", pliegueInferior)
		modeloDH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		
	    if  not modeloDH:ShowDialog() then
				return false;
		end
	
	elseif modelo == 44 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaDH4.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaDH4.html"
		end
		
		local modeloDH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA D4")
		
		textoDescriptivo="D4"
		anchura1=300 anchura2=300 alturaPlaca=1000 
		
        modeloDH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloDH:AddDoubleField("anchura1", anchura1)
		modeloDH:AddDoubleField("anchura2", anchura2)
	    modeloDH:AddDoubleField("alturaPlaca", alturaPlaca)
		modeloDH:AddDoubleField("margenMecanizado", margenMecanizado)
	    if  not modeloDH:ShowDialog() then
				return false;
		end
	
	elseif modelo == 45 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaDH5.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaDH5.html"
		end
		
		local modeloDH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA D5")
		
		textoDescriptivo="D5"
		anchura1=20 anchura2=40 anchura3=500 anchura4=200 alturaPlaca=1000 
		
        modeloDH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloDH:AddDoubleField("anchura1", anchura1)
		modeloDH:AddDoubleField("anchura2", anchura2)
		modeloDH:AddDoubleField("anchura3", anchura3)
		modeloDH:AddDoubleField("anchura4", anchura4)
	    modeloDH:AddDoubleField("alturaPlaca", alturaPlaca)
		modeloDH:AddDoubleField("margenMecanizado", margenMecanizado)
	    if  not modeloDH:ShowDialog() then
				return false;
		end
	
	elseif modelo == 46 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaDH6.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaDH6.html"
		end
		
		local modeloDH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA D6")
		
		textoDescriptivo="D6"
		anchuraPlaca=1500 alturaPlaca=1500
		alaIzquierda=50 alaSuperior=50 alaInferior=50 alaDerecha=50
		
        modeloDH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloDH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    modeloDH:AddDoubleField("alturaPlaca", alturaPlaca)
	    modeloDH:AddDoubleField("margenMecanizado", margenMecanizado)
		modeloDH:AddDoubleField("alaIzquierda", alaIzquierda)
		modeloDH:AddDoubleField("alaDerecha", alaDerecha)
		modeloDH:AddDoubleField("alaSuperior", alaSuperior)
		modeloDH:AddDoubleField("alaInferior", alaInferior)
		
	    if  not modeloDH:ShowDialog() then
				return false;
		end
	
	elseif modelo == 47 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaDH7.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaDH7.html"
		end
		
		local modeloDH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA D7")
		
		textoDescriptivo="D7"
		anchuraPlaca=700 alturaPlaca=1000 
		alaIzquierda=40 alaSuperior=40 alaInferior=20 alaDerecha=40
		pliegueDer=50 pliegueIzq=50 
		
        modeloDH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloDH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    modeloDH:AddDoubleField("alturaPlaca", alturaPlaca)
	    modeloDH:AddDoubleField("margenMecanizado", margenMecanizado)
		modeloDH:AddDoubleField("alaIzquierda", alaIzquierda)
		modeloDH:AddDoubleField("alaDerecha", alaDerecha)
		modeloDH:AddDoubleField("alaSuperior", alaSuperior)
		modeloDH:AddDoubleField("alaInferior", alaInferior)

		modeloDH:AddDoubleField("pliegueIzq", pliegueIzq)
		modeloDH:AddDoubleField("pliegueDer", pliegueDer)
		
	    if  not modeloDH:ShowDialog() then
				return false;
		end
	
	end
	
	
	return true;
	
end


function OnLuaButton_aceptarDH(modeloDH)

	if modelo==40 then --DH
		textoDescriptivo = modeloDH:GetTextField("textoDescriptivo")
		anchuraPlaca = modeloDH:GetDoubleField("anchuraPlaca")
	    alturaPlaca = modeloDH:GetDoubleField("alturaPlaca")

		
		--Punto inicial de la pieza
			origenX=-(anchuraPlaca+400)
			origenY= 400
		
	    margenMecanizado= modeloDH:GetDoubleField("margenMecanizado")



	
	elseif modelo==41 then  --DH1
		textoDescriptivo = modeloDH:GetTextField("textoDescriptivo")
		anchuraPlaca = modeloDH:GetDoubleField("anchuraPlaca")
	    altura1 = modeloDH:GetDoubleField("altura1")
	    altura2 = modeloDH:GetDoubleField("altura2")
		


		margenMecanizado= modeloDH:GetDoubleField("margenMecanizado")

		alaSuperior=modeloDH:GetDoubleField("alaSuperior")
		alaInferior=modeloDH:GetDoubleField("alaInferior")
		
		--Punto inicial de la pieza
			origenX=-(anchuraPlaca+400)
			origenY= 400
	
	elseif modelo==42 then --DH2
		textoDescriptivo = modeloDH:GetTextField("textoDescriptivo")
		anchuraPlaca = modeloDH:GetDoubleField("anchuraPlaca")
	    alturaPlaca = modeloDH:GetDoubleField("alturaPlaca")

		
		margenMecanizado= modeloDH:GetDoubleField("margenMecanizado")

		pliegueInferior=modeloDH:GetDoubleField("pliegueInferior")
		alaInferior=modeloDH:GetDoubleField("alaInferior")
		
		--Punto inicial de la pieza
			origenX=-(anchuraPlaca+400)
			origenY= 400
		
	elseif modelo==43 then --DH3
		textoDescriptivo = modeloDH:GetTextField("textoDescriptivo")
		anchuraPlaca = modeloDH:GetDoubleField("anchuraPlaca")
	    alturaPlaca = modeloDH:GetDoubleField("alturaPlaca")



		margenMecanizado= modeloDH:GetDoubleField("margenMecanizado")

		pliegueInferior=modeloDH:GetDoubleField("pliegueInferior")
		pliegueSuperior=modeloDH:GetDoubleField("pliegueSuperior")
		alaInferior=modeloDH:GetDoubleField("alaInferior")
		alaSuperior=modeloDH:GetDoubleField("alaSuperior")
		
		--Punto inicial de la pieza
			origenX=-(anchuraPlaca+400)
			origenY= 400
		
	elseif modelo==44 then --DH4
		textoDescriptivo = modeloDH:GetTextField("textoDescriptivo")
		anchura1 = modeloDH:GetDoubleField("anchura1")
		anchura2 = modeloDH:GetDoubleField("anchura2")
	    alturaPlaca = modeloDH:GetDoubleField("alturaPlaca")
		
		--Punto inicial de la pieza
			origenX=-(anchuraPlaca+400)
			origenY= 400
	


		margenMecanizado= modeloDH:GetDoubleField("margenMecanizado")


	elseif modelo==45 then --DH5
		textoDescriptivo = modeloDH:GetTextField("textoDescriptivo")
		anchura1 = modeloDH:GetDoubleField("anchura1")
		anchura2 = modeloDH:GetDoubleField("anchura2")
		anchura3 = modeloDH:GetDoubleField("anchura3")
		anchura4 = modeloDH:GetDoubleField("anchura4")
	    alturaPlaca = modeloDH:GetDoubleField("alturaPlaca")

		
		--Punto inicial de la pieza
			origenX=-(anchura1+anchura2+anchura3+anchura4+400)
			origenY= 400
	


		margenMecanizado= modeloDH:GetDoubleField("margenMecanizado")


	elseif modelo==46 then --DH6
		textoDescriptivo = modeloDH:GetTextField("textoDescriptivo")
		anchuraPlaca = modeloDH:GetDoubleField("anchuraPlaca")
	    alturaPlaca = modeloDH:GetDoubleField("alturaPlaca")



		margenMecanizado= modeloDH:GetDoubleField("margenMecanizado")

		alaDerecha=modeloDH:GetDoubleField("alaDerecha")
		alaIzquierda=modeloDH:GetDoubleField("alaIzquierda")
		alaInferior=modeloDH:GetDoubleField("alaInferior")
		alaSuperior=modeloDH:GetDoubleField("alaSuperior")
		
		--Punto inicial de la pieza
			origenX=-(alaIzquierda+anchuraPlaca+alaDerecha+400)
			origenY= 400
	
	elseif modelo==47 then --DH7
		textoDescriptivo = modeloDH:GetTextField("textoDescriptivo")
		anchuraPlaca = modeloDH:GetDoubleField("anchuraPlaca")
	    alturaPlaca = modeloDH:GetDoubleField("alturaPlaca")
		
		margenMecanizado= modeloDH:GetDoubleField("margenMecanizado")
		
		alaDerecha=modeloDH:GetDoubleField("alaDerecha")
		alaIzquierda=modeloDH:GetDoubleField("alaIzquierda")
		alaInferior=modeloDH:GetDoubleField("alaInferior")
		alaSuperior=modeloDH:GetDoubleField("alaSuperior")
		pliegueIzq=modeloDH:GetDoubleField("pliegueIzq")
		pliegueDer=modeloDH:GetDoubleField("pliegueDer")
		
		--Punto inicial de la pieza
			origenX=-(alaIzquierda+pliegueIzq+anchuraPlaca+pliegueDer+alaDerecha+400)
			origenY= 400
	
  	end

    
	
	
    --Comprobaciones y validaciones de los datos
	--[[if anchuraPlaca < 0 then
		DisplayMessageBox("La anchura de la placa NO puede ser negativa. Creacion Modelo DH"..modelo-27 .." Fallida")
	elseif anchuraIzq<0 or anchuraDerecha<0 or anchuraCentro<0 then
		DisplayMessageBox("La anchura de una de las partes de la placa NO puede ser negativa. Creacion Modelo DH"..modelo-27 .." Fallida")	
	elseif  alturaPlaca < 0 then
		DisplayMessageBox("La altura de la placa NO puede ser negativa. Creacion Modelo DH"..modelo-27 .." Fallida")
	elseif alaIzquierda<0 or alaSuperior<0 or alaInferior<0 then
    	DisplayMessageBox("El tamano las alas NO puede ser negativa. Creacion Modelo DH"..modelo-27 .." Fallida")
	elseif pliegueSuperior<0 or pliegueInferior<0 then
		DisplayMessageBox("El tamano del pliegue NO puede ser negativo. Creacion Modelo DH"..modelo-27 .." Fallida")
	elseif anchuraColiso>anchuraPlaca/2 then 
		DisplayMessageBox("El tamano de los colisos NO puede ser mayor al ancho de la plancha. Creacion Modelo DH"..modelo-27 .." Fallida")
	else--]]
		
		
		--Para dibujar la pieza
			dibujarFresadoDH(doc)
			dibujarCorteDH(doc)
			dibujarTexto(doc)
		
			
		DisplayMessageBox("Modelo D"..modelo-40 .." Creado Correctamente")
	
	--end
	
	return true;

end

function dibujarFresadoDH(doc)
	
	local Contour = Contour(0.0)
	local fresado1
	local fresado2
	local fresado3
	local fresado4
		
	if modelo==41 then --[DH1]
		fresado1 = Point2D(origenX,origenY+alaInferior)
		fresado2 = Point2D(origenX+anchuraPlaca,origenY+alaInferior)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX,origenY+alaInferior+altura1)
		fresado2 = Point2D(origenX+anchuraPlaca,origenY+alaInferior+altura1)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX,origenY+alaInferior+altura1+altura2)
		fresado2 = Point2D(origenX+anchuraPlaca,origenY+alaInferior+altura1+altura2)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
	
	elseif modelo==42 then --[DH2]
		fresado1 = Point2D(origenX,origenY+alaInferior)
		fresado2 = Point2D(origenX+anchuraPlaca,origenY+alaInferior)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX,origenY+alaInferior+pliegueInferior)
		fresado2 = Point2D(origenX+anchuraPlaca,origenY+alaInferior+pliegueInferior)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
	elseif modelo==43 then --[DH3]
		fresado1 = Point2D(origenX,origenY+alaInferior)
		fresado2 = Point2D(origenX+anchuraPlaca,origenY+alaInferior)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX,origenY+alaInferior+pliegueInferior)
		fresado2 = Point2D(origenX+anchuraPlaca,origenY+alaInferior+pliegueInferior)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca)
		fresado2 = Point2D(origenX+anchuraPlaca,origenY+alaInferior+pliegueInferior+alturaPlaca)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		fresado2 = Point2D(origenX+anchuraPlaca,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
	
	elseif modelo==44 then --[DH4]
		fresado1 = Point2D(origenX+anchura1,origenY)
		fresado2 = Point2D(origenX+anchura1,origenY+alturaPlaca)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
	elseif modelo==45 then --[DH5]
		fresado1 = Point2D(origenX+anchura1,origenY)
		fresado2 = Point2D(origenX+anchura1,origenY+alturaPlaca)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX+anchura1+anchura2,origenY)
		fresado2 = Point2D(origenX+anchura1+anchura2,origenY+alturaPlaca)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX+anchura1+anchura2+anchura3,origenY)
		fresado2 = Point2D(origenX+anchura1+anchura2+anchura3,origenY+alturaPlaca)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)	
		
	elseif modelo==46 then --[DH6]
		fresado1 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
		fresado2 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior)
		fresado3=Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior+alturaPlaca)
		fresado4=Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca)
		
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		dibujarFresado_auxiliar(doc,fresado2,fresado3)
		dibujarFresado_auxiliar(doc,fresado3,fresado4)
		dibujarFresado_auxiliar(doc,fresado4,fresado1)
		
	elseif modelo==47 then --[DH7]
		fresado1 = Point2D(origenX+alaIzquierda+pliegueIzq,origenY+alaInferior)
		fresado2 = Point2D(origenX+alaIzquierda+pliegueIzq+anchuraPlaca,origenY+alaInferior)
		fresado3 = Point2D(origenX+alaIzquierda+pliegueIzq+anchuraPlaca,origenY+alaInferior+alturaPlaca)
		fresado4 = Point2D(origenX+alaIzquierda+pliegueIzq,origenY+alaInferior+alturaPlaca)
		
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		dibujarFresado_auxiliar(doc,fresado2,fresado3)
		dibujarFresado_auxiliar(doc,fresado3,fresado4)
		dibujarFresado_auxiliar(doc,fresado4,fresado1)
		
		fresado1 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
		fresado2 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX+alaIzquierda+pliegueDer+anchuraPlaca+pliegueIzq,origenY+alaInferior)
		fresado2 = Point2D(origenX+alaIzquierda+pliegueDer+anchuraPlaca+pliegueIzq,origenY+alaInferior+alturaPlaca)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
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



function dibujarCorteDH(doc)
	
	local Contour = Contour(0.0)
	
	--Modelo 40 (cuadrado simple)
	if modelo==40 then --[DH]
		local corte1 = Point2D(origenX,origenY)
		local corte2 = Point2D(origenX+anchuraPlaca,origenY)
		local corte3 = Point2D(origenX+anchuraPlaca,origenY+alturaPlaca)
		local corte4 = Point2D(origenX,origenY+alturaPlaca)
		
		Contour:AppendPoint(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
		Contour:LineTo(corte1)
		
	elseif modelo==41 then --[DH1]
		local corte1 = Point2D(origenX,origenY)
		local corte2 = Point2D(origenX+anchuraPlaca,origenY)
		local corte3 = Point2D(origenX+anchuraPlaca,origenY+alaInferior+altura1+altura2+alaSuperior)
		local corte4 = Point2D(origenX,origenY+alaInferior+altura1+altura2+alaSuperior)
		
		Contour:AppendPoint(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
		Contour:LineTo(corte1)
		
	elseif modelo==42 then --[DH2]
		local corte1 = Point2D(origenX,origenY)
		local corte2 = Point2D(origenX+anchuraPlaca,origenY)
		local corte3 = Point2D(origenX+anchuraPlaca,origenY+alaInferior+pliegueInferior+alturaPlaca)
		local corte4 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca)
		
		Contour:AppendPoint(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
		Contour:LineTo(corte1)
	
	elseif modelo==43 then --[DH3] 
		local corte1 = Point2D(origenX,origenY)
		local corte2 = Point2D(origenX+anchuraPlaca,origenY)
		local corte3 = Point2D(origenX+anchuraPlaca,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte4 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		
		Contour:AppendPoint(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
		Contour:LineTo(corte1)
		
	elseif modelo==44 then --[Dh4]
		local corte1 = Point2D(origenX,origenY)
		local corte2 = Point2D(origenX+anchura1+anchura2,origenY)
		local corte3 = Point2D(origenX+anchura1+anchura2,origenY+alturaPlaca)
		local corte4 = Point2D(origenX,origenY+alturaPlaca)
		
		Contour:AppendPoint(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
		Contour:LineTo(corte1)
		
	elseif modelo==45 then --[DH5]
		local corte1 = Point2D(origenX,origenY)
		local corte2 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY)
		local corte3 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+alturaPlaca)
		local corte4 = Point2D(origenX,origenY+alturaPlaca)
		
		Contour:AppendPoint(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
		Contour:LineTo(corte1)
		
	elseif modelo==46 then --[DH6]
		local corte1 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
		local corte2 = Point2D(origenX+alaIzquierda,origenY)
		local corte3 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY)
		local corte4 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior)
		local corte5 = Point2D(origenX+alaIzquierda+anchuraPlaca+alaDerecha,origenY+alaInferior)
		local corte6 = Point2D(origenX+alaIzquierda+anchuraPlaca+alaDerecha,origenY+alaInferior+alturaPlaca)
		local corte7 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior+alturaPlaca)
		local corte8 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior+alturaPlaca+alaSuperior)
		local corte9 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca+alaSuperior)
		local corte10 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca)
		local corte11 = Point2D(origenX,origenY+alaInferior+alturaPlaca)
		local corte12 = Point2D(origenX,origenY+alaInferior)
		
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
		Contour:LineTo(corte1)
		
	elseif modelo==47 then --[DH7]  
		local corte1 = Point2D(origenX,origenY+alaInferior)
		local corte2 = Point2D(origenX+alaIzquierda+pliegueIzq,origenY+alaInferior)
		local corte3 = Point2D(origenX+alaIzquierda+pliegueIzq,origenY)
		local corte4 = Point2D(origenX+alaIzquierda+pliegueIzq+anchuraPlaca,origenY)
		local corte5 = Point2D(origenX+alaIzquierda+pliegueIzq+anchuraPlaca,origenY+alaInferior)
		local corte6 = Point2D(origenX+alaIzquierda+pliegueIzq+anchuraPlaca+pliegueDer+alaDerecha,origenY+alaInferior)
		local corte7 = Point2D(origenX+alaIzquierda+pliegueIzq+anchuraPlaca+pliegueDer+alaDerecha,origenY+alaInferior+alturaPlaca)
		local corte8 = Point2D(origenX+alaIzquierda+pliegueIzq+anchuraPlaca,origenY+alaInferior+alturaPlaca)
		local corte9 = Point2D(origenX+alaIzquierda+pliegueIzq+anchuraPlaca,origenY+alaInferior+alturaPlaca+alaSuperior)
		local corte10 = Point2D(origenX+alaIzquierda+pliegueIzq,origenY+alaInferior+alturaPlaca+alaSuperior)
		local corte11 = Point2D(origenX+alaIzquierda+pliegueIzq,origenY+alaInferior+alturaPlaca)
		local corte12 = Point2D(origenX,origenY+alaInferior+alturaPlaca)
		
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
		Contour:LineTo(corte1)
		
		
	end
	
	
	
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



