-- VECTRIC LUA SCRIPT


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------- FAMILIA A --------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Familia A
function OnLuaButton_modeloAH(framePrincipal)

	if modelo == 0 then 
		
		
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaAH.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaAH.html"
		end
		
		
		
		local modeloAH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA A0")
		
		textoDescriptivo="A0"
		anchuraPlaca=2000 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=36 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		distanciaEntreBotas=500 numeroBotas=3
		
        modeloAH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloAH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    modeloAH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloAH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloAH:AddDoubleField("origenX", origenX)
		--modeloAH:AddDoubleField("origenY", origenY)

		--modeloAH:AddIntegerField("cantidadX", cantidadX)
		--modeloAH:AddIntegerField("cantidadY", cantidadY)
		--modeloAH:AddDoubleField("distanciaX", distanciaX)
		--modeloAH:AddDoubleField("distanciaY", distanciaY)

		modeloAH:AddDoubleField("alaLateral", alaIzquierda)
		modeloAH:AddDoubleField("alaSuperior", alaSuperior)
		modeloAH:AddDoubleField("alaInferior", alaInferior)

		--modeloAH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloAH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloAH:AddDoubleField("margenA", margenA)
		modeloAH:AddDoubleField("margenB", margenB)
		
		modeloAH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloAH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloAH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloAH:AddDoubleField("numeroBotas", numeroBotas)
		
		
	    if  not modeloAH:ShowDialog() then
			
				return false;
					
		end

   	elseif modelo==1 then

		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaAH1.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaAH1.html"
		end
		

			
		local modeloAH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA A1")
		

		textoDescriptivo="A1"
		anchuraPlaca=2000 alturaPlaca=1000 alaIzquierda=40 alaSuperior=20 alaInferior=32
		pliegueSuperior=40 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloAH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloAH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    modeloAH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloAH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloAH:AddDoubleField("origenX", origenX)
		--modeloAH:AddDoubleField("origenY", origenY)

		modeloAH:AddDoubleField("alaLateral", alaIzquierda)
		modeloAH:AddDoubleField("alaSuperior", alaSuperior)
		modeloAH:AddDoubleField("alaInferior", alaInferior)

		--modeloAH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloAH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloAH:AddDoubleField("margenA", margenA)
		modeloAH:AddDoubleField("margenB", margenB)
		
		modeloAH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloAH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloAH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloAH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloAH:ShowDialog() then
			
				return false;
					
		end
		
    elseif modelo==2 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaAH2.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaAH2.html"
		end
		
			
		local modeloAH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA A2")

		textoDescriptivo="A2"
		anchuraPlaca=2000 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=20
		pliegueSuperior=36 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloAH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloAH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    modeloAH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloAH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloAH:AddDoubleField("origenX", origenX)
		--modeloAH:AddDoubleField("origenY", origenY)

		modeloAH:AddDoubleField("alaLateral", alaIzquierda)
		modeloAH:AddDoubleField("alaSuperior", alaSuperior)
		modeloAH:AddDoubleField("alaInferior", alaInferior)

		modeloAH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloAH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloAH:AddDoubleField("margenA", margenA)
		modeloAH:AddDoubleField("margenB", margenB)
		
		modeloAH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloAH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloAH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloAH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloAH:ShowDialog() then
			
				return false;
					
		end
	
    elseif modelo==3 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaAH3.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaAH3.html"
		end	
		
			
		local modeloAH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA A3")

		textoDescriptivo="A3"
		anchuraPlaca=2000 alturaPlaca=1000 alaIzquierda=40 alaSuperior=20 alaInferior=20
		pliegueSuperior=40 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloAH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloAH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    modeloAH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloAH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloAH:AddDoubleField("origenX", origenX)
		--modeloAH:AddDoubleField("origenY", origenY)

		modeloAH:AddDoubleField("alaLateral", alaIzquierda)
		modeloAH:AddDoubleField("alaSuperior", alaSuperior)
		modeloAH:AddDoubleField("alaInferior", alaInferior)

		modeloAH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloAH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloAH:AddDoubleField("margenA", margenA)
		modeloAH:AddDoubleField("margenB", margenB)

		modeloAH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloAH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloAH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloAH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloAH:ShowDialog() then
			
				return false;
					
		end
	
    elseif modelo==4 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaAH4.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaAH4.html"
		end
		
			
		local modeloAH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA A4")

		textoDescriptivo="A4"
		anchuraPlaca=2000 alturaPlaca=1000 alaIzquierda=40 alaSuperior=260 alaInferior=32
		pliegueSuperior=40 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloAH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloAH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    modeloAH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloAH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloAH:AddDoubleField("origenX", origenX)
		--modeloAH:AddDoubleField("origenY", origenY)

		modeloAH:AddDoubleField("alaLateral", alaIzquierda)
		modeloAH:AddDoubleField("alaSuperior", alaSuperior)
		modeloAH:AddDoubleField("alaInferior", alaInferior)

		--modeloAH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloAH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloAH:AddDoubleField("margenA", margenA)
		modeloAH:AddDoubleField("margenB", margenB)

		modeloAH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloAH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloAH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloAH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloAH:ShowDialog() then
			
				return false;
					
		end
	
    elseif modelo==5 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaAH5.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaAH5.html"
		end
		
			
		local modeloAH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA A5")

		textoDescriptivo="A5"
		anchuraPlaca=2000 alturaPlaca=1000 alaIzquierda=40 alaSuperior=260 alaInferior=20
		pliegueSuperior=40 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloAH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloAH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    modeloAH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloAH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloAH:AddDoubleField("origenX", origenX)
		--modeloAH:AddDoubleField("origenY", origenY)

		modeloAH:AddDoubleField("alaLateral", alaIzquierda)
		modeloAH:AddDoubleField("alaSuperior", alaSuperior)
		modeloAH:AddDoubleField("alaInferior", alaInferior)

		modeloAH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloAH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloAH:AddDoubleField("margenA", margenA)
		modeloAH:AddDoubleField("margenB", margenB)

		modeloAH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloAH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloAH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloAH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloAH:ShowDialog() then
			
				return false;
					
		end
	
    elseif modelo==6 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaAH6.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaAH6.html"
		end
		
			
		local modeloAH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA A6")

		textoDescriptivo="A6"
		anchuraPlaca=2000 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=300 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloAH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloAH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    modeloAH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloAH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloAH:AddDoubleField("origenX", origenX)
		--modeloAH:AddDoubleField("origenY", origenY)

		modeloAH:AddDoubleField("alaLateral", alaIzquierda)
		modeloAH:AddDoubleField("alaSuperior", alaSuperior)
		modeloAH:AddDoubleField("alaInferior", alaInferior)

		--modeloAH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloAH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloAH:AddDoubleField("margenA", margenA)
		modeloAH:AddDoubleField("margenB", margenB)

		modeloAH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloAH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloAH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloAH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloAH:ShowDialog() then
			
				return false;
					
		end
	
    elseif modelo==7 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaAH7.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaAH7.html"
		end
		
			
		local modeloAH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA A7")

		textoDescriptivo="A7"
		anchuraPlaca=2000 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=20
		pliegueSuperior=300 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloAH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloAH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    modeloAH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloAH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloAH:AddDoubleField("origenX", origenX)
		--modeloAH:AddDoubleField("origenY", origenY)

		modeloAH:AddDoubleField("alaLateral", alaIzquierda)
		modeloAH:AddDoubleField("alaSuperior", alaSuperior)
		modeloAH:AddDoubleField("alaInferior", alaInferior)

		modeloAH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloAH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloAH:AddDoubleField("margenA", margenA)
		modeloAH:AddDoubleField("margenB", margenB)

		modeloAH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloAH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloAH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloAH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloAH:ShowDialog() then
			
				return false;
					
		end
	
    elseif modelo==8 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaAH8.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaAH8.html"
		end
		
			
		local modeloAH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA A8")

		textoDescriptivo="A8"
		anchuraPlaca=2000 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=40
		pliegueSuperior=36 pliegueInferior=300 margenA=57 margenB=108 diametroTaladros=5 
		
        modeloAH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloAH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    modeloAH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloAH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloAH:AddDoubleField("origenX", origenX)
		--modeloAH:AddDoubleField("origenY", origenY)

		modeloAH:AddDoubleField("alaLateral", alaIzquierda)
		modeloAH:AddDoubleField("alaSuperior", alaSuperior)
		modeloAH:AddDoubleField("alaInferior", alaInferior)

		modeloAH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloAH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloAH:AddDoubleField("margenA", margenA)
		modeloAH:AddDoubleField("margenB", margenB)

		modeloAH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloAH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloAH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloAH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloAH:ShowDialog() then
			
				return false;
					
		end
  	end
	
	
return true;

end


function OnLuaButton_aceptarAH(modeloAH)

	if modelo==0 or modelo==1 or modelo==4 or modelo==6 then --Modelos con pliegue inferior = 0
		pliegueInferior=0
		
		textoDescriptivo = modeloAH:GetTextField("textoDescriptivo")
		anchuraPlaca = modeloAH:GetDoubleField("anchuraPlaca")
	    margenMecanizado=modeloAH:GetDoubleField("margenMecanizado")
	    alturaPlaca = modeloAH:GetDoubleField("alturaPlaca")
		--origenX = modeloAH:GetDoubleField("origenXAH")
		--origenY = modeloAH:GetDoubleField("origenYAH")

		--cantidadX=modeloAH:GetIntegerField("cantidadX")
		--cantidadY=modeloAH:GetIntegerField("cantidadY")
		--distanciaX=modeloAH:GetDoubleField("distanciaX")
		--distanciaY=modeloAH:GetDoubleField("distanciaY")

		alaIzquierda=modeloAH:GetDoubleField("alaLateral")
		alaSuperior=modeloAH:GetDoubleField("alaSuperior")
		alaInferior=modeloAH:GetDoubleField("alaInferior")
		--pliegueInferior=modeloAH:GetDoubleField("pliegueInferior")
		pliegueSuperior=modeloAH:GetDoubleField("pliegueSuperior")
		margenA=modeloAH:GetDoubleField("margenA")
		margenB=modeloAH:GetDoubleField("margenB")
		
		anchuraColiso=modeloAH:GetDoubleField("anchuraColiso")
		diametroTaladros=modeloAH:GetDoubleField("diametroTaladros")
		
		distanciaEntreBotas=modeloAH:GetDoubleField("distanciaEntreBotas")
		numeroBotas=modeloAH:GetDoubleField("numeroBotas")
		
		



	elseif modelo==2 or modelo==3 or modelo==5 or modelo==7 or modelo==8 then --Modelos con pliegue inferior != 0 
		
		textoDescriptivo = modeloAH:GetTextField("textoDescriptivo")
		anchuraPlaca = modeloAH:GetDoubleField("anchuraPlaca")
	    margenMecanizado=modeloAH:GetDoubleField("margenMecanizado")
	    alturaPlaca = modeloAH:GetDoubleField("alturaPlaca")
		
		alaIzquierda = modeloAH:GetDoubleField("alaLateral")
		alaSuperior = modeloAH:GetDoubleField("alaSuperior")
		alaInferior = modeloAH:GetDoubleField("alaInferior")
		
		pliegueInferior=modeloAH:GetDoubleField("pliegueInferior")
		pliegueSuperior = modeloAH:GetDoubleField("pliegueSuperior")
		margenA = modeloAH:GetDoubleField("margenA")
		margenB = modeloAH:GetDoubleField("margenB")

		anchuraColiso=modeloAH:GetDoubleField("anchuraColiso")
		diametroTaladros=modeloAH:GetDoubleField("diametroTaladros")
		
		distanciaEntreBotas=modeloAH:GetDoubleField("distanciaEntreBotas")
		numeroBotas=modeloAH:GetDoubleField("numeroBotas")
  	end

    
	--Caracteristicas generales
	--anchuraPlaca=anchuraPlaca-margenPlaca
    --alturaPlaca=alturaPlaca-margenPlaca
	
	alaDerecha=alaIzquierda
	
	alturaColiso=diametroTaladros
	
    --Comprobaciones y validaciones de los datos
	--[[if anchuraPlaca < 0 then
		DisplayMessageBox("La anchura de la placa NO puede ser negativa. Creacion Modelo AH"..modelo.." Fallida")	
	elseif  alturaPlaca < 0 then
		DisplayMessageBox("La altura de la placa NO puede ser negativa. Creacion Modelo AH"..modelo.." Fallida")
	elseif alaIzquierda<0 or alaSuperior<0 or alaInferior<0 then
    	DisplayMessageBox("El tamaño las alas NO puede ser negativa. Creacion Modelo AH"..modelo.." Fallida")
	elseif pliegueSuperior<0 or pliegueInferior<0 then
		DisplayMessageBox("El tamaño del pliegue NO puede ser negativo. Creacion Modelo AH"..modelo.." Fallida")
	elseif anchuraColiso>anchuraPlaca/2 then 
		DisplayMessageBox("El tamano de los colisos NO puede ser mayor al ancho de la plancha. Creacion Modelo AH"..modelo.." Fallida")
		
	elseif doc.Width <(alaIzquierda+anchuraPlaca+alaDerecha) then
		DisplayMessageBox("El ancho del panel es mayor al ancho del area de trabajo. Creacion Modelo AH"..modelo.." Fallida")
	
	
	elseif margenA<alturaBotaDeCuelgue then 
		DisplayMessageBox("El tamaño del margenA no puede ser menor al tamaño de una bota de cuelgue. Creación Modelo AH"..modelo.." Fallida")	
	else--]]
		
		--Para dibujar la pieza fuera del area de trabajo
			origenX=-(alaDerecha+anchuraPlaca+alaIzquierda+400)
			origenY=400
			
		--Para dibujar la pieza
			dibujarFresadoAH(doc)
			dibujarCorteAH(doc)
			dibujarTexto(doc)
			dibujarTaladrosAH(doc)
			
			
			
			
			
			
			
			
			
			
			
		DisplayMessageBox("Modelo A"..modelo.." Creado Correctamente")
		
	
	--end
	
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
	local fresado12 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
	
	if modelo==0 or modelo==1 then --REF [AH][AH1]
		dibujarFresado_auxiliar(doc,fresado9,fresado6)
		dibujarFresado_auxiliar(doc,fresado10,fresado5)
		dibujarFresado_auxiliar(doc,fresado6,fresado5)
		dibujarFresado_auxiliar(doc,fresado7,fresado8)
		dibujarFresado_auxiliar(doc,fresado2,fresado3)
	elseif modelo==2 or modelo==3 then --REF [AH2][AH3]
		dibujarFresado_auxiliar(doc,fresado1,fresado4)
		dibujarFresado_auxiliar(doc,fresado2,fresado3)
		dibujarFresado_auxiliar(doc,fresado6,fresado5)
		dibujarFresado_auxiliar(doc,fresado7,fresado8)
		dibujarFresado_auxiliar(doc,fresado1,fresado6)
		dibujarFresado_auxiliar(doc,fresado4,fresado5)
	elseif modelo==4 then --REF [AH4]
		dibujarFresado_auxiliar(doc,fresado9,fresado6)
		dibujarFresado_auxiliar(doc,fresado10,fresado5)
		dibujarFresado_auxiliar(doc,fresado7,fresado8)
		dibujarFresado_auxiliar(doc,fresado2,fresado3)
	elseif modelo==5 then --REF [AH5]
		dibujarFresado_auxiliar(doc,fresado1,fresado6)
		dibujarFresado_auxiliar(doc,fresado4,fresado5)
		dibujarFresado_auxiliar(doc,fresado7,fresado8)
		dibujarFresado_auxiliar(doc,fresado2,fresado3)
		dibujarFresado_auxiliar(doc,fresado1,fresado4)
	elseif modelo==6 then --REF [AH6]
		dibujarFresado_auxiliar(doc,fresado9,fresado12)
		dibujarFresado_auxiliar(doc,fresado10,fresado11)
		dibujarFresado_auxiliar(doc,fresado6,fresado5)
		dibujarFresado_auxiliar(doc,fresado7,fresado8)
		dibujarFresado_auxiliar(doc,fresado2,fresado3)
	elseif modelo==7 then --REF [AH7]
		dibujarFresado_auxiliar(doc,fresado6,fresado7)
		dibujarFresado_auxiliar(doc,fresado7,fresado8)
		dibujarFresado_auxiliar(doc,fresado2,fresado3)
		dibujarFresado_auxiliar(doc,fresado1,fresado4)
		dibujarFresado_auxiliar(doc,fresado1,fresado12)
		dibujarFresado_auxiliar(doc,fresado4,fresado11)
		dibujarFresado_auxiliar(doc,fresado6,fresado5)
	elseif modelo==8 then  --REF [AH8]
		dibujarFresado_auxiliar(doc,fresado6,fresado5)
		dibujarFresado_auxiliar(doc,fresado7,fresado8)
		dibujarFresado_auxiliar(doc,fresado2,fresado3)
		dibujarFresado_auxiliar(doc,fresado1,fresado4)
		dibujarFresado_auxiliar(doc,fresado9,fresado6)
		dibujarFresado_auxiliar(doc,fresado10,fresado5)
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
	--Variables MARGENES superior e inferior
	local cotaInicioDerecha=((margenB-alturaBotaDeCuelgue)+(alaDerecha-anchoBota))/2 --[relacion trigonometrica][explicacion en la hoja de papel] 
	local anchoLateral1=alaDerecha-anchoBota  --21.5 --variable para reducir codigo (se podria eliminar)
	local alturaLateral1=cotaInicioDerecha-alaDerecha+anchoBota --15.3  --variable para reducir codigo (se podria eliminar)
	
	local margenBota=4 --Esto es la distacia que hay entre la altura maxima de la bota y el pico que hay en el margen inferior del ala izquierda
	local distanciaCorreccion
	
	local sumaComienzoFin=(margenA)+(margenB-alturaBotaDeCuelgue) --109
	
	
	--Parte botas
	local repeticiones
	if  parametroBotas==1 then
		repeticiones=numeroBotas-1
	else 
		repeticiones=math.ceil((alturaPlaca-sumaComienzoFin)/distanciaEntreBotas)
	end
	
	local tramoRectoEntreBotaDeCuelgue=(alturaPlaca-sumaComienzoFin-((repeticiones+1)*alturaBotaDeCuelgue)-(repeticiones*anchoBota))/repeticiones
	
	
	
	
	if crearBotas==1 then --Dobujar botas en el ala lateral
			--Variables BOTAS	
		local tramoRecto1BotaDerecha=52
		local radioArcoBotaDerecha=4 
		local tramoRecto2BotaDerecha=18
		local tramoRecto3BotaDerecha=6.5
		local tramoRecto4BotaDerecha=26
		
		
		
		
		--Parte inicial
		if cotaInicioDerecha>alaDerecha-margenBota then --pico plano en margen B
			distanciaCorreccion=cotaInicioDerecha-(alaDerecha-margenBota)
			
			local corte20 = Point2D(origenX+alaIzquierda+anchuraPlaca+cotaInicioDerecha-distanciaCorreccion,origenY+alaInferior+pliegueInferior+cotaInicioDerecha-distanciaCorreccion)
			local corte21 = Point2D(origenX+alaIzquierda+anchuraPlaca+cotaInicioDerecha-distanciaCorreccion,origenY+alaInferior+pliegueInferior+cotaInicioDerecha+distanciaCorreccion)
			local corte22 = Point2D(origenX+alaIzquierda+anchuraPlaca+anchoLateral1,origenY+alaInferior+pliegueInferior+alturaLateral1+cotaInicioDerecha)
			Contour:LineTo(corte20)
			Contour:LineTo(corte21)
			Contour:LineTo(corte22)
		else --pico normal en margen B
			local corte20 = Point2D(origenX+alaIzquierda+anchuraPlaca+cotaInicioDerecha,origenY+alaInferior+pliegueInferior+cotaInicioDerecha)
			local corte21 = Point2D(origenX+alaIzquierda+anchuraPlaca+anchoLateral1,origenY+alaInferior+pliegueInferior+alturaLateral1+cotaInicioDerecha)
			Contour:LineTo(corte20)
			Contour:LineTo(corte21)
		end
		
		
		
		
		
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
	
	else --Dibujar el ala lateral lisa
		local corte20=Point2D(origenX+alaIzquierda+anchuraPlaca+alaDerecha,origenY+alaInferior+pliegueInferior+alaDerecha)
		local corte21=Point2D(origenX+alaIzquierda+anchuraPlaca+alaDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca-alaDerecha)
		--local corte22=Point2D(origenX+alaIzquierda+anchuraPlaca+alaDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca-alaDerecha)
		Contour:LineTo(corte20)
		Contour:LineTo(corte21)
	end
	
	
	
	
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
	if crearBotas==1 then --Dobujar botas en el ala lateral
			--Variables BOTAS
		local tramoRecto1BotaIzquierda=26
		local radioArcoBotaIzquierda=4
		local tramoRecto2BotaIzquierda=6.5
		local tramoRecto3BotaIzquierda=18
		local tramoRecto4BotaIzquierda=52
		
			--Variables por si el ala derecha e izquierda no son simetricas
		local margenA_izq = margenA --Al igualarlo al tamaño de los margenes de la derecha la figura es simetrica, si deja de ser simetrica, hay que pedirle que introduzca manualmente los margenes de la izquierda
		local margenB_izq = margenB
		local cotaInicioIzquierda=((margenB-alturaBotaDeCuelgue)+(alaIzquierda-anchoBota))/2 --[relacion trigonometrica][explicacion en la hoja de papel]
		
		
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
		if cotaInicioIzquierda>alaIzquierda-margenBota then --pico plano en margen B
			distanciaCorreccion=cotaInicioIzquierda-(alaIzquierda-margenBota)
			
			local corte65 = Point2D(origenX+alaIzquierda-cotaInicioIzquierda+distanciaCorreccion,origenY+alaInferior+pliegueInferior+cotaInicioIzquierda+distanciaCorreccion)
			local corte66 = Point2D(origenX+alaIzquierda-cotaInicioIzquierda+distanciaCorreccion,origenY+alaInferior+pliegueInferior+cotaInicioIzquierda-distanciaCorreccion)
			local corte67 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior)
			Contour:LineTo(corte65)
			Contour:LineTo(corte66)
			Contour:LineTo(corte67)
		else --pico normal en margen B
			local corte65 = Point2D(origenX+alaIzquierda-cotaInicioIzquierda,origenY+alaInferior+pliegueInferior+cotaInicioIzquierda)
			local corte66 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior)
			Contour:LineTo(corte65)
			Contour:LineTo(corte66)
		end
		
		
		local corte65 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte65)
	
	
	
	else --Dibujar el ala lateral lisa
		local corte60=Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca-alaIzquierda)
		local corte61=Point2D(origenX,origenY+alaInferior+pliegueInferior+alaIzquierda)
		local corte62=Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior)

		Contour:LineTo(corte60)
		Contour:LineTo(corte61)
		Contour:LineTo(corte62)
		
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


function dibujarTaladrosAH(doc)

	if modelo==0 then

		--local numeroFilasTaladros=1
		--local numeroColumnasTaladros=2

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
		    --Coliso Izquierda
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)
	       --Coliso Derecha
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraPlaca-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		  dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		   --Dibujar Taladros Superiores e inferiores

			--[[for i=1, numeroFilasTaladros do
				
				for j=1, numeroColumnasTaladros do
					
					local puntoCentro = Point2D(origenX+anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),origenY+alaInferior+alturaPlaca+pliegueSuperior-margenYTaladroSuperior)
					local radio = diametroTaladros/2
					local layer = "Taladros"
					dibujarTaladro(puntoCentro, radio, layer)
					
					local puntoCentro = Point2D(origenX+anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),origenY+alaInferior+alturaPlaca+pliegueSuperior-margenYTaladroSuperior-distanciaYTaladrosSuperiores)
					local radio = diametroTaladros/2
					local layer = "Taladros"
					dibujarTaladro(puntoCentro, radio, layer)
					
					local puntoCentro = Point2D(origenX+anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),origenY+alaInferior+margenAla)
					local radio = diametroTaladros/2
					local layer = "Taladros"
					dibujarTaladro(puntoCentro, radio, layer)
					
					local puntoCentro = Point2D((origenX+anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroInferior))))+distanciaXTaladrosInferiores,origenY+margenYTaladroInferior)
					local radio = diametroTaladros/2
					local layer = "Taladros"
					dibujarTaladro(puntoCentro, radio, layer)
					
				end
				
			end--]]



		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then
   		 	
	   		--Taladro Superior Izquierda
	   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
	        local radio = diametroTaladros/2
	        local layer = "Taladros"
	        dibujarTaladro(puntoCentro, radio, layer)
	        
	        --Taladro Superior Derecha
	   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso-anchuraColiso/2,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
	        local radio = diametroTaladros/2
	        local layer = "Taladros"
	        dibujarTaladro(puntoCentro, radio, layer)

	        --Dibujar Taladros Superiores e inferiores

		   --[[for i=1, numeroFilasTaladros do

		   	for j=1, numeroColumnasTaladros do

		   		local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+pliegueSuperior-margenYTaladroSuperior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+pliegueSuperior-margenYTaladroSuperior-distanciaYTaladrosSuperiores)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+margenAla)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D((anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroInferior))))+distanciaXTaladrosInferiores,margenYTaladroInferior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		   	end

		   end]]--

        end


    
    --Dispone de pliegue inferior
    elseif (modelo==2 or modelo==3) then

    	--local numeroFilasTaladros=1
		--local numeroColumnasTaladros=2

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
	        --Coliso Izquierda
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)
	       --Coliso Derecha
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraPlaca-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		   --Dibujar Taladros Superiores e inferiores

		   --[[for i=1, numeroFilasTaladros do

		   	for j=1, numeroColumnasTaladros do

		   		local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+pliegueSuperior-margenYTaladroSuperior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+pliegueSuperior-margenYTaladroSuperior-distanciaYTaladrosSuperiores)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+margenAla)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D((anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroInferior))))+distanciaXTaladrosInferiores,margenYTaladroInferior+alaInferior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		   	end

		   end]]--



		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then
   		 	
	   		--Taladro Superior Izquierda
	   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
	        local radio = diametroTaladros/2
	        local layer = "Taladros"
	        dibujarTaladro(puntoCentro, radio, layer)
	        
	        --Taladro Superior Derecha
	   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso-anchuraColiso/2,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
	        local radio = diametroTaladros/2
	        local layer = "Taladros"
	        dibujarTaladro(puntoCentro, radio, layer)

	        --Dibujar Taladros Superiores e inferiores

		   --[[for i=1, numeroFilasTaladros do

		   	for j=1, numeroColumnasTaladros do

		   		local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+pliegueSuperior-margenYTaladroSuperior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+pliegueSuperior-margenYTaladroSuperior-distanciaYTaladrosSuperiores)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)


    elseif (modelo==2) then



    elseif (modelo==3) then

		   	end

		   end]]--

        end




   	--Test	
    elseif (modelo==4) then


    	--local numeroFilasTaladros=1
		--local numeroColumnasTaladros=2

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
	        --Coliso Izquierda
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)
	       --Coliso Derecha
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraPlaca-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		   --Dibujar Taladros Superiores e inferiores

		   --[[for i=1, numeroFilasTaladros do

		   	for j=1, numeroColumnasTaladros do

		   		local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+alaLateral-margenYTaladroSuperior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+alaLateral-margenYTaladroSuperior-distanciaYTaladrosSuperiores)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+margenAla)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D((anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroInferior))))+distanciaXTaladrosInferiores,margenYTaladroInferior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		   	end

		   end]]--



		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then
   		 	
	   		--Taladro Superior Izquierda
	   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,origenY+alaInferior+alturaPlaca+pliegueInferior+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
	        local radio = diametroTaladros/2
	        local layer = "Taladros"
	        dibujarTaladro(puntoCentro, radio, layer)
	        
	        --Taladro Superior Derecha
	   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso-anchuraColiso/2,origenY+alaInferior+alturaPlaca+pliegueInferior+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
	        local radio = diametroTaladros/2
	        local layer = "Taladros"
	        dibujarTaladro(puntoCentro, radio, layer)

	        --Dibujar Taladros Superiores e inferiores

		   --[[for i=1, numeroFilasTaladros do

		   	for j=1, numeroColumnasTaladros do

		   		local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+alaLateral-margenYTaladroSuperior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+alaLateral-margenYTaladroSuperior-distanciaYTaladrosSuperiores)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+margenAla)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D((anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroInferior))))+distanciaXTaladrosInferiores,margenYTaladroInferior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		   	end

		   end]]--

        end


    elseif (modelo==5) then

    	--local numeroFilasTaladros=1
		--local numeroColumnasTaladros=2

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
	        --Coliso Izquierda
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)
	       --Coliso Derecha
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraPlaca-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		   --Dibujar Taladros Superiores e inferiores

		  --[[ for i=1, numeroFilasTaladros do

		   	for j=1, numeroColumnasTaladros do

		   		local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+alaLateral-margenYTaladroSuperior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+alaLateral-margenYTaladroSuperior-distanciaYTaladrosSuperiores)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+margenAla)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D((anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroInferior))))+distanciaXTaladrosInferiores,margenYTaladroInferior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		   	end

		   end]]--



		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then
   		 	
	   		--Taladro Superior Izquierda
	   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
	        local radio = diametroTaladros/2
	        local layer = "Taladros"
	        dibujarTaladro(puntoCentro, radio, layer)
	        
	        --Taladro Superior Derecha
	   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso-anchuraColiso/2,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
	        local radio = diametroTaladros/2
	        local layer = "Taladros"
	        dibujarTaladro(puntoCentro, radio, layer)

	        --Dibujar Taladros Superiores e inferiores

		   --[[for i=1, numeroFilasTaladros do

		   	for j=1, numeroColumnasTaladros do

		   		local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+alaLateral-margenYTaladroSuperior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)





    --Test
	elseif (modelo==5) then
				
		        local puntoCentro = Point2D((anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroInferior))))+distanciaXTaladrosInferiores,margenYTaladroInferior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		   	end

		   end]]--

        end

   
	elseif (modelo==6) then


		--local numeroFilasTaladros=1
		--local numeroColumnasTaladros=2

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
	        --Coliso Izquierda
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)
	       --Coliso Derecha
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraPlaca-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		   --Dibujar Taladros Superiores e inferiores

		   --[[for i=1, numeroFilasTaladros do

		   	for j=1, numeroColumnasTaladros do

		   		
		   		local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+pliegueSuperior-margenYTaladroSuperior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+pliegueSuperior-margenYTaladroSuperior-distanciaYTaladrosSuperiores)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)


		   		local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+margenYTaladroSuperior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+margenYTaladroSuperior-distanciaYTaladrosSuperiores)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+margenAla)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D((anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroInferior))))+distanciaXTaladrosInferiores,margenYTaladroInferior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		   	end

		   end]]--



		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then
   		 	
	   		--Taladro Superior Izquierda
	   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
	        local radio = diametroTaladros/2
	        local layer = "Taladros"
	        dibujarTaladro(puntoCentro, radio, layer)
	        
	        --Taladro Superior Derecha
	   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso-anchuraColiso/2,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
	        local radio = diametroTaladros/2
	        local layer = "Taladros"
	        dibujarTaladro(puntoCentro, radio, layer)

	        --Dibujar Taladros Superiores e inferiores

		   --[[for i=1, numeroFilasTaladros do

		   	for j=1, numeroColumnasTaladros do

		   		local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+pliegueSuperior-margenYTaladroSuperior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+pliegueSuperior-margenYTaladroSuperior-distanciaYTaladrosSuperiores)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)


		   		local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+margenYTaladroSuperior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+margenYTaladroSuperior-distanciaYTaladrosSuperiores)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+margenAla)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D((anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroInferior))))+distanciaXTaladrosInferiores,margenYTaladroInferior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		   	end

		   end]]--

        end


   	elseif modelo==7 then

   		--local numeroFilasTaladros=1
		--local numeroColumnasTaladros=2

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
	        --Coliso Izquierda
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)
	       --Coliso Derecha
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraPlaca-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		  dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		   --Dibujar Taladros Superiores e inferiores

		   --[[for i=1, numeroFilasTaladros do

		   	for j=1, numeroColumnasTaladros do

		   		
		   		local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-margenYTaladroSuperior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-margenYTaladroSuperior-distanciaYTaladrosSuperiores)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)


		   		local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior-margenYTaladroSuperior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior-margenYTaladroSuperior-distanciaYTaladrosSuperiores)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+margenAla+pliegueInferior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D((anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroInferior))))+distanciaXTaladrosInferiores,margenYTaladroInferior+pliegueInferior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		   	end

		   end]]--



		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then
   		 	
	   		--Taladro Superior Izquierda
	   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,origenY+alaInferior+alturaPlaca+pliegueInferior+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
	        local radio = diametroTaladros/2
	        local layer = "Taladros"
	        dibujarTaladro(puntoCentro, radio, layer)
	        
	        --Taladro Superior Derecha
	   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso-anchuraColiso/2,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
	        local radio = diametroTaladros/2
	        local layer = "Taladros"
	        dibujarTaladro(puntoCentro, radio, layer)

	        --Dibujar Taladros Superiores e inferiores

		   --[[for i=1, numeroFilasTaladros do

		   	for j=1, numeroColumnasTaladros do

		   		local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-margenYTaladroSuperior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-margenYTaladroSuperior-distanciaYTaladrosSuperiores)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)


		   		local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior-margenYTaladroSuperior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior-margenYTaladroSuperior-distanciaYTaladrosSuperiores)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+margenAla+pliegueInferior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D((anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroInferior))))+distanciaXTaladrosInferiores,margenYTaladroInferior+pliegueInferior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		   	end

		   end]]--
		   end

    

    else

    	

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
	        --Coliso Izquierda
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)
	       --Coliso Derecha
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraPlaca-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		 
		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then
   		 	
	   		--Taladro Superior Izquierda
	   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,origenY+alaInferior+alturaPlaca+pliegueInferior+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
	        local radio = diametroTaladros/2
	        local layer = "Taladros"
	        dibujarTaladro(puntoCentro, radio, layer)
	        
	        --Taladro Superior Derecha
	   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso-anchuraColiso/2,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
	        local radio = diametroTaladros/2
	        local layer = "Taladros"
	        dibujarTaladro(puntoCentro, radio, layer)

	        

        end



  	end

	
   
	return true; 
end