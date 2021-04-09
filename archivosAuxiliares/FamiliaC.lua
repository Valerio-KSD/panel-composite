
-- VECTRIC LUA SCRIPT
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------FAMILIA C --------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Familia C
function OnLuaButton_modeloCH(framePrincipal)
	
	if modelo == 27 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaCH.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaCH.html"
		end
		
		
		local modeloCH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA CH")
		
		textoDescriptivo="C0"
		anchuraIzq=400 anchuraCentro=1200 anchuraDerecha=400 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=36 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloCH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloCH:AddDoubleField("anchuraPlacaIzquierda", anchuraIzq)
		modeloCH:AddDoubleField("anchuraPlacaCentro", anchuraCentro)
		modeloCH:AddDoubleField("anchuraPlacaDerecha", anchuraDerecha)
	    modeloCH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloCH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloCH:AddDoubleField("origenX", origenX)
		--modeloCH:AddDoubleField("origenY", origenY)

		modeloCH:AddDoubleField("alaLateral", alaIzquierda)
		modeloCH:AddDoubleField("alaSuperior", alaSuperior)
		modeloCH:AddDoubleField("alaInferior", alaInferior)

		--modeloCH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloCH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloCH:AddDoubleField("margenA", margenA)
		modeloCH:AddDoubleField("margenB", margenB)
		
		modeloCH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloCH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloCH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloCH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloCH:ShowDialog() then
			
				return false;
					
		end
	
	elseif modelo == 28 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaCH1.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaCH1.html"
		end
		
		
		local modeloCH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA CH1")
		
		textoDescriptivo="C1"
		anchuraIzq=400 anchuraCentro=1200 anchuraDerecha=400 alturaPlaca=1000 alaIzquierda=40 alaSuperior=20 alaInferior=32
		pliegueSuperior=40 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloCH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloCH:AddDoubleField("anchuraPlacaIzquierda", anchuraIzq)
		modeloCH:AddDoubleField("anchuraPlacaCentro", anchuraCentro)
		modeloCH:AddDoubleField("anchuraPlacaDerecha", anchuraDerecha)
	   modeloCH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloCH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloCH:AddDoubleField("origenX", origenX)
		--modeloCH:AddDoubleField("origenY", origenY)

		modeloCH:AddDoubleField("alaLateral", alaIzquierda)
		modeloCH:AddDoubleField("alaSuperior", alaSuperior)
		modeloCH:AddDoubleField("alaInferior", alaInferior)

		--modeloCH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloCH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloCH:AddDoubleField("margenA", margenA)
		modeloCH:AddDoubleField("margenB", margenB)

		modeloCH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloCH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloCH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloCH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloCH:ShowDialog() then
			
				return false;
					
		end
		
	elseif modelo == 29 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaCH2.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaCH2.html"
		end
		
		local modeloCH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA CH2")
		
		textoDescriptivo="C2"
		anchuraIzq=400 anchuraCentro=1200 anchuraDerecha=400 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=20
		pliegueSuperior=36 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloCH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloCH:AddDoubleField("anchuraPlacaIzquierda", anchuraIzq)
		modeloCH:AddDoubleField("anchuraPlacaCentro", anchuraCentro)
		modeloCH:AddDoubleField("anchuraPlacaDerecha", anchuraDerecha)
	   modeloCH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloCH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloCH:AddDoubleField("origenX", origenX)
		--modeloCH:AddDoubleField("origenY", origenY)

		modeloCH:AddDoubleField("alaLateral", alaIzquierda)
		modeloCH:AddDoubleField("alaSuperior", alaSuperior)
		modeloCH:AddDoubleField("alaInferior", alaInferior)

		modeloCH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloCH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloCH:AddDoubleField("margenA", margenA)
		modeloCH:AddDoubleField("margenB", margenB)

		modeloCH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloCH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloCH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloCH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloCH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo == 30 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaCH3.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaCH3.html"
		end
		
		
		local modeloCH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA CH3")
		
		textoDescriptivo="C3"
		anchuraIzq=400 anchuraCentro=1200 anchuraDerecha=400 alturaPlaca=1000 alaIzquierda=40 alaSuperior=20 alaInferior=20
		pliegueSuperior=36 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloCH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloCH:AddDoubleField("anchuraPlacaIzquierda", anchuraIzq)
		modeloCH:AddDoubleField("anchuraPlacaCentro", anchuraCentro)
		modeloCH:AddDoubleField("anchuraPlacaDerecha", anchuraDerecha)
	    modeloCH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloCH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloCH:AddDoubleField("origenX", origenX)
		--modeloCH:AddDoubleField("origenY", origenY)

		modeloCH:AddDoubleField("alaLateral", alaIzquierda)
		modeloCH:AddDoubleField("alaSuperior", alaSuperior)
		modeloCH:AddDoubleField("alaInferior", alaInferior)

		modeloCH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloCH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloCH:AddDoubleField("margenA", margenA)
		modeloCH:AddDoubleField("margenB", margenB)

		modeloCH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloCH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloCH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloCH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloCH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo == 31 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaCH4.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaCH4.html"
		end
		
		local modeloCH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA CH4")
		
		textoDescriptivo="C4"
		anchuraIzq=400 anchuraCentro=1200 anchuraDerecha=400 alturaPlaca=1000 alaIzquierda=40 alaSuperior=260 alaInferior=32
		pliegueSuperior=40 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloCH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloCH:AddDoubleField("anchuraPlacaIzquierda", anchuraIzq)
		modeloCH:AddDoubleField("anchuraPlacaCentro", anchuraCentro)
		modeloCH:AddDoubleField("anchuraPlacaDerecha", anchuraDerecha)
	    modeloCH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloCH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloCH:AddDoubleField("origenX", origenX)
		--modeloCH:AddDoubleField("origenY", origenY)

		modeloCH:AddDoubleField("alaLateral", alaIzquierda)
		modeloCH:AddDoubleField("alaSuperior", alaSuperior)
		modeloCH:AddDoubleField("alaInferior", alaInferior)

		--modeloCH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloCH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloCH:AddDoubleField("margenA", margenA)
		modeloCH:AddDoubleField("margenB", margenB)

		modeloCH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloCH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloCH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloCH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloCH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo == 32 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaCH5.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaCH5.html"
		end
		
		local modeloCH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA CH5")
		
		textoDescriptivo="C5"
		anchuraIzq=400 anchuraCentro=1200 anchuraDerecha=400 alturaPlaca=1000 alaIzquierda=40 alaSuperior=260 alaInferior=20
		pliegueSuperior=40 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloCH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloCH:AddDoubleField("anchuraPlacaIzquierda", anchuraIzq)
		modeloCH:AddDoubleField("anchuraPlacaCentro", anchuraCentro)
		modeloCH:AddDoubleField("anchuraPlacaDerecha", anchuraDerecha)
	    modeloCH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloCH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloCH:AddDoubleField("origenX", origenX)
		--modeloCH:AddDoubleField("origenY", origenY)

		modeloCH:AddDoubleField("alaLateral", alaIzquierda)
		modeloCH:AddDoubleField("alaSuperior", alaSuperior)
		modeloCH:AddDoubleField("alaInferior", alaInferior)

		modeloCH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloCH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloCH:AddDoubleField("margenA", margenA)
		modeloCH:AddDoubleField("margenB", margenB)

		modeloCH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloCH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloCH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloCH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloCH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo == 33 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaCH6.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaCH6.html"
		end
		
		local modeloCH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA CH6")
		
		textoDescriptivo="C6"
		anchuraIzq=400 anchuraCentro=1200 anchuraDerecha=400 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=300 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloCH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloCH:AddDoubleField("anchuraPlacaIzquierda", anchuraIzq)
		modeloCH:AddDoubleField("anchuraPlacaCentro", anchuraCentro)
		modeloCH:AddDoubleField("anchuraPlacaDerecha", anchuraDerecha)
	    modeloCH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloCH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloCH:AddDoubleField("origenX", origenX)
		--modeloCH:AddDoubleField("origenY", origenY)

		modeloCH:AddDoubleField("alaLateral", alaIzquierda)
		modeloCH:AddDoubleField("alaSuperior", alaSuperior)
		modeloCH:AddDoubleField("alaInferior", alaInferior)

		--modeloCH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloCH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloCH:AddDoubleField("margenA", margenA)
		modeloCH:AddDoubleField("margenB", margenB)

		modeloCH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloCH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloCH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloCH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloCH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo == 34 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaCH7.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaCH7.html"
		end
		
		local modeloCH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA CH7")
		
		textoDescriptivo="C7"
		anchuraIzq=400 anchuraCentro=1200 anchuraDerecha=400 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=20
		pliegueSuperior=300 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloCH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloCH:AddDoubleField("anchuraPlacaIzquierda", anchuraIzq)
		modeloCH:AddDoubleField("anchuraPlacaCentro", anchuraCentro)
		modeloCH:AddDoubleField("anchuraPlacaDerecha", anchuraDerecha)
	    modeloCH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloCH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloCH:AddDoubleField("origenX", origenX)
		--modeloCH:AddDoubleField("origenY", origenY)

		modeloCH:AddDoubleField("alaLateral", alaIzquierda)
		modeloCH:AddDoubleField("alaSuperior", alaSuperior)
		modeloCH:AddDoubleField("alaInferior", alaInferior)

		modeloCH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloCH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloCH:AddDoubleField("margenA", margenA)
		modeloCH:AddDoubleField("margenB", margenB)

		modeloCH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloCH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloCH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloCH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloCH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo == 35 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaCH8.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaCH8.html"
		end
		
		local modeloCH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA CH8")
		
		textoDescriptivo="C8"
		anchuraIzq=400 anchuraCentro=1200 anchuraDerecha=400 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=40
		pliegueSuperior=36 pliegueInferior=300  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloCH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloCH:AddDoubleField("anchuraPlacaIzquierda", anchuraIzq)
		modeloCH:AddDoubleField("anchuraPlacaCentro", anchuraCentro)
		modeloCH:AddDoubleField("anchuraPlacaDerecha", anchuraDerecha)
	    modeloCH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloCH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloCH:AddDoubleField("origenX", origenX)
		--modeloCH:AddDoubleField("origenY", origenY)

		modeloCH:AddDoubleField("alaLateral", alaIzquierda)
		modeloCH:AddDoubleField("alaSuperior", alaSuperior)
		modeloCH:AddDoubleField("alaInferior", alaInferior)

		modeloCH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloCH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloCH:AddDoubleField("margenA", margenA)
		modeloCH:AddDoubleField("margenB", margenB)

		modeloCH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloCH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloCH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloCH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloCH:ShowDialog() then
			
				return false;
					
		end
		
	end
		

	return true;

end


function OnLuaButton_aceptarCH(modeloCH)

	if modelo==27 or modelo==28 or modelo==31 or modelo==33 then --SIN PLIEGUE CH
		pliegueInferior=0
		
		textoDescriptivo = modeloCH:GetTextField("textoDescriptivo")
		anchuraIzq = modeloCH:GetDoubleField("anchuraPlacaIzquierda")
		anchuraCentro = modeloCH:GetDoubleField("anchuraPlacaCentro")
		anchuraDerecha = modeloCH:GetDoubleField("anchuraPlacaDerecha")
	    margenMecanizado = modeloCH:GetDoubleField("margenMecanizado")
	    alturaPlaca = modeloCH:GetDoubleField("alturaPlaca")
		--origenX = modeloCH:GetDoubleField("origenXAH")
		--origenY = modeloCH:GetDoubleField("origenYAH")

		alaIzquierda=modeloCH:GetDoubleField("alaLateral")
		alaSuperior=modeloCH:GetDoubleField("alaSuperior")
		alaInferior=modeloCH:GetDoubleField("alaInferior")
		--pliegueInferior=modeloCH:GetDoubleField("pliegueInferior")
		pliegueSuperior=modeloCH:GetDoubleField("pliegueSuperior")
		margenA=modeloCH:GetDoubleField("margenA")
		margenB=modeloCH:GetDoubleField("margenB")

		anchuraColiso=modeloCH:GetDoubleField("anchuraColiso")
		diametroTaladros=modeloCH:GetDoubleField("diametroTaladros")
		
		distanciaEntreBotas=modeloCH:GetDoubleField("distanciaEntreBotas")
		numeroBotas=modeloCH:GetDoubleField("numeroBotas")


	elseif modelo==29 or modelo==30 or modelo==32 or modelo==34 or modelo==35 then  --CON PLIEGUE CH
		
		textoDescriptivo = modeloCH:GetTextField("textoDescriptivo")
		anchuraIzq = modeloCH:GetDoubleField("anchuraPlacaIzquierda")
		anchuraCentro = modeloCH:GetDoubleField("anchuraPlacaCentro")
		anchuraDerecha = modeloCH:GetDoubleField("anchuraPlacaDerecha")
	    margenMecanizado = modeloCH:GetDoubleField("margenMecanizado")
	    alturaPlaca = modeloCH:GetDoubleField("alturaPlaca")
		--origenX = modeloCH:GetDoubleField("origenXAH")
		--origenY = modeloCH:GetDoubleField("origenYAH")
		
		alaIzquierda=modeloCH:GetDoubleField("alaLateral")
		alaSuperior=modeloCH:GetDoubleField("alaSuperior")
		alaInferior=modeloCH:GetDoubleField("alaInferior")
		pliegueInferior=modeloCH:GetDoubleField("pliegueInferior")
		pliegueSuperior=modeloCH:GetDoubleField("pliegueSuperior")
		margenA=modeloCH:GetDoubleField("margenA")
		margenB=modeloCH:GetDoubleField("margenB")
		
		anchuraColiso=modeloCH:GetDoubleField("anchuraColiso")
		diametroTaladros=modeloCH:GetDoubleField("diametroTaladros")
		
		distanciaEntreBotas=modeloCH:GetDoubleField("distanciaEntreBotas")
		numeroBotas=modeloCH:GetDoubleField("numeroBotas")
		
	
  	end

    
	--Caracteristicas generales
	anchuraPlaca=anchuraIzq+anchuraCentro+anchuraDerecha
	
	--anchuraPlaca=anchuraPlaca-margenPlaca
    --alturaPlaca=alturaPlaca-margenPlaca
	
	alaDerecha=alaIzquierda
	
	alturaColiso=diametroTaladros
	
    --Comprobaciones y validaciones de los datos
	if anchuraPlaca < 0 then
		DisplayMessageBox("La anchura de la placa NO puede ser negativa. Creacion Modelo CH"..modelo-27 .." Fallida")
	elseif anchuraIzq<0 or anchuraDerecha<0 or anchuraCentro<0 then
		DisplayMessageBox("La anchura de una de las partes de la placa NO puede ser negativa. Creacion Modelo CH"..modelo-27 .." Fallida")	
	elseif  alturaPlaca < 0 then
		DisplayMessageBox("La altura de la placa NO puede ser negativa. Creacion Modelo CH"..modelo-27 .." Fallida")
	elseif alaIzquierda<0 or alaSuperior<0 or alaInferior<0 then
    	DisplayMessageBox("El tamano las alas NO puede ser negativa. Creacion Modelo CH"..modelo-27 .." Fallida")
	elseif pliegueSuperior<0 or pliegueInferior<0 then
		DisplayMessageBox("El tamano del pliegue NO puede ser negativo. Creacion Modelo CH"..modelo-27 .." Fallida")
	elseif anchuraColiso>anchuraPlaca/2 then 
		DisplayMessageBox("El tamano de los colisos NO puede ser mayor al ancho de la plancha. Creacion Modelo CH"..modelo-27 .." Fallida")
	else
		
		--Para que la pieza apareza fuera del area de trabajo
			origenX=-(alaDerecha+anchuraIzq+anchuraCentro+anchuraDerecha+alaIzquierda+400)
			origenY= 400
		
		--Para dibujar la pieza
			dibujarFresadoCH(doc)
			dibujarCorteCH(doc)
			dibujarTexto(doc)
			dibujarTaladrosCH(doc)
		
			
		DisplayMessageBox("Modelo C"..modelo-27 .." Creado Correctamente")
	
	end
	
	return true;

end

function dibujarFresadoCH(doc)
	
	--Puntos trayectoria 
	local Contour = Contour(0.0)
	
	local fresado1 = Point2D(origenX+alaIzquierda,origenY)
	local fresado2 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
	local fresado3 = Point2D(origenX+alaIzquierda+anchuraIzq-pliegueInferior,origenY+alaInferior)
	local fresado4 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior)
	local fresado5 = Point2D(origenX+alaIzquierda+anchuraIzq,origenY+alaInferior+pliegueInferior)
	local fresado6 = Point2D(origenX+alaIzquierda+anchuraIzq+pliegueInferior,origenY+alaInferior)--Punto externo a la polilinea principal
	local fresado7 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro,origenY+alaInferior+pliegueInferior)
	local fresado8 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-pliegueInferior,origenY+alaInferior)--Punto externo a la polilinea principal
	local fresado9 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+pliegueInferior,origenY+alaInferior)
	local fresado10 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior+pliegueInferior)
	local fresado11 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior)
	local fresado12 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY)
	local fresado13 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado14 = Point2D(origenX+alaIzquierda+anchuraIzq,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado15 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado16 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado17 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	local fresado18 = Point2D(origenX+alaIzquierda+anchuraIzq-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	local fresado19 = Point2D(origenX+alaIzquierda+anchuraIzq+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)--Punto externo a la polilinea principal
	local fresado20 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)--Punto externo a la polilinea principal
	local fresado21 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	local fresado22 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	local fresado23 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
	
	local fresado24 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
	
	if modelo==27 or modelo==28 then --REF [CH][CH1]		
		dibujarFresado_auxiliar(doc,fresado1,fresado17)
		dibujarFresado_auxiliar(doc,fresado17,fresado18)
		dibujarFresado_auxiliar(doc,fresado19,fresado20)
		dibujarFresado_auxiliar(doc,fresado21,fresado22)
		dibujarFresado_auxiliar(doc,fresado22,fresado12)
		dibujarFresado_auxiliar(doc,fresado10,fresado4)
		dibujarFresado_auxiliar(doc,fresado5,fresado14)
		dibujarFresado_auxiliar(doc,fresado13,fresado16)
		dibujarFresado_auxiliar(doc,fresado15,fresado7)

		
	elseif modelo==29 or modelo==30 then --[CH2][CH3]		
		dibujarFresado_auxiliar(doc,fresado2,fresado17)
		dibujarFresado_auxiliar(doc,fresado17,fresado18)
		dibujarFresado_auxiliar(doc,fresado19,fresado20)
		dibujarFresado_auxiliar(doc,fresado21,fresado22)
		dibujarFresado_auxiliar(doc,fresado22,fresado11)
		dibujarFresado_auxiliar(doc,fresado11,fresado9)
		dibujarFresado_auxiliar(doc,fresado8,fresado6)
		dibujarFresado_auxiliar(doc,fresado3,fresado2)
		dibujarFresado_auxiliar(doc,fresado4,fresado10)
		dibujarFresado_auxiliar(doc,fresado7,fresado15)
		dibujarFresado_auxiliar(doc,fresado16,fresado13)
		dibujarFresado_auxiliar(doc,fresado14,fresado5)
		
		
	
	elseif modelo==31 then --[CH4]		
		dibujarFresado_auxiliar(doc,fresado1,fresado17)
		dibujarFresado_auxiliar(doc,fresado13,fresado16)
		dibujarFresado_auxiliar(doc,fresado16,fresado12)
		dibujarFresado_auxiliar(doc,fresado10,fresado4)
		dibujarFresado_auxiliar(doc,fresado5,fresado14)
		dibujarFresado_auxiliar(doc,fresado15,fresado7)
		
	elseif modelo==32 then --[CH5]		
		dibujarFresado_auxiliar(doc,fresado2,fresado17)
		dibujarFresado_auxiliar(doc,fresado13,fresado16)
		dibujarFresado_auxiliar(doc,fresado22,fresado11)
		dibujarFresado_auxiliar(doc,fresado11,fresado9)
		dibujarFresado_auxiliar(doc,fresado8,fresado6)
		dibujarFresado_auxiliar(doc,fresado3,fresado2)
		dibujarFresado_auxiliar(doc,fresado4,fresado10)
		dibujarFresado_auxiliar(doc,fresado7,fresado15)
		dibujarFresado_auxiliar(doc,fresado14,fresado5)
	
	elseif modelo==33 then --[CH6]		
		dibujarFresado_auxiliar(doc,fresado1,fresado24)
		dibujarFresado_auxiliar(doc,fresado17,fresado18)
		dibujarFresado_auxiliar(doc,fresado19,fresado20)
		dibujarFresado_auxiliar(doc,fresado21,fresado22)
		dibujarFresado_auxiliar(doc,fresado23,fresado12)
		dibujarFresado_auxiliar(doc,fresado10,fresado4)
		dibujarFresado_auxiliar(doc,fresado5,fresado14)
		dibujarFresado_auxiliar(doc,fresado13,fresado16)
		dibujarFresado_auxiliar(doc,fresado15,fresado7)
	
	elseif modelo==34 then --[CH7]		
		dibujarFresado_auxiliar(doc,fresado2,fresado24)
		dibujarFresado_auxiliar(doc,fresado17,fresado18)
		dibujarFresado_auxiliar(doc,fresado19,fresado20)
		dibujarFresado_auxiliar(doc,fresado21,fresado22)
		dibujarFresado_auxiliar(doc,fresado23,fresado11)
		dibujarFresado_auxiliar(doc,fresado11,fresado9)
		dibujarFresado_auxiliar(doc,fresado8,fresado6)
		dibujarFresado_auxiliar(doc,fresado3,fresado2)
		dibujarFresado_auxiliar(doc,fresado4,fresado10)
		dibujarFresado_auxiliar(doc,fresado7,fresado15)
		dibujarFresado_auxiliar(doc,fresado16,fresado13)
		dibujarFresado_auxiliar(doc,fresado14,fresado5)
		
	elseif modelo==35 then --[CH8]		
		dibujarFresado_auxiliar(doc,fresado1,fresado17)
		dibujarFresado_auxiliar(doc,fresado17,fresado18)
		dibujarFresado_auxiliar(doc,fresado19,fresado20)
		dibujarFresado_auxiliar(doc,fresado21,fresado22)
		dibujarFresado_auxiliar(doc,fresado22,fresado12)
		dibujarFresado_auxiliar(doc,fresado11,fresado9)
		dibujarFresado_auxiliar(doc,fresado8,fresado6)
		dibujarFresado_auxiliar(doc,fresado3,fresado2)
		dibujarFresado_auxiliar(doc,fresado4,fresado10)
		dibujarFresado_auxiliar(doc,fresado7,fresado15)
		dibujarFresado_auxiliar(doc,fresado16,fresado13)
		dibujarFresado_auxiliar(doc,fresado14,fresado5)
		
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



function dibujarCorteCH(doc)
	
	local Contour = Contour(0.0)
	
	--PARTE INFERIOR-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	if modelo==27 or modelo==28 or modelo==31 or modelo==33 then --Parte Inferior [CH][CH1][CH4][CH6]
		local corte1 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
		local corte2 = Point2D(origenX+alaIzquierda-alaInferior,origenY)
		local corte3 = Point2D(origenX+alaIzquierda+anchuraIzq-alaInferior,origenY)
		local corte4 = Point2D(origenX+alaIzquierda+anchuraIzq,origenY+alaInferior)
		local corte5 = Point2D(origenX+alaIzquierda+anchuraIzq+alaInferior,origenY)
		local corte6 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-alaInferior,origenY)
		local corte7 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro,origenY+alaInferior)
		local corte8 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+alaInferior,origenY)
		local corte9 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha+alaInferior,origenY)
		local corte10 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior)
		
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
		
	elseif modelo==29 or modelo==30 or modelo==32 or modelo==34 then --Parte Inferior [CH2][CH3][CH5][CH7]
		local corte1 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior)
		local corte2 = Point2D(origenX+alaIzquierda-pliegueInferior,origenY+alaInferior)
		local corte3 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
		local corte4 = Point2D(origenX+alaIzquierda,origenY)
		local corte5 = Point2D(origenX+alaIzquierda+anchuraIzq-pliegueInferior,origenY)
		local corte6 = Point2D(origenX+alaIzquierda+anchuraIzq-pliegueInferior,origenY+alaInferior)
		local corte7 = Point2D(origenX+alaIzquierda+anchuraIzq,origenY+alaInferior+pliegueInferior)
		local corte8 = Point2D(origenX+alaIzquierda+anchuraIzq+pliegueInferior,origenY+alaInferior)
		local corte9 = Point2D(origenX+alaIzquierda+anchuraIzq+pliegueInferior,origenY)
		local corte10 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-pliegueInferior,origenY)
		local corte11 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-pliegueInferior,origenY+alaInferior)
		local corte12 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro,origenY+alaInferior+pliegueInferior)
		local corte13 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+pliegueInferior,origenY+alaInferior)
		local corte14 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+pliegueInferior,origenY)
		local corte15 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY)
		local corte16 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior)
		local corte17 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha+pliegueInferior,origenY+alaInferior)
		local corte18 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior+pliegueInferior)
		
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
		
	else --Parte Inferior [CH8]
		local corte1 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior)
		local corte2 = Point2D(origenX+alaIzquierda-alaInferior,origenY+pliegueInferior)
		local corte3 = Point2D(origenX+alaIzquierda-alaInferior,origenY+alaInferior*2)
		local corte4 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
		local corte5 = Point2D(origenX+alaIzquierda-alaInferior,origenY)
		local corte6 = Point2D(origenX+alaIzquierda+anchuraIzq-pliegueInferior,origenY)
		local corte7 = Point2D(origenX+alaIzquierda+anchuraIzq-pliegueInferior,origenY+alaInferior)
		local corte8 = Point2D(origenX+alaIzquierda+anchuraIzq,origenY+alaInferior+pliegueInferior)
		local corte9 = Point2D(origenX+alaIzquierda+anchuraIzq+pliegueInferior,origenY+alaInferior)
		local corte10 = Point2D(origenX+alaIzquierda+anchuraIzq+pliegueInferior,origenY)
		local corte11 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-pliegueInferior,origenY)
		local corte12 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-pliegueInferior,origenY+alaInferior)
		local corte13 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro,origenY+alaInferior+pliegueInferior)
		local corte14 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+pliegueInferior,origenY+alaInferior)
		local corte15 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+pliegueInferior,origenY)
		local corte16 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha+alaInferior,origenY)
		local corte17 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior)
		local corte18 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha+alaInferior,origenY+alaInferior*2)
		local corte19 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha+alaInferior,origenY+pliegueInferior)
		local corte20 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+pliegueInferior+alaInferior)
		
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
	local cotaInicioDerecha=((margenB-alturaBotaDeCuelgue)+(alaDerecha-anchoBota))/2 --[relacion trigonometrica][explicacion en la hoja de papel] 
	local anchoLateral1=alaDerecha-anchoBota  --21.5 --variable para reducir codigo (se podria eliminar)
	local alturaLateral1=cotaInicioDerecha-alaDerecha+anchoBota --15.3  --variable para reducir codigo (se podria eliminar)
	local sumaComienzoFin=(margenA)+(margenB-alturaBotaDeCuelgue) --109
	
	local margenBota=4 --Esto es la distacia que hay entre la altura maxima de la bota y el pico que hay en el margen inferior del ala izquierda
	local distanciaCorreccion
	
	--Parte botas
	local repeticiones
	if  parametroBotas==1 then
		repeticiones=numeroBotas-1
	else 
		repeticiones=math.ceil((alturaPlaca-sumaComienzoFin)/distanciaEntreBotas)
	end
	
	local tramoRectoEntreBotaDeCuelgue=(alturaPlaca-sumaComienzoFin-((repeticiones+1)*alturaBotaDeCuelgue)-(repeticiones*anchoBota))/repeticiones
	
	local puntoInicioX=(origenX+alaIzquierda+anchuraPlaca+anchoLateral1)
	local puntoInicioY=(origenY+alaInferior+pliegueInferior+cotaInicioDerecha+alturaLateral1)
	
	
	
	if crearBotas==1 then --Dibujar botas en el ala derecha
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
	
	if modelo==27 or modelo==28 or modelo==29 or modelo==30 or modelo==35 then --Parte Superior [CH][CH1][CH2][CH3][CH8]
		local corte40 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca)
		local corte41 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte42 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte43 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte44 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte45 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte46 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro,origenY+alaInferior+pliegueInferior+alturaPlaca)
		local corte47 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte48 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte49 = Point2D(origenX+alaIzquierda+anchuraIzq+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte50 = Point2D(origenX+alaIzquierda+anchuraIzq+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte51 = Point2D(origenX+alaIzquierda+anchuraIzq,origenY+alaInferior+pliegueInferior+alturaPlaca)
		local corte52 = Point2D(origenX+alaIzquierda+anchuraIzq-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte53 = Point2D(origenX+alaIzquierda+anchuraIzq-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte54 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte55 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte56 = Point2D(origenX+alaIzquierda-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte57 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca)
		
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
		Contour:LineTo(corte50)
		Contour:LineTo(corte51)
		Contour:LineTo(corte52)
		Contour:LineTo(corte53)
		Contour:LineTo(corte54)
		Contour:LineTo(corte55)
		Contour:LineTo(corte56)
		Contour:LineTo(corte57)
		
	elseif modelo==31 or modelo==32 then --Parte Superior [CH4][CH5]
		local corte40 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca)
		local corte41 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte42 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte43 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte44 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+pliegueSuperior+alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte45 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro,origenY+alaInferior+pliegueInferior+alturaPlaca)
		local corte46 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-pliegueSuperior-alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+alaSuperior+pliegueSuperior)
		local corte47 = Point2D(origenX+alaIzquierda+anchuraIzq+pliegueSuperior+alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+alaSuperior+pliegueSuperior)
		local corte48 = Point2D(origenX+alaIzquierda+anchuraIzq,origenY+alaInferior+pliegueInferior+alturaPlaca)
		local corte49 = Point2D(origenX+alaIzquierda+anchuraIzq-pliegueSuperior-alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte50 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte51 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte52 = Point2D(origenX+alaIzquierda-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte53 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca)
		
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
		Contour:LineTo(corte50)
		Contour:LineTo(corte51)
		Contour:LineTo(corte52)
		Contour:LineTo(corte53)
	
	elseif modelo==33 or modelo==34 then --[CH6][CH7]
		local corte40 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca)
		local corte41 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha+alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+alaSuperior)
		local corte42 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha+alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior-alaSuperior)
		local corte43 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte44 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha+alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte45 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte46 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte47 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro,origenY+alaInferior+pliegueInferior+alturaPlaca)
		local corte48 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte49 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte50 = Point2D(origenX+alaIzquierda+anchuraIzq+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte51 = Point2D(origenX+alaIzquierda+anchuraIzq+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte52 = Point2D(origenX+alaIzquierda+anchuraIzq,origenY+alaInferior+pliegueInferior+alturaPlaca)
		local corte53 = Point2D(origenX+alaIzquierda+anchuraIzq-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte54 = Point2D(origenX+alaIzquierda+anchuraIzq-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte55 = Point2D(origenX+alaIzquierda-alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte56 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte57 = Point2D(origenX+alaIzquierda-alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior-alaSuperior)
		local corte58 = Point2D(origenX+alaIzquierda-alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+alaSuperior)
		local corte59 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca)
		
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
		Contour:LineTo(corte50)
		Contour:LineTo(corte51)
		Contour:LineTo(corte52)
		Contour:LineTo(corte53)
		Contour:LineTo(corte54)
		Contour:LineTo(corte55)
		Contour:LineTo(corte56)
		Contour:LineTo(corte57)
		Contour:LineTo(corte58)
		Contour:LineTo(corte59)
		
	end
	
	
	
	
	
	
	
	--PARTE IZQUIERDA (BOTAS)------------------------------------------------------------------------------------------------------------------------------------------------------------------
	if crearBotas==1 then --Dibujar botas en el ala izquierda
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
		
		local corte66 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte66)
		
	
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



function dibujarTaladrosCH(doc)

	local numeroColisos=1
    local numeroTaladros=1

	if modelo==27 then

		numeroColisos=1
		numeroTaladros=1
				
		--Con colisos superiores
    	if crearColiso==1 then
			
		  
		   	for i=0,numeroColisos do

		   			--Coliso lateral izquierda y centro
					local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchuraIzq+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
					local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchuraIzq +(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchuraIzq+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
				    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchuraIzq+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			  		  
			       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

			       
					local origenColiso = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
					local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
				    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

				   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

			   				

		    end

		    --Coliso lateral derecha
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

	       
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)


		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then

   		 	for i=0,numeroTaladros do
   		 	
		   		--Taladro lateral izquierda y centro
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(i*(anchuraIzq+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(i*(anchuraCentro)),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        end


	        --Taladro lateral derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(anchuraIzq+anchuraCentro+pliegueSuperior),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(anchuraCentro+anchuraDerecha+pliegueSuperior),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)


        end

    end

    if modelo==28 then

		numeroColisos=1
		numeroTaladros=1
				
		--Con colisos superiores
    	if crearColiso==1 then
			
		  
		   	for i=0,numeroColisos do

		   			--Coliso lateral izquierda y centro
					local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchuraIzq+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
					local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchuraIzq +(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchuraIzq+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
				    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchuraIzq+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			  		  
			       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

			       
					local origenColiso = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
					local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
				    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

				   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

			   				

		    end

		    --Coliso lateral derecha
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

	       
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)


		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then

   		 	for i=0,numeroTaladros do
   		 	
		   		--Taladro lateral izquierda y centro
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(i*(anchuraIzq+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(i*(anchuraCentro)),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        end


	        --Taladro lateral derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(anchuraIzq+anchuraCentro+pliegueSuperior),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(anchuraCentro+anchuraDerecha+pliegueSuperior),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)


        end

    end

    if modelo==29 then

		numeroColisos=1
		numeroTaladros=1
				
		--Con colisos superiores
    	if crearColiso==1 then
			
		  
		   	for i=0,numeroColisos do

		   			--Coliso lateral izquierda y centro
					local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchuraIzq+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
					local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchuraIzq +(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchuraIzq+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
				    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchuraIzq+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			  		  
			       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

			       
					local origenColiso = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
					local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
				    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

				   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

			   				

		    end

		    --Coliso lateral derecha
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

	       
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)


		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then

   		 	for i=0,numeroTaladros do
   		 	
		   		--Taladro lateral izquierda y centro
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(i*(anchuraIzq+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(i*(anchuraCentro)),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        end


	        --Taladro lateral derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(anchuraIzq+anchuraCentro+pliegueSuperior),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(anchuraCentro+anchuraDerecha+pliegueSuperior),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)


        end

    end

    if modelo==30 then

		numeroColisos=1
		numeroTaladros=1
				
		--Con colisos superiores
    	if crearColiso==1 then
			
		  
		   	for i=0,numeroColisos do

		   			--Coliso lateral izquierda y centro
					local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchuraIzq+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
					local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchuraIzq +(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchuraIzq+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
				    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchuraIzq+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			  		  
			       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

			       
					local origenColiso = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
					local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
				    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

				   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

			   				

		    end

		    --Coliso lateral derecha
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

	       
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)


		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then

   		 	for i=0,numeroTaladros do
   		 	
		   		--Taladro lateral izquierda y centro
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(i*(anchuraIzq+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(i*(anchuraCentro)),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        end


	        --Taladro lateral derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(anchuraIzq+anchuraCentro+pliegueSuperior),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(anchuraCentro+anchuraDerecha+pliegueSuperior),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)


        end

    end

    if modelo==31 then

		
				
		--Con colisos superiores
    	if crearColiso==1 then
			
		  
   			--Coliso lateral izquierda 
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

	       --Coliso central Izquierdo
		
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+alaSuperior+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+alaSuperior+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+alaSuperior+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+alaSuperior+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		  
			--Coliso central Derecho
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(alaSuperior+pliegueSuperior)-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(alaSuperior+pliegueSuperior)-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(alaSuperior+pliegueSuperior)-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(alaSuperior+pliegueSuperior)-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)   				


		    --Coliso lateral derecha
			local origenColiso = Point2D(origenX+alaIzquierda-(2*anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda-(anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda-(anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda-(2*anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

	       
			

		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then

   		 	 	
		   		--Taladro lateral izquierda 
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+(anchuraIzq+alaSuperior+pliegueSuperior)+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	     
	        --Taladro lateral derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda-anchuraColiso-anchuraColiso/2+(anchuraIzq+anchuraCentro-pliegueSuperior-alaSuperior),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha-anchuraColiso-anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)


        end

    end

    if modelo==32 then

		
				
		--Con colisos superiores
    	if crearColiso==1 then
			
		  
   			--Coliso lateral izquierda 
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

	       --Coliso central Izquierdo
		
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+alaSuperior+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+alaSuperior+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+alaSuperior+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+alaSuperior+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		  
			--Coliso central Derecho
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(alaSuperior+pliegueSuperior)-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(alaSuperior+pliegueSuperior)-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(alaSuperior+pliegueSuperior)-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(alaSuperior+pliegueSuperior)-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)   				


		    --Coliso lateral derecha
			local origenColiso = Point2D(origenX+alaIzquierda-(2*anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda-(anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda-(anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda-(2*anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

	       
			

		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then

   		 	 	
		   		--Taladro lateral izquierda 
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+(anchuraIzq+alaSuperior+pliegueSuperior)+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	     
	        --Taladro lateral derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda-anchuraColiso-anchuraColiso/2+(anchuraIzq+anchuraCentro-pliegueSuperior-alaSuperior),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha-anchuraColiso-anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)


        end

    end

   --***************************************
   if modelo==33 then
		
				
		--Con colisos superiores
    	if crearColiso==1 then
			
		  
   			--Coliso lateral izquierda 
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

	       --Coliso central Izquierdo
		
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		  
			--Coliso central Derecho
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(pliegueSuperior)-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(pliegueSuperior)-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(pliegueSuperior)-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(pliegueSuperior)-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)   				


		    --Coliso lateral derecha
			local origenColiso = Point2D(origenX+alaIzquierda-(2*anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda-(anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda-(anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda-(2*anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

	       
			

		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then

   		 	 	
		   		--Taladro lateral izquierda 
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+(anchuraIzq+pliegueSuperior)+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	     
	        --Taladro lateral derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda-anchuraColiso-anchuraColiso/2+(anchuraIzq+anchuraCentro-pliegueSuperior),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha-anchuraColiso-anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)


        end

    end

     if modelo==34 then
		
				
		--Con colisos superiores
    	if crearColiso==1 then
			
		  
   			--Coliso lateral izquierda 
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

	       --Coliso central Izquierdo
		
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		  
			--Coliso central Derecho
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(pliegueSuperior)-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(pliegueSuperior)-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(pliegueSuperior)-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(pliegueSuperior)-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)   				


		    --Coliso lateral derecha
			local origenColiso = Point2D(origenX+alaIzquierda-(2*anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda-(anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda-(anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda-(2*anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

	       
			

		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then

   		 	 	
		   		--Taladro lateral izquierda 
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+(anchuraIzq+pliegueSuperior)+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	     
	        --Taladro lateral derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda-anchuraColiso-anchuraColiso/2+(anchuraIzq+anchuraCentro-pliegueSuperior),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha-anchuraColiso-anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)


        end

    end

    if modelo==35 then

		numeroColisos=1
		numeroTaladros=1
				
		--Con colisos superiores
    	if crearColiso==1 then
			
		  
		   	for i=0,numeroColisos do

		   			--Coliso lateral izquierda y centro
					local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchuraIzq+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
					local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchuraIzq +(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchuraIzq+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
				    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchuraIzq+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			  		  
			       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

			       
					local origenColiso = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
					local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
				    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

				   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

			   				

		    end

		    --Coliso lateral derecha
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

	       
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)


		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then

   		 	for i=0,numeroTaladros do
   		 	
		   		--Taladro lateral izquierda y centro
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(i*(anchuraIzq+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(i*(anchuraCentro)),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        end


	        --Taladro lateral derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(anchuraIzq+anchuraCentro+pliegueSuperior),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(anchuraCentro+anchuraDerecha+pliegueSuperior),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)


        end

    end

   

end