-- VECTRIC LUA SCRIPT
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- Familia E ---------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Familia E

function OnLuaButton_modeloE(framePrincipal)
	
	if modelo == 50 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaE0.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaE0.html"
		end
		
		
		local modeloE = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA E0")
		
		textoDescriptivo="E0"
		anchuraPlaca=500 altura1=50 altura2=50 altura3=50 altura4=50 altura5=50  
		margenM1=50 margenM2=50 margenFresado=1
		
        modeloE:AddTextField("textoDescriptivo", textoDescriptivo)
		
        modeloE:AddDoubleField("margenFresado", margenFresado)
		modeloE:AddDoubleField("margenMecanizado", margenMecanizado)
		modeloE:AddDoubleField("altura1", altura1)
		modeloE:AddDoubleField("altura2", altura2)
		modeloE:AddDoubleField("altura3", altura3)
		modeloE:AddDoubleField("altura4", altura4)
		modeloE:AddDoubleField("altura5", altura5)
		
	    modeloE:AddDoubleField("anchuraPlaca", anchuraPlaca)
		
	    modeloE:AddDoubleField("margenM1", margenM1)
	    modeloE:AddDoubleField("margenM2", margenM2)
		
	    if  not modeloE:ShowDialog() then
				return false;
		end
	
	elseif modelo == 51 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaE1.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaE1.html"
		end
		
		local modeloE = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA E1")
		
		textoDescriptivo="E1"
		anchuraPlaca=500 altura1=50 altura2=50 altura3=50 altura4=50 altura5=50  
		margenM1=50 margenM2=50 margenFresado=1
		
        modeloE:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloE:AddDoubleField("margenMecanizado", margenMecanizado)
		modeloE:AddDoubleField("margenFresado", margenFresado)
		modeloE:AddDoubleField("altura1", altura1)
		modeloE:AddDoubleField("altura2", altura2)
		modeloE:AddDoubleField("altura3", altura3)
		modeloE:AddDoubleField("altura4", altura4)
		modeloE:AddDoubleField("altura5", altura5)
		
	    modeloE:AddDoubleField("anchuraPlaca", anchuraPlaca)
		
	    modeloE:AddDoubleField("margenM1", margenM1)
	    modeloE:AddDoubleField("margenM2", margenM2)
		
	    if  not modeloE:ShowDialog() then
				return false;
		end
		
	elseif modelo == 52 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaE2.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaE2.html"
		end
		
		local modeloE = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA E2")
		
		textoDescriptivo="E2"
		anchura1=700 anchura2=1000 altura1=80 altura2=50 altura3=50 altura4=600  
		margenM1=50 margenM2=50 margenFresado=1
		
        modeloE:AddTextField("textoDescriptivo", textoDescriptivo)
		
		modeloE:AddDoubleField("margenFresado", margenFresado)
		modeloE:AddDoubleField("altura1", altura1)
		modeloE:AddDoubleField("altura2", altura2)
		modeloE:AddDoubleField("altura3", altura3)
		modeloE:AddDoubleField("altura4", altura4)
		modeloE:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloE:AddDoubleField("anchura1", anchura1)
	    modeloE:AddDoubleField("anchura2", anchura2)
		
	    modeloE:AddDoubleField("margenM1", margenM1)
	    modeloE:AddDoubleField("margenM2", margenM2)
		
	    if  not modeloE:ShowDialog() then
				return false;
		end
		
	elseif modelo == 53 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaE3.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaE3.html"
		end
		
		local modeloE = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA E3")
		
		textoDescriptivo="E3"
		anchura1=700 anchura2=1000 altura1=80 altura2=50 altura3=50 altura4=600  
		margenM1=50 margenM2=50 margenFresado=1
		
        modeloE:AddTextField("textoDescriptivo", textoDescriptivo)
		
		modeloE:AddDoubleField("margenFresado", margenFresado)
		modeloE:AddDoubleField("altura1", altura1)
		modeloE:AddDoubleField("altura2", altura2)
		modeloE:AddDoubleField("altura3", altura3)
		modeloE:AddDoubleField("altura4", altura4)
		modeloE:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloE:AddDoubleField("anchura1", anchura1)
	    modeloE:AddDoubleField("anchura2", anchura2)
		
	    modeloE:AddDoubleField("margenM1", margenM1)
	    modeloE:AddDoubleField("margenM2", margenM2)
		
	    if  not modeloE:ShowDialog() then
				return false;
		end
	
	elseif modelo == 54 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaE4.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaE4.html"
		end
		
		local modeloE = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA E4")
		
		textoDescriptivo="E4"
		anchura1=50 anchura2=500 altura1=50 altura2=50 altura3=50 altura4=600
		margenM1=50 margenM2=50 margenFresado=1
		
        modeloE:AddTextField("textoDescriptivo", textoDescriptivo)
		
		modeloE:AddDoubleField("margenFresado", margenFresado)
		modeloE:AddDoubleField("anchura1", anchura1)
		modeloE:AddDoubleField("anchura2", anchura2)
	    modeloE:AddDoubleField("altura1", altura1)
	    modeloE:AddDoubleField("altura2", altura2)
	    modeloE:AddDoubleField("altura3", altura3)
	    modeloE:AddDoubleField("altura4", altura4)
		modeloE:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloE:AddDoubleField("margenM1", margenM1)
	    modeloE:AddDoubleField("margenM2", margenM2)
		
		
		
	    if  not modeloE:ShowDialog() then
				return false;
		end
	
	elseif modelo == 55 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaE5.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaE5.html"
		end
		
		local modeloE = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA E5")
		
		textoDescriptivo="E5"
		anchura1=50 anchura2=500 altura1=50 altura2=50 altura3=50 altura4=600
		margenM1=50 margenM2=50 margenFresado=1
		
        modeloE:AddTextField("textoDescriptivo", textoDescriptivo)
		
		modeloE:AddDoubleField("margenFresado", margenFresado)
		modeloE:AddDoubleField("anchura1", anchura1)
		modeloE:AddDoubleField("anchura2", anchura2)
	    modeloE:AddDoubleField("altura1", altura1)
	    modeloE:AddDoubleField("altura2", altura2)
	    modeloE:AddDoubleField("altura3", altura3)
	    modeloE:AddDoubleField("altura4", altura4)
		modeloE:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloE:AddDoubleField("margenM1", margenM1)
	    modeloE:AddDoubleField("margenM2", margenM2)
		
	    if  not modeloE:ShowDialog() then
				return false;
		end
	
	end
	
	
	return true;
	
end


function OnLuaButton_aceptarE(modeloE)

	if modelo==50 then --E0
		textoDescriptivo = modeloE:GetTextField("textoDescriptivo")
		margenFresado = modeloE:GetDoubleField("margenFresado")


		margenMecanizado = modeloE:GetDoubleField("margenMecanizado")


		anchuraPlaca = modeloE:GetDoubleField("anchuraPlaca")
	    altura1 = modeloE:GetDoubleField("altura1")
	    altura2 = modeloE:GetDoubleField("altura2")
	    altura3 = modeloE:GetDoubleField("altura3")
	    altura4 = modeloE:GetDoubleField("altura4")
	    altura5 = modeloE:GetDoubleField("altura5")
		margenM1=modeloE:GetDoubleField("margenM1")
		margenM2=modeloE:GetDoubleField("margenM2")
		
		--Punto inicial de la pieza
			origenX=-(margenM1+anchuraPlaca+margenM2+400)
			origenY= 400
			
		
	elseif modelo==51 then  --E1
		textoDescriptivo = modeloE:GetTextField("textoDescriptivo")
		margenFresado = modeloE:GetDoubleField("margenFresado")



		margenMecanizado = modeloE:GetDoubleField("margenMecanizado")

		anchuraPlaca = modeloE:GetDoubleField("anchuraPlaca")
	    altura1 = modeloE:GetDoubleField("altura1")
	    altura2 = modeloE:GetDoubleField("altura2")
	    altura3 = modeloE:GetDoubleField("altura3")
	    altura4 = modeloE:GetDoubleField("altura4")
	    altura5 = modeloE:GetDoubleField("altura5")
		margenM1=modeloE:GetDoubleField("margenM1")
		margenM2=modeloE:GetDoubleField("margenM2")
		
		--Punto inicial de la pieza
			origenX=-(margenM1+anchuraPlaca+margenM2+400)
			origenY= 400
		
	
	elseif modelo==52 then --E2
		textoDescriptivo = modeloE:GetTextField("textoDescriptivo")
		margenFresado = modeloE:GetDoubleField("margenFresado")



		margenMecanizado = modeloE:GetDoubleField("margenMecanizado")

		anchura1 = modeloE:GetDoubleField("anchura1")
		anchura2 = modeloE:GetDoubleField("anchura2")
	    altura1 = modeloE:GetDoubleField("altura1")
	    altura2 = modeloE:GetDoubleField("altura2")
	    altura3 = modeloE:GetDoubleField("altura3")
	    altura4 = modeloE:GetDoubleField("altura4")
		margenM1=modeloE:GetDoubleField("margenM1")
		margenM2=modeloE:GetDoubleField("margenM2")
		
		--Ajuste de las entradas (porque el ancho 1 esta al reves en la acotacion)
			anchura1=anchura2-anchura1
		
		--Punto inicial de la pieza
			origenX=-(anchura2+400)
			origenY= 400
		
	
	elseif modelo==53 then --E3
		textoDescriptivo = modeloE:GetTextField("textoDescriptivo")
		margenFresado = modeloE:GetDoubleField("margenFresado")


		margenMecanizado = modeloE:GetDoubleField("margenMecanizado")

		anchura1 = modeloE:GetDoubleField("anchura1")
		anchura2 = modeloE:GetDoubleField("anchura2")
	    altura1 = modeloE:GetDoubleField("altura1")
	    altura2 = modeloE:GetDoubleField("altura2")
	    altura3 = modeloE:GetDoubleField("altura3")
	    altura4 = modeloE:GetDoubleField("altura4")
		margenM1=modeloE:GetDoubleField("margenM1")
		margenM2=modeloE:GetDoubleField("margenM2")
		
		--Ajuste de las entradas (porque el ancho 1 esta al reves en la acotacion)
			anchura1=anchura2-anchura1
		
		--Punto inicial de la pieza
			origenX=-(anchura2+400)
			origenY= 400
		
	elseif modelo==54 then --E4
		textoDescriptivo = modeloE:GetTextField("textoDescriptivo")
		margenFresado = modeloE:GetDoubleField("margenFresado")


		margenMecanizado = modeloE:GetDoubleField("margenMecanizado")

		anchura1 = modeloE:GetDoubleField("anchura1")
		anchura2 = modeloE:GetDoubleField("anchura2")
	    altura1 = modeloE:GetDoubleField("altura1")
	    altura2 = modeloE:GetDoubleField("altura2")
	    altura3 = modeloE:GetDoubleField("altura3")
	    altura4 = modeloE:GetDoubleField("altura4")
		margenM1=modeloE:GetDoubleField("margenM1")
		margenM2=modeloE:GetDoubleField("margenM2")
		
		--Punto inicial de la pieza
			origenX=-(anchura2+400)
			origenY= 400
	
	elseif modelo==55 then --E5
		textoDescriptivo = modeloE:GetTextField("textoDescriptivo")
		margenFresado = modeloE:GetDoubleField("margenFresado")


		margenMecanizado = modeloE:GetDoubleField("margenMecanizado")

		anchura1 = modeloE:GetDoubleField("anchura1")
		anchura2 = modeloE:GetDoubleField("anchura2")
	    altura1 = modeloE:GetDoubleField("altura1")
	    altura2 = modeloE:GetDoubleField("altura2")
	    altura3 = modeloE:GetDoubleField("altura3")
	    altura4 = modeloE:GetDoubleField("altura4")
		margenM1=modeloE:GetDoubleField("margenM1")
		margenM2=modeloE:GetDoubleField("margenM2")
		
		--Punto inicial de la pieza
			origenX=-(anchura2+400)
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
		
		--Para que la pieza apareza fuera del area de trabajo
			--origenX=-(alaDerecha+anchuraIzq+anchuraCentro+anchuraDerecha+alaIzquierda+400)
			--origenY= 400
		
		--Para dibujar la pieza
			dibujarFresadoE(doc)
			dibujarCorteE(doc)
			dibujarTexto(doc)
			
			if crearFresado==1 then
				dibujarFresadoExteriorE(doc)
			end
		
			

		DisplayMessageBox("Modelo E"..modelo-50 .." Creado Correctamente")

		

	
	--end
	
	return true;
	
end


function dibujarFresadoE(doc)
	
	
	local Contour = Contour(0.0)
	local fresado1
	local fresado2
	local fresado3
	local fresado4
		
	if modelo==50 then --[E0]
		fresado1 = Point2D(origenX+margenM1,origenY+altura5)
		fresado2 = Point2D(origenX+margenM1+anchuraPlaca,origenY+altura5)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX,origenY+altura5+altura4)
		fresado2 = Point2D(origenX+margenM1+anchuraPlaca,origenY+altura5+altura4)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX,origenY+altura5+altura4+altura3)
		fresado2 = Point2D(origenX+margenM1+margenM2+anchuraPlaca,origenY+altura5+altura4+altura3)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX+margenM1,origenY+altura5+altura4+altura3+altura2)
		fresado2 = Point2D(origenX+margenM1+margenM2+anchuraPlaca,origenY+altura5+altura4+altura3+altura2)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		
	elseif modelo==51 then --[E1]
		fresado1 = Point2D(origenX+margenM1,origenY+altura5)
		fresado2 = Point2D(origenX+margenM1+anchuraPlaca,origenY+altura5)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX+margenM1,origenY+altura5+altura4)
		fresado2 = Point2D(origenX+margenM1+anchuraPlaca+margenM2,origenY+altura5+altura4)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX,origenY+altura5+altura4+altura3)
		fresado2 = Point2D(origenX+margenM1+margenM2+anchuraPlaca,origenY+altura5+altura4+altura3)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX,origenY+altura5+altura4+altura3+altura2)
		fresado2 = Point2D(origenX+margenM1+anchuraPlaca,origenY+altura5+altura4+altura3+altura2)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		
	elseif modelo==52 then --[E2]
		fresado1 = Point2D(origenX,origenY+altura4)
		fresado2 = Point2D(origenX+anchura2,origenY+altura4)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX,origenY+altura4+altura3)
		fresado2 = Point2D(origenX+anchura2+margenM2,origenY+altura4+altura3)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX+margenM1,origenY+altura4+altura3+altura2)
		fresado2 = Point2D(origenX+anchura2+margenM2,origenY+altura4+altura3+altura2)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		
	elseif modelo==53 then --[E3]
		fresado1 = Point2D(origenX+margenM1,origenY+altura4)
		fresado2 = Point2D(origenX+margenM1+anchura2,origenY+altura4)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX,origenY+altura4+altura3)
		fresado2 = Point2D(origenX+margenM1+anchura2,origenY+altura4+altura3)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX,origenY+altura4+altura3+altura2)
		fresado2 = Point2D(origenX+margenM1+anchura2-margenM2,origenY+altura4+altura3+altura2)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		
		
	elseif modelo==54 or modelo==55 then --[E4][E5]
		fresado1 = Point2D(origenX+margenM1,origenY+altura4)
		fresado2 = Point2D(origenX+margenM1+anchura2,origenY+altura4)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX,origenY+altura4+altura3)
		fresado2 = Point2D(origenX+margenM1+anchura2+margenM2,origenY+altura4+altura3)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX,origenY+altura4+altura3+altura2)
		fresado2 = Point2D(origenX+margenM1+anchura2+margenM2,origenY+altura4+altura3+altura2)
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



function dibujarCorteE(doc)
	
	
	local Contour = Contour(0.0)
	
	
	if modelo==50 then --[E0]
		local corte1 = Point2D(origenX+margenM1,origenY)
		local corte2 = Point2D(origenX+margenM1+anchuraPlaca,origenY)
		local corte3 = Point2D(origenX+margenM1+anchuraPlaca,origenY+altura5+altura4)
		local corte4 = Point2D(origenX+margenM1+anchuraPlaca+margenM2,origenY+altura5+altura4+altura3)
		local corte5 = Point2D(origenX+margenM1+anchuraPlaca+margenM2,origenY+altura5+altura4+altura3+altura2)
		local corte6 = Point2D(origenX+margenM1+anchuraPlaca+margenM2-altura1,origenY+altura5+altura4+altura3+altura2+altura1)
		local corte7 = Point2D(origenX+margenM1,origenY+altura5+altura4+altura3+altura2+altura1)
		local corte8 = Point2D(origenX+margenM1,origenY+altura5+altura4+altura3+altura2)
		local corte9 = Point2D(origenX,origenY+altura5+altura4+altura3)
		local corte10 = Point2D(origenX,origenY+altura5+altura4)
		local corte11 = Point2D(origenX+margenM1,origenY+altura5)
		
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
		Contour:LineTo(corte1)
		
	elseif modelo==51 then --[E1]
		local corte1 = Point2D(origenX+margenM1,origenY)
		local corte2 = Point2D(origenX+margenM1+anchuraPlaca,origenY)
		local corte3 = Point2D(origenX+margenM1+anchuraPlaca,origenY+altura5)
		local corte4 = Point2D(origenX+margenM1+anchuraPlaca+margenM2,origenY+altura5+altura4)
		local corte5 = Point2D(origenX+margenM1+anchuraPlaca+margenM2,origenY+altura5+altura4+altura3)
		local corte6 = Point2D(origenX+margenM1+anchuraPlaca,origenY+altura5+altura4+altura3+altura2)
		local corte7 = Point2D(origenX+margenM1+anchuraPlaca,origenY+altura5+altura4+altura3+altura2+altura1)
		local corte8 = Point2D(origenX+altura1,origenY+altura5+altura4+altura3+altura2+altura1)
		local corte9 = Point2D(origenX,origenY+altura5+altura4+altura3+altura2)
		local corte10 = Point2D(origenX,origenY+altura5+altura4+altura3)
		local corte11 = Point2D(origenX+margenM1,origenY+altura5+altura4)
		
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
		Contour:LineTo(corte1)
		
		
	elseif modelo==52 then --[E2]
		local corte1 = Point2D(origenX,origenY+altura4)
		local corte2 = Point2D(origenX+anchura1,origenY)
		local corte3 = Point2D(origenX+anchura2,origenY)
		local corte4 = Point2D(origenX+anchura2,origenY+altura4)
		local corte5 = Point2D(origenX+anchura2+margenM2,origenY+altura4+altura3)
		local corte6 = Point2D(origenX+anchura2+margenM2,origenY+altura4+altura3+altura2)
		local corte7 = Point2D(origenX+anchura2+margenM2-altura1,origenY+altura4+altura3+altura2+altura1)
		local corte8 = Point2D(origenX+margenM1,origenY+altura4+altura3+altura2+altura1)
		local corte9 = Point2D(origenX+margenM1,origenY+altura4+altura3+altura2)
		local corte10 = Point2D(origenX,origenY+altura4+altura3)
		
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
		Contour:LineTo(corte1)

		
	
	elseif modelo==53 then --[E3] 
		local corte1 = Point2D(origenX+margenM1,origenY+altura4)
		local corte2 = Point2D(origenX+margenM1,origenY)
		local corte3 = Point2D(origenX+margenM1+anchura2-anchura1,origenY)
		local corte4 = Point2D(origenX+margenM1+anchura2,origenY+altura4)
		local corte5 = Point2D(origenX+margenM1+anchura2,origenY+altura4+altura3)
		local corte6 = Point2D(origenX+margenM1+anchura2-margenM2,origenY+altura4+altura3+altura2)
		local corte7 = Point2D(origenX+margenM1+anchura2-margenM2,origenY+altura4+altura3+altura2+altura1)
		local corte8 = Point2D(origenX+altura1,origenY+altura4+altura3+altura2+altura1)
		local corte9 = Point2D(origenX,origenY+altura4+altura3+altura2)
		local corte10 = Point2D(origenX,origenY+altura4+altura3)
		
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
		Contour:LineTo(corte1)
		
		
	elseif modelo==54 then --[E4]
		local corte1 = Point2D(origenX+margenM1,origenY+altura4)
		local corte2 = Point2D(origenX+margenM1+anchura1,origenY)
		local corte3 = Point2D(origenX+margenM1+anchura2,origenY)
		local corte4 = Point2D(origenX+margenM1+anchura2,origenY+altura4)
		local corte5 = Point2D(origenX+margenM1+anchura2+margenM2,origenY+altura4+altura3)
		local corte6 = Point2D(origenX+margenM1+anchura2+margenM2,origenY+altura4+altura3+altura2)
		local corte7 = Point2D(origenX+margenM1+anchura2+margenM2-altura1,origenY+altura4+altura3+altura2+altura1)
		local corte8 = Point2D(origenX+altura1,origenY+altura4+altura3+altura2+altura1)
		local corte9 = Point2D(origenX,origenY+altura4+altura3+altura2)
		local corte10 = Point2D(origenX,origenY+altura4+altura3)
		
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
		Contour:LineTo(corte1)
		
		
		
		
	elseif modelo==55 then --[E5]
		local corte1 = Point2D(origenX+margenM1,origenY+altura4)
		local corte2 = Point2D(origenX+margenM1,origenY)
		local corte3 = Point2D(origenX+margenM1+anchura2-anchura1,origenY)
		local corte4 = Point2D(origenX+margenM1+anchura2,origenY+altura4)
		local corte5 = Point2D(origenX+margenM1+anchura2+margenM2,origenY+altura4+altura3)
		local corte6 = Point2D(origenX+margenM1+anchura2+margenM2,origenY+altura4+altura3+altura2)
		local corte7 = Point2D(origenX+margenM1+anchura2+margenM2-altura1,origenY+altura4+altura3+altura2+altura1)
		local corte8 = Point2D(origenX+altura1,origenY+altura4+altura3+altura2+altura1)
		local corte9 = Point2D(origenX,origenY+altura4+altura3+altura2)
		local corte10 = Point2D(origenX,origenY+altura4+altura3)
		
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
	-------------------------------------------------------
	return true; 
end




function dibujarFresadoExteriorE(doc)
	
	--margenFresado=1 --[borrar]
	
	local Contour = Contour(0.0)
	
	local beta 
	local x1
	local alfa
	local y2
	
	if modelo==50 then --[E0]
	
		
		--FRESADO EXTERIOR parte IZQUIERDA--
		--Tramo superior
		beta = math.atan(altura2/margenM1)
		x1 = margenFresado/math.sin(beta)
		alfa = math.rad(90) - beta		
		y2 = margenFresado/math.sin(alfa)
		
		local corte1 = Point2D(origenX+margenM1-x1,origenY+altura5+altura4+altura3+altura2)
		local corte2 = Point2D(origenX,origenY+altura5+altura4+altura3+y2)
		
		--Tramo medio
		local corte3 = Point2D(origenX-margenFresado,origenY+altura5+altura4+altura3)
		local corte4 = Point2D(origenX-margenFresado,origenY+altura5+altura4)
		
		--Tramo inferior
		beta = math.atan(altura4/margenM1)
		x1 = margenFresado/math.sin(beta)
		alfa = math.rad(90) - beta		
		y2 = margenFresado/math.sin(alfa)
		
		local corte5 = Point2D(origenX,origenY+altura5+altura4-y2)
		local corte6 = Point2D(origenX+margenM1-x1,origenY+altura5)
		
		--Dibujar puntos calculados
		dibujarFresado_auxiliar(doc,corte1,corte2)
		dibujarFresado_auxiliar(doc,corte2,corte3) --Esto podria ser un ArcTo
		dibujarFresado_auxiliar(doc,corte3,corte4)
		dibujarFresado_auxiliar(doc,corte4,corte5) --Esto podria ser un ArcTo
		dibujarFresado_auxiliar(doc,corte5,corte6)
		
		
		
		
		
		
		
		
		
		
		--FRESADO EXTERIOR parte DERECHA--
		--Tramo superior
		beta = math.atan(altura1/altura1)
		x1 = margenFresado/math.sin(beta)
		alfa = math.rad(90) - beta		
		y2 = margenFresado/math.sin(alfa)
		local corte5 = Point2D(origenX+margenM1+anchuraPlaca+margenM2-altura1+x1,origenY+altura5+altura4+altura3+altura2+altura1)
		local corte6 = Point2D(origenX+margenM1+anchuraPlaca+margenM2,origenY+altura5+altura4+altura3+altura2+y2)
		
		local corte7 = Point2D(origenX+margenM1+anchuraPlaca+margenM2+margenFresado,origenY+altura5+altura4+altura3+altura2)
		local corte8 = Point2D(origenX+margenM1+anchuraPlaca+margenM2+margenFresado,origenY+altura5+altura4+altura3)
		
		beta = math.atan(altura3/margenM2)
		x1 = margenFresado/math.sin(beta)
		alfa = math.rad(90) - beta		
		y2 = margenFresado/math.sin(alfa)
		local corte9 = Point2D(origenX+margenM1+anchuraPlaca+margenM2,origenY+altura5+altura4+altura3-y2)
		local corte10 = Point2D(origenX+margenM1+anchuraPlaca+x1,origenY+altura5+altura4)
		
		dibujarFresado_auxiliar(doc,corte5,corte6)
		dibujarFresado_auxiliar(doc,corte6,corte7)
		dibujarFresado_auxiliar(doc,corte7,corte8)
		dibujarFresado_auxiliar(doc,corte8,corte9)
		dibujarFresado_auxiliar(doc,corte9,corte10)
		
		
		
	elseif modelo==51 then --[E1]
		local corte1 = Point2D(origenX+altura1-margenFresado,origenY+altura5+altura4+altura3+altura2+altura1)
		local corte2 = Point2D(origenX-margenFresado,origenY+altura5+altura4+altura3+altura2)
		local corte3 = Point2D(origenX-margenFresado,origenY+altura5+altura4+altura3)
		local corte4 = Point2D(origenX+margenM1-margenFresado,origenY+altura5+altura4)
		dibujarFresado_auxiliar(doc,corte1,corte2)
		dibujarFresado_auxiliar(doc,corte2,corte3)
		dibujarFresado_auxiliar(doc,corte3,corte4)
		
		local corte5 = Point2D(origenX+margenM1+anchuraPlaca+margenFresado,origenY+altura5+altura4+altura3+altura2)
		local corte6 = Point2D(origenX+margenM1+anchuraPlaca+margenM2+margenFresado,origenY+altura5+altura4+altura3)
		local corte7 = Point2D(origenX+margenM1+anchuraPlaca+margenM2+margenFresado,origenY+altura5+altura4)
		local corte8 = Point2D(origenX+margenM1+anchuraPlaca+margenFresado,origenY+altura5)
		dibujarFresado_auxiliar(doc,corte5,corte6)
		dibujarFresado_auxiliar(doc,corte6,corte7)
		dibujarFresado_auxiliar(doc,corte7,corte8)
		
		
	
	elseif modelo==52 then --[E2]
		local corte1 = Point2D(origenX+margenM1-margenFresado,origenY+altura4+altura3+altura2+altura1)
		local corte2 = Point2D(origenX+margenM1-margenFresado,origenY+altura4+altura3+altura2)
		local corte3 = Point2D(origenX-margenFresado,origenY+altura4+altura3)
		local corte4 = Point2D(origenX-margenFresado,origenY+altura4)
		dibujarFresado_auxiliar(doc,corte1,corte2)
		dibujarFresado_auxiliar(doc,corte2,corte3)
		dibujarFresado_auxiliar(doc,corte3,corte4)
		
		local corte5 = Point2D(origenX+anchura2-altura1+margenFresado+margenM2,origenY+altura4+altura3+altura2+altura1)
		local corte6 = Point2D(origenX+anchura2+margenFresado+margenM2,origenY+altura4+altura3+altura2)
		local corte7 = Point2D(origenX+anchura2+margenFresado+margenM2,origenY+altura4+altura3)
		local corte8 = Point2D(origenX+anchura2+margenFresado,origenY+altura4)
		dibujarFresado_auxiliar(doc,corte5,corte6)
		dibujarFresado_auxiliar(doc,corte6,corte7)
		dibujarFresado_auxiliar(doc,corte7,corte8)
	
	
	elseif modelo==53 then --[E3]
		local corte1 = Point2D(origenX+altura1-margenFresado,origenY+altura4+altura3+altura2+altura1)
		local corte2 = Point2D(origenX-margenFresado,origenY+altura4+altura3+altura2)
		local corte3 = Point2D(origenX-margenFresado,origenY+altura4+altura3)
		local corte4 = Point2D(origenX-margenFresado+margenM1,origenY+altura4)
		dibujarFresado_auxiliar(doc,corte1,corte2)
		dibujarFresado_auxiliar(doc,corte2,corte3)
		dibujarFresado_auxiliar(doc,corte3,corte4)
		
		local corte5 = Point2D(origenX+margenM1+anchura2-margenM2+margenFresado,origenY+altura4+altura3+altura2+altura1)
		local corte6 = Point2D(origenX+margenM1+anchura2-margenM2+margenFresado,origenY+altura4+altura3+altura2)
		local corte7 = Point2D(origenX+margenM1+anchura2+margenFresado,origenY+altura4+altura3)
		local corte8 = Point2D(origenX+margenM1+anchura2+margenFresado,origenY+altura4)
		dibujarFresado_auxiliar(doc,corte5,corte6)
		dibujarFresado_auxiliar(doc,corte6,corte7)
		dibujarFresado_auxiliar(doc,corte7,corte8)
		
		
		
	elseif modelo==54 then --[E4]
		local corte1 = Point2D(origenX+altura1-margenFresado,origenY+altura4+altura3+altura2+altura1)
		local corte2 = Point2D(origenX-margenFresado,origenY+altura4+altura3+altura2)
		local corte3 = Point2D(origenX-margenFresado,origenY+altura4+altura3)
		local corte4 = Point2D(origenX-margenFresado+margenM1,origenY+altura4)
		dibujarFresado_auxiliar(doc,corte1,corte2)
		dibujarFresado_auxiliar(doc,corte2,corte3)
		dibujarFresado_auxiliar(doc,corte3,corte4)
		
		local corte5 = Point2D(origenX+margenM1+anchura2+margenM2-altura1+margenFresado,origenY+altura4+altura3+altura2+altura1)
		local corte6 = Point2D(origenX+margenM1+anchura2+margenM2+margenFresado,origenY+altura4+altura3+altura2)
		local corte7 = Point2D(origenX+margenM1+anchura2+margenM2+margenFresado,origenY+altura4+altura3)
		local corte8 = Point2D(origenX+margenM1+anchura2+margenFresado,origenY+altura4)
		dibujarFresado_auxiliar(doc,corte5,corte6)
		dibujarFresado_auxiliar(doc,corte6,corte7)
		dibujarFresado_auxiliar(doc,corte7,corte8)
		
	elseif modelo==55 then --[E5]
		local corte1 = Point2D(origenX+altura1-margenFresado,origenY+altura4+altura3+altura2+altura1)
		local corte2 = Point2D(origenX-margenFresado,origenY+altura4+altura3+altura2)
		local corte3 = Point2D(origenX-margenFresado,origenY+altura4+altura3)
		local corte4 = Point2D(origenX-margenFresado+margenM1,origenY+altura4)
		dibujarFresado_auxiliar(doc,corte1,corte2)
		dibujarFresado_auxiliar(doc,corte2,corte3)
		dibujarFresado_auxiliar(doc,corte3,corte4)
		
		local corte5 = Point2D(origenX+margenM1+anchura2+margenM2-altura1+margenFresado,origenY+altura4+altura3+altura2+altura1)
		local corte6 = Point2D(origenX+margenM1+anchura2+margenM2+margenFresado,origenY+altura4+altura3+altura2)
		local corte7 = Point2D(origenX+margenM1+anchura2+margenM2+margenFresado,origenY+altura4+altura3)
		local corte8 = Point2D(origenX+margenM1+anchura2+margenFresado,origenY+altura4)
		dibujarFresado_auxiliar(doc,corte5,corte6)
		dibujarFresado_auxiliar(doc,corte6,corte7)
		dibujarFresado_auxiliar(doc,corte7,corte8)
		
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