-- VECTRIC LUA SCRIPT

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- FAMILIA B --------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Familia B
function OnLuaButton_modeloBH(framePrincipal)
	
	if modelo == 9 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH.html"
		end
		
		
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA B0")
		
		textoDescriptivo="B0"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=36 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)

		--modeloBH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)
		
		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		
		modeloBH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloBH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end

   	elseif modelo==10 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH1.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH1.html"
		end
		
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA B1")
		
		textoDescriptivo="B1"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=20 alaInferior=32
		pliegueSuperior=40 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)

		--modeloBH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloBH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloBH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==11 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH2.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH2.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA B2")
		
		textoDescriptivo="B2"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=20
		pliegueSuperior=36 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)

		modeloBH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloBH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloBH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==12 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH3.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH3.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA B3")
		
		textoDescriptivo="B3"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=20 alaInferior=20
		pliegueSuperior=36 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)

		modeloBH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloBH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloBH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==13 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH4.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH4.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA B4")
		
		textoDescriptivo="B4"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=260 alaInferior=32
		pliegueSuperior=40 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)

		--modeloBH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloBH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloBH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==14 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH5.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH5.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA B5")
		
		textoDescriptivo="B5"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=260 alaInferior=20
		pliegueSuperior=40 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	     modeloBH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)

		modeloBH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloBH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloBH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==15 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH6.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH6.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA B6")
		
		textoDescriptivo="B6"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=300 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)

		--modeloBH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloBH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloBH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==16 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH7.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH7.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA B7")
		
		textoDescriptivo="B7"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=20
		pliegueSuperior=300 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)

		modeloBH:AddDoubleField("pliegueInferior", pliegueInferior)
		
		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloBH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloBH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==17 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH8.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH8.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA B8")
		
		textoDescriptivo="B8"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=36 pliegueInferior=300  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)

		modeloBH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloBH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloBH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==18 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH9.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH9.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA B9")
		
		textoDescriptivo="B9"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=36 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)
		modeloBH:AddDoubleField("distanciaAlas", distanciaAlas)

		--modeloBH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloBH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloBH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==19 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH10.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH10.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA B10")
		
		textoDescriptivo="B10"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=20 alaInferior=32
		pliegueSuperior=40 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)
		modeloBH:AddDoubleField("distanciaAlas", distanciaAlas)

		--modeloBH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloBH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloBH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==20 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH11.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH11.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA B11")
		
		textoDescriptivo="B11"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=20
		pliegueSuperior=36 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)
		modeloBH:AddDoubleField("distanciaAlas", distanciaAlas)

		modeloBH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloBH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloBH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==21 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH12.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH12.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA B12")
		
		textoDescriptivo="B12"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=20 alaInferior=20
		pliegueSuperior=36 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)
		modeloBH:AddDoubleField("distanciaAlas", distanciaAlas)

		modeloBH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloBH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloBH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==22 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH13.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH13.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA B13")
		
		textoDescriptivo="B13"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=260 alaInferior=32
		pliegueSuperior=40 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)
		modeloBH:AddDoubleField("distanciaAlas", distanciaAlas)

		--modeloBH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloBH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloBH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==23 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH14.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH14.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA B14")
		
		textoDescriptivo="B14"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=260 alaInferior=20
		pliegueSuperior=40 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)
		modeloBH:AddDoubleField("distanciaAlas", distanciaAlas)

		modeloBH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloBH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloBH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==24 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH15.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH15.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA B15")
		
		textoDescriptivo="B15"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=300 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)
		modeloBH:AddDoubleField("distanciaAlas", distanciaAlas)

		--modeloBH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloBH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloBH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==25 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH16.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH16.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA B16")
		
		textoDescriptivo="B16"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=20
		pliegueSuperior=300 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)
		modeloBH:AddDoubleField("distanciaAlas", distanciaAlas)

		modeloBH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloBH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloBH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
		
	elseif modelo==26 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH17.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH17.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA B17")
		
		textoDescriptivo="B17"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=40
		pliegueSuperior=36 pliegueInferior=300  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenMecanizado", margenMecanizado)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)
		modeloBH:AddDoubleField("distanciaAlas", distanciaAlas)

		modeloBH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		
		modeloBH:AddDoubleField("distanciaEntreBotas", distanciaEntreBotas)
		modeloBH:AddDoubleField("numeroBotas", numeroBotas)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	end
		

return true;

end


function OnLuaButton_aceptarBH(modeloBH)

	if modelo==9 or modelo==10 or modelo==13 or modelo==15 then --SIN PLIEGUE / COLUMNA 1
		pliegueInferior=0
		
		textoDescriptivo = modeloBH:GetTextField("textoDescriptivo")
		anchura1 = modeloBH:GetDoubleField("anchuraPlacaIzquierda")
		anchura2 = modeloBH:GetDoubleField("anchuraPlacaDerecha")
	    margenMecanizado = modeloBH:GetDoubleField("margenMecanizado")
	    alturaPlaca = modeloBH:GetDoubleField("alturaPlaca")
		--origenX = modeloBH:GetDoubleField("origenXAH")
		--origenY = modeloBH:GetDoubleField("origenYAH")

		alaIzquierda=modeloBH:GetDoubleField("alaLateral")
		alaSuperior=modeloBH:GetDoubleField("alaSuperior")
		alaInferior=modeloBH:GetDoubleField("alaInferior")
		--pliegueInferior=modeloBH:GetDoubleField("pliegueInferior")
		pliegueSuperior=modeloBH:GetDoubleField("pliegueSuperior")
		margenA=modeloBH:GetDoubleField("margenA")
		margenB=modeloBH:GetDoubleField("margenB")

		anchuraColiso=modeloBH:GetDoubleField("anchuraColiso")
		diametroTaladros=modeloBH:GetDoubleField("diametroTaladros")
		
		distanciaEntreBotas=modeloBH:GetDoubleField("distanciaEntreBotas")
		numeroBotas=modeloBH:GetDoubleField("numeroBotas")



	elseif modelo==11 or modelo==12 or modelo==14 or modelo==16 or modelo==17 then  --CON PLIEGUE / COLUMNA 1
		
		textoDescriptivo = modeloBH:GetTextField("textoDescriptivo")
		anchura1 = modeloBH:GetDoubleField("anchuraPlacaIzquierda")
		anchura2 = modeloBH:GetDoubleField("anchuraPlacaDerecha")
	    margenMecanizado = modeloBH:GetDoubleField("margenMecanizado")
	    alturaPlaca = modeloBH:GetDoubleField("alturaPlaca")
		--origenX = modeloBH:GetDoubleField("origenXAH")
		--origenY = modeloBH:GetDoubleField("origenYAH")

		alaIzquierda=modeloBH:GetDoubleField("alaLateral")
		alaSuperior=modeloBH:GetDoubleField("alaSuperior")
		alaInferior=modeloBH:GetDoubleField("alaInferior")
		pliegueInferior=modeloBH:GetDoubleField("pliegueInferior")
		pliegueSuperior=modeloBH:GetDoubleField("pliegueSuperior")
		margenA=modeloBH:GetDoubleField("margenA")
		margenB=modeloBH:GetDoubleField("margenB")

		anchuraColiso=modeloBH:GetDoubleField("anchuraColiso")
		diametroTaladros=modeloBH:GetDoubleField("diametroTaladros")
		
		distanciaEntreBotas=modeloBH:GetDoubleField("distanciaEntreBotas")
		numeroBotas=modeloBH:GetDoubleField("numeroBotas")

	elseif modelo==18 or modelo==19 or modelo==22 or modelo==24 then  --SIN PLIEGUE / COLUMNA 2
		pliegueInferior=0
		
		textoDescriptivo = modeloBH:GetTextField("textoDescriptivo")
		anchura1 = modeloBH:GetDoubleField("anchuraPlacaIzquierda")
		anchura2 = modeloBH:GetDoubleField("anchuraPlacaDerecha")
	   margenMecanizado = modeloBH:GetDoubleField("margenMecanizado")
	    alturaPlaca = modeloBH:GetDoubleField("alturaPlaca")
		--origenX = modeloBH:GetDoubleField("origenXAH")
		--origenY = modeloBH:GetDoubleField("origenYAH")
		
		alaIzquierda=modeloBH:GetDoubleField("alaLateral")
		alaSuperior=modeloBH:GetDoubleField("alaSuperior")
		alaInferior=modeloBH:GetDoubleField("alaInferior")
		distanciaAlas=modeloBH:GetDoubleField("distanciaAlas")
		
		--pliegueInferior=modeloBH:GetDoubleField("pliegueInferior")
		pliegueSuperior=modeloBH:GetDoubleField("pliegueSuperior")
		margenA=modeloBH:GetDoubleField("margenA")
		margenB=modeloBH:GetDoubleField("margenB")

		anchuraColiso=modeloBH:GetDoubleField("anchuraColiso")
		diametroTaladros=modeloBH:GetDoubleField("diametroTaladros")
		
		distanciaEntreBotas=modeloBH:GetDoubleField("distanciaEntreBotas")
		numeroBotas=modeloBH:GetDoubleField("numeroBotas")
	
	elseif modelo==20 or modelo==21 or modelo==23 or modelo==25 or modelo==26 then  --CON PLIEGUE / COLUMNA 2
	
		textoDescriptivo = modeloBH:GetTextField("textoDescriptivo")
		anchura1 = modeloBH:GetDoubleField("anchuraPlacaIzquierda")
		anchura2 = modeloBH:GetDoubleField("anchuraPlacaDerecha")
	    margenMecanizado = modeloBH:GetDoubleField("margenMecanizado")
	    alturaPlaca = modeloBH:GetDoubleField("alturaPlaca")
		--origenX = modeloBH:GetDoubleField("origenXAH")
		--origenY = modeloBH:GetDoubleField("origenYAH")

		alaIzquierda=modeloBH:GetDoubleField("alaLateral")
		alaSuperior=modeloBH:GetDoubleField("alaSuperior")
		alaInferior=modeloBH:GetDoubleField("alaInferior")
		distanciaAlas=modeloBH:GetDoubleField("distanciaAlas")
		
		pliegueInferior=modeloBH:GetDoubleField("pliegueInferior")
		pliegueSuperior=modeloBH:GetDoubleField("pliegueSuperior")
		margenA=modeloBH:GetDoubleField("margenA")
		margenB=modeloBH:GetDoubleField("margenB")

		anchuraColiso=modeloBH:GetDoubleField("anchuraColiso")
		diametroTaladros=modeloBH:GetDoubleField("diametroTaladros")
		
		distanciaEntreBotas=modeloBH:GetDoubleField("distanciaEntreBotas")
		numeroBotas=modeloBH:GetDoubleField("numeroBotas")
	
  	end

    
	--Caracteristicas generales
	anchuraPlaca=anchura1+anchura2
	
	--anchuraPlaca=anchuraPlaca-margenPlaca
    --alturaPlaca=alturaPlaca-margenPlaca
	
	alaDerecha=alaIzquierda
	
	alturaColiso=diametroTaladros
	
    --Comprobaciones y validaciones de los datos
	if anchuraPlaca < 0 then
		DisplayMessageBox("La anchura de la placa NO puede ser negativa. Creacion Modelo BH"..modelo-9 .." Fallida")
	elseif anchuraIzq<0 or anchuraDerecha<0 then
		DisplayMessageBox("La anchura de una de las partes de la placa NO puede ser negativa. Creacion Modelo BH"..modelo-9 .." Fallida")	
	elseif  alturaPlaca < 0 then
		DisplayMessageBox("La altura de la placa NO puede ser negativa. Creacion Modelo BH"..modelo-9 .." Fallida")
	elseif alaIzquierda<0 or alaSuperior<0 or alaInferior<0 then
    	DisplayMessageBox("El tamano las alas NO puede ser negativa. Creacion Modelo BH"..modelo-9 .." Fallida")
	elseif pliegueSuperior<0 or pliegueInferior<0 then
		DisplayMessageBox("El tamano del pliegue NO puede ser negativo. Creacion Modelo BH"..modelo-9 .." Fallida")
	elseif anchuraColiso>anchuraPlaca/2 then 
		DisplayMessageBox("El tamano de los colisos NO puede ser mayor al ancho de la plancha. Creacion Modelo BH"..modelo-9 .." Fallida")
	else
		
		--Para que la pieza apareza fuera del area de trabajo
			origenX=-(alaDerecha+anchura1+anchura2+alaIzquierda+400)
			origenY=400
		
		--Para dibujar la pieza
			dibujarFresadoBH(doc)
			dibujarCorteBH(doc)
			dibujarTexto(doc)
			dibujarTaladrosBH(doc)
		
			
		DisplayMessageBox("Modelo B"..modelo-9 .. " Creado Correctamente")
	
	end
	
return true;

end

function dibujarFresadoBH(doc)
	
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
	
	local fresado18 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
	
	
	if modelo>=9 and modelo<=17 then
		fresado8 = Point2D(origenX+alaIzquierda+anchura1-pliegueInferior,origenY+alaInferior)
		fresado9 = Point2D(origenX+alaIzquierda+anchura1+pliegueInferior,origenY+alaInferior)
		fresado12 = Point2D(origenX+alaIzquierda+anchura1-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		fresado13 = Point2D(origenX+alaIzquierda+anchura1+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	elseif modelo==21 then
		fresado8 = Point2D(origenX+alaIzquierda+anchura1-pliegueInferior,origenY+alaInferior)
		fresado9 = Point2D(origenX+alaIzquierda+anchura1+pliegueInferior,origenY+alaInferior)
		fresado12 = Point2D(origenX+alaIzquierda+anchura1-(distanciaAlas/2),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		fresado13 = Point2D(origenX+alaIzquierda+anchura1+(distanciaAlas/2),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	elseif modelo>=18 and modelo<=26 then
		fresado8 = Point2D(origenX+alaIzquierda+anchura1-(distanciaAlas/2),origenY+alaInferior)	
		fresado9 = Point2D(origenX+alaIzquierda+anchura1+(distanciaAlas/2),origenY+alaInferior)
		fresado12 = Point2D(origenX+alaIzquierda+anchura1-(distanciaAlas/2),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		fresado13 = Point2D(origenX+alaIzquierda+anchura1+(distanciaAlas/2),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	end
	
	
	if modelo==9 or modelo==10 or modelo==18 or modelo==19  then --REF [BH][BH1] [BH9][BH10]
		dibujarFresado_auxiliar(doc,fresado1,fresado11)
		dibujarFresado_auxiliar(doc,fresado6,fresado14)
		dibujarFresado_auxiliar(doc,fresado11,fresado12)
		dibujarFresado_auxiliar(doc,fresado13,fresado14)
		dibujarFresado_auxiliar(doc,fresado10,fresado15)
		dibujarFresado_auxiliar(doc,fresado16,fresado7)
		dibujarFresado_auxiliar(doc,fresado3,fresado4)
		
	elseif modelo==11 or modelo==12  or modelo==20 or modelo==21 then --REF [BH2][BH3] [BH11][BH12]	
		dibujarFresado_auxiliar(doc,fresado8,fresado2)
		dibujarFresado_auxiliar(doc,fresado9,fresado5)
		dibujarFresado_auxiliar(doc,fresado3,fresado4)
		dibujarFresado_auxiliar(doc,fresado2,fresado11)
		dibujarFresado_auxiliar(doc,fresado5,fresado14)
		dibujarFresado_auxiliar(doc,fresado11,fresado12)
		dibujarFresado_auxiliar(doc,fresado13,fresado14)
		dibujarFresado_auxiliar(doc,fresado10,fresado15)
		dibujarFresado_auxiliar(doc,fresado16,fresado7)
		
		
	elseif modelo==13 or modelo==22  then --REF [BH4]  [BH13]		
		dibujarFresado_auxiliar(doc,fresado1,fresado11)
		dibujarFresado_auxiliar(doc,fresado10,fresado15)
		dibujarFresado_auxiliar(doc,fresado14,fresado6)
		dibujarFresado_auxiliar(doc,fresado3,fresado4)
		dibujarFresado_auxiliar(doc,fresado16,fresado7)
		
	elseif modelo==14 or modelo==23  then --REF [BH5]  [BH14]
		dibujarFresado_auxiliar(doc,fresado2,fresado11)
		dibujarFresado_auxiliar(doc,fresado10,fresado15)
		dibujarFresado_auxiliar(doc,fresado14,fresado5)
		dibujarFresado_auxiliar(doc,fresado5,fresado9)
		dibujarFresado_auxiliar(doc,fresado2,fresado8)
		dibujarFresado_auxiliar(doc,fresado3,fresado4)
		dibujarFresado_auxiliar(doc,fresado16,fresado7)
		
	elseif modelo==15 or modelo==24  then --REF [BH6] [BH15]
		dibujarFresado_auxiliar(doc,fresado1,fresado18)
		dibujarFresado_auxiliar(doc,fresado11,fresado12)
		dibujarFresado_auxiliar(doc,fresado13,fresado14)
		dibujarFresado_auxiliar(doc,fresado15,fresado10)
		dibujarFresado_auxiliar(doc,fresado16,fresado7)
		dibujarFresado_auxiliar(doc,fresado17,fresado6)
		dibujarFresado_auxiliar(doc,fresado3,fresado4)
		
	elseif modelo==16 or modelo==25  then --REF [BH7]  [BH16]
		
		dibujarFresado_auxiliar(doc,fresado1,fresado18)
		dibujarFresado_auxiliar(doc,fresado17,fresado6)
		dibujarFresado_auxiliar(doc,fresado2,fresado8)
		dibujarFresado_auxiliar(doc,fresado9,fresado5)
		dibujarFresado_auxiliar(doc,fresado3,fresado4)
		dibujarFresado_auxiliar(doc,fresado7,fresado16)
		dibujarFresado_auxiliar(doc,fresado10,fresado15)
		dibujarFresado_auxiliar(doc,fresado11,fresado12)
		dibujarFresado_auxiliar(doc,fresado13,fresado14)
		
	elseif modelo==17 or modelo==26  then --REF [BH8] [BH17]		
		dibujarFresado_auxiliar(doc,fresado11,fresado12)
		dibujarFresado_auxiliar(doc,fresado13,fresado14)
		dibujarFresado_auxiliar(doc,fresado10,fresado15)
		dibujarFresado_auxiliar(doc,fresado16,fresado7)
		dibujarFresado_auxiliar(doc,fresado3,fresado4)
		dibujarFresado_auxiliar(doc,fresado6,fresado17)
		dibujarFresado_auxiliar(doc,fresado18,fresado1)
		dibujarFresado_auxiliar(doc,fresado2,fresado8)
		dibujarFresado_auxiliar(doc,fresado9,fresado5)
		
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



function dibujarCorteBH(doc)
	
	local Contour = Contour(0.0)
	
	--PARTE INFERIOR-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	
	if modelo==9 or modelo==18 or modelo==10 or modelo==19 or modelo==13 or modelo==22 or modelo==15 or modelo==24 then --Parte Inferior para los modelos [BH-BH9][BH1-BH10][BH4-BH13][BH6-BH15]
		
		local corte1 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
		local corte2 = Point2D(origenX+alaIzquierda-alaInferior,origenY)
		Contour:AppendPoint(corte1)
		Contour:LineTo(corte2)
		
		local corte3
		local corte4
		local corte5
		local corte6
		local corte7
		
		if modelo==9 or modelo==10 or modelo==13 or modelo==15 then --[BH][BH1][BH4][BH6]
			corte3 = Point2D(origenX+alaIzquierda+anchura1-alaInferior,origenY)
			corte4 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior)
			corte5 = Point2D(origenX+alaIzquierda+anchura1+alaInferior,origenY)
			Contour:LineTo(corte3)
			Contour:LineTo(corte4)
			Contour:LineTo(corte5)
		else --[BH9][BH10]
			corte3 = Point2D(origenX+alaIzquierda+anchura1-distanciaAlas/2,origenY)
			corte4 = Point2D(origenX+alaIzquierda+anchura1-distanciaAlas/2,origenY+alaInferior-distanciaAlas/2)
			Contour:LineTo(corte3)
			Contour:LineTo(corte4)
			
			corte5 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior-distanciaAlas/2) --centro de la circunferencia
			corte6 = Point2D(origenX+alaIzquierda+anchura1+distanciaAlas/2,origenY+alaInferior-distanciaAlas/2)
			
			Contour:ArcTo(corte6,corte5,false)
			
			corte7 = Point2D(origenX+alaIzquierda+anchura1+distanciaAlas/2,origenY)
			Contour:LineTo(corte7)
		end
		
		
		local corte8 = Point2D(origenX+alaIzquierda+anchura1+anchura2+alaInferior,origenY)
		local corte9 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior)
		Contour:LineTo(corte8)
		Contour:LineTo(corte9)
		
		
	elseif modelo==11 or modelo==20 or modelo==12 or modelo==21 or modelo==14 or modelo==23 or modelo==16 or modelo==25 then --Parte Inferior para los modelos [BH2-BH11][BH3-BH12][BH5-BH14][BH7-BH16]   
		local corte1 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior)
		local corte2 = Point2D(origenX+alaIzquierda-pliegueInferior,origenY+alaInferior)
		local corte3 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
		local corte4 = Point2D(origenX+alaIzquierda,origenY)
		Contour:AppendPoint(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
		
		local corte5
		local corte6
		local corte7
		local corte8
		local corte9
		
		if modelo==11 or modelo==12 or modelo==21 or modelo==14 or modelo==16 then --[BH2][BH3][BH12][BH5][BH7]
			corte5 = Point2D(origenX+alaIzquierda+anchura1-pliegueInferior,origenY)
			corte6 = Point2D(origenX+alaIzquierda+anchura1-pliegueInferior,origenY+alaInferior)
			corte7 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior)
			corte8 = Point2D(origenX+alaIzquierda+anchura1+pliegueInferior,origenY+alaInferior)
			corte9 = Point2D(origenX+alaIzquierda+anchura1+pliegueInferior,origenY)
			Contour:LineTo(corte5)
			Contour:LineTo(corte6)
			Contour:LineTo(corte7)
			Contour:LineTo(corte8)
			Contour:LineTo(corte9)
			
		else --[BH11]
			corte5 = Point2D(origenX+alaIzquierda+anchura1-distanciaAlas/2,origenY)
			corte6 = Point2D(origenX+alaIzquierda+anchura1-distanciaAlas/2,origenY+alaInferior+pliegueInferior-distanciaAlas/2)
			Contour:LineTo(corte5)
			Contour:LineTo(corte6)
			
			corte7 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior-distanciaAlas/2) --centro de la circunferencia
			corte8 = Point2D(origenX+alaIzquierda+anchura1+distanciaAlas/2,origenY+alaInferior+pliegueInferior-distanciaAlas/2)
			
			Contour:ArcTo(corte8,corte7,false)
			
			corte9 = Point2D(origenX+alaIzquierda+anchura1+distanciaAlas/2,origenY)
			Contour:LineTo(corte9)
		end
		
		local corte10 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY)
		local corte11 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior)
		local corte12 = Point2D(origenX+alaIzquierda+anchura1+anchura2+pliegueInferior,origenY+alaInferior)
		local corte13 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte10)
		Contour:LineTo(corte11)
		Contour:LineTo(corte12)
		Contour:LineTo(corte13)
		
	
	
	
	elseif modelo==17 or modelo==26 then --Parte Inferior para los modelos [BH8-BH17]
		
		local corte1 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior)
		local corte2 = Point2D(origenX+alaIzquierda-alaInferior,origenY+alaInferior+pliegueInferior-alaInferior)
		local corte3 = Point2D(origenX+alaIzquierda-alaInferior,origenY+alaInferior*2)
		local corte4 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
		local corte5 = Point2D(origenX+alaIzquierda-alaInferior,origenY)
		Contour:AppendPoint(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
		Contour:LineTo(corte5)
		
		local corte6
		local corte7
		local corte8
		local corte9
		local corte10
		local corte11
		
		if modelo==17 then --[BH8]
			corte6 = Point2D(origenX+alaIzquierda+anchura1-pliegueInferior,origenY)
			corte7 = Point2D(origenX+alaIzquierda+anchura1-pliegueInferior,origenY+alaInferior)
			corte8 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior)
			corte9 = Point2D(origenX+alaIzquierda+anchura1+pliegueInferior,origenY+alaInferior)
			corte10 = Point2D(origenX+alaIzquierda+anchura1+pliegueInferior,origenY)
			Contour:LineTo(corte6)
			Contour:LineTo(corte7)
			Contour:LineTo(corte8)
			Contour:LineTo(corte9)
			Contour:LineTo(corte10)
		else --[BH17]
			corte6 = Point2D(origenX+alaIzquierda+anchura1-distanciaAlas/2,origenY)
			corte7 = Point2D(origenX+alaIzquierda+anchura1-distanciaAlas/2,origenY+alaInferior+pliegueInferior-distanciaAlas/2)
			Contour:LineTo(corte6)
			Contour:LineTo(corte7)
			
			corte8 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior-distanciaAlas/2) --centro de la circunferencia
			corte9 = Point2D(origenX+alaIzquierda+anchura1+distanciaAlas/2,origenY+alaInferior+pliegueInferior-distanciaAlas/2)
			
			Contour:ArcTo(corte9,corte8,false)
			
			corte10 = Point2D(origenX+alaIzquierda+anchura1+distanciaAlas/2,origenY)
			Contour:LineTo(corte10)
		end
		
		
		local corte12 = Point2D(origenX+alaIzquierda+anchura1+anchura2+alaInferior,origenY)
		local corte13 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior)
		local corte14 = Point2D(origenX+alaIzquierda+anchura1+anchura2+alaInferior,origenY+alaInferior*2)
		local corte15 = Point2D(origenX+alaIzquierda+anchura1+anchura2+alaInferior,origenY+pliegueInferior)
		local corte16 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+pliegueInferior+alaInferior)
		Contour:LineTo(corte12)
		Contour:LineTo(corte13)
		Contour:LineTo(corte14)
		Contour:LineTo(corte15)
		Contour:LineTo(corte16)
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
	
	
	if crearBotas==1 then --Dobujar botas en el ala lateral
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
	
	if modelo==9 or modelo==18 or modelo==10 or modelo==19 or modelo==11 or modelo==20 or modelo==12 or modelo==21 or modelo==17 or modelo==26 or modelo==13 or modelo==22 or modelo==14 or modelo==23  then --Parte Superior [BH-BH9][BH1-BH10][BH2-BH11][BH3-BH12][BH8-BH17][BH4-BH13][BH5-BH14]
		
		local corte40 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca)
		local corte41 = Point2D(origenX+alaIzquierda+anchura1+anchura2+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte42 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte43 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		Contour:LineTo(corte40)
		Contour:LineTo(corte41)
		Contour:LineTo(corte42)
		Contour:LineTo(corte43)
		
		local corte44
		local corte45
		local corte46
		local corte47
		local corte48
		
		if modelo==9 or modelo==10 or modelo==11 or modelo==12 or modelo==17 then --[BH][BH1][BH2][BH3][BH8]
			corte44 = Point2D(origenX+alaIzquierda+anchura1+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			corte45 = Point2D(origenX+alaIzquierda+anchura1+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			corte46 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca)
			corte47 = Point2D(origenX+alaIzquierda+anchura1-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			corte48 = Point2D(origenX+alaIzquierda+anchura1-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			Contour:LineTo(corte44)
			Contour:LineTo(corte45)
			Contour:LineTo(corte46)
			Contour:LineTo(corte47)
			Contour:LineTo(corte48)
			
		elseif modelo==13 or modelo==14 then --[BH5][BH6]
			corte44 = Point2D(origenX+alaIzquierda+anchura1+alaSuperior+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			corte45 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca)
			corte46 = Point2D(origenX+alaIzquierda+anchura1-pliegueSuperior-alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			Contour:LineTo(corte44)
			Contour:LineTo(corte45)
			Contour:LineTo(corte46)
			
		else
			corte44 = Point2D(origenX+alaIzquierda+anchura1+distanciaAlas/2,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			corte45 = Point2D(origenX+alaIzquierda+anchura1+distanciaAlas/2,origenY+alaInferior+pliegueInferior+alturaPlaca+distanciaAlas/2)
			Contour:LineTo(corte44)
			Contour:LineTo(corte45)
			
			corte46 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca+distanciaAlas/2) --centro de la circunferencia
			corte47 = Point2D(origenX+alaIzquierda+anchura1-distanciaAlas/2,origenY+alaInferior+pliegueInferior+alturaPlaca+distanciaAlas/2)
			Contour:ArcTo(corte47,corte46,false)
			
			corte48 = Point2D(origenX+alaIzquierda+anchura1-distanciaAlas/2,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			Contour:LineTo(corte48)
			
		end
		
		
		local corte49 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+alaSuperior+pliegueSuperior)
		local corte50 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte51 = Point2D(origenX+alaIzquierda-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte52 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte49)
		Contour:LineTo(corte50)
		Contour:LineTo(corte51)
		Contour:LineTo(corte52)
		
		
	elseif modelo==15 or modelo==24 or modelo==16 or modelo==25  then --Parte Superior [BH6-BH15][BH7-BH16]
		
		local corte40 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca)
		local corte41 = Point2D(origenX+alaIzquierda+anchura1+anchura2+alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+alaSuperior)
		local corte42 = Point2D(origenX+alaIzquierda+anchura1+anchura2+alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior-alaSuperior)
		local corte43 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte44 = Point2D(origenX+alaIzquierda+anchura1+anchura2+alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		Contour:LineTo(corte40)
		Contour:LineTo(corte41)
		Contour:LineTo(corte42)
		Contour:LineTo(corte43)
		Contour:LineTo(corte44)
		
		local corte45
		local corte46
		local corte47
		local corte48
		local corte49
		
		if modelo==15 or modelo==16 then --[BH6][BH7]
			corte45 = Point2D(origenX+alaIzquierda+anchura1+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			corte46 = Point2D(origenX+alaIzquierda+anchura1+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			corte47 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca)
			corte48 = Point2D(origenX+alaIzquierda+anchura1-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			corte49 = Point2D(origenX+alaIzquierda+anchura1-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			Contour:LineTo(corte45)
			Contour:LineTo(corte46)
			Contour:LineTo(corte47)
			Contour:LineTo(corte48)
			Contour:LineTo(corte49)
			
		else --[BH15][BH16]
			corte45 = Point2D(origenX+alaIzquierda+anchura1+distanciaAlas/2,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			corte46 = Point2D(origenX+alaIzquierda+anchura1+distanciaAlas/2,origenY+alaInferior+pliegueInferior+alturaPlaca+distanciaAlas/2)
			Contour:LineTo(corte45)
			Contour:LineTo(corte46)
			
			corte47 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca+distanciaAlas/2) --centro de la circunferencia
			corte48 = Point2D(origenX+alaIzquierda+anchura1-distanciaAlas/2,origenY+alaInferior+pliegueInferior+alturaPlaca+distanciaAlas/2)
			Contour:ArcTo(corte48,corte47,false)
			
			corte49 = Point2D(origenX+alaIzquierda+anchura1-distanciaAlas/2,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			Contour:LineTo(corte49)
			
		end
		
		
		local corte50 = Point2D(origenX+alaIzquierda-alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+alaSuperior+pliegueSuperior)
		local corte51 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte52 = Point2D(origenX+alaIzquierda-alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior-alaSuperior)
		local corte53 = Point2D(origenX+alaIzquierda-alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+alaSuperior)
		local corte54 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte50)
		Contour:LineTo(corte51)
		Contour:LineTo(corte52)
		Contour:LineTo(corte53)
		Contour:LineTo(corte54)
		
	
	end
	
	
	
	
	
	--PARTE IZQUIERDA (BOTAS)------------------------------------------------------------------------------------------------------------------------------------------------------------------
	if crearBotas==1 then --Dibujar botas
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




function dibujarTaladrosBH(doc)
    
    local numeroColisos=1
    local numeroTaladros=1

	if modelo==9 then

		numeroColisos=1
		numeroTaladros=1
				
		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
		   	for i=0,numeroColisos do

		   		--Coliso Izquierda
				local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		  		  
		       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		       --Coliso Derecha
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		    end

		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then

   		 	for i=0,numeroColisos do
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(i*(anchura1+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(i*(anchura2+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        end
        end

    end


    if modelo==10 then

    	numeroColisos=1
		numeroTaladros=1
				
		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
		   	for i=0,numeroColisos do
		  		  
		       --Coliso Izquierda
				local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		  		  
		       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		       --Coliso Derecha
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		    end

		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then

   		 	for i=0,numeroColisos do
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(i*(anchura1+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(i*(anchura2+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        end
        end

    end

    if modelo==11 then

    	numeroColisos=1
		numeroTaladros=1

				
		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
		   	for i=0,numeroColisos do
		  		  
		       --Coliso Izquierda
				local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		  		  
		       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		       --Coliso Derecha
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		    end

		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then

   		 	for i=0,numeroColisos do
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(i*(anchura1+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(i*(anchura2+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        end
        end

    end

    if modelo==12 then

		numeroColisos=1
		numeroTaladros=1

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
		   	for i=0,numeroColisos do
		  		  
		       --Coliso Izquierda
				local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		  		  
		       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		       --Coliso Derecha
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)
		    end

		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then

   		 	for i=0,numeroColisos do
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(i*(anchura1+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(i*(anchura2+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        end
        end

    end

   
    if modelo==13 then

		numeroColisos=1
		numeroTaladros=1

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
		   	for i=0,numeroColisos do
		  		  
		       --Coliso Izquierda
				local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		  		
		  	    
		       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		       --Coliso Derecha
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1-(alaSuperior+pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1-(alaSuperior+pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1-(alaSuperior+pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1-(alaSuperior+pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		    end

		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then

   		 	for i=0,numeroColisos do
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(i*(anchura1+(alaSuperior+pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1-(alaSuperior+pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(i*(anchura2+(alaSuperior+pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        end
        end

    end
   
    if modelo==14 then

		numeroColisos=1
		numeroTaladros=1

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
		   	for i=0,numeroColisos do
		  		  
		      --Coliso Izquierda
				local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		  		
		  	    
		       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		       --Coliso Derecha
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1-(alaSuperior+pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1-(alaSuperior+pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1-(alaSuperior+pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1-(alaSuperior+pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		    end

		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then

   		 	for i=0,numeroColisos do
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(i*(anchura1+(alaSuperior+pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1-(alaSuperior+pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(i*(anchura2+(alaSuperior+pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        end
        end

    end
   
    if modelo==15 then

		numeroColisos=1
		numeroTaladros=1

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
		   	for i=0,numeroColisos do
		  		  
		       --Coliso Izquierda
				local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		  		  
		       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		       --Coliso Derecha
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		    end

		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then

   		 	for i=0,numeroColisos do
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(i*(anchura1+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(i*(anchura2+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        end
        end

    end
    
    if modelo==16 then

		numeroColisos=1
		numeroTaladros=1

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
		   	for i=0,numeroColisos do
		  		  
		       --Coliso Izquierda
				local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		  		  
		       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		       --Coliso Derecha
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		    end

		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then

   		 	for i=0,numeroColisos do
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(i*(anchura1+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(i*(anchura2+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        end
        end

    end

    if modelo==17 then

		numeroColisos=1
		numeroTaladros=1

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
		   	for i=0,numeroColisos do
		  		  
		       --Coliso Izquierda
				local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		  		  
		       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		       --Coliso Derecha
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		    end

		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then

   		 	for i=0,numeroColisos do
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(i*(anchura1+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(i*(anchura2+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        end
        end

    end


    if modelo==18 then

		numeroColisos=1
		numeroTaladros=1

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
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		  

		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then

   		 	
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso)-(anchuraColiso/2),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        
        end

    end

    if modelo==19 then

		numeroColisos=1
		numeroTaladros=1

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
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		  

		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then

   		 	
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso)-(anchuraColiso/2),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        
        end

    end

    if modelo==20 then

		numeroColisos=1
		numeroTaladros=1

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
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		  

		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then

   		 	
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso)-(anchuraColiso/2),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        
        end

    end

    if modelo==21 then

		numeroColisos=1
		numeroTaladros=1

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
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		  

		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then

   		 	
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso)-(anchuraColiso/2),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        
        end

    end

    if modelo==22 then

		numeroColisos=1
		numeroTaladros=1

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
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		  

		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then

   		 	
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso)-(anchuraColiso/2),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        
        end

    end

    if modelo==23 then

		numeroColisos=1
		numeroTaladros=1

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
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		  

		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then

   		 	
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso)-(anchuraColiso/2),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        
        end

    end

    if modelo==24 then

		numeroColisos=1
		numeroTaladros=1

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
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		  

		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then

   		 	
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso)-(anchuraColiso/2),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        
        end

    end

    if modelo==25 then

		numeroColisos=1
		numeroTaladros=1

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
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		  

		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then

   		 	
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso)-(anchuraColiso/2),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        
        end

    end

    if modelo==26 then

		numeroColisos=1
		numeroTaladros=1

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
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		  

		 --Sin colisos superiores	  		
   		 elseif crearTaladros==1 then

   		 	
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso)-(anchuraColiso/2),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        
        end

    end
    
  	
	return true; 
end
