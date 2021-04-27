-- VECTRIC LUA SCRIPT
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- Familia F ---------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Familia F -> [001-002-003-007-008-009-010-011]

function OnLuaButton_modeloF(framePrincipal)

	if modelo == 101 then --F1
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia001.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia001.html"
		end
		
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES F1")
		
		textoDescriptivo="BANDEJA F1"
		anchura1=50 anchura2=130 anchura3=285 anchura4=1745 anchura5=300 anchura6=130 anchura7=50
		alturaPlaca=457 alaInferior=34 pliegueSuperior=35 alaSuperior=40 margenFresado=1
		
		
        modelo000:AddTextField("textoDescriptivo", textoDescriptivo)
		modelo000:AddDoubleField("alturaPlaca", alturaPlaca)
		
		modelo000:AddDoubleField("anchura1", anchura1)
		modelo000:AddDoubleField("anchura2", anchura2)
		modelo000:AddDoubleField("anchura3", anchura3)
		modelo000:AddDoubleField("anchura4", anchura4)
		modelo000:AddDoubleField("anchura5", anchura5)
		modelo000:AddDoubleField("anchura6", anchura6)
		modelo000:AddDoubleField("anchura7", anchura7)

		modelo000:AddDoubleField("alaSuperior", alaSuperior)
		modelo000:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modelo000:AddDoubleField("alaInferior", alaInferior)
		
		modelo000:AddDoubleField("margenFresado", margenFresado)
		modelo000:AddDoubleField("margenMecanizado", margenMecanizado)
		
	    if  not modelo000:ShowDialog() then
				return false;
		end
	
	elseif modelo == 102 then --F2
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia002.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia002.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES F2")
		
		textoDescriptivo="BANDEJA F2"
		anchura1=50 anchura2=130 anchura3=290 anchura4=1765 anchura5=295 anchura6=130 anchura7=50
		alturaPlaca=500	alaInferior=20 pliegueSuperior=35 pliegueInferior=105 alaSuperior=40 margenFresado=1
		
		pliegueInf1=34 pliegueInf2=34 pliegueInf3=34 pliegueInf4=34 pliegueInf5=34 pliegueInf6=34 pliegueInf7=34
		
        modelo000:AddTextField("textoDescriptivo", textoDescriptivo)
		modelo000:AddDoubleField("anchura1", anchura1)
		modelo000:AddDoubleField("anchura2", anchura2)
		modelo000:AddDoubleField("anchura3", anchura3)
		modelo000:AddDoubleField("anchura4", anchura4)
		modelo000:AddDoubleField("anchura5", anchura5)
		modelo000:AddDoubleField("anchura6", anchura6)
		modelo000:AddDoubleField("anchura7", anchura7)
		
		modelo000:AddDoubleField("pliegueInf1", pliegueInf1)
	    modelo000:AddDoubleField("pliegueInf2", pliegueInf2)
	    modelo000:AddDoubleField("pliegueInf3", pliegueInf3)
	    modelo000:AddDoubleField("pliegueInf4", pliegueInf4)
	    modelo000:AddDoubleField("pliegueInf5", pliegueInf5)
	    modelo000:AddDoubleField("pliegueInf6", pliegueInf6)
	    modelo000:AddDoubleField("pliegueInf7", pliegueInf7)
		
	    modelo000:AddDoubleField("alturaPlaca", alturaPlaca)

		modelo000:AddDoubleField("alaSuperior", alaSuperior)
		modelo000:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modelo000:AddDoubleField("alaInferior", alaInferior)
		
		modelo000:AddDoubleField("margenFresado", margenFresado)
		modelo000:AddDoubleField("margenMecanizado", margenMecanizado)
		
	    if  not modelo000:ShowDialog() then
				return false;	
		end
	
	elseif modelo == 103 then --F3
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia003.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia003.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES F3")
		
		textoDescriptivo="BANDEJA F3"
		altura1=100 altura2=100 altura3=0 altura4=0 altura5=0 altura6=0 altura7=0 altura8=0 altura9=0 altura10=0
		anchuraPlaca=500	alaIzquierda=25 alaDerecha=25 
		
        modelo000:AddTextField("textoDescriptivo", textoDescriptivo)
		modelo000:AddDoubleField("altura1", altura1)
		modelo000:AddDoubleField("altura2", altura2)
		modelo000:AddDoubleField("altura3", altura3)
		modelo000:AddDoubleField("altura4", altura4)
		modelo000:AddDoubleField("altura5", altura5)
		modelo000:AddDoubleField("altura6", altura6)
		modelo000:AddDoubleField("altura7", altura7)
		modelo000:AddDoubleField("altura8", altura8)
		modelo000:AddDoubleField("altura9", altura9)
		modelo000:AddDoubleField("altura10", altura10)
		
	    modelo000:AddDoubleField("anchuraPlaca", anchuraPlaca)

		modelo000:AddDoubleField("alaIzquierda", alaIzquierda)
		modelo000:AddDoubleField("alaDerecha", alaDerecha)
		modelo000:AddDoubleField("margenMecanizado", margenMecanizado)
		
	    if  not modelo000:ShowDialog() then
				return false;
		end
		
	elseif modelo == 107 then  --F4
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia007.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia007.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES F4")
		
		textoDescriptivo="[F4]Junta dilatacion Derecha 2"
		alturaPlaca=500 anchura1=55 anchura2=150 anchura3=330 anchura4=640
		alaSuperior=45 alaInferior=45 alaDerecha=40  pliegueSuperior=45  
		
        modelo000:AddTextField("textoDescriptivo", textoDescriptivo)
		
		modelo000:AddDoubleField("alturaPlaca", alturaPlaca)
		modelo000:AddDoubleField("anchura1", anchura1)
		modelo000:AddDoubleField("anchura2", anchura2)
		modelo000:AddDoubleField("anchura3", anchura3)
		modelo000:AddDoubleField("anchura4", anchura4)
		
		modelo000:AddDoubleField("alaSuperior", alaSuperior)
		modelo000:AddDoubleField("alaInferior", alaInferior)
		modelo000:AddDoubleField("alaDerecha", alaDerecha)
		
		modelo000:AddDoubleField("pliegueSuperior", pliegueSuperior)
		
		modelo000:AddDoubleField("margenFresado", margenFresado)
		
		modelo000:AddDoubleField("margenMecanizado", margenMecanizado)-----
		
	    if  not modelo000:ShowDialog() then
				return false;
		end
	
	elseif modelo == 108 then  --F5
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia008.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia008.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES F5")
		
		textoDescriptivo="[F5]Entrante escalera 2"
		alturaPlaca=500 anchura1=50 anchura2=100 anchura3=100 anchura4=350 anchura5=500
		alaSuperior=45 alaInferior=45  pliegueSuperior=45  
		
        modelo000:AddTextField("textoDescriptivo", textoDescriptivo)
		
		modelo000:AddDoubleField("alturaPlaca", alturaPlaca)
		modelo000:AddDoubleField("anchura1", anchura1)
		modelo000:AddDoubleField("anchura2", anchura2)
		modelo000:AddDoubleField("anchura3", anchura3)
		modelo000:AddDoubleField("anchura4", anchura4)
		modelo000:AddDoubleField("anchura5", anchura5)
		
		modelo000:AddDoubleField("alaSuperior", alaSuperior)
		modelo000:AddDoubleField("alaInferior", alaInferior)
		modelo000:AddDoubleField("alaDerecha", alaDerecha)
		
		modelo000:AddDoubleField("pliegueSuperior", pliegueSuperior)
		
		modelo000:AddDoubleField("margenFresado", margenFresado)
		
		modelo000:AddDoubleField("margenMecanizado", margenMecanizado)-----
		
	    if  not modelo000:ShowDialog() then
				return false;
		end
		
	elseif modelo == 109 then  --F6
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia009.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia009.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES F6")
		
		textoDescriptivo="[F6]Junta dilatacion Izquierda"
		alturaPlaca=500 anchura1=500 anchura2=300 anchura3=100 anchura4=100
		alaSuperior=45 alaInferior=10 alaIzquierda=30 pliegueSuperior=45 pliegueIzq=40  
		pliegueInf1=100 pliegueInf2=100 pliegueInf3=100 pliegueInf4=100
		
        modelo000:AddTextField("textoDescriptivo", textoDescriptivo)
		
		modelo000:AddDoubleField("alturaPlaca", alturaPlaca)
		modelo000:AddDoubleField("anchura1", anchura1)
		modelo000:AddDoubleField("anchura2", anchura2)
		modelo000:AddDoubleField("anchura3", anchura3)
		modelo000:AddDoubleField("anchura4", anchura4)
		
		modelo000:AddDoubleField("alaSuperior", alaSuperior)
		modelo000:AddDoubleField("alaInferior", alaInferior)
		modelo000:AddDoubleField("alaIzquierda", alaIzquierda)
		
		modelo000:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modelo000:AddDoubleField("pliegueIzq", pliegueIzq)
		
		modelo000:AddDoubleField("pliegueInf1", pliegueInf1)
		modelo000:AddDoubleField("pliegueInf2", pliegueInf2)
		modelo000:AddDoubleField("pliegueInf3", pliegueInf3)
		modelo000:AddDoubleField("pliegueInf4", pliegueInf4)
		
		modelo000:AddDoubleField("margenFresado", margenFresado)
		
		modelo000:AddDoubleField("margenMecanizado", margenMecanizado)-----
		
	    if  not modelo000:ShowDialog() then
				return false;
		end
		
	elseif modelo == 110 then  --F7
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia010.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia010.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES F7")
		
		textoDescriptivo="[F7]Junta dilatacion derecha"
		alturaPlaca=500 anchura1=300 anchura2=300 anchura3=300 anchura4=300
		alaSuperior=45 alaInferior=15  pliegueSuperior=45  alaDerecha=30
		pliegueInf1=100 pliegueInf2=100 pliegueInf3=100 pliegueInf4=100
		
        modelo000:AddTextField("textoDescriptivo", textoDescriptivo)
		
		modelo000:AddDoubleField("alturaPlaca", alturaPlaca)
		modelo000:AddDoubleField("anchura1", anchura1)
		modelo000:AddDoubleField("anchura2", anchura2)
		modelo000:AddDoubleField("anchura3", anchura3)
		modelo000:AddDoubleField("anchura4", anchura4)
		
		modelo000:AddDoubleField("pliegueInf1", pliegueInf1)
		modelo000:AddDoubleField("pliegueInf2", pliegueInf2)
		modelo000:AddDoubleField("pliegueInf3", pliegueInf3)
		modelo000:AddDoubleField("pliegueInf4", pliegueInf4)
		
		modelo000:AddDoubleField("alaSuperior", alaSuperior)
		modelo000:AddDoubleField("alaDerecha", alaDerecha)
		modelo000:AddDoubleField("alaInferior", alaInferior)
		
		modelo000:AddDoubleField("margenFresado", margenFresado)
		
		modelo000:AddDoubleField("pliegueSuperior", pliegueSuperior)
		
		modelo000:AddDoubleField("margenMecanizado", margenMecanizado)-----
		
	    if  not modelo000:ShowDialog() then
				return false;
		end
		
	elseif modelo == 111 then  --F8
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia011.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia011.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES F8")
		
		textoDescriptivo="[F8]Entrante escalera"
		alturaPlaca=500 anchura1=300 anchura2=300 anchura3=300 anchura4=300 anchura5=500
		alaSuperior=45 alaInferior=45  pliegueSuperior=45  
		pliegueInf1=100 pliegueInf2=100 pliegueInf3=100 pliegueInf4=100 pliegueInf5=100
		
        modelo000:AddTextField("textoDescriptivo", textoDescriptivo)
		
		modelo000:AddDoubleField("alturaPlaca", alturaPlaca)
		modelo000:AddDoubleField("anchura1", anchura1)
		modelo000:AddDoubleField("anchura2", anchura2)
		modelo000:AddDoubleField("anchura3", anchura3)
		modelo000:AddDoubleField("anchura4", anchura4)
		modelo000:AddDoubleField("anchura5", anchura5)
		
		modelo000:AddDoubleField("pliegueInf1", pliegueInf1)
		modelo000:AddDoubleField("pliegueInf2", pliegueInf2)
		modelo000:AddDoubleField("pliegueInf3", pliegueInf3)
		modelo000:AddDoubleField("pliegueInf4", pliegueInf4)
		modelo000:AddDoubleField("pliegueInf5", pliegueInf5)
		
		modelo000:AddDoubleField("alaSuperior", alaSuperior)
		modelo000:AddDoubleField("alaInferior", alaInferior)
		modelo000:AddDoubleField("alaDerecha", alaDerecha)
		
		modelo000:AddDoubleField("pliegueSuperior", pliegueSuperior)
		
		modelo000:AddDoubleField("margenFresado", margenFresado)
		
		modelo000:AddDoubleField("margenMecanizado", margenMecanizado)-----
		
	    if  not modelo000:ShowDialog() then
				return false;
		end
		
		
		
	elseif modelo == 113 then  --F9
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia013.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia013.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES F9")
		
		textoDescriptivo="[F9]Junta dilatacion izquierda"
		alturaPlaca=500 anchura1=300 anchura2=300 anchura3=300 anchura4=300
		alaSuperior=45 alaInferior=15  pliegueSuperior=45  alaDerecha=30
		pliegueInf1=100 pliegueInf2=100 pliegueInf3=100 pliegueInf4=100
		
        modelo000:AddTextField("textoDescriptivo", textoDescriptivo)
		
		modelo000:AddDoubleField("alturaPlaca", alturaPlaca)
		modelo000:AddDoubleField("anchura1", anchura1)
		modelo000:AddDoubleField("anchura2", anchura2)
		modelo000:AddDoubleField("anchura3", anchura3)
		modelo000:AddDoubleField("anchura4", anchura4)
		
		modelo000:AddDoubleField("alaSuperior", alaSuperior)
		modelo000:AddDoubleField("alaIzquierda", alaIzquierda)
		modelo000:AddDoubleField("alaInferior", alaInferior)
		
		modelo000:AddDoubleField("margenFresado", margenFresado)
		
		modelo000:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modelo000:AddDoubleField("pliegueIzq", pliegueIzq)
		
		modelo000:AddDoubleField("margenMecanizado", margenMecanizado)
		
	    if  not modelo000:ShowDialog() then
				return false;
		end
	
	
	
	
	elseif modelo == 114 then  --F10
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia014.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia014.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES F10")
		
		textoDescriptivo="Bandeja F10"
		alturaPlaca=500 anchura1=640 anchura2=330 anchura3=150 anchura4=55
		alaSuperior=45 alaInferior=45 alaIzquierda=40  pliegueSuperior=45  
		
        modelo000:AddTextField("textoDescriptivo", textoDescriptivo)
		
		modelo000:AddDoubleField("alturaPlaca", alturaPlaca)
		modelo000:AddDoubleField("anchura1", anchura1)
		modelo000:AddDoubleField("anchura2", anchura2)
		modelo000:AddDoubleField("anchura3", anchura3)
		modelo000:AddDoubleField("anchura4", anchura4)
		
		modelo000:AddDoubleField("alaSuperior", alaSuperior)
		modelo000:AddDoubleField("alaInferior", alaInferior)
		modelo000:AddDoubleField("alaIzquierda", alaIzquierda)
		
		modelo000:AddDoubleField("pliegueSuperior", pliegueSuperior)
		
		modelo000:AddDoubleField("margenFresado", margenFresado)
		
		modelo000:AddDoubleField("margenMecanizado", margenMecanizado)-----
		
	    if  not modelo000:ShowDialog() then
				return false;
		end
	
	
	
	
	elseif modelo == 115 then  --F11
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia015.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia015.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES F11")
		
		textoDescriptivo="Bandeja F11"
		alturaPlaca=500 anchura1=300 anchura2=300 anchura3=300 anchura4=300
		alaSuperior=45 alaInferior=15  pliegueSuperior=45  alaIzquierda=30
		pliegueInf1=100 pliegueInf2=100 pliegueInf3=100 pliegueInf4=100
		
        modelo000:AddTextField("textoDescriptivo", textoDescriptivo)
		
		modelo000:AddDoubleField("alturaPlaca", alturaPlaca)
		modelo000:AddDoubleField("anchura1", anchura1)
		modelo000:AddDoubleField("anchura2", anchura2)
		modelo000:AddDoubleField("anchura3", anchura3)
		modelo000:AddDoubleField("anchura4", anchura4)
		
		modelo000:AddDoubleField("pliegueInf1", pliegueInf1)
		modelo000:AddDoubleField("pliegueInf2", pliegueInf2)
		modelo000:AddDoubleField("pliegueInf3", pliegueInf3)
		modelo000:AddDoubleField("pliegueInf4", pliegueInf4)
		
		modelo000:AddDoubleField("alaSuperior", alaSuperior)
		modelo000:AddDoubleField("alaIzquierda", alaIzquierda)
		modelo000:AddDoubleField("alaInferior", alaInferior)
		
		modelo000:AddDoubleField("margenFresado", margenFresado)
		
		modelo000:AddDoubleField("pliegueSuperior", pliegueSuperior)
		
		modelo000:AddDoubleField("margenMecanizado", margenMecanizado)-----
		
	    if  not modelo000:ShowDialog() then
				return false;
		end
		
	
	
	elseif modelo == 116 then  --F12
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia016.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia016.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES F12")
		
		textoDescriptivo="Bandeja F12"
		alturaPlaca=500 anchura1=150 anchura2=300 anchura3=600
		alaSuperior=45 alaInferior=45 alaIzquierda=40 alaDerecha=45
		pliegueSuperior=45  pliegueDer=45
		
        modelo000:AddTextField("textoDescriptivo", textoDescriptivo)
		
		modelo000:AddDoubleField("alturaPlaca", alturaPlaca)
		modelo000:AddDoubleField("anchura1", anchura1)
		modelo000:AddDoubleField("anchura2", anchura2)
		modelo000:AddDoubleField("anchura3", anchura3)
		
		modelo000:AddDoubleField("alaSuperior", alaSuperior)
		modelo000:AddDoubleField("alaInferior", alaInferior)
		modelo000:AddDoubleField("alaIzquierda", alaIzquierda)
		modelo000:AddDoubleField("alaDerecha", alaDerecha)
		
		modelo000:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modelo000:AddDoubleField("pliegueDer", pliegueDer)
		
		modelo000:AddDoubleField("margenFresado", margenFresado)
		
		modelo000:AddDoubleField("margenMecanizado", margenMecanizado)-----
		
	    if  not modelo000:ShowDialog() then
				return false;
		end
	
	
	
	elseif modelo == 117 then  --F13
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia017.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia017.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES F13")
		
		textoDescriptivo="Bandeja F13"
		alturaPlaca=500 anchura1=150 anchura2=300 anchura3=600 
		alaSuperior=45 alaInferior=15  pliegueSuperior=45  alaIzquierda=30
		pliegueInf1=100 pliegueInf2=100 pliegueInf3=100
		
        modelo000:AddTextField("textoDescriptivo", textoDescriptivo)
		
		modelo000:AddDoubleField("alturaPlaca", alturaPlaca)
		modelo000:AddDoubleField("anchura1", anchura1)
		modelo000:AddDoubleField("anchura2", anchura2)
		modelo000:AddDoubleField("anchura3", anchura3)
		
		modelo000:AddDoubleField("pliegueInf1", pliegueInf1)
		modelo000:AddDoubleField("pliegueInf2", pliegueInf2)
		modelo000:AddDoubleField("pliegueInf3", pliegueInf3)
		
		modelo000:AddDoubleField("alaSuperior", alaSuperior)
		modelo000:AddDoubleField("alaIzquierda", alaIzquierda)
		modelo000:AddDoubleField("alaInferior", alaInferior)
		modelo000:AddDoubleField("alaDerecha", alaDerecha)
		
		modelo000:AddDoubleField("margenFresado", margenFresado)
		
		modelo000:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modelo000:AddDoubleField("pliegueDer", pliegueDer)
		
		modelo000:AddDoubleField("margenMecanizado", margenMecanizado)-----
		
	    if  not modelo000:ShowDialog() then
				return false;
		end
	
	
	elseif modelo == 118 then  --F14
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia018.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia018.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES F14")
		
		textoDescriptivo="Bandeja F14"
		alturaPlaca=500 anchura1=500 anchura2=400 anchura3=150 anchura4=100 anchura5=50
		alaSuperior=50 alaInferior=15  pliegueSuperior=45 alaIzquierda=45 
		pliegueInf1=100 pliegueInf2=100 pliegueInf3=100 pliegueInf4=100 pliegueInf5=100
		
        modelo000:AddTextField("textoDescriptivo", textoDescriptivo)
		
		modelo000:AddDoubleField("alturaPlaca", alturaPlaca)
		modelo000:AddDoubleField("anchura1", anchura1)
		modelo000:AddDoubleField("anchura2", anchura2)
		modelo000:AddDoubleField("anchura3", anchura3)
		modelo000:AddDoubleField("anchura4", anchura4)
		modelo000:AddDoubleField("anchura5", anchura5)
		
		modelo000:AddDoubleField("pliegueInf1", pliegueInf1)
		modelo000:AddDoubleField("pliegueInf2", pliegueInf2)
		modelo000:AddDoubleField("pliegueInf3", pliegueInf3)
		modelo000:AddDoubleField("pliegueInf4", pliegueInf4)
		modelo000:AddDoubleField("pliegueInf5", pliegueInf5)
		
		modelo000:AddDoubleField("alaSuperior", alaSuperior)
		modelo000:AddDoubleField("alaInferior", alaInferior)
		modelo000:AddDoubleField("alaIzquierda", alaIzquierda)
		
		modelo000:AddDoubleField("pliegueSuperior", pliegueSuperior)
		
		modelo000:AddDoubleField("margenFresado", margenFresado)
		
		modelo000:AddDoubleField("margenMecanizado", margenMecanizado)-----
		
	    if  not modelo000:ShowDialog() then
				return false;
		end
	
	
	elseif modelo == 119 then  --F15
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia019.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia019.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES F15")
		
		textoDescriptivo="Bandeja F15"
		alturaPlaca=500 anchura1=900 anchura2=1000 anchura3=300 anchura4=130 anchura5=50
		alaSuperior=40 alaInferior=33  pliegueSuperior=35  alaIzquierda=60
		
        modelo000:AddTextField("textoDescriptivo", textoDescriptivo)
		
		modelo000:AddDoubleField("alturaPlaca", alturaPlaca)
		modelo000:AddDoubleField("anchura1", anchura1)
		modelo000:AddDoubleField("anchura2", anchura2)
		modelo000:AddDoubleField("anchura3", anchura3)
		modelo000:AddDoubleField("anchura4", anchura4)
		modelo000:AddDoubleField("anchura5", anchura5)
		
		modelo000:AddDoubleField("alaSuperior", alaSuperior)
		modelo000:AddDoubleField("alaInferior", alaInferior)
		modelo000:AddDoubleField("alaIzquierda", alaIzquierda)
		
		modelo000:AddDoubleField("pliegueSuperior", pliegueSuperior)
		
		modelo000:AddDoubleField("margenFresado", margenFresado)
		
		modelo000:AddDoubleField("margenMecanizado", margenMecanizado)-----
		
	    if  not modelo000:ShowDialog() then
				return false;
		end
	
	
	
	
	end
	
end









function OnLuaButton_aceptarF(modelo000)

	if modelo==101 then  --PIEZA F1
		
		textoDescriptivo = modelo000:GetTextField("textoDescriptivo")
		anchura1 = modelo000:GetDoubleField("anchura1")
		anchura2 = modelo000:GetDoubleField("anchura2")
		anchura3 = modelo000:GetDoubleField("anchura3")
		anchura4 = modelo000:GetDoubleField("anchura4")
		anchura5 = modelo000:GetDoubleField("anchura5")
		anchura6 = modelo000:GetDoubleField("anchura6")
		anchura7 = modelo000:GetDoubleField("anchura7")
		
	    alturaPlaca = modelo000:GetDoubleField("alturaPlaca")
		
		alaSuperior=modelo000:GetDoubleField("alaSuperior")
		pliegueSuperior=modelo000:GetDoubleField("pliegueSuperior")
		alaInferior=modelo000:GetDoubleField("alaInferior")
		
		margenFresado=modelo000:GetDoubleField("margenFresado")
		margenMecanizado=modelo000:GetDoubleField("margenMecanizado")
		
		--Punto inicial de la pieza
			origenX=-(anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+anchura7+400)
			origenY= 400
		
		
		dibujarFresado001(doc)
		dibujarCorte001(doc)
		dibujarTexto(doc)
		DisplayMessageBox("MODELO F1 CREADO CORRECTAMENTE")
		
	elseif modelo==102 then  --PIEZA F2
		
		textoDescriptivo = modelo000:GetTextField("textoDescriptivo")
		anchura1 = modelo000:GetDoubleField("anchura1")
		anchura2 = modelo000:GetDoubleField("anchura2")
		anchura3 = modelo000:GetDoubleField("anchura3")
		anchura4 = modelo000:GetDoubleField("anchura4")
		anchura5 = modelo000:GetDoubleField("anchura5")
		anchura6 = modelo000:GetDoubleField("anchura6")
		anchura7 = modelo000:GetDoubleField("anchura7")
		
		pliegueInf1 = modelo000:GetDoubleField("pliegueInf1")
		pliegueInf2 = modelo000:GetDoubleField("pliegueInf2")
		pliegueInf3 = modelo000:GetDoubleField("pliegueInf3")
		pliegueInf4 = modelo000:GetDoubleField("pliegueInf4")
		pliegueInf5 = modelo000:GetDoubleField("pliegueInf5")
		pliegueInf6 = modelo000:GetDoubleField("pliegueInf6")
		pliegueInf7 = modelo000:GetDoubleField("pliegueInf7")
		
	    alturaPlaca = modelo000:GetDoubleField("alturaPlaca")
		
		alaSuperior=modelo000:GetDoubleField("alaSuperior")
		pliegueSuperior=modelo000:GetDoubleField("pliegueSuperior")
		alaInferior=modelo000:GetDoubleField("alaInferior")
		
		margenFresado=modelo000:GetDoubleField("margenFresado")
		margenMecanizado=modelo000:GetDoubleField("margenMecanizado")
		
		--Punto inicial de la pieza
			origenX=-(anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+anchura7+400)
			origenY= 400
		
		dibujarFresado002(doc)
		dibujarCorte002(doc)
		dibujarTexto(doc)
		DisplayMessageBox("MODELO F2 CREADO CORRECTAMENTE")
		
	
	elseif modelo==103 then  --PIEZA F3
		
		textoDescriptivo = modelo000:GetTextField("textoDescriptivo")
		altura1 = modelo000:GetDoubleField("altura1")
		altura2 = modelo000:GetDoubleField("altura2")
		altura3 = modelo000:GetDoubleField("altura3")
		altura4 = modelo000:GetDoubleField("altura4")
		altura5 = modelo000:GetDoubleField("altura5")
		altura6 = modelo000:GetDoubleField("altura6")
		altura7 = modelo000:GetDoubleField("altura7")
		altura8 = modelo000:GetDoubleField("altura8")
		altura9 = modelo000:GetDoubleField("altura9")
		altura10 = modelo000:GetDoubleField("altura10")
		
	    anchuraPlaca = modelo000:GetDoubleField("anchuraPlaca")
		
		alaIzquierda=modelo000:GetDoubleField("alaIzquierda")
		alaDerecha=modelo000:GetDoubleField("alaDerecha")
		
		margenMecanizado=modelo000:GetDoubleField("margenMecanizado")
		
		--Punto inicial de la pieza
			if dibujoHorizontal==1 then
				origenX= 400
				origenY= -(altura1+altura2+altura3+altura4+altura5+altura6+altura7+altura8+altura9+altura10+400)
			else
				origenX=-(anchuraPlaca+400)
				origenY= 400
			end
		
		dibujarFresado003(doc)
		if dibujoHorizontal==1 then
			dibujarCorte003Horizontal(doc)
		else
			dibujarCorte003Vertical(doc)
		end
		dibujarTexto(doc)
		DisplayMessageBox("MODELO F3 CREADO CORRECTAMENTE")
	
	elseif modelo==107 then  --PIEZA F4
		
		textoDescriptivo = modelo000:GetTextField("textoDescriptivo")
		alturaPlaca = modelo000:GetDoubleField("alturaPlaca")
		anchura1 = modelo000:GetDoubleField("anchura1")
		anchura2 = modelo000:GetDoubleField("anchura2")
		anchura3 = modelo000:GetDoubleField("anchura3")
		anchura4 = modelo000:GetDoubleField("anchura4")
		
		alaSuperior = modelo000:GetDoubleField("alaSuperior")
		alaInferior = modelo000:GetDoubleField("alaInferior")
		alaDerecha = modelo000:GetDoubleField("alaDerecha")
		
		pliegueSuperior = modelo000:GetDoubleField("pliegueSuperior")
		
		margenFresado = modelo000:GetDoubleField("margenFresado")
		
		--Punto inicial de la pieza
			origenX=-(anchura1+anchura2+anchura3+anchura4+alaDerecha+400)
			origenY= 400
		
		
		
		dibujarFresado007(doc)
		dibujarCorte007(doc)
		dibujarTexto(doc)
		DisplayMessageBox("MODELO F4 CREADO CORRECTAMENTE")
		
	elseif modelo==108 then  --PIEZA F5
		
		textoDescriptivo = modelo000:GetTextField("textoDescriptivo")
		alturaPlaca = modelo000:GetDoubleField("alturaPlaca")
		anchura1 = modelo000:GetDoubleField("anchura1")
		anchura2 = modelo000:GetDoubleField("anchura2")
		anchura3 = modelo000:GetDoubleField("anchura3")
		anchura4 = modelo000:GetDoubleField("anchura4")
		anchura5 = modelo000:GetDoubleField("anchura5")
		
		alaSuperior = modelo000:GetDoubleField("alaSuperior")
		alaInferior = modelo000:GetDoubleField("alaInferior")
		alaDerecha = modelo000:GetDoubleField("alaDerecha")
		
		pliegueSuperior = modelo000:GetDoubleField("pliegueSuperior")
		
		margenFresado = modelo000:GetDoubleField("margenFresado")
		
		--Punto inicial de la pieza
			origenX=-(anchura1+anchura2+anchura3+anchura4+anchura5+alaDerecha+400)
			origenY= 400
		
		dibujarFresado008(doc)
		dibujarCorte007(doc)
		dibujarTexto(doc)
		DisplayMessageBox("MODELO F5 CREADO CORRECTAMENTE")
	
	elseif modelo==109 then  --PIEZA F6
		
		textoDescriptivo = modelo000:GetTextField("textoDescriptivo")
		alturaPlaca = modelo000:GetDoubleField("alturaPlaca")
		anchura1 = modelo000:GetDoubleField("anchura1")
		anchura2 = modelo000:GetDoubleField("anchura2")
		anchura3 = modelo000:GetDoubleField("anchura3")
		anchura4 = modelo000:GetDoubleField("anchura4")
		
		alaSuperior = modelo000:GetDoubleField("alaSuperior")
		alaInferior = modelo000:GetDoubleField("alaInferior")
		alaIzquierda = modelo000:GetDoubleField("alaIzquierda")
		
		pliegueSuperior = modelo000:GetDoubleField("pliegueSuperior")
		pliegueIzq = modelo000:GetDoubleField("pliegueIzq")
		
		pliegueInf1 = modelo000:GetDoubleField("pliegueInf1")
		pliegueInf2 = modelo000:GetDoubleField("pliegueInf2")
		pliegueInf3 = modelo000:GetDoubleField("pliegueInf3")
		pliegueInf4 = modelo000:GetDoubleField("pliegueInf4")
		
		margenFresado = modelo000:GetDoubleField("margenFresado")
		
		--Punto inicial de la pieza
			origenX=-(anchura1+anchura2+anchura3+anchura4+pliegueIzq+alaIzquierda+400)
			origenY= 400
		
		dibujarFresado009(doc)
		dibujarCorte009(doc)
		dibujarTexto(doc)
		DisplayMessageBox("MODELO F6 CREADO CORRECTAMENTE")
		
	elseif modelo==110 then  --PIEZA F7
		
		textoDescriptivo = modelo000:GetTextField("textoDescriptivo")
		alturaPlaca = modelo000:GetDoubleField("alturaPlaca")
		anchura1 = modelo000:GetDoubleField("anchura1")
		anchura2 = modelo000:GetDoubleField("anchura2")
		anchura3 = modelo000:GetDoubleField("anchura3")
		anchura4 = modelo000:GetDoubleField("anchura4")
		
		alaSuperior = modelo000:GetDoubleField("alaSuperior")
		alaDerecha = modelo000:GetDoubleField("alaDerecha")
		alaInferior = modelo000:GetDoubleField("alaInferior")
		
		pliegueSuperior = modelo000:GetDoubleField("pliegueSuperior")
		
		
		pliegueInf1 = modelo000:GetDoubleField("pliegueInf1")
		pliegueInf2 = modelo000:GetDoubleField("pliegueInf2")
		pliegueInf3 = modelo000:GetDoubleField("pliegueInf3")
		pliegueInf4 = modelo000:GetDoubleField("pliegueInf4")
		
		margenFresado = modelo000:GetDoubleField("margenFresado")
		
		--Punto inicial de la pieza
			origenX=-(anchura1+anchura2+anchura3+anchura4+alaDerecha+400)
			origenY= 400
		
		dibujarFresado010(doc)
		dibujarCorte010(doc)
		dibujarTexto(doc)
		
		DisplayMessageBox("MODELO F7 CREADO CORRECTAMENTE")
		
	elseif modelo==111 then  --PIEZA F8
		
		textoDescriptivo = modelo000:GetTextField("textoDescriptivo")
		alturaPlaca = modelo000:GetDoubleField("alturaPlaca")
		anchura1 = modelo000:GetDoubleField("anchura1")
		anchura2 = modelo000:GetDoubleField("anchura2")
		anchura3 = modelo000:GetDoubleField("anchura3")
		anchura4 = modelo000:GetDoubleField("anchura4")
		anchura5 = modelo000:GetDoubleField("anchura5")
		
		pliegueInf1 = modelo000:GetDoubleField("pliegueInf1")
		pliegueInf2 = modelo000:GetDoubleField("pliegueInf2")
		pliegueInf3 = modelo000:GetDoubleField("pliegueInf3")
		pliegueInf4 = modelo000:GetDoubleField("pliegueInf4")
		pliegueInf5 = modelo000:GetDoubleField("pliegueInf5")
		
		alaSuperior = modelo000:GetDoubleField("alaSuperior")
		alaInferior = modelo000:GetDoubleField("alaInferior")
		alaDerecha = modelo000:GetDoubleField("alaDerecha")
		
		margenFresado = modelo000:GetDoubleField("margenFresado")
		
		pliegueSuperior = modelo000:GetDoubleField("pliegueSuperior")
		
		--Punto inicial de la pieza
			origenX=-(anchura1+anchura2+anchura3+anchura4+anchura5+alaDerecha+400)
			origenY= 400
		
		dibujarFresado011(doc)
		dibujarCorte011(doc)
		dibujarTexto(doc)
		DisplayMessageBox("MODELO F8 CREADO CORRECTAMENTE")
		
	
	elseif modelo==113 then  --PIEZA F9
		
		textoDescriptivo = modelo000:GetTextField("textoDescriptivo")
		alturaPlaca = modelo000:GetDoubleField("alturaPlaca")
		anchura1 = modelo000:GetDoubleField("anchura1")
		anchura2 = modelo000:GetDoubleField("anchura2")
		anchura3 = modelo000:GetDoubleField("anchura3")
		anchura4 = modelo000:GetDoubleField("anchura4")
		
		alaSuperior = modelo000:GetDoubleField("alaSuperior")
		alaIzquierda = modelo000:GetDoubleField("alaIzquierda")
		alaInferior = modelo000:GetDoubleField("alaInferior")
		
		pliegueSuperior = modelo000:GetDoubleField("pliegueSuperior")
		pliegueIzq = modelo000:GetDoubleField("pliegueIzq")
		
		margenFresado = modelo000:GetDoubleField("margenFresado")
		
		--Punto inicial de la pieza
			origenX=-(anchura1+anchura2+anchura3+anchura4+pliegueIzq+alaIzquierda+400)
			origenY= 400
		
		dibujarFresado013(doc)
		dibujarCorte013(doc)
		dibujarTexto(doc)
		
		DisplayMessageBox("MODELO F9 CREADO CORRECTAMENTE")
	
	
	
	
	elseif modelo==114 then  --PIEZA F10
		
		textoDescriptivo = modelo000:GetTextField("textoDescriptivo")
		alturaPlaca = modelo000:GetDoubleField("alturaPlaca")
		
		anchura1 = modelo000:GetDoubleField("anchura1")
		anchura2 = modelo000:GetDoubleField("anchura2")
		anchura3 = modelo000:GetDoubleField("anchura3")
		anchura4 = modelo000:GetDoubleField("anchura4")
		
		alaSuperior = modelo000:GetDoubleField("alaSuperior")
		alaInferior = modelo000:GetDoubleField("alaInferior")
		alaIzquierda = modelo000:GetDoubleField("alaIzquierda")
		
		pliegueSuperior = modelo000:GetDoubleField("pliegueSuperior")
		
		margenFresado = modelo000:GetDoubleField("margenFresado")
		
		--Punto inicial de la pieza
			origenX=-(anchura1+anchura2+anchura3+anchura4+alaIzquierda+400)
			origenY= 400
		
		
		
		dibujarFresado014(doc)
		dibujarCorte014(doc)
		dibujarTexto(doc)
		DisplayMessageBox("MODELO F10 CREADO CORRECTAMENTE")
	
	
	
	elseif modelo==115 then  --PIEZA F11
		
		textoDescriptivo = modelo000:GetTextField("textoDescriptivo")
		alturaPlaca = modelo000:GetDoubleField("alturaPlaca")
		anchura1 = modelo000:GetDoubleField("anchura1")
		anchura2 = modelo000:GetDoubleField("anchura2")
		anchura3 = modelo000:GetDoubleField("anchura3")
		anchura4 = modelo000:GetDoubleField("anchura4")
		
		alaSuperior = modelo000:GetDoubleField("alaSuperior")
		alaIzquierda = modelo000:GetDoubleField("alaIzquierda")
		alaInferior = modelo000:GetDoubleField("alaInferior")
		
		pliegueSuperior = modelo000:GetDoubleField("pliegueSuperior")		
		
		pliegueInf1 = modelo000:GetDoubleField("pliegueInf1")
		pliegueInf2 = modelo000:GetDoubleField("pliegueInf2")
		pliegueInf3 = modelo000:GetDoubleField("pliegueInf3")
		pliegueInf4 = modelo000:GetDoubleField("pliegueInf4")
		
		margenFresado = modelo000:GetDoubleField("margenFresado")
		
		--Punto inicial de la pieza
			origenX=-(anchura1+anchura2+anchura3+anchura4+alaIzquierda+400)
			origenY= 400
		
		dibujarFresado015(doc)
		dibujarCorte015(doc)
		dibujarTexto(doc)
		
		DisplayMessageBox("MODELO F11 CREADO CORRECTAMENTE")
	
	
	elseif modelo==116 then  --PIEZA F12
		
		textoDescriptivo = modelo000:GetTextField("textoDescriptivo")
		alturaPlaca = modelo000:GetDoubleField("alturaPlaca")
		
		anchura1 = modelo000:GetDoubleField("anchura1")
		anchura2 = modelo000:GetDoubleField("anchura2")
		anchura3 = modelo000:GetDoubleField("anchura3")
		
		alaSuperior = modelo000:GetDoubleField("alaSuperior")
		alaInferior = modelo000:GetDoubleField("alaInferior")
		alaIzquierda = modelo000:GetDoubleField("alaIzquierda")
		alaDerecha = modelo000:GetDoubleField("alaDerecha")
		
		pliegueSuperior = modelo000:GetDoubleField("pliegueSuperior")
		pliegueDer = modelo000:GetDoubleField("pliegueDer")
		
		margenFresado = modelo000:GetDoubleField("margenFresado")
		
		--Punto inicial de la pieza
			origenX=-(anchura1+anchura2+anchura3+alaIzquierda+alaDerecha+pliegueDer+400)
			origenY= 400
		
		
		
		dibujarFresado016(doc)
		dibujarCorte016(doc)
		dibujarTexto(doc)
		DisplayMessageBox("MODELO F12 CREADO CORRECTAMENTE")
	
	
	
	elseif modelo==117 then  --PIEZA F13
		
		textoDescriptivo = modelo000:GetTextField("textoDescriptivo")
		alturaPlaca = modelo000:GetDoubleField("alturaPlaca")
		anchura1 = modelo000:GetDoubleField("anchura1")
		anchura2 = modelo000:GetDoubleField("anchura2")
		anchura3 = modelo000:GetDoubleField("anchura3")
		
		alaSuperior = modelo000:GetDoubleField("alaSuperior")
		alaIzquierda = modelo000:GetDoubleField("alaIzquierda")
		alaInferior = modelo000:GetDoubleField("alaInferior")
		alaDerecha = modelo000:GetDoubleField("alaDerecha")
		
		pliegueSuperior = modelo000:GetDoubleField("pliegueSuperior")
		pliegueDer = modelo000:GetDoubleField("pliegueDer")
		
		
		pliegueInf1 = modelo000:GetDoubleField("pliegueInf1")
		pliegueInf2 = modelo000:GetDoubleField("pliegueInf2")
		pliegueInf3 = modelo000:GetDoubleField("pliegueInf3")
		
		margenFresado = modelo000:GetDoubleField("margenFresado")
		
		--Punto inicial de la pieza
			origenX=-(anchura1+anchura2+anchura3+alaIzquierda+alaDerecha+pliegueDer+400)
			origenY= 400
		
		dibujarFresado017(doc)
		dibujarCorte017(doc)
		dibujarTexto(doc)
		
		DisplayMessageBox("MODELO F13 CREADO CORRECTAMENTE")
	
	
	
	elseif modelo==118 then  --PIEZA F14
		
		textoDescriptivo = modelo000:GetTextField("textoDescriptivo")
		alturaPlaca = modelo000:GetDoubleField("alturaPlaca")
		anchura1 = modelo000:GetDoubleField("anchura1")
		anchura2 = modelo000:GetDoubleField("anchura2")
		anchura3 = modelo000:GetDoubleField("anchura3")
		anchura4 = modelo000:GetDoubleField("anchura4")
		anchura5 = modelo000:GetDoubleField("anchura5")
		
		pliegueInf1 = modelo000:GetDoubleField("pliegueInf1")
		pliegueInf2 = modelo000:GetDoubleField("pliegueInf2")
		pliegueInf3 = modelo000:GetDoubleField("pliegueInf3")
		pliegueInf4 = modelo000:GetDoubleField("pliegueInf4")
		pliegueInf5 = modelo000:GetDoubleField("pliegueInf5")
		
		alaSuperior = modelo000:GetDoubleField("alaSuperior")
		alaInferior = modelo000:GetDoubleField("alaInferior")
		alaIzquierda = modelo000:GetDoubleField("alaIzquierda")
		
		margenFresado = modelo000:GetDoubleField("margenFresado")
		
		pliegueSuperior = modelo000:GetDoubleField("pliegueSuperior")
		
		--Ajustes de variables porque la pieza esta en modo espejo (es la F8 en espejo)
		local variableAux
		
		variableAux=pliegueInf1
		pliegueInf1=pliegueInf5
		pliegueInf5=variableAux
		
		variableAux=pliegueInf2
		pliegueInf2=pliegueInf4
		pliegueInf4=variableAux
		
		variableAux=anchura1
		anchura1=anchura5
		anchura5=variableAux
		
		variableAux=anchura2
		anchura2=anchura4
		anchura4=variableAux
		
		alaDerecha=alaIzquierda
		
		
		--Punto inicial de la pieza
			origenX=-(anchura1+anchura2+anchura3+anchura4+anchura5+alaDerecha+400)
			origenY= 400
		
		dibujarFresado018(doc)
		dibujarCorte018(doc)
		dibujarTexto(doc)
		DisplayMessageBox("MODELO F14 CREADO CORRECTAMENTE")
	
	
	
	
	elseif modelo==119 then  --PIEZA F15
		
		textoDescriptivo = modelo000:GetTextField("textoDescriptivo")
		alturaPlaca = modelo000:GetDoubleField("alturaPlaca")
		anchura1 = modelo000:GetDoubleField("anchura1")
		anchura2 = modelo000:GetDoubleField("anchura2")
		anchura3 = modelo000:GetDoubleField("anchura3")
		anchura4 = modelo000:GetDoubleField("anchura4")
		anchura5 = modelo000:GetDoubleField("anchura5")
		
		alaSuperior = modelo000:GetDoubleField("alaSuperior")
		alaInferior = modelo000:GetDoubleField("alaInferior")
		alaIzquierda = modelo000:GetDoubleField("alaIzquierda")
		
		pliegueSuperior = modelo000:GetDoubleField("pliegueSuperior")
		
		margenFresado = modelo000:GetDoubleField("margenFresado")
		
		
		--Ajustes de variables porque la pieza esta en modo espejo (es la F5 en espejo)
		local variableAux
		
		variableAux=pliegueInf1
		pliegueInf1=pliegueInf5
		pliegueInf5=variableAux
		
		variableAux=pliegueInf2
		pliegueInf2=pliegueInf4
		pliegueInf4=variableAux
		
		variableAux=anchura1
		anchura1=anchura5
		anchura5=variableAux
		
		variableAux=anchura2
		anchura2=anchura4
		anchura4=variableAux
		
		alaDerecha=alaIzquierda
		
		--Punto inicial de la pieza
			origenX=-(anchura1+anchura2+anchura3+anchura4+anchura5+alaDerecha+400)
			origenY= 400
		
		dibujarFresado019(doc)
		dibujarCorte019(doc)
		dibujarTexto(doc)
		DisplayMessageBox("MODELO F15 CREADO CORRECTAMENTE")
	
	
	
	
	end
	
	
return true;

end











-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------ DIBUJAR BANDEJAS CLIENTES PERSONALIZADAS -----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- [REFERENCIA 001 - F1] ------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function dibujarFresado001(doc)
	
	
	--Puntos trayectoria 
	local Contour = Contour(0.0)
	
	local fresado1 = Point2D(origenX,origenY+alaInferior)
	local fresado2 = Point2D(origenX+anchura1,origenY+alaInferior)
	local fresado3 = Point2D(origenX+anchura1+anchura2,origenY+alaInferior)
	local fresado4 = Point2D(origenX+anchura1+anchura2+anchura3,origenY+alaInferior)
	local fresado5 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior)
	local fresado6 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5,origenY+alaInferior)
	local fresado7 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6,origenY+alaInferior)
	local fresado8 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+anchura7,origenY+alaInferior)
	local fresado9 = Point2D(origenX,origenY+alaInferior+alturaPlaca)
	local fresado10 = Point2D(origenX+anchura1,origenY+alaInferior+alturaPlaca)
	local fresado11 = Point2D(origenX+anchura1+anchura2,origenY+alaInferior+alturaPlaca)
	local fresado12 = Point2D(origenX+anchura1+anchura2+anchura3,origenY+alaInferior+alturaPlaca)
	local fresado13 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+alturaPlaca)
	local fresado14 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5,origenY+alaInferior+alturaPlaca)
	local fresado15 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6,origenY+alaInferior+alturaPlaca)
	local fresado16 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+anchura7,origenY+alaInferior+alturaPlaca)
	dibujarFresado_auxiliar(doc,fresado1,fresado8)
	dibujarFresado_auxiliar(doc,fresado9,fresado16)
	dibujarFresado_auxiliar(doc,fresado2,fresado10)
	dibujarFresado_auxiliar(doc,fresado3,fresado11)
	dibujarFresado_auxiliar(doc,fresado4,fresado12)
	dibujarFresado_auxiliar(doc,fresado5,fresado13)
	dibujarFresado_auxiliar(doc,fresado6,fresado14)
	dibujarFresado_auxiliar(doc,fresado7,fresado15)
	
	crearFresado=1 --[BORRAAAAAAAAAAAAAAAAAAAAAARRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR en la version2 del gadget !!!!!!!!!!!!!!!!!!!!!!!!!!]
	--anchura1
	if anchura1>pliegueSuperior then
		local fresado17 = Point2D(origenX,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado18 = Point2D(origenX+anchura1-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado17,fresado18)
			
		if crearFresado==1 then
			local fresado19 = Point2D(origenX+anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado20 = Point2D(origenX+anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado19,fresado20)
		end
	end
	
	
	--anchura2
	if anchura2>pliegueSuperior*2 then
		local fresado23 = Point2D(origenX+anchura1+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado24 = Point2D(origenX+anchura1+anchura2-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado23,fresado24)
		
		if crearFresado==1 then
			local fresado22 = Point2D(origenX+anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado21 = Point2D(origenX+anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado21,fresado22)
			local fresado25 = Point2D(origenX+anchura1+anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado26 = Point2D(origenX+anchura1+anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado25,fresado26)
		end
	end
	
	
	--anchura3
	if anchura3>pliegueSuperior*2 then
		local fresado29 = Point2D(origenX+anchura1+anchura2+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado30 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado29,fresado30)
		
		if crearFresado==1 then
			local fresado28 = Point2D(origenX+anchura1+anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado27 = Point2D(origenX+anchura1+anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado28,fresado27)
			local fresado31 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado32 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado31,fresado32)	
		end
	end
	
	
	--anchura4
	if anchura4>pliegueSuperior*2 then
		local fresado35 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado36 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado35,fresado36)
		
		if crearFresado==1 then
			local fresado34 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado33 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado33,fresado34)
			local fresado37 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado38 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado37,fresado38)	
		end
	end
	
	
	--anchura5
	if anchura5>pliegueSuperior*2 then
		local fresado41 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado42 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado41,fresado42)
		
		if crearFresado==1 then
			local fresado40 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado39 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado39,fresado40)
			local fresado43 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado44 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado43,fresado44)
		end
	end
	
	
	--anchura6
	if anchura6>pliegueSuperior*2 then
		local fresado47 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado48 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado47,fresado48)
		
		if crearFresado==1 then
			local fresado46 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado45 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado45,fresado46)
			local fresado49 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado50 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado49,fresado50)
		end
	end
	
	
	--anchura7
	if anchura7>pliegueSuperior then
		local fresado53 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado54 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+anchura7,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado53,fresado54)
		
		if crearFresado==1 then
			local fresado52 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado51 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado51,fresado52)
		end
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



function dibujarCorte001(doc)
	
	
	local Contour = Contour(0.0)
	
	--PARTE INFERIOR-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	--Anchura primera
	if anchura1>alaInferior then
		local corte1 = Point2D(origenX,origenY+alaInferior)
		local corte2 = Point2D(origenX,origenY)
		local corte3 = Point2D(origenX+anchura1-alaInferior,origenY)
		Contour:AppendPoint(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		
	else
		local corte1 = Point2D(origenX,origenY+alaInferior)
		local corte2 = Point2D(origenX,origenY+alaInferior-anchura1)
		Contour:AppendPoint(corte1)
		Contour:LineTo(corte2)
	end
	local corte4 = Point2D(origenX+anchura1,origenY+alaInferior)
	Contour:LineTo(corte4)
	
	
	--Bucle anchuras intermedias
	local anchuras={anchura1,anchura2,anchura3,anchura4,anchura5,anchura6,anchura7}
	local repeticiones=5 --math.length(anchuras -2)
	local anchoA=anchuras[1]
	for n=2, (repeticiones+1) do
		local corte1 = Point2D(origenX+anchoA,origenY+alaInferior)
		Contour:LineTo(corte1)
		if anchuras[n]>alaInferior*2 then
			local corte2 = Point2D(origenX+anchoA+alaInferior,origenY)
			local corte3 = Point2D(origenX+anchoA+anchuras[n]-alaInferior,origenY)
			Contour:LineTo(corte2)
			Contour:LineTo(corte3)
			
		else
			local corte2 = Point2D(origenX+anchoA+anchuras[n]/2,origenY+alaInferior-anchuras[n]/2)
			Contour:LineTo(corte2)
		end
		
		local corte4 = Point2D(origenX+anchoA+anchuras[n],origenY+alaInferior)
		Contour:LineTo(corte4)
		
		anchoA=anchoA+anchuras[n]
	end	
	
	
	--Anchura ultima
	if anchura7>alaInferior then
		local corte1 = Point2D(origenX+anchoA,origenY+alaInferior)
		local corte2 = Point2D(origenX+anchoA+alaInferior,origenY)
		local corte3 = Point2D(origenX+anchoA+anchura7,origenY)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		
	else
		local corte1 = Point2D(origenX+anchoA,origenY+alaInferior)
		local corte2 = Point2D(origenX+anchoA+anchura7,origenY+alaInferior-anchura7)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
	end
	local corte4 = Point2D(origenX+anchoA+anchura7,origenY+alaInferior)
	Contour:LineTo(corte4)
	
	
	
	
	--PARTE SUPERIOR------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	anchoA=anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+anchura7
	
	--Anchura primera
	if anchura7>pliegueSuperior then
		local corte1 = Point2D(origenX+anchoA,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte2 = Point2D(origenX+anchoA-(anchura7-pliegueSuperior),origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte3 = Point2D(origenX+anchoA-(anchura7-pliegueSuperior),origenY+alaInferior+alturaPlaca+pliegueSuperior)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
	else
		local corte1 = Point2D(origenX+anchoA,origenY+alaInferior+alturaPlaca+anchura7)
		local corte2 = Point2D(origenX+anchoA-anchura7,origenY+alaInferior+alturaPlaca)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
	end
	
	
	anchoA=anchoA-anchura7
	local m=6
	for n=2, (repeticiones+1) do
		
		local corte1 = Point2D(origenX+anchoA,origenY+alaInferior+alturaPlaca)
		Contour:LineTo(corte1)
		if anchuras[m]>pliegueSuperior*2 then
			local corte2 = Point2D(origenX+anchoA-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local corte3 = Point2D(origenX+anchoA-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local corte4 = Point2D(origenX+anchoA-anchuras[m]+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local corte5 = Point2D(origenX+anchoA-anchuras[m]+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			Contour:LineTo(corte2)
			Contour:LineTo(corte3)
			Contour:LineTo(corte4)
			Contour:LineTo(corte5)
		else
			local corte2 = Point2D(origenX+anchoA-anchuras[m]/2,origenY+alaInferior+alturaPlaca+anchuras[m]/2)
			Contour:LineTo(corte2)
		end
		
		local corte4 = Point2D(origenX+anchoA-anchuras[m],origenY+alaInferior+alturaPlaca)
		Contour:LineTo(corte4)
		
		anchoA=anchoA-anchuras[m]
		m=m-1
	end	
	
	
	--Anchura ultima
	if anchura1>pliegueSuperior then
		local corte1 = Point2D(origenX+anchoA,origenY+alaInferior+alturaPlaca)
		local corte2 = Point2D(origenX+anchoA-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local corte3 = Point2D(origenX+anchoA-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte4 = Point2D(origenX,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
		
	else
		local corte1 = Point2D(origenX+anchoA,origenY+alaInferior+alturaPlaca)
		local corte2 = Point2D(origenX+anchoA-anchura1,origenY+alaInferior+alturaPlaca+anchura1)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
	end
	local corte4 = Point2D(origenX,origenY+alaInferior)
	Contour:LineTo(corte4)
	
	
	
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
----------------------------------------------------------------------------------------------- [REFERENCIA 002 - F2] -----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function dibujarFresado002(doc)
	
	
	local plieguesInf={pliegueInf1, pliegueInf2, pliegueInf3, pliegueInf4, pliegueInf5, pliegueInf6, pliegueInf7}
	
	--sacar el mayor pliegue
	pliegueInferior=pliegueInf1
	for n=1, 7 do
		if pliegueInferior<plieguesInf[n] then
			pliegueInferior=plieguesInf[n]
		end
	end
	
	
	
	--Puntos trayectoria 
	local Contour = Contour(0.0)
	
	local fresado1 = Point2D(origenX,origenY+alaInferior+pliegueInferior)
	local fresado2 = Point2D(origenX+anchura1,origenY+alaInferior+pliegueInferior)
	local fresado3 = Point2D(origenX+anchura1+anchura2,origenY+alaInferior+pliegueInferior)
	local fresado4 = Point2D(origenX+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior)
	local fresado5 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior)
	local fresado6 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5,origenY+alaInferior+pliegueInferior)
	local fresado7 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6,origenY+alaInferior+pliegueInferior)
	local fresado8 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+anchura7,origenY+alaInferior+pliegueInferior)
	local fresado9 = Point2D(origenX,origenY+alaInferior+alturaPlaca+pliegueInferior)
	local fresado10 = Point2D(origenX+anchura1,origenY+alaInferior+alturaPlaca+pliegueInferior)
	local fresado11 = Point2D(origenX+anchura1+anchura2,origenY+alaInferior+alturaPlaca+pliegueInferior)
	local fresado12 = Point2D(origenX+anchura1+anchura2+anchura3,origenY+alaInferior+alturaPlaca+pliegueInferior)
	local fresado13 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+alturaPlaca+pliegueInferior)
	local fresado14 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5,origenY+alaInferior+alturaPlaca+pliegueInferior)
	local fresado15 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6,origenY+alaInferior+alturaPlaca+pliegueInferior)
	local fresado16 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+anchura7,origenY+alaInferior+alturaPlaca+pliegueInferior)
	
	dibujarFresado_auxiliar(doc,fresado1,fresado8)
	dibujarFresado_auxiliar(doc,fresado9,fresado16)
	dibujarFresado_auxiliar(doc,fresado2,fresado10)
	dibujarFresado_auxiliar(doc,fresado3,fresado11)
	dibujarFresado_auxiliar(doc,fresado4,fresado12)
	dibujarFresado_auxiliar(doc,fresado5,fresado13)
	dibujarFresado_auxiliar(doc,fresado6,fresado14)
	dibujarFresado_auxiliar(doc,fresado7,fresado15)
	

	crearFresado=1 --[BORRAAAAAAAAAAAAAAAAAAAAAARRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR en la version2 del gadget !!!!!!!!!!!!!!!!!!!!!!!!!!]
	--anchura1 - Superior
	if anchura1>pliegueSuperior then
		local fresado17 = Point2D(origenX,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		local fresado18 = Point2D(origenX+anchura1-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		dibujarFresado_auxiliar(doc,fresado17,fresado18)
		
		if crearFresado==1 then
			local fresado19 = Point2D(origenX+anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
			local fresado20 = Point2D(origenX+anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior+pliegueInferior)
			dibujarFresado_auxiliar(doc,fresado19,fresado20)
		end
	end
	
	
	--anchura2 - Superior
	if anchura2>pliegueSuperior*2 then
		local fresado23 = Point2D(origenX+anchura1+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		local fresado24 = Point2D(origenX+anchura1+anchura2-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		dibujarFresado_auxiliar(doc,fresado23,fresado24)
		
		if crearFresado==1 then
			local fresado22 = Point2D(origenX+anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
			local fresado21 = Point2D(origenX+anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior+pliegueInferior)
			dibujarFresado_auxiliar(doc,fresado21,fresado22)
			local fresado25 = Point2D(origenX+anchura1+anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
			local fresado26 = Point2D(origenX+anchura1+anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior+pliegueInferior)
			dibujarFresado_auxiliar(doc,fresado25,fresado26)
		end
	end
	
	
	--anchura3 - Superior
	if anchura3>pliegueSuperior*2 then
		local fresado29 = Point2D(origenX+anchura1+anchura2+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		local fresado30 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		dibujarFresado_auxiliar(doc,fresado29,fresado30)
		
		if crearFresado==1 then
			local fresado28 = Point2D(origenX+anchura1+anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
			local fresado27 = Point2D(origenX+anchura1+anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior+pliegueInferior)
			dibujarFresado_auxiliar(doc,fresado28,fresado27)
			local fresado31 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
			local fresado32 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior+pliegueInferior)
			dibujarFresado_auxiliar(doc,fresado31,fresado32)
		end
	end
	
	
	--anchura4 - Superior
	if anchura4>pliegueSuperior*2 then
		local fresado35 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		local fresado36 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		dibujarFresado_auxiliar(doc,fresado35,fresado36)
		
		if crearFresado==1 then
			local fresado34 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
			local fresado33 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior+pliegueInferior)
			dibujarFresado_auxiliar(doc,fresado33,fresado34)
			local fresado37 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
			local fresado38 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior+pliegueInferior)
			dibujarFresado_auxiliar(doc,fresado37,fresado38)
		end
	end
	
	
	--anchura5 - Superior
	if anchura5>pliegueSuperior*2 then
		local fresado41 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		local fresado42 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		dibujarFresado_auxiliar(doc,fresado41,fresado42)
		
		if crearFresado==1 then
			local fresado40 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
			local fresado39 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior+pliegueInferior)
			dibujarFresado_auxiliar(doc,fresado39,fresado40)
			local fresado43 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
			local fresado44 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior+pliegueInferior)
			dibujarFresado_auxiliar(doc,fresado43,fresado44)
		end
	end
	
	
	--anchura6 - Superior
	if anchura6>pliegueSuperior*2 then
		local fresado47 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		local fresado48 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		dibujarFresado_auxiliar(doc,fresado47,fresado48)
		
		if crearFresado==1 then
			local fresado46 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
			local fresado45 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior+pliegueInferior)
			dibujarFresado_auxiliar(doc,fresado45,fresado46)
			local fresado49 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
			local fresado50 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior+pliegueInferior)
			dibujarFresado_auxiliar(doc,fresado49,fresado50)
		end
	end
	
	
	--anchura7 - Superior
	if anchura7>pliegueSuperior then
		local fresado53 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		local fresado54 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+anchura7,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		dibujarFresado_auxiliar(doc,fresado53,fresado54)
		
		if crearFresado==1 then
			local fresado52 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
			local fresado51 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior+pliegueInferior)
			dibujarFresado_auxiliar(doc,fresado51,fresado52)
		end
	end
	
	
	
	
	
	
	
	--anchura1 - Inferior
	if anchura1>(pliegueInf1) then 
		local fresado55 = Point2D(origenX,origenY+pliegueInferior+alaInferior-pliegueInf1)
		local fresado56 = Point2D(origenX+anchura1-pliegueInf1,origenY+alaInferior+pliegueInferior-pliegueInf1)
		dibujarFresado_auxiliar(doc,fresado55,fresado56)
	end
	
	--anchura2 - Inferior
	if anchura2>(pliegueInf2)*2 then 
		local fresado55 = Point2D(origenX+anchura1+pliegueInf2,origenY+alaInferior+pliegueInferior-pliegueInf2)
		local fresado56 = Point2D(origenX+anchura1+anchura2-pliegueInf2,origenY+alaInferior+pliegueInferior-pliegueInf2)
		dibujarFresado_auxiliar(doc,fresado55,fresado56)
	end
	
	--anchura3 - Inferior
	if anchura3>(pliegueInf3)*2 then 
		local fresado55 = Point2D(origenX+anchura1+anchura2+pliegueInf3,origenY+alaInferior+pliegueInferior-pliegueInf3)
		local fresado56 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueInf3,origenY+alaInferior+pliegueInferior-pliegueInf3)
		dibujarFresado_auxiliar(doc,fresado55,fresado56)
	end
	
	--anchura4 - Inferior
	if anchura4>(pliegueInf4)*2 then 
		local fresado55 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueInf4,origenY+alaInferior+pliegueInferior-pliegueInf4)
		local fresado56 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4-pliegueInf4,origenY+alaInferior+pliegueInferior-pliegueInf4)
		dibujarFresado_auxiliar(doc,fresado55,fresado56)
	end
	
	--anchura5 - Inferior
	if anchura5>(pliegueInf5)*2 then 
		local fresado55 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+pliegueInf5,origenY+alaInferior+pliegueInferior-pliegueInf5)
		local fresado56 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5-pliegueInf5,origenY+alaInferior+pliegueInferior-pliegueInf5)
		dibujarFresado_auxiliar(doc,fresado55,fresado56)
	end
	
	--anchura6 - Inferior
	if anchura6>(pliegueInf6)*2 then 
		local fresado55 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+pliegueInf6,origenY+alaInferior+pliegueInferior-pliegueInf6)
		local fresado56 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6-pliegueInf6,origenY+alaInferior+pliegueInferior-pliegueInf6)
		dibujarFresado_auxiliar(doc,fresado55,fresado56)
	end
	
	--anchura7 - Inferior
	if anchura7>(pliegueInf7) then 
		local fresado55 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+pliegueInf7,origenY+alaInferior+pliegueInferior-pliegueInf7)
		local fresado56 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+anchura7,origenY+alaInferior+pliegueInferior-pliegueInf7)
		dibujarFresado_auxiliar(doc,fresado55,fresado56)
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



function dibujarCorte002(doc)
	
	local plieguesInf={pliegueInf1, pliegueInf2, pliegueInf3, pliegueInf4, pliegueInf5, pliegueInf6, pliegueInf7}
	
	--sacar el mayor pliegue
	pliegueInferior=pliegueInf1
	for n=1, 7 do
		if pliegueInferior<plieguesInf[n] then
			pliegueInferior=plieguesInf[n]
		end
	end
	
	
	
	
	local Contour = Contour(0.0)
	
	--PARTE INFERIOR-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	--Anchura primera 
	if anchura1>(alaInferior+pliegueInf1) then
		local corte1 = Point2D(origenX,origenY+alaInferior+pliegueInferior)
		local corte2 = Point2D(origenX,origenY+pliegueInferior-pliegueInf1)
		local corte3 = Point2D(origenX+anchura1-alaInferior-pliegueInf1,origenY+pliegueInferior-pliegueInf1)
		Contour:AppendPoint(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		
	else
		local corte1 = Point2D(origenX,origenY+alaInferior+pliegueInferior)
		local corte2 = Point2D(origenX,origenY+alaInferior+pliegueInferior-anchura1)
		Contour:AppendPoint(corte1)
		Contour:LineTo(corte2)
	end
	local corte4 = Point2D(origenX+anchura1,origenY+alaInferior+pliegueInferior)
	Contour:LineTo(corte4)
	
	
	--Bucle anchuras intermedias 
	local anchuras={anchura1,anchura2,anchura3,anchura4,anchura5,anchura6,anchura7}
	local repeticiones=5 --math.length(anchuras -2)
	local anchoA=anchuras[1]
	for n=2, (repeticiones+1) do
		local corte1 = Point2D(origenX+anchoA,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte1)
		if anchuras[n]>(alaInferior+plieguesInf[n])*2 then
			local corte2 = Point2D(origenX+anchoA+alaInferior+plieguesInf[n],origenY+pliegueInferior-plieguesInf[n])
			local corte3 = Point2D(origenX+anchoA+anchuras[n]-alaInferior-plieguesInf[n],origenY+pliegueInferior-plieguesInf[n])
			Contour:LineTo(corte2)
			Contour:LineTo(corte3)
			
		else
			local corte2 = Point2D(origenX+anchoA+anchuras[n]/2,origenY+alaInferior+pliegueInferior-anchuras[n]/2)
			Contour:LineTo(corte2)
		end
		
		local corte4 = Point2D(origenX+anchoA+anchuras[n],origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte4)
		
		anchoA=anchoA+anchuras[n]
	end	
	
	
	--Anchura ultima 
	if anchura7>(alaInferior+pliegueInf7) then
		local corte1 = Point2D(origenX+anchoA,origenY+alaInferior+pliegueInferior)
		local corte2 = Point2D(origenX+anchoA+alaInferior+pliegueInf7,origenY+pliegueInferior-pliegueInf7)
		local corte3 = Point2D(origenX+anchoA+anchura7,origenY+pliegueInferior-pliegueInf7)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		
	else
		local corte1 = Point2D(origenX+anchoA,origenY+alaInferior+pliegueInferior)
		local corte2 = Point2D(origenX+anchoA+anchura7,origenY+alaInferior+pliegueInferior-anchura7)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
	end
	local corte4 = Point2D(origenX+anchoA+anchura7,origenY+alaInferior+pliegueInferior)
	Contour:LineTo(corte4)
	
	
	
	
	
	--PARTE SUPERIOR------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	anchoA=anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+anchura7
	
	--Anchura primera
	if anchura7>pliegueSuperior then
		local corte1 = Point2D(origenX+anchoA,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior+pliegueInferior)
		local corte2 = Point2D(origenX+anchoA-(anchura7-pliegueSuperior),origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior+pliegueInferior)
		local corte3 = Point2D(origenX+anchoA-(anchura7-pliegueSuperior),origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
	else
		local corte1 = Point2D(origenX+anchoA,origenY+alaInferior+alturaPlaca+anchura7+pliegueInferior)
		local corte2 = Point2D(origenX+anchoA-anchura7,origenY+alaInferior+alturaPlaca+pliegueInferior)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
	end
	
	
	anchoA=anchoA-anchura7
	local m=6
	for n=2, (repeticiones+1) do
		
		local corte1 = Point2D(origenX+anchoA,origenY+alaInferior+alturaPlaca+pliegueInferior)
		Contour:LineTo(corte1)
		if anchuras[m]>pliegueSuperior*2 then
			local corte2 = Point2D(origenX+anchoA-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
			local corte3 = Point2D(origenX+anchoA-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior+pliegueInferior)
			local corte4 = Point2D(origenX+anchoA-anchuras[m]+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior+pliegueInferior)
			local corte5 = Point2D(origenX+anchoA-anchuras[m]+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
			Contour:LineTo(corte2)
			Contour:LineTo(corte3)
			Contour:LineTo(corte4)
			Contour:LineTo(corte5)
		else
			local corte2 = Point2D(origenX+anchoA-anchuras[m]/2,origenY+alaInferior+alturaPlaca+anchuras[m]/2+pliegueInferior)
			Contour:LineTo(corte2)
		end
		
		local corte4 = Point2D(origenX+anchoA-anchuras[m],origenY+alaInferior+alturaPlaca+pliegueInferior)
		Contour:LineTo(corte4)
		
		anchoA=anchoA-anchuras[m]
		m=m-1
	end	
	
	
	--Anchura ultima
	if anchura1>pliegueSuperior then
		local corte1 = Point2D(origenX+anchoA,origenY+alaInferior+alturaPlaca+pliegueInferior)
		local corte2 = Point2D(origenX+anchoA-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		local corte3 = Point2D(origenX+anchoA-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior+pliegueInferior)
		local corte4 = Point2D(origenX,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior+pliegueInferior)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
		
	else
		local corte1 = Point2D(origenX+anchoA,origenY+alaInferior+alturaPlaca+pliegueInferior)
		local corte2 = Point2D(origenX+anchoA-anchura1,origenY+alaInferior+alturaPlaca+anchura1+pliegueInferior)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
	end
	local corte4 = Point2D(origenX,origenY+alaInferior+pliegueInferior)
	Contour:LineTo(corte4)
	
	
	
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
----------------------------------------------------------------------------------------------- [REFERENCIA 003 - F3] -----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function numeroPestanas003(alturas)

	local nPestanas=0
	
	if alturas[1]>0 then
		nPestanas=nPestanas+1
	end
	if alturas[2]>0 then
		nPestanas=nPestanas+1
	end
	if alturas[3]>0 then
		nPestanas=nPestanas+1
	end
	if alturas[4]>0 then
		nPestanas=nPestanas+1
	end
	if alturas[5]>0 then
		nPestanas=nPestanas+1
	end
	if alturas[6]>0 then
		nPestanas=nPestanas+1
	end
	if alturas[7]>0 then
		nPestanas=nPestanas+1
	end
	if alturas[8]>0 then
		nPestanas=nPestanas+1
	end
	if alturas[9]>0 then
		nPestanas=nPestanas+1
	end
	if alturas[10]>0 then
		nPestanas=nPestanas+1
	end
	
	--DisplayMessageBox("El panel va a tener "..nPestanas.. " pestanas en total")
	
	return nPestanas
	
end


function dibujarFresado003(doc)
	
	local alturas={altura1,altura2,altura3,altura4,altura5,altura6,altura7,altura8,altura9,altura10}
	
	local nPestanas=numeroPestanas003(alturas)
	
	local Contour = Contour(0.0)
	local fresado1
	local fresado2
	local fresado3
	local fresado4
	local fresado5
	local fresado6
	local fresado7
	local fresado8
	local fresado9
	local fresado10
	local fresado11
	local fresado12
	local fresado13
	local fresado14
	local fresado15
	local fresado16
	local fresado17
	local fresado18
	local fresado19
	local fresado20
	local fresado21
	local fresado22
	
	local x
	local y
	
	--Puntos trayectoria
	x=origenX+alaIzquierda+anchuraPlaca
	y=origenY
	if dibujoHorizontal==1 then --Dibujo horizontal
		fresado1 = Point2D(y,x)
	else --dibujo vertical
		fresado1 = Point2D(x,y)
	end
	
	x=origenX+alaIzquierda+anchuraPlaca
	y=origenY+altura1
	if dibujoHorizontal==1 then
		fresado2 = Point2D(y,x)
	else
		fresado2 = Point2D(x,y)
	end
	
	x=origenX+alaIzquierda+anchuraPlaca
	y=origenY+altura1+altura2
	if dibujoHorizontal==1 then
		fresado3 = Point2D(y,x)
	else
		fresado3 = Point2D(x,y)
	end
	
	x=origenX+alaIzquierda+anchuraPlaca
	y=origenY+altura1+altura2+altura3
	if dibujoHorizontal==1 then
		fresado4 = Point2D(y,x)
	else
		fresado4 = Point2D(x,y)
	end
	
	x=origenX+alaIzquierda+anchuraPlaca
	y=origenY+altura1+altura2+altura3+altura4
	if dibujoHorizontal==1 then
		fresado5 = Point2D(y,x)
	else
		fresado5 = Point2D(x,y)
	end
	
	x=origenX+alaIzquierda+anchuraPlaca
	y=origenY+altura1+altura2+altura3+altura4+altura5
	if dibujoHorizontal==1 then
		fresado6 = Point2D(y,x)
	else
		fresado6 = Point2D(x,y)
	end
	
	x=origenX+alaIzquierda+anchuraPlaca
	y=origenY+altura1+altura2+altura3+altura4+altura5+altura6
	if dibujoHorizontal==1 then
		fresado7 = Point2D(y,x)
	else
		fresado7 = Point2D(x,y)
	end
	
	x=origenX+alaIzquierda+anchuraPlaca
	y=origenY+altura1+altura2+altura3+altura4+altura5+altura6+altura7
	if dibujoHorizontal==1 then
		fresado8 = Point2D(y,x)
	else
		fresado8 = Point2D(x,y)
	end
	
	x=origenX+alaIzquierda+anchuraPlaca
	y=origenY+altura1+altura2+altura3+altura4+altura5+altura6+altura7+altura8
	if dibujoHorizontal==1 then
		fresado9 = Point2D(y,x)
	else
		fresado9 = Point2D(x,y)
	end
	
	x=origenX+alaIzquierda+anchuraPlaca
	y=origenY+altura1+altura2+altura3+altura4+altura5+altura6+altura7+altura8+altura9
	if dibujoHorizontal==1 then
		fresado10 = Point2D(y,x)
	else
		fresado10 = Point2D(x,y)
	end
	
	x=origenX+alaIzquierda+anchuraPlaca
	y=origenY+altura1+altura2+altura3+altura4+altura5+altura6+altura7+altura8+altura9+altura10
	if dibujoHorizontal==1 then
		fresado11 = Point2D(y,x)
	else
		fresado11 = Point2D(x,y)
	end
	
	
	x=origenX+alaIzquierda
	y=origenY
	if dibujoHorizontal==1 then
		fresado12 = Point2D(y,x)
	else
		fresado12 = Point2D(x,y)
	end
	
	x=origenX+alaIzquierda
	y=origenY+altura1
	if dibujoHorizontal==1 then
		fresado13 = Point2D(y,x)
	else
		fresado13 = Point2D(x,y)
	end
	
	x=origenX+alaIzquierda
	y=origenY+altura1+altura2
	if dibujoHorizontal==1 then
		fresado14 = Point2D(y,x)
	else
		fresado14 = Point2D(x,y)
	end
	
	x=origenX+alaIzquierda
	y=origenY+altura1+altura2+altura3
	if dibujoHorizontal==1 then
		fresado15 = Point2D(y,x)
	else
		fresado15 = Point2D(x,y)
	end
	
	x=origenX+alaIzquierda
	y=origenY+altura1+altura2+altura3+altura4
	if dibujoHorizontal==1 then
		fresado16 = Point2D(y,x)
	else
		fresado16 = Point2D(x,y)
	end
	
	x=origenX+alaIzquierda
	y=origenY+altura1+altura2+altura3+altura4+altura5
	if dibujoHorizontal==1 then
		fresado17 = Point2D(y,x)
	else
		fresado17 = Point2D(x,y)
	end
	
	x=origenX+alaIzquierda
	y=origenY+altura1+altura2+altura3+altura4+altura5+altura6
	if dibujoHorizontal==1 then
		fresado18 = Point2D(y,x)
	else
		fresado18 = Point2D(x,y)
	end
	
	x=origenX+alaIzquierda
	y=origenY+altura1+altura2+altura3+altura4+altura5+altura6+altura7
	if dibujoHorizontal==1 then
		fresado19 = Point2D(y,x)
	else
		fresado19 = Point2D(x,y)
	end
	
	x=origenX+alaIzquierda
	y=origenY+altura1+altura2+altura3+altura4+altura5+altura6+altura7+altura8
	if dibujoHorizontal==1 then
		fresado20 = Point2D(y,x)
	else
		fresado20 = Point2D(x,y)
	end
	
	x=origenX+alaIzquierda
	y=origenY+altura1+altura2+altura3+altura4+altura5+altura6+altura7+altura8+altura9
	if dibujoHorizontal==1 then
		fresado21 = Point2D(y,x)
	else
		fresado21 = Point2D(x,y)
	end
	
	x=origenX+alaIzquierda
	y=origenY+altura1+altura2+altura3+altura4+altura5+altura6+altura7+altura8+altura9+altura10
	if dibujoHorizontal==1 then
		fresado22 = Point2D(y,x)
	else
		fresado22 = Point2D(x,y)
	end
	
	
	
	
	
	
	local fresadoIzq={fresado12,fresado13,fresado14,fresado15,fresado16,fresado17,fresado18,fresado19,fresado20,fresado21,fresado22} --Se ponen los puntos en un vector para poder usarlos en un bucle for
	local fresadoDer={fresado1,fresado2,fresado3,fresado4,fresado5,fresado6,fresado7,fresado8,fresado9,fresado10,fresado11} --Se ponen los puntos en un vector para poder usarlos en un bucle for
	
	
	--Dibujar lineas horizontales
	if nPestanas==2 then
		dibujarFresado_auxiliar(doc,fresado2,fresado13)
	elseif nPestanas==3 then
		dibujarFresado_auxiliar(doc,fresado2,fresado13)
		dibujarFresado_auxiliar(doc,fresado3,fresado14)
	elseif nPestanas==4 then
		dibujarFresado_auxiliar(doc,fresado2,fresado13)
		dibujarFresado_auxiliar(doc,fresado3,fresado14)
		dibujarFresado_auxiliar(doc,fresado4,fresado15)
	elseif nPestanas==5 then
		dibujarFresado_auxiliar(doc,fresado2,fresado13)
		dibujarFresado_auxiliar(doc,fresado3,fresado14)
		dibujarFresado_auxiliar(doc,fresado4,fresado15)
		dibujarFresado_auxiliar(doc,fresado5,fresado16)
	elseif nPestanas==6 then
		dibujarFresado_auxiliar(doc,fresado2,fresado13)
		dibujarFresado_auxiliar(doc,fresado3,fresado14)
		dibujarFresado_auxiliar(doc,fresado4,fresado15)
		dibujarFresado_auxiliar(doc,fresado5,fresado16)
		dibujarFresado_auxiliar(doc,fresado6,fresado17)		
	elseif nPestanas==7 then
		dibujarFresado_auxiliar(doc,fresado2,fresado13)
		dibujarFresado_auxiliar(doc,fresado3,fresado14)
		dibujarFresado_auxiliar(doc,fresado4,fresado15)
		dibujarFresado_auxiliar(doc,fresado5,fresado16)
		dibujarFresado_auxiliar(doc,fresado6,fresado17)
		dibujarFresado_auxiliar(doc,fresado7,fresado18)
	elseif nPestanas==8 then
		dibujarFresado_auxiliar(doc,fresado2,fresado13)
		dibujarFresado_auxiliar(doc,fresado3,fresado14)
		dibujarFresado_auxiliar(doc,fresado4,fresado15)
		dibujarFresado_auxiliar(doc,fresado5,fresado16)
		dibujarFresado_auxiliar(doc,fresado6,fresado17)
		dibujarFresado_auxiliar(doc,fresado7,fresado18)
		dibujarFresado_auxiliar(doc,fresado8,fresado19)
	elseif nPestanas==9 then
		dibujarFresado_auxiliar(doc,fresado2,fresado13)
		dibujarFresado_auxiliar(doc,fresado3,fresado14)
		dibujarFresado_auxiliar(doc,fresado4,fresado15)
		dibujarFresado_auxiliar(doc,fresado5,fresado16)
		dibujarFresado_auxiliar(doc,fresado6,fresado17)
		dibujarFresado_auxiliar(doc,fresado7,fresado18)
		dibujarFresado_auxiliar(doc,fresado8,fresado19)
		dibujarFresado_auxiliar(doc,fresado9,fresado20)
	elseif nPestanas==10 then
		dibujarFresado_auxiliar(doc,fresado2,fresado13)
		dibujarFresado_auxiliar(doc,fresado3,fresado14)
		dibujarFresado_auxiliar(doc,fresado4,fresado15)
		dibujarFresado_auxiliar(doc,fresado5,fresado16)
		dibujarFresado_auxiliar(doc,fresado6,fresado17)
		dibujarFresado_auxiliar(doc,fresado7,fresado18)
		dibujarFresado_auxiliar(doc,fresado8,fresado19)
		dibujarFresado_auxiliar(doc,fresado9,fresado20)
		dibujarFresado_auxiliar(doc,fresado10,fresado21)
	end
	
	
	--dibujar lineas verticales
	local pliegueIzq={pliegueIzq1,pliegueIzq2,pliegueIzq3,pliegueIzq4,pliegueIzq5,pliegueIzq6,pliegueIzq7,pliegueIzq8,pliegueIzq9,pliegueIzq10}
	local pliegueDer={pliegueDer1,pliegueDer2,pliegueDer3,pliegueDer4,pliegueDer5,pliegueDer6,pliegueDer7,pliegueDer8,pliegueDer9,pliegueDer10}
	
	for n=1, nPestanas do
		if pliegueDer[n]==1 then
			dibujarFresado_auxiliar(doc,fresadoDer[n],fresadoDer[n+1])
		end
		if pliegueIzq[n]==1 then
			dibujarFresado_auxiliar(doc,fresadoIzq[n],fresadoIzq[n+1])
		end
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


--[[function dibujarFresado003_auxiliar(doc,punto1,punto2)

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
end--]]


function dibujarCorte003Vertical(doc)
	local alturas={altura1,altura2,altura3,altura4,altura5,altura6,altura7,altura8,altura9,altura10}
	local nPestanas=numeroPestanas003(alturas)
	
	local pliegueIzq={pliegueIzq1,pliegueIzq2,pliegueIzq3,pliegueIzq4,pliegueIzq5,pliegueIzq6,pliegueIzq7,pliegueIzq8,pliegueIzq9,pliegueIzq10}
	local pliegueDer={pliegueDer1,pliegueDer2,pliegueDer3,pliegueDer4,pliegueDer5,pliegueDer6,pliegueDer7,pliegueDer8,pliegueDer9,pliegueDer10}
	
	local Contour = Contour(0.0)
	
	--PARTE IZQUIERDA-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	--Anchura primera
	local corte1 = Point2D(origenX+alaIzquierda,origenY)
	Contour:AppendPoint(corte1)
	
	if pliegueIzq[1]==1 then
		if altura1>alaIzquierda then
			local corte2 = Point2D(origenX,origenY)
			local corte3 = Point2D(origenX,origenY+altura1-alaIzquierda)
			Contour:LineTo(corte2)
			Contour:LineTo(corte3)
		else
			local corte2 = Point2D(origenX+alaIzquierda-altura1,origenY)
			Contour:LineTo(corte2)
		end
		local corte4 = Point2D(origenX+alaIzquierda,origenY+altura1)
		Contour:LineTo(corte4)
	end
	
	
	--Bucle anchuras intermedias
	local repeticiones=nPestanas-2
	local anchoA=alturas[1]
	for n=2, (repeticiones+1) do
		if pliegueIzq[n]==1 then
			local corte1 = Point2D(origenX+alaIzquierda,origenY+anchoA)
			Contour:LineTo(corte1)
			if alturas[n]>alaIzquierda*2 then
				local corte2 = Point2D(origenX,origenY+anchoA+alaIzquierda)
				local corte3 = Point2D(origenX,origenY+anchoA+alturas[n]-alaIzquierda)
				Contour:LineTo(corte2)
				Contour:LineTo(corte3)
				
			else
				local corte2 = Point2D(origenX+alaIzquierda-alturas[n]/2,origenY+anchoA+alturas[n]/2)
				Contour:LineTo(corte2)
			end
			
			local corte4 = Point2D(origenX+alaIzquierda,origenY+anchoA+alturas[n])
			Contour:LineTo(corte4)
		end
		
		anchoA=anchoA+alturas[n]
	end	
	
	
	--Anchura ultima
	if pliegueIzq[nPestanas]==1 then 
		if alturas[nPestanas]>alaIzquierda then
			local corte1 = Point2D(origenX+alaIzquierda,origenY+anchoA)
			local corte2 = Point2D(origenX,origenY+anchoA+alaIzquierda)
			local corte3 = Point2D(origenX,origenY+anchoA+alturas[nPestanas])
			Contour:LineTo(corte1)
			Contour:LineTo(corte2)
			Contour:LineTo(corte3)
			
		else
			local corte1 = Point2D(origenX+alaIzquierda-alturas[nPestanas],origenY+anchoA+alturas[nPestanas])
			--local corte2 = Point2D(origenX+alaIzquierda,origenY+anchoA+alturas[nPestanas])
			Contour:LineTo(corte1)
			--Contour:LineTo(corte2)
		end
	end
	
	local corte4 = Point2D(origenX+alaIzquierda,origenY+anchoA+alturas[nPestanas])
	Contour:LineTo(corte4)
	
	
	
	
	
	
	
	
	--PARTE DERECHA-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	--Anchura ultima
	local corte1 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+anchoA+alturas[nPestanas])
	Contour:LineTo(corte1)
	if pliegueDer[nPestanas]==1 then
		if alturas[nPestanas]>alaDerecha then
			local corte1 = Point2D(origenX+alaIzquierda+anchuraPlaca+alaDerecha,origenY+anchoA+alturas[nPestanas])
			local corte2 = Point2D(origenX+alaIzquierda+anchuraPlaca+alaDerecha,origenY+anchoA+alaDerecha)
			--local corte3 = Point2D(origenX+anchuraPlaca+alaDerecha,origenY+anchoA+alturas[nPestanas])
			Contour:LineTo(corte1)
			Contour:LineTo(corte2)
			--Contour:LineTo(corte3)
			
		else
			local corte1 = Point2D(origenX+alaIzquierda+alturas[nPestanas]+anchuraPlaca,origenY+anchoA+alturas[nPestanas])
			--local corte2 = Point2D(origenX+alaIzquierda,origenY+anchoA+alturas[nPestanas])
			Contour:LineTo(corte1)
			--Contour:LineTo(corte2)
		end
		
		local corte4 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+anchoA)
		Contour:LineTo(corte4)
	end
	
	
	
	--Bucle anchuras intermedias
	local repeticiones=nPestanas-2
	local m=nPestanas-1
	--local anchoA=alturas[1]
	
	for n=2, (repeticiones+1) do
	if pliegueDer[m]==1 then
		local corte1 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+anchoA)
		Contour:LineTo(corte1)
		if alturas[m]>alaDerecha*2 then
			local corte2 = Point2D(origenX+anchuraPlaca+alaDerecha+alaIzquierda,origenY+anchoA-alaDerecha)
			local corte3 = Point2D(origenX+anchuraPlaca+alaDerecha+alaIzquierda,origenY+anchoA-alturas[m]+alaDerecha)
			Contour:LineTo(corte2)
			Contour:LineTo(corte3)
			
		else
			local corte2 = Point2D(origenX+alaIzquierda+anchuraPlaca+alturas[m]/2,origenY+anchoA-alturas[m]/2)
			Contour:LineTo(corte2)
		end
		
		local corte4 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+anchoA-alturas[m])
		Contour:LineTo(corte4)
	end
		
		anchoA=anchoA-alturas[m]
		m=m-1
	end	
	
	
	
	
	
	--Anchura primera
	if pliegueDer[1]==1 then 
		if alturas[1]>alaDerecha then
			local corte1 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alturas[1])
			local corte2 = Point2D(origenX+anchuraPlaca+alaDerecha+alaIzquierda,origenY+alturas[1]-alaDerecha)
			local corte3 = Point2D(origenX+anchuraPlaca+alaDerecha+alaIzquierda,origenY)
			Contour:LineTo(corte1)
			Contour:LineTo(corte2)
			Contour:LineTo(corte3)
			
		else
			local corte1 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alturas[1])
			local corte2 = Point2D(origenX+alaIzquierda+anchuraPlaca+alturas[1],origenY)
			Contour:LineTo(corte1)
			Contour:LineTo(corte2)
		end
	end
	local corte4 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY)
	local corte5 = Point2D(origenX+alaIzquierda,origenY)
	Contour:LineTo(corte4)
	Contour:LineTo(corte5)
	
	
	
	
	
	
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


function dibujarCorte003Horizontal(doc)
	local alturas={altura1,altura2,altura3,altura4,altura5,altura6,altura7,altura8,altura9,altura10}
	local nPestanas=numeroPestanas003(alturas)
	
	local pliegueIzq={pliegueIzq1,pliegueIzq2,pliegueIzq3,pliegueIzq4,pliegueIzq5,pliegueIzq6,pliegueIzq7,pliegueIzq8,pliegueIzq9,pliegueIzq10}
	local pliegueDer={pliegueDer1,pliegueDer2,pliegueDer3,pliegueDer4,pliegueDer5,pliegueDer6,pliegueDer7,pliegueDer8,pliegueDer9,pliegueDer10}
	
	local Contour = Contour(0.0)
	
	--PARTE IZQUIERDA-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	--Anchura primera
	local corte1 = Point2D(origenY,origenX+alaIzquierda)
	Contour:AppendPoint(corte1)
	
	if pliegueIzq[1]==1 then
		if altura1>alaIzquierda then
			local corte2 = Point2D(origenY,origenX)
			local corte3 = Point2D(origenY+altura1-alaIzquierda,origenX)
			Contour:LineTo(corte2)
			Contour:LineTo(corte3)
		else
			local corte2 = Point2D(origenY,origenX+alaIzquierda-altura1)
			Contour:LineTo(corte2)
		end
		local corte4 = Point2D(origenY+altura1,origenX+alaIzquierda)
		Contour:LineTo(corte4)
	end
	
	
	--Bucle anchuras intermedias
	local repeticiones=nPestanas-2
	local anchoA=alturas[1]
	for n=2, (repeticiones+1) do
		if pliegueIzq[n]==1 then
			local corte1 = Point2D(origenY+anchoA,origenX+alaIzquierda)
			Contour:LineTo(corte1)
			if alturas[n]>alaIzquierda*2 then
				local corte2 = Point2D(origenY+anchoA+alaIzquierda,origenX)
				local corte3 = Point2D(origenY+anchoA+alturas[n]-alaIzquierda,origenX)
				Contour:LineTo(corte2)
				Contour:LineTo(corte3)
				
			else
				local corte2 = Point2D(origenY+anchoA+alturas[n]/2,origenX+alaIzquierda-alturas[n]/2)
				Contour:LineTo(corte2)
			end
			
			local corte4 = Point2D(origenY+anchoA+alturas[n],origenX+alaIzquierda)
			Contour:LineTo(corte4)
		end
		
		anchoA=anchoA+alturas[n]
	end	
	
	
	--Anchura ultima
	if pliegueIzq[nPestanas]==1 then 
		if alturas[nPestanas]>alaIzquierda then
			local corte1 = Point2D(origenY+anchoA,origenX+alaIzquierda)
			local corte2 = Point2D(origenY+anchoA+alaIzquierda,origenX)
			local corte3 = Point2D(origenY+anchoA+alturas[nPestanas],origenX)
			Contour:LineTo(corte1)
			Contour:LineTo(corte2)
			Contour:LineTo(corte3)
			
		else
			local corte1 = Point2D(origenY+anchoA+alturas[nPestanas],origenX+alaIzquierda-alturas[nPestanas])
			--local corte2 = Point2D(origenX+alaIzquierda,origenY+anchoA+alturas[nPestanas])
			Contour:LineTo(corte1)
			--Contour:LineTo(corte2)
		end
	end
	
	local corte4 = Point2D(origenY+anchoA+alturas[nPestanas],origenX+alaIzquierda)
	Contour:LineTo(corte4)
	
	
	
	
	
	
	
	
	
	--PARTE DERECHA-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	--Anchura ultima
	local corte1 = Point2D(origenY+anchoA+alturas[nPestanas],origenX+alaIzquierda+anchuraPlaca)
	Contour:LineTo(corte1)
	if pliegueDer[nPestanas]==1 then
		if alturas[nPestanas]>alaDerecha then
			local corte1 = Point2D(origenY+anchoA+alturas[nPestanas],origenX+alaIzquierda+anchuraPlaca+alaDerecha)
			local corte2 = Point2D(origenY+anchoA+alaDerecha,origenX+alaIzquierda+anchuraPlaca+alaDerecha)
			--local corte3 = Point2D(origenX+anchuraPlaca+alaDerecha,origenY+anchoA+alturas[nPestanas])
			Contour:LineTo(corte1)
			Contour:LineTo(corte2)
			--Contour:LineTo(corte3)
			
		else
			local corte1 = Point2D(origenY+anchoA+alturas[nPestanas],origenX+alaIzquierda+alturas[nPestanas]+anchuraPlaca)
			--local corte2 = Point2D(origenX+alaIzquierda,origenY+anchoA+alturas[nPestanas])
			Contour:LineTo(corte1)
			--Contour:LineTo(corte2)
		end
		
		local corte4 = Point2D(origenY+anchoA,origenX+alaIzquierda+anchuraPlaca)
		Contour:LineTo(corte4)
	end
	
	
	
	--Bucle anchuras intermedias
	local repeticiones=nPestanas-2
	local m=nPestanas-1
	--local anchoA=alturas[1]
	
	for n=2, (repeticiones+1) do
	if pliegueDer[m]==1 then
		local corte1 = Point2D(origenY+anchoA,origenX+alaIzquierda+anchuraPlaca)
		Contour:LineTo(corte1)
		if alturas[m]>alaDerecha*2 then
			local corte2 = Point2D(origenY+anchoA-alaDerecha,origenX+anchuraPlaca+alaDerecha+alaIzquierda)
			local corte3 = Point2D(origenY+anchoA-alturas[m]+alaDerecha,origenX+anchuraPlaca+alaDerecha+alaIzquierda)
			Contour:LineTo(corte2)
			Contour:LineTo(corte3)
			
		else
			local corte2 = Point2D(origenY+anchoA-alturas[m]/2,origenX+alaIzquierda+anchuraPlaca+alturas[m]/2)
			Contour:LineTo(corte2)
		end
		
		local corte4 = Point2D(origenY+anchoA-alturas[m],origenX+alaIzquierda+anchuraPlaca)
		Contour:LineTo(corte4)
	end
		
		anchoA=anchoA-alturas[m]
		m=m-1
	end	
	
	
	
	
	
	--Anchura primera
	if pliegueDer[1]==1 then 
		if alturas[1]>alaDerecha then
			local corte1 = Point2D(origenY+alturas[1],origenX+alaIzquierda+anchuraPlaca)
			local corte2 = Point2D(origenY+alturas[1]-alaDerecha,origenX+anchuraPlaca+alaDerecha+alaIzquierda)
			local corte3 = Point2D(origenY,origenX+anchuraPlaca+alaDerecha+alaIzquierda)
			Contour:LineTo(corte1)
			Contour:LineTo(corte2)
			Contour:LineTo(corte3)
			
		else
			local corte1 = Point2D(origenY+alturas[1],origenX+alaIzquierda+anchuraPlaca)
			local corte2 = Point2D(origenY,origenX+alaIzquierda+anchuraPlaca+alturas[1])
			Contour:LineTo(corte1)
			Contour:LineTo(corte2)
		end
	end
	local corte4 = Point2D(origenY,origenX+alaIzquierda+anchuraPlaca)
	local corte5 = Point2D(origenY,origenX+alaIzquierda)
	Contour:LineTo(corte4)
	Contour:LineTo(corte5)
	
	
	
	
	
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
----------------------------------------------------------------------------------------------- [REFERENCIA 007 - 008 - F5 - F4] -----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


function dibujarFresado007(doc)
	
	--Puntos trayectoria 
	local Contour = Contour(0.0)
			--Son los mismos puntos que la figura 001 (el unico que cambia es fresado6 y fresado14)
	local fresado1 = Point2D(origenX,origenY+alaInferior) 
	local fresado2 = Point2D(origenX+anchura1,origenY+alaInferior)
	local fresado3 = Point2D(origenX+anchura1+anchura2,origenY+alaInferior)
	local fresado4 = Point2D(origenX+anchura1+anchura2+anchura3,origenY+alaInferior)
	local fresado5 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior)
	
	
	
	
	
	local fresado6 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY) --punto fresado abajo a la izquierda [hay que corregirlo]
	
	
	
	
	local fresado9 = Point2D(origenX,origenY+alaInferior+alturaPlaca)
	local fresado10 = Point2D(origenX+anchura1,origenY+alaInferior+alturaPlaca)
	local fresado11 = Point2D(origenX+anchura1+anchura2,origenY+alaInferior+alturaPlaca)
	local fresado12 = Point2D(origenX+anchura1+anchura2+anchura3,origenY+alaInferior+alturaPlaca)
	local fresado13 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+alturaPlaca)
	
	local fresado14 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+alturaPlaca+pliegueSuperior)

	
	dibujarFresado_auxiliar(doc,fresado1,fresado5)
	dibujarFresado_auxiliar(doc,fresado9,fresado13)
	dibujarFresado_auxiliar(doc,fresado2,fresado10)
	dibujarFresado_auxiliar(doc,fresado3,fresado11)
	dibujarFresado_auxiliar(doc,fresado4,fresado12)
	dibujarFresado_auxiliar(doc,fresado6,fresado14)
	
	
	
	
	--anchura1
	if anchura1>pliegueSuperior then
		local fresado17 = Point2D(origenX,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado18 = Point2D(origenX+anchura1-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado17,fresado18)
		
		if crearFresado==1 then
			local fresado19 = Point2D(origenX+anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado20 = Point2D(origenX+anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado19,fresado20)
		end
	end
	
	
	--anchura2
	if anchura2>pliegueSuperior*2 then		
		local fresado23 = Point2D(origenX+anchura1+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado24 = Point2D(origenX+anchura1+anchura2-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado23,fresado24)
		
		if crearFresado==1 then
			local fresado22 = Point2D(origenX+anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado21 = Point2D(origenX+anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado21,fresado22)
			local fresado25 = Point2D(origenX+anchura1+anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado26 = Point2D(origenX+anchura1+anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado25,fresado26)
		end
	end
	
	
	--anchura3
	if anchura3>pliegueSuperior*2 then
		local fresado29 = Point2D(origenX+anchura1+anchura2+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado30 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado29,fresado30)

		if crearFresado==1 then
			local fresado28 = Point2D(origenX+anchura1+anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado27 = Point2D(origenX+anchura1+anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado28,fresado27)
			local fresado31 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado32 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado31,fresado32)
		end
	end
	
	
	--anchura4
	if anchura4>pliegueSuperior*2 then
		local fresado35 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado35,fresado14)
		
		if crearFresado==1 then
			local fresado34 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado33 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado33,fresado34)
		end
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


function dibujarFresado008(doc)
	
	
	--Puntos trayectoria 
	local Contour = Contour(0.0)
	
	local fresado1 = Point2D(origenX,origenY+alaInferior)
	local fresado2 = Point2D(origenX+anchura1,origenY+alaInferior)
	local fresado3 = Point2D(origenX+anchura1+anchura2,origenY+alaInferior)
	local fresado4 = Point2D(origenX+anchura1+anchura2+anchura3,origenY+alaInferior)
	local fresado5 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior)
	local fresado6 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5,origenY+alaInferior)
	local fresado7 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6,origenY+alaInferior)
	
	local fresado8 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5,origenY)
	
	local fresado9 = Point2D(origenX,origenY+alaInferior+alturaPlaca)
	local fresado10 = Point2D(origenX+anchura1,origenY+alaInferior+alturaPlaca)
	local fresado11 = Point2D(origenX+anchura1+anchura2,origenY+alaInferior+alturaPlaca)
	local fresado12 = Point2D(origenX+anchura1+anchura2+anchura3,origenY+alaInferior+alturaPlaca)
	local fresado13 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+alturaPlaca)
	local fresado14 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5,origenY+alaInferior+alturaPlaca)
	local fresado15 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6,origenY+alaInferior+alturaPlaca)
	
	local fresado16 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	
	
	dibujarFresado_auxiliar(doc,fresado1,fresado6)
	dibujarFresado_auxiliar(doc,fresado9,fresado14)
	dibujarFresado_auxiliar(doc,fresado2,fresado10)
	dibujarFresado_auxiliar(doc,fresado3,fresado11)
	dibujarFresado_auxiliar(doc,fresado4,fresado12)
	dibujarFresado_auxiliar(doc,fresado5,fresado13)
	dibujarFresado_auxiliar(doc,fresado8,fresado16)
	
	
	
	--anchura1
	if anchura1>pliegueSuperior then
		local fresado17 = Point2D(origenX,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado18 = Point2D(origenX+anchura1-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado17,fresado18)
		
		if crearFresado==1 then 
			local fresado19 = Point2D(origenX+anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado20 = Point2D(origenX+anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado19,fresado20)
		end
	end
	
	
	--anchura2
	if anchura2>pliegueSuperior*2 then
		local fresado23 = Point2D(origenX+anchura1+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado24 = Point2D(origenX+anchura1+anchura2-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado23,fresado24)
		
		if crearFresado==1 then 
			local fresado22 = Point2D(origenX+anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado21 = Point2D(origenX+anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado21,fresado22)
			local fresado25 = Point2D(origenX+anchura1+anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado26 = Point2D(origenX+anchura1+anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado25,fresado26)
		end
	end
	
	
	--anchura3
	if anchura3>pliegueSuperior*2 then
		local fresado29 = Point2D(origenX+anchura1+anchura2+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado30 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado29,fresado30)
		if crearFresado==1 then 
			local fresado28 = Point2D(origenX+anchura1+anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado27 = Point2D(origenX+anchura1+anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado28,fresado27)
			local fresado31 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado32 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado31,fresado32)	
		end
	end
	
	
	--anchura4
	if anchura4>pliegueSuperior*2 then
		local fresado35 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado36 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado35,fresado36)
		
		if crearFresado==1 then 
			local fresado34 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado33 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado33,fresado34)
			local fresado37 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado38 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado37,fresado38)
		end
	end
	
	
	--anchura5
	if anchura5>pliegueSuperior*2 then		
		local fresado41 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado41,fresado16)
		if crearFresado==1 then 
			local fresado40 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado39 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado39,fresado40)	
		end
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


function dibujarCorte007(doc)

	local repeticiones
	local anchuras
	local nAnchuras

	
	if modelo==107 then
		repeticiones=2
		anchuras={anchura1,anchura2,anchura3,anchura4}
		nAnchuras=4 --numero de valores del vector "anchuras"
		anchura5=0
	elseif modelo==108 then 
		repeticiones=3
		anchuras={anchura1,anchura2,anchura3,anchura4,anchura5}
		nAnchuras=5 --numero de valores del vector "anchuras"
	end
	
	
	
	
	
	
	local Contour = Contour(0.0)
	
	--PARTE INFERIOR-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	--Anchura primera
	if anchura1>alaInferior then
		local corte1 = Point2D(origenX,origenY+alaInferior)
		local corte2 = Point2D(origenX,origenY)
		local corte3 = Point2D(origenX+anchura1-alaInferior,origenY)
		Contour:AppendPoint(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		
	else
		local corte1 = Point2D(origenX,origenY+alaInferior)
		local corte2 = Point2D(origenX,origenY+alaInferior-anchura1)
		Contour:AppendPoint(corte1)
		Contour:LineTo(corte2)
	end
	local corte4 = Point2D(origenX+anchura1,origenY+alaInferior)
	Contour:LineTo(corte4)
	
	
	--Bucle anchuras intermedias
	--local anchuras={anchura1,anchura2,anchura3,anchura4}
	--local repeticiones=2 --math.length(anchuras -2)
	local anchoA=anchuras[1]
	for n=2, (repeticiones+1) do
		local corte1 = Point2D(origenX+anchoA,origenY+alaInferior)
		Contour:LineTo(corte1)
		if anchuras[n]>alaInferior*2 then
			local corte2 = Point2D(origenX+anchoA+alaInferior,origenY)
			local corte3 = Point2D(origenX+anchoA+anchuras[n]-alaInferior,origenY)
			Contour:LineTo(corte2)
			Contour:LineTo(corte3)
			
		else
			local corte2 = Point2D(origenX+anchoA+anchuras[n]/2,origenY+alaInferior-anchuras[n]/2)
			Contour:LineTo(corte2)
		end
		
		local corte4 = Point2D(origenX+anchoA+anchuras[n],origenY+alaInferior)
		Contour:LineTo(corte4)
		
		anchoA=anchoA+anchuras[n]
	end	
	
	
	
	
	--Anchura ultima	
	if anchuras[nAnchuras]>alaInferior then --Para que acabe en pico o acabe en plano el ala inferior
		local corte1 = Point2D(origenX+anchoA,origenY+alaInferior)
		local corte2 = Point2D(origenX+anchoA+alaInferior,origenY)
		
		if alaInferior>alaDerecha then --para evitar que el pico de abajo a la derecha sea muy muy grande
			
			local corte3 = Point2D(origenX+anchoA+anchuras[nAnchuras]+alaDerecha,origenY)
			local corte4 = Point2D(origenX+anchoA+anchuras[nAnchuras]+alaDerecha,origenY+alaInferior-alaDerecha)
			local corte5 = Point2D(origenX+anchoA+anchuras[nAnchuras],origenY+alaInferior)
			Contour:LineTo(corte1)
			Contour:LineTo(corte2)
			Contour:LineTo(corte3)
			Contour:LineTo(corte4)
			Contour:LineTo(corte5)
			
		else 
			local corte3 = Point2D(origenX+anchoA+anchuras[nAnchuras]+alaInferior,origenY)
			Contour:LineTo(corte1)
			Contour:LineTo(corte2)
			Contour:LineTo(corte3)
		end

	else
		local corte1 = Point2D(origenX+anchoA,origenY+alaInferior)
		local corte2 = Point2D(origenX+anchoA+anchuras[nAnchuras],origenY+alaInferior-anchuras[nAnchuras])
			
		if alaInferior>alaDerecha then --para evitar que el pico de abajo a la derecha sea muy muy grande
			local corte3 = Point2D(origenX+anchoA+anchuras[nAnchuras],origenY+alaInferior-anchuras[nAnchuras])
			local corte4 = Point2D(origenX+anchoA+anchuras[nAnchuras]+alaDerecha,origenY+alaInferior-anchuras[nAnchuras]+alaDerecha)
			local corte5 = Point2D(origenX+anchoA+anchuras[nAnchuras]+alaDerecha,origenY+alaInferior-alaDerecha)
			Contour:LineTo(corte1)
			Contour:LineTo(corte2)
			Contour:LineTo(corte3)
			Contour:LineTo(corte4)
			Contour:LineTo(corte5)
			
		else 
			local corte3 = Point2D(origenX+anchoA+anchuras[nAnchuras]+anchuras[nAnchuras],origenY+alaInferior-anchuras[nAnchuras])
			Contour:LineTo(corte1)
			Contour:LineTo(corte2)
			Contour:LineTo(corte3)
		end
		
	end
	
	local corte4 = Point2D(origenX+anchoA+anchuras[nAnchuras],origenY+alaInferior)
	local corte5 = Point2D(origenX+anchoA+anchuras[nAnchuras]+alaDerecha,origenY+alaInferior+alaDerecha)
	local corte6 = Point2D(origenX+anchoA+anchuras[nAnchuras]+alaDerecha,origenY+alaInferior+alturaPlaca-alaDerecha)
	local corte7 = Point2D(origenX+anchoA+anchuras[nAnchuras],origenY+alaInferior+alturaPlaca)
	local corte8 = Point2D(origenX+anchoA+anchuras[nAnchuras]+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	local corte9 = Point2D(origenX+anchoA+anchuras[nAnchuras],origenY+alaInferior+alturaPlaca+pliegueSuperior)
	
	Contour:LineTo(corte4)
	Contour:LineTo(corte5)
	Contour:LineTo(corte6)
	Contour:LineTo(corte7)
	Contour:LineTo(corte8)
	Contour:LineTo(corte9)
	
	
	
	
	--PARTE SUPERIOR------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	anchoA=anchura1+anchura2+anchura3+anchura4+anchura5
	
	--Anchura primera
	if anchuras[nAnchuras]>pliegueSuperior then
		local corte1 = Point2D(origenX+anchoA,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte2 = Point2D(origenX+anchoA-(anchuras[nAnchuras]-pliegueSuperior),origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte3 = Point2D(origenX+anchoA-(anchuras[nAnchuras]-pliegueSuperior),origenY+alaInferior+alturaPlaca+pliegueSuperior)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
	else
		local corte1 = Point2D(origenX+anchoA,origenY+alaInferior+alturaPlaca+anchuras[nAnchuras])
		local corte2 = Point2D(origenX+anchoA-anchuras[nAnchuras],origenY+alaInferior+alturaPlaca)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
	end
	
	
	anchoA=anchoA-anchuras[nAnchuras]
	local m=repeticiones+1
	for n=2, (repeticiones+1) do
		
		local corte1 = Point2D(origenX+anchoA,origenY+alaInferior+alturaPlaca)
		Contour:LineTo(corte1)
		if anchuras[m]>pliegueSuperior*2 then
			local corte2 = Point2D(origenX+anchoA-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local corte3 = Point2D(origenX+anchoA-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local corte4 = Point2D(origenX+anchoA-anchuras[m]+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local corte5 = Point2D(origenX+anchoA-anchuras[m]+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			Contour:LineTo(corte2)
			Contour:LineTo(corte3)
			Contour:LineTo(corte4)
			Contour:LineTo(corte5)
		else
			local corte2 = Point2D(origenX+anchoA-anchuras[m]/2,origenY+alaInferior+alturaPlaca+anchuras[m]/2)
			Contour:LineTo(corte2)
		end
		
		local corte4 = Point2D(origenX+anchoA-anchuras[m],origenY+alaInferior+alturaPlaca)
		Contour:LineTo(corte4)
		
		anchoA=anchoA-anchuras[m]
		m=m-1
	end	
	
	
	--Anchura ultima
	if anchura1>pliegueSuperior then
		local corte1 = Point2D(origenX+anchoA,origenY+alaInferior+alturaPlaca)
		local corte2 = Point2D(origenX+anchoA-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local corte3 = Point2D(origenX+anchoA-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte4 = Point2D(origenX,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
		
	else
		local corte1 = Point2D(origenX+anchoA,origenY+alaInferior+alturaPlaca)
		local corte2 = Point2D(origenX+anchoA-anchura1,origenY+alaInferior+alturaPlaca+anchura1)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
	end
	local corte4 = Point2D(origenX,origenY+alaInferior)
	Contour:LineTo(corte4)
	
	
	
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
----------------------------------------------------------------------------------------------- [REFERENCIA 009 - F6] -----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--[[
function OnLuaButton_crearFresado()
	crearFresado=1
	return true
end
function OnLuaButton_noCrearFresado()
	crearFresado=0
	return true
end
--]]

function dibujarFresado009(doc)
	
	
	local plieguesInf={pliegueInf1, pliegueInf2, pliegueInf3, pliegueInf4}
	
	--sacar el mayor pliegue
	pliegueInferior=pliegueInf1
	for n=1, 4 do
		if pliegueInferior<plieguesInf[n] then
			pliegueInferior=plieguesInf[n]
		end
	end
	
	
	
	--Puntos trayectoria 
	local Contour = Contour(0.0)
	
	local fresado11 = Point2D(origenX+alaIzquierda+pliegueIzq,origenY+alaInferior+pliegueInferior)
	local fresado12 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1,origenY+alaInferior+pliegueInferior)
	local fresado13 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2,origenY+alaInferior+pliegueInferior)
	local fresado14 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior)
	local fresado15 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior)
	
	local fresado16 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+pliegueIzq)
	local fresado17 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca)
	
	local fresado18 = Point2D(origenX+alaIzquierda+pliegueIzq,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado19 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado20 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado21 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado22 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior+alturaPlaca)
	
	dibujarFresado_auxiliar(doc,fresado11,fresado15)
	dibujarFresado_auxiliar(doc,fresado22,fresado17)
	dibujarFresado_auxiliar(doc,fresado17,fresado16)
	dibujarFresado_auxiliar(doc,fresado11,fresado18)
	dibujarFresado_auxiliar(doc,fresado19,fresado12)
	dibujarFresado_auxiliar(doc,fresado13,fresado20)
	dibujarFresado_auxiliar(doc,fresado21,fresado14)
	
	
	
	
	
	--anchura1 - Inferior
	if anchura1>pliegueInf1 then
		local fresado10 = Point2D(origenX+alaIzquierda,origenY+pliegueInferior+alaInferior-pliegueIzq) 
		local fresado1 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior-pliegueInf1)
		local fresado2 = Point2D(origenX+alaIzquierda+pliegueIzq,origenY+alaInferior+pliegueInferior-pliegueInf1)
		local fresado3 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1-pliegueInf1,origenY+alaInferior+pliegueInferior-pliegueInf1)
		
		dibujarFresado_auxiliar(doc,fresado10,fresado1)
		dibujarFresado_auxiliar(doc,fresado1,fresado3)
		dibujarFresado_auxiliar(doc,fresado2,fresado11)
	end 
	
	--anchura2 - Inferior
	if anchura2>(pliegueInf2*2) then
		local fresado4 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+pliegueInf2,origenY+alaInferior+pliegueInferior-pliegueInf2)
		local fresado5 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2-pliegueInf2,origenY+alaInferior+pliegueInferior-pliegueInf2)
		dibujarFresado_auxiliar(doc,fresado4,fresado5)
	end
	
	--anchura3 - Inferior
	if anchura3>(pliegueInf3*2) then
		local fresado6 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+pliegueInf3,origenY+alaInferior+pliegueInferior-pliegueInf3)
		local fresado7 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3-pliegueInf3,origenY+alaInferior+pliegueInferior-pliegueInf3)
		dibujarFresado_auxiliar(doc,fresado6,fresado7)
	end 
	
	--anchura4 - Inferior
	if anchura4>pliegueInf4 then
		local fresado8 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3+pliegueInf4,origenY+alaInferior+pliegueInferior-pliegueInf4)
		local fresado9 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior-pliegueInf4)
		dibujarFresado_auxiliar(doc,fresado8,fresado9)
	end 
	
	
	

	
		

	
	--anchura1 - Superior
	if anchura1>(pliegueSuperior*2) then
		local fresado25 = Point2D(origenX+alaIzquierda+pliegueIzq+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local fresado26 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado25,fresado26)
		
		if crearFresado==1 then --Esto es para hacer el fresado externo o no
			local fresado23 = Point2D(origenX+alaIzquierda+pliegueIzq+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local fresado24 = Point2D(origenX+alaIzquierda+pliegueIzq+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			dibujarFresado_auxiliar(doc,fresado23,fresado24)
			local fresado27 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			local fresado28 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado27,fresado28)
		end
	end
	
	--anchura2 - Superior
	if anchura2>(pliegueSuperior*2) then
		local fresado31 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local fresado32 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado31,fresado32)
		
		if crearFresado==1 then
			local fresado29 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local fresado30 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			dibujarFresado_auxiliar(doc,fresado29,fresado30)
			local fresado33 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			local fresado34 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado33,fresado34)
		end
	end
	
	--anchura3 - Superior
	if anchura3>pliegueSuperior*2 then
		local fresado37 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local fresado38 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado37,fresado38)
		
		if crearFresado==1 then
			local fresado35 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local fresado36 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			dibujarFresado_auxiliar(doc,fresado35,fresado36)
			local fresado39 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			local fresado40 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado39,fresado40)
		end
	end
	
	--anchura4 - Superior
	if anchura4>pliegueSuperior then
		local fresado43 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local fresado44 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado43,fresado44)
		
		if crearFresado==1 then
			local fresado41 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local fresado42 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			dibujarFresado_auxiliar(doc,fresado41,fresado42)
		end
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


function dibujarCorte009(doc)
	
	local plieguesInf={pliegueInf1, pliegueInf2, pliegueInf3, pliegueInf4, pliegueInf5, pliegueInf6, pliegueInf7}
	
	--sacar el mayor pliegue
	pliegueInferior=pliegueInf1
	for n=1, 7 do
		if pliegueInferior<plieguesInf[n] then
			pliegueInferior=plieguesInf[n]
		end
	end
	
	
	local Contour = Contour(0.0)
	
	--Corte inferior anchura1
	local corte1 = Point2D(origenX+alaIzquierda+pliegueIzq,origenY+alaInferior+pliegueInferior)
	Contour:AppendPoint(corte1)
	
	if anchura1>pliegueInf1 then
		local corte2 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior-pliegueIzq)
		local corte3 = Point2D(origenX,origenY+alaInferior+pliegueInferior-pliegueIzq)
		local corte4 = Point2D(origenX,origenY+alaInferior+pliegueInferior-pliegueInf1)
		local corte5 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior-pliegueInf1)
		local corte6 = Point2D(origenX+alaIzquierda,origenY+pliegueInferior-pliegueInf1)
		local corte7 = Point2D(origenX+alaIzquierda+pliegueIzq-alaInferior,origenY+pliegueInferior-pliegueInf1)
		local corte8 = Point2D(origenX+alaIzquierda+pliegueIzq,origenY+alaInferior+pliegueInferior-pliegueInf1)
		local corte9 = Point2D(origenX+alaIzquierda+pliegueIzq+alaInferior,origenY+pliegueInferior-pliegueInf1)
		local corte10 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1-pliegueInf1-alaInferior,origenY+pliegueInferior-pliegueInf1)
		local corte11 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1,origenY+alaInferior+pliegueInferior)
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
		
	end
	
	--Corte inferior anchura2
	if anchura2>pliegueInf2*2 then
		local corte12 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1,origenY+alaInferior+pliegueInferior)
		local corte13 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+pliegueInf2+alaInferior,origenY+pliegueInferior-pliegueInf2)
		local corte14 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2-pliegueInf2-alaInferior,origenY+pliegueInferior-pliegueInf2)
		local corte15 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte12)
		Contour:LineTo(corte13)
		Contour:LineTo(corte14)
		Contour:LineTo(corte15)
	else
		local corte12 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1,origenY+alaInferior+pliegueInferior)
		local corte13 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2/2,origenY+alaInferior+pliegueInferior-anchura2/2)
		local corte14 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte12)
		Contour:LineTo(corte13)
		Contour:LineTo(corte14)
	end
	
	--Corte inferior anchura3
	if anchura3>pliegueInf3*2 then
		local corte16 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2,origenY+alaInferior+pliegueInferior)
		local corte17 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+pliegueInf3+alaInferior,origenY+pliegueInferior-pliegueInf3)
		local corte18 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3-pliegueInf3-alaInferior,origenY+pliegueInferior-pliegueInf3)
		local corte19 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte16)
		Contour:LineTo(corte17)
		Contour:LineTo(corte18)
		Contour:LineTo(corte19)
	else
		local corte16 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2,origenY+alaInferior+pliegueInferior)
		local corte17 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3/2,origenY+alaInferior+pliegueInferior-anchura3/2)
		local corte18 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte16)
		Contour:LineTo(corte17)
		Contour:LineTo(corte18)
	end
	
	--Corte inferior anchura4
	if anchura4>pliegueInf4 then
		local corte20 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior)
		local corte21 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3+pliegueInf4+alaInferior,origenY+pliegueInferior-pliegueInf4)
		local corte22 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3+anchura4,origenY+pliegueInferior-pliegueInf4)
		local corte23 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte20)
		Contour:LineTo(corte21)
		Contour:LineTo(corte22)
		Contour:LineTo(corte23)
	else
		local corte20 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior)
		local corte21 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3+anchura4,origenY+pliegueInferior+alaInferior-anchura4)
		local corte22 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte20)
		Contour:LineTo(corte21)
		Contour:LineTo(corte22)
	end
	
	
	
	
	
	
	
	--Anchura 4 - Superior
	if anchura4>pliegueSuperior then
		local corte24 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte25 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte26 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte27 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte24)
		Contour:LineTo(corte25)
		Contour:LineTo(corte26)
		Contour:LineTo(corte27)
	else
		local corte24 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior+alturaPlaca+anchura4)
		local corte25 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte24)
		Contour:LineTo(corte25)
	end
	
	
	--Anchura 3 - Superior
	if anchura3>(pliegueSuperior*2) then
		local corte28 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte29 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte30 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte31 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte32 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte28)
		Contour:LineTo(corte29)
		Contour:LineTo(corte30)
		Contour:LineTo(corte31)
		Contour:LineTo(corte32)
	else
		local corte28 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3/2,origenY+alaInferior+pliegueInferior+alturaPlaca+anchura3/2)
		local corte29 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte28)
		Contour:LineTo(corte29)
	end
	
	
	--Anchura 2 - Superior
	if anchura2>(pliegueSuperior*2) then
		local corte33 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte34 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte35 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte36 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte37 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte33)
		Contour:LineTo(corte34)
		Contour:LineTo(corte35)
		Contour:LineTo(corte36)
		Contour:LineTo(corte37)
	else
		local corte33 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2/2,origenY+alaInferior+pliegueInferior+alturaPlaca+anchura2/2)
		local corte34 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte33)
		Contour:LineTo(corte34)
	end
	
	
	--Anchura 1 - Superior
	if anchura1>(pliegueSuperior*2) then
		local corte38 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte39 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte40 = Point2D(origenX+alaIzquierda+pliegueIzq+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte41 = Point2D(origenX+alaIzquierda+pliegueIzq+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte42 = Point2D(origenX+alaIzquierda+pliegueIzq,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte38)
		Contour:LineTo(corte39)
		Contour:LineTo(corte40)
		Contour:LineTo(corte41)
		Contour:LineTo(corte42)
	else
		local corte38 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1/2,origenY+alaInferior+pliegueInferior+alturaPlaca+anchura1/2)
		local corte39 = Point2D(origenX+alaIzquierda+pliegueIzq,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte38)
		Contour:LineTo(corte39)
	end
	
	
	
	
	local corte43 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueIzq)
	local corte44 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca)
	
	local corte45 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local corte46 = Point2D(origenX,origenY+alaInferior+pliegueInferior+pliegueIzq)
	local corte47 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+pliegueIzq)
	local corte48 = Point2D(origenX+alaIzquierda+pliegueIzq,origenY+alaInferior+pliegueInferior)
	
	Contour:LineTo(corte43)
	Contour:LineTo(corte44)
	Contour:LineTo(corte45)
	Contour:LineTo(corte46)
	Contour:LineTo(corte47)
	Contour:LineTo(corte48)
	
	
	
	
	
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








----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------ DIBUJAR BANDEJAS CLIENTES PERSONALIZADAS ----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- [REFERENCIA 010 - F7] -----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function dibujarFresado010(doc)
	
	
	local plieguesInf={pliegueInf1, pliegueInf2, pliegueInf3, pliegueInf4}
	
	--sacar el mayor pliegue
	pliegueInferior=pliegueInf1
	for n=1, 4 do
		if pliegueInferior<plieguesInf[n] then
			pliegueInferior=plieguesInf[n]
		end
	end
	
	
	
	--Puntos trayectoria 
	local Contour = Contour(0.0)
	
	local fresado11 = Point2D(origenX+anchura1,origenY+alaInferior+pliegueInferior)
	local fresado12 = Point2D(origenX+anchura1+anchura2,origenY+alaInferior+pliegueInferior)
	local fresado13 = Point2D(origenX+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior)
	local fresado14 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior)
	
	
	
	local fresado16 = Point2D(origenX,origenY+alaInferior+pliegueInferior) 
	local fresado17 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca)
	
	local fresado18 = Point2D(origenX+anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado19 = Point2D(origenX+anchura1+anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado20 = Point2D(origenX+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado21 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior+alturaPlaca)
	
	local fresado22 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	
	
	if anchura4>pliegueInf4 then
		local fresado15 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior-pliegueInf4-alaInferior)
		dibujarFresado_auxiliar(doc,fresado15,fresado22)
	else
		dibujarFresado_auxiliar(doc,fresado14,fresado22)
	end
	
	dibujarFresado_auxiliar(doc,fresado16,fresado14)
	dibujarFresado_auxiliar(doc,fresado20,fresado13)
	dibujarFresado_auxiliar(doc,fresado12,fresado19)
	dibujarFresado_auxiliar(doc,fresado18,fresado11)
	dibujarFresado_auxiliar(doc,fresado17,fresado21)
	
	
	
	
	
	
	--anchura1 - Inferior
	if anchura1>pliegueInf1 then
		--local fresado10 = Point2D(origenX,origenY+pliegueInferior+alaInferior) 
		local fresado1 = Point2D(origenX,origenY+alaInferior+pliegueInferior-pliegueInf1)
		--local fresado2 = Point2D(origenX,origenY+alaInferior+pliegueInferior-pliegueInf1)
		local fresado3 = Point2D(origenX+anchura1-pliegueInf1,origenY+alaInferior+pliegueInferior-pliegueInf1)
		
		--dibujarFresado_auxiliar(doc,fresado10,fresado1)
		dibujarFresado_auxiliar(doc,fresado1,fresado3)
		--dibujarFresado_auxiliar(doc,fresado2,fresado11)
	end 
	
	--anchura2 - Inferior
	if anchura2>(pliegueInf2*2) then
		local fresado4 = Point2D(origenX+anchura1+pliegueInf2,origenY+alaInferior+pliegueInferior-pliegueInf2)
		local fresado5 = Point2D(origenX+anchura1+anchura2-pliegueInf2,origenY+alaInferior+pliegueInferior-pliegueInf2)
		dibujarFresado_auxiliar(doc,fresado4,fresado5)
	end
	
	--anchura3 - Inferior
	if anchura3>(pliegueInf3*2) then
		local fresado6 = Point2D(origenX+anchura1+anchura2+pliegueInf3,origenY+alaInferior+pliegueInferior-pliegueInf3)
		local fresado7 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueInf3,origenY+alaInferior+pliegueInferior-pliegueInf3)
		dibujarFresado_auxiliar(doc,fresado6,fresado7)
	end 
	
	--anchura4 - Inferior
	if anchura4>pliegueInf4 then
		local fresado8 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueInf4,origenY+alaInferior+pliegueInferior-pliegueInf4)
		local fresado9 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior-pliegueInf4)
		dibujarFresado_auxiliar(doc,fresado8,fresado9)
	end 
	
	
	

	
	

	
	--anchura1 - Superior
	if anchura1>(pliegueSuperior*2) then
		local fresado25 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local fresado26 = Point2D(origenX+anchura1-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado25,fresado26)
		
		if crearFresado==1 then --Esto es para hacer el fresado externo o no
			local fresado27 = Point2D(origenX+anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			local fresado28 = Point2D(origenX+anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado27,fresado28)
		end
	end
	
	--anchura2 - Superior
	if anchura2>(pliegueSuperior*2) then
		local fresado31 = Point2D(origenX+anchura1+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local fresado32 = Point2D(origenX+anchura1+anchura2-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado31,fresado32)
		
		if crearFresado==1 then
			local fresado29 = Point2D(origenX+anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local fresado30 = Point2D(origenX+anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			dibujarFresado_auxiliar(doc,fresado29,fresado30)
			local fresado33 = Point2D(origenX+anchura1+anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			local fresado34 = Point2D(origenX+anchura1+anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado33,fresado34)
		end
	end
	
	--anchura3 - Superior
	if anchura3>pliegueSuperior*2 then
		local fresado37 = Point2D(origenX+anchura1+anchura2+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local fresado38 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado37,fresado38)
		
		if crearFresado==1 then
			local fresado35 = Point2D(origenX+anchura1+anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local fresado36 = Point2D(origenX+anchura1+anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			dibujarFresado_auxiliar(doc,fresado35,fresado36)
			local fresado39 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			local fresado40 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado39,fresado40)
		end
	end
	
	--anchura4 - Superior
	if anchura4>pliegueSuperior then
		local fresado43 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local fresado44 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado43,fresado44)
		
		if crearFresado==1 then
			local fresado41 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local fresado42 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			dibujarFresado_auxiliar(doc,fresado41,fresado42)
		end
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


function dibujarCorte010(doc)
	
	local plieguesInf={pliegueInf1, pliegueInf2, pliegueInf3, pliegueInf4}
	
	--sacar el mayor pliegue
	pliegueInferior=pliegueInf1
	for n=1, 4 do
		if pliegueInferior<plieguesInf[n] then
			pliegueInferior=plieguesInf[n]
		end
	end
	
	
	local Contour = Contour(0.0)
	
	--Corte inferior anchura1
	local corte1 = Point2D(origenX,origenY+alaInferior+pliegueInferior)
	Contour:AppendPoint(corte1)
	
	if anchura1>pliegueInf1 then
		local corte2 = Point2D(origenX,origenY+pliegueInferior-pliegueInf1)
		local corte3 = Point2D(origenX+anchura1-pliegueInf1-alaInferior,origenY+pliegueInferior-pliegueInf1)
		local corte4 = Point2D(origenX+anchura1,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
	else 
		local corte2 = Point2D(origenX,origenY+alaInferior+pliegueInferior-anchura1)
		local corte3 = Point2D(origenX+anchura1,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
	end
	
	
	--Corte inferior anchura2
	if anchura2>pliegueInf2*2 then
		local corte12 = Point2D(origenX+anchura1,origenY+alaInferior+pliegueInferior)
		local corte13 = Point2D(origenX+anchura1+pliegueInf2+alaInferior,origenY+pliegueInferior-pliegueInf2)
		local corte14 = Point2D(origenX+anchura1+anchura2-pliegueInf2-alaInferior,origenY+pliegueInferior-pliegueInf2)
		local corte15 = Point2D(origenX+anchura1+anchura2,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte12)
		Contour:LineTo(corte13)
		Contour:LineTo(corte14)
		Contour:LineTo(corte15)
	else
		local corte12 = Point2D(origenX+anchura1,origenY+alaInferior+pliegueInferior)
		local corte13 = Point2D(origenX+anchura1+anchura2/2,origenY+alaInferior+pliegueInferior-anchura2/2)
		local corte14 = Point2D(origenX+anchura1+anchura2,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte12)
		Contour:LineTo(corte13)
		Contour:LineTo(corte14)
	end
	
	
	--Corte inferior anchura3
	if anchura3>pliegueInf3*2 then
		local corte16 = Point2D(origenX+anchura1+anchura2,origenY+alaInferior+pliegueInferior)
		local corte17 = Point2D(origenX+anchura1+anchura2+pliegueInf3+alaInferior,origenY+pliegueInferior-pliegueInf3)
		local corte18 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueInf3-alaInferior,origenY+pliegueInferior-pliegueInf3)
		local corte19 = Point2D(origenX+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte16)
		Contour:LineTo(corte17)
		Contour:LineTo(corte18)
		Contour:LineTo(corte19)
	else
		local corte16 = Point2D(origenX+anchura1+anchura2,origenY+alaInferior+pliegueInferior)
		local corte17 = Point2D(origenX+anchura1+anchura2+anchura3/2,origenY+alaInferior+pliegueInferior-anchura3/2)
		local corte18 = Point2D(origenX+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte16)
		Contour:LineTo(corte17)
		Contour:LineTo(corte18)
	end
	
	--Corte inferior anchura4
	if anchura4>pliegueInf4 then
		if alaDerecha>pliegueInf4 then
			local corte20 = Point2D(origenX+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior)
			local corte21 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueInf4+alaInferior,origenY+pliegueInferior-pliegueInf4)
			local corte22 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+alaInferior,origenY+pliegueInferior-pliegueInf4)
			local corte23 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+pliegueInferior-pliegueInf4+alaInferior)
			local corte24 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+pliegueInf4/2,origenY+pliegueInferior-pliegueInf4+alaInferior+pliegueInf4/2)
			local corte25 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+pliegueInferior+alaInferior)
			Contour:LineTo(corte20)
			Contour:LineTo(corte21)
			Contour:LineTo(corte22)
			Contour:LineTo(corte23)
			Contour:LineTo(corte24)
			Contour:LineTo(corte25)
			
		else
			local corte20 = Point2D(origenX+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior)
			local corte21 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueInf4+alaInferior,origenY+pliegueInferior-pliegueInf4)
			local corte22 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+alaInferior,origenY+pliegueInferior-pliegueInf4)
			local corte23 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+pliegueInferior-pliegueInf4+alaInferior)
			local corte24 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+alaDerecha,origenY+pliegueInferior-pliegueInf4+alaInferior+alaDerecha)
			local corte25 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+alaDerecha,origenY+pliegueInferior-pliegueInf4+alaInferior+pliegueInferior-alaDerecha)
			local corte26 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+pliegueInferior-pliegueInf4+alaInferior+pliegueInferior)
			Contour:LineTo(corte20)
			Contour:LineTo(corte21)
			Contour:LineTo(corte22)
			Contour:LineTo(corte23)
			Contour:LineTo(corte24)
			Contour:LineTo(corte25)
			Contour:LineTo(corte26)
		end
	else --anchura4<pliegueInf4
		local corte20 = Point2D(origenX+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior)
		local corte21 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+pliegueInferior+alaInferior-anchura4)
		local corte22 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte20)
		Contour:LineTo(corte21)
		Contour:LineTo(corte22)
	end
	
	
	
	
	
	
	
	
	local corte27 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+alaDerecha,origenY+alaInferior+pliegueInferior+alaDerecha)
	local corte28 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+alaDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca-alaDerecha)
	local corte29 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior+alturaPlaca)
	
	local corte30 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	local corte31 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	local corte32 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
	local corte33 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
	local corte34 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	local corte35 = Point2D(origenX+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior+alturaPlaca)
	
	Contour:LineTo(corte27)
	Contour:LineTo(corte28)
	Contour:LineTo(corte29)
	Contour:LineTo(corte30)
	Contour:LineTo(corte31)
	Contour:LineTo(corte32)
	Contour:LineTo(corte33)
	Contour:LineTo(corte34)
	Contour:LineTo(corte35)
	
	
	









	--Anchura 3 - Superior
	if anchura3>(pliegueSuperior*2) then
		local corte28 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte29 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte30 = Point2D(origenX+anchura1+anchura2+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte31 = Point2D(origenX+anchura1+anchura2+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte32 = Point2D(origenX+anchura1+anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte28)
		Contour:LineTo(corte29)
		Contour:LineTo(corte30)
		Contour:LineTo(corte31)
		Contour:LineTo(corte32)
	else
		local corte28 = Point2D(origenX+anchura1+anchura2+anchura3/2,origenY+alaInferior+pliegueInferior+alturaPlaca+anchura3/2)
		local corte29 = Point2D(origenX+anchura1+anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte28)
		Contour:LineTo(corte29)
	end
	
	
	--Anchura 2 - Superior
	if anchura2>(pliegueSuperior*2) then
		local corte33 = Point2D(origenX+anchura1+anchura2-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte34 = Point2D(origenX+anchura1+anchura2-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte35 = Point2D(origenX+anchura1+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte36 = Point2D(origenX+anchura1+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte37 = Point2D(origenX+anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte33)
		Contour:LineTo(corte34)
		Contour:LineTo(corte35)
		Contour:LineTo(corte36)
		Contour:LineTo(corte37)
	else
		local corte33 = Point2D(origenX+anchura1+anchura2/2,origenY+alaInferior+pliegueInferior+alturaPlaca+anchura2/2)
		local corte34 = Point2D(origenX+anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte33)
		Contour:LineTo(corte34)
	end
	
	
	--Anchura 1 - Superior
	if anchura1>(pliegueSuperior*2) then
		local corte38 = Point2D(origenX+anchura1-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte39 = Point2D(origenX+anchura1-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte40 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte41 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte38)
		Contour:LineTo(corte39)
		Contour:LineTo(corte40)
		Contour:LineTo(corte41)
	else
		local corte38 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca+anchura1)
		local corte39 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte38)
		Contour:LineTo(corte39)
	end
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




----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------ DIBUJAR BANDEJAS CLIENTES PERSONALIZADAS ----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- [REFERENCIA 011 - F8] -----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function dibujarFresado011(doc)
	
	
	local plieguesInf={pliegueInf1, pliegueInf2, pliegueInf3, pliegueInf4, pliegueInf5}
	
	--sacar el mayor pliegue
	pliegueInferior=pliegueInf1
	for n=1, 5 do
		if pliegueInferior<plieguesInf[n] then
			pliegueInferior=plieguesInf[n]
		end
	end
	
	
	
	--Puntos trayectoria 
	local Contour = Contour(0.0)
	
	local fresado11 = Point2D(origenX+anchura1,origenY+alaInferior+pliegueInferior)
	local fresado12 = Point2D(origenX+anchura1+anchura2,origenY+alaInferior+pliegueInferior)
	local fresado13 = Point2D(origenX+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior)
	local fresado14 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior)
	local fresado15 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5,origenY+alaInferior+pliegueInferior) --nuevo
	
	
	
	local fresado16 = Point2D(origenX,origenY+alaInferior+pliegueInferior) 
	local fresado17 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca)
	
	local fresado18 = Point2D(origenX+anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado19 = Point2D(origenX+anchura1+anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado20 = Point2D(origenX+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado21 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado22 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5,origenY+alaInferior+pliegueInferior+alturaPlaca) --muevo
	
	local fresado23 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	
	
	
	
	
	if anchura5>pliegueInf5 then
		local fresado14b = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5,origenY+alaInferior+pliegueInferior-pliegueInf5-alaInferior)
		dibujarFresado_auxiliar(doc,fresado14b,fresado23)
	else
		dibujarFresado_auxiliar(doc,fresado15,fresado23)
	end
	
	dibujarFresado_auxiliar(doc,fresado16,fresado15)
	dibujarFresado_auxiliar(doc,fresado15,fresado22)
	dibujarFresado_auxiliar(doc,fresado21,fresado14)
	
	dibujarFresado_auxiliar(doc,fresado13,fresado20)
	
	dibujarFresado_auxiliar(doc,fresado19,fresado12)
	
	dibujarFresado_auxiliar(doc,fresado11,fresado18)
	
	dibujarFresado_auxiliar(doc,fresado17,fresado22)
	
	
	
	
	
	
	--anchura1 - Inferior
	if anchura1>pliegueInf1 then
		--local fresado10 = Point2D(origenX,origenY+pliegueInferior+alaInferior) 
		local fresado1 = Point2D(origenX,origenY+alaInferior+pliegueInferior-pliegueInf1)
		--local fresado2 = Point2D(origenX,origenY+alaInferior+pliegueInferior-pliegueInf1)
		local fresado3 = Point2D(origenX+anchura1-pliegueInf1,origenY+alaInferior+pliegueInferior-pliegueInf1)
		
		--dibujarFresado_auxiliar(doc,fresado10,fresado1)
		dibujarFresado_auxiliar(doc,fresado1,fresado3)
		--dibujarFresado_auxiliar(doc,fresado2,fresado11)
	end 
	
	--anchura2 - Inferior
	if anchura2>(pliegueInf2*2) then
		local fresado4 = Point2D(origenX+anchura1+pliegueInf2,origenY+alaInferior+pliegueInferior-pliegueInf2)
		local fresado5 = Point2D(origenX+anchura1+anchura2-pliegueInf2,origenY+alaInferior+pliegueInferior-pliegueInf2)
		dibujarFresado_auxiliar(doc,fresado4,fresado5)
	end
	
	--anchura3 - Inferior
	if anchura3>(pliegueInf3*2) then
		local fresado6 = Point2D(origenX+anchura1+anchura2+pliegueInf3,origenY+alaInferior+pliegueInferior-pliegueInf3)
		local fresado7 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueInf3,origenY+alaInferior+pliegueInferior-pliegueInf3)
		dibujarFresado_auxiliar(doc,fresado6,fresado7)
	end 
	
	--anchura4 - Inferior
	if anchura4>(pliegueInf4*2) then
		local fresado8 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueInf4,origenY+alaInferior+pliegueInferior-pliegueInf4)
		local fresado9 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4-pliegueInf4,origenY+alaInferior+pliegueInferior-pliegueInf4)
		dibujarFresado_auxiliar(doc,fresado8,fresado9)
	end 
	
	--anchura4 - Inferior
	if anchura5>pliegueInf5 then
		local fresado10 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+pliegueInf5,origenY+alaInferior+pliegueInferior-pliegueInf5)
		local fresado11 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5,origenY+alaInferior+pliegueInferior-pliegueInf5)
		dibujarFresado_auxiliar(doc,fresado10,fresado11)
	end 
	
	
	

	
	

	
	--anchura1 - Superior
	if anchura1>(pliegueSuperior*2) then
		local fresado25 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local fresado26 = Point2D(origenX+anchura1-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado25,fresado26)
		
		if crearFresado==1 then --Esto es para hacer el fresado externo o no
			local fresado27 = Point2D(origenX+anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			local fresado28 = Point2D(origenX+anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado27,fresado28)
		end
	end
	
	--anchura2 - Superior
	if anchura2>(pliegueSuperior*2) then
		local fresado31 = Point2D(origenX+anchura1+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local fresado32 = Point2D(origenX+anchura1+anchura2-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado31,fresado32)
		
		if crearFresado==1 then
			local fresado29 = Point2D(origenX+anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local fresado30 = Point2D(origenX+anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			dibujarFresado_auxiliar(doc,fresado29,fresado30)
			local fresado33 = Point2D(origenX+anchura1+anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			local fresado34 = Point2D(origenX+anchura1+anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado33,fresado34)
		end
	end
	
	--anchura3 - Superior
	if anchura3>pliegueSuperior*2 then
		local fresado37 = Point2D(origenX+anchura1+anchura2+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local fresado38 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado37,fresado38)
		
		if crearFresado==1 then
			local fresado35 = Point2D(origenX+anchura1+anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local fresado36 = Point2D(origenX+anchura1+anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			dibujarFresado_auxiliar(doc,fresado35,fresado36)
			local fresado39 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			local fresado40 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado39,fresado40)
		end
	end
	
	--anchura4 - Superior
	if anchura4>pliegueSuperior*2 then
		local fresado43 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local fresado44 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado43,fresado44)
		
		if crearFresado==1 then
			local fresado41 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local fresado42 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			dibujarFresado_auxiliar(doc,fresado41,fresado42)
			local fresado45 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			local fresado46 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado45,fresado46)
		end
	end
	
	--anchura5 - Superior
	if anchura5>pliegueSuperior then
		local fresado49 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local fresado50 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado49,fresado50)
		
		if crearFresado==1 then
			local fresado47 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local fresado48 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			dibujarFresado_auxiliar(doc,fresado47,fresado48)
		end
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


function dibujarCorte011(doc)
	
	local plieguesInf={pliegueInf1, pliegueInf2, pliegueInf3, pliegueInf4, pliegueInf5}
	
	--sacar el mayor pliegue
	pliegueInferior=pliegueInf1
	for n=1, 5 do
		if pliegueInferior<plieguesInf[n] then
			pliegueInferior=plieguesInf[n]
		end
	end
	
	
	local Contour = Contour(0.0)
	
	--Corte inferior anchura1
	local corte1 = Point2D(origenX,origenY+alaInferior+pliegueInferior)
	Contour:AppendPoint(corte1)
	
	if anchura1>pliegueInf1 then
		local corte2 = Point2D(origenX,origenY+pliegueInferior-pliegueInf1)
		local corte3 = Point2D(origenX+anchura1-pliegueInf1-alaInferior,origenY+pliegueInferior-pliegueInf1)
		local corte4 = Point2D(origenX+anchura1,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
	else 
		local corte2 = Point2D(origenX,origenY+alaInferior+pliegueInferior-anchura1)
		local corte3 = Point2D(origenX+anchura1,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
	end
	
	
	--Corte inferior anchura2
	if anchura2>pliegueInf2*2 then
		local corte12 = Point2D(origenX+anchura1,origenY+alaInferior+pliegueInferior)
		local corte13 = Point2D(origenX+anchura1+pliegueInf2+alaInferior,origenY+pliegueInferior-pliegueInf2)
		local corte14 = Point2D(origenX+anchura1+anchura2-pliegueInf2-alaInferior,origenY+pliegueInferior-pliegueInf2)
		local corte15 = Point2D(origenX+anchura1+anchura2,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte12)
		Contour:LineTo(corte13)
		Contour:LineTo(corte14)
		Contour:LineTo(corte15)
	else
		local corte12 = Point2D(origenX+anchura1,origenY+alaInferior+pliegueInferior)
		local corte13 = Point2D(origenX+anchura1+anchura2/2,origenY+alaInferior+pliegueInferior-anchura2/2)
		local corte14 = Point2D(origenX+anchura1+anchura2,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte12)
		Contour:LineTo(corte13)
		Contour:LineTo(corte14)
	end
	
	
	--Corte inferior anchura3
	if anchura3>pliegueInf3*2 then
		local corte16 = Point2D(origenX+anchura1+anchura2,origenY+alaInferior+pliegueInferior)
		local corte17 = Point2D(origenX+anchura1+anchura2+pliegueInf3+alaInferior,origenY+pliegueInferior-pliegueInf3)
		local corte18 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueInf3-alaInferior,origenY+pliegueInferior-pliegueInf3)
		local corte19 = Point2D(origenX+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte16)
		Contour:LineTo(corte17)
		Contour:LineTo(corte18)
		Contour:LineTo(corte19)
	else
		local corte16 = Point2D(origenX+anchura1+anchura2,origenY+alaInferior+pliegueInferior)
		local corte17 = Point2D(origenX+anchura1+anchura2+anchura3/2,origenY+alaInferior+pliegueInferior-anchura3/2)
		local corte18 = Point2D(origenX+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte16)
		Contour:LineTo(corte17)
		Contour:LineTo(corte18)
	end
	
	--Corte inferior anchura4
	if anchura4>pliegueInf4*2 then
		local corte16 = Point2D(origenX+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior)
		local corte17 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueInf4+alaInferior,origenY+pliegueInferior-pliegueInf4)
		local corte18 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4-pliegueInf4-alaInferior,origenY+pliegueInferior-pliegueInf4)
		local corte19 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte16)
		Contour:LineTo(corte17)
		Contour:LineTo(corte18)
		Contour:LineTo(corte19)
	else
		local corte16 = Point2D(origenX+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior)
		local corte17 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4/2,origenY+alaInferior+pliegueInferior-anchura4/2)
		local corte18 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte16)
		Contour:LineTo(corte17)
		Contour:LineTo(corte18)
	end
	
	--Corte inferior anchura5
	if anchura5>pliegueInf5 then
		if alaDerecha>pliegueInf5 then
			local corte20 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior)
			local corte21 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+pliegueInf5+alaInferior,origenY+pliegueInferior-pliegueInf5)
			local corte22 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+alaInferior,origenY+pliegueInferior-pliegueInf5)
			local corte23 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5,origenY+pliegueInferior-pliegueInf5+alaInferior)
			local corte24 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+pliegueInf5/2,origenY+pliegueInferior-pliegueInf5+alaInferior+pliegueInf5/2)
			local corte25 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5,origenY+pliegueInferior+alaInferior)
			Contour:LineTo(corte20)
			Contour:LineTo(corte21)
			Contour:LineTo(corte22)
			Contour:LineTo(corte23)
			Contour:LineTo(corte24)
			Contour:LineTo(corte25)
			
		else
			local corte20 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior)
			local corte21 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+pliegueInf5+alaInferior,origenY+pliegueInferior-pliegueInf5)
			local corte22 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+alaInferior,origenY+pliegueInferior-pliegueInf5)
			local corte23 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5,origenY+pliegueInferior-pliegueInf5+alaInferior)
			local corte24 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+alaDerecha,origenY+pliegueInferior-pliegueInf5+alaInferior+alaDerecha)
			local corte25 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+alaDerecha,origenY+pliegueInferior-pliegueInf5+alaInferior+pliegueInferior-alaDerecha)
			local corte26 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5,origenY+pliegueInferior-pliegueInf5+alaInferior+pliegueInferior)
			Contour:LineTo(corte20)
			Contour:LineTo(corte21)
			Contour:LineTo(corte22)
			Contour:LineTo(corte23)
			Contour:LineTo(corte24)
			Contour:LineTo(corte25)
			Contour:LineTo(corte26)
		end
	else --anchura5<pliegueInf5
		local corte20 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior)
		local corte21 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5,origenY+pliegueInferior+alaInferior-anchura5)
		local corte22 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte20)
		Contour:LineTo(corte21)
		Contour:LineTo(corte22)
	end
	
	
	
	
	
	
	
	
	local corte27 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+alaDerecha,origenY+alaInferior+pliegueInferior+alaDerecha)
	local corte28 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+alaDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca-alaDerecha)
	local corte29 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5,origenY+alaInferior+pliegueInferior+alturaPlaca)
	
	local corte30 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	local corte31 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	local corte32 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
	local corte33 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
	local corte34 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	local corte35 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior+alturaPlaca)
	
	Contour:LineTo(corte27)
	Contour:LineTo(corte28)
	Contour:LineTo(corte29)
	Contour:LineTo(corte30)
	Contour:LineTo(corte31)
	Contour:LineTo(corte32)
	Contour:LineTo(corte33)
	Contour:LineTo(corte34)
	Contour:LineTo(corte35)
	
	
	
	
	
	
	
	--Anchura 4 - Superior
	if anchura4>(pliegueSuperior*2) then
		local corte28 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte29 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte30 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte31 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte32 = Point2D(origenX+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte28)
		Contour:LineTo(corte29)
		Contour:LineTo(corte30)
		Contour:LineTo(corte31)
		Contour:LineTo(corte32)
	else
		local corte28 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4/2,origenY+alaInferior+pliegueInferior+alturaPlaca+anchura4/2)
		local corte29 = Point2D(origenX+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte28)
		Contour:LineTo(corte29)
	end
	

	--Anchura 3 - Superior
	if anchura3>(pliegueSuperior*2) then
		local corte28 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte29 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte30 = Point2D(origenX+anchura1+anchura2+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte31 = Point2D(origenX+anchura1+anchura2+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte32 = Point2D(origenX+anchura1+anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte28)
		Contour:LineTo(corte29)
		Contour:LineTo(corte30)
		Contour:LineTo(corte31)
		Contour:LineTo(corte32)
	else
		local corte28 = Point2D(origenX+anchura1+anchura2+anchura3/2,origenY+alaInferior+pliegueInferior+alturaPlaca+anchura3/2)
		local corte29 = Point2D(origenX+anchura1+anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte28)
		Contour:LineTo(corte29)
	end
	
	
	--Anchura 2 - Superior
	if anchura2>(pliegueSuperior*2) then
		local corte33 = Point2D(origenX+anchura1+anchura2-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte34 = Point2D(origenX+anchura1+anchura2-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte35 = Point2D(origenX+anchura1+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte36 = Point2D(origenX+anchura1+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte37 = Point2D(origenX+anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte33)
		Contour:LineTo(corte34)
		Contour:LineTo(corte35)
		Contour:LineTo(corte36)
		Contour:LineTo(corte37)
	else
		local corte33 = Point2D(origenX+anchura1+anchura2/2,origenY+alaInferior+pliegueInferior+alturaPlaca+anchura2/2)
		local corte34 = Point2D(origenX+anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte33)
		Contour:LineTo(corte34)
	end
	
	
	--Anchura 1 - Superior
	if anchura1>(pliegueSuperior*2) then
		local corte38 = Point2D(origenX+anchura1-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte39 = Point2D(origenX+anchura1-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte40 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte41 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte38)
		Contour:LineTo(corte39)
		Contour:LineTo(corte40)
		Contour:LineTo(corte41)
	else
		local corte38 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca+anchura1)
		local corte39 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte38)
		Contour:LineTo(corte39)
	end
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





----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------ DIBUJAR BANDEJAS CLIENTES PERSONALIZADAS ----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- [REFERENCIA 013 - F9] -----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


function dibujarFresado013(doc)
	
	
	--Puntos trayectoria 
	local Contour = Contour(0.0)
	
	local fresado11 = Point2D(origenX+alaIzquierda+pliegueIzq,origenY+alaInferior)
	local fresado12 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1,origenY+alaInferior)
	local fresado13 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2,origenY+alaInferior)
	local fresado14 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3,origenY+alaInferior)
	local fresado15 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior)
	
	local fresado16 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
	local fresado17 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca)
	
	local fresado18 = Point2D(origenX+alaIzquierda+pliegueIzq,origenY+alaInferior+alturaPlaca)
	local fresado19 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1,origenY+alaInferior+alturaPlaca)
	local fresado20 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2,origenY+alaInferior+alturaPlaca)
	local fresado21 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3,origenY+alaInferior+alturaPlaca)
	local fresado22 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+alturaPlaca)
	
	dibujarFresado_auxiliar(doc,fresado16,fresado15)
	dibujarFresado_auxiliar(doc,fresado22,fresado17)
	dibujarFresado_auxiliar(doc,fresado17,fresado16)
	dibujarFresado_auxiliar(doc,fresado11,fresado18)
	dibujarFresado_auxiliar(doc,fresado19,fresado12)
	dibujarFresado_auxiliar(doc,fresado13,fresado20)
	dibujarFresado_auxiliar(doc,fresado21,fresado14)
	
	
	
	
	
	
	--anchura1 - Superior
	if anchura1>(pliegueSuperior*2) then
		local fresado25 = Point2D(origenX+alaIzquierda+pliegueIzq+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado26 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado25,fresado26)
		
		if crearFresado==1 then --Esto es para hacer el fresado externo o no
			local fresado23 = Point2D(origenX+alaIzquierda+pliegueIzq+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local fresado24 = Point2D(origenX+alaIzquierda+pliegueIzq+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			dibujarFresado_auxiliar(doc,fresado23,fresado24)
			local fresado27 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado28 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado27,fresado28)
		end
	end
	
	--anchura2 - Superior
	if anchura2>(pliegueSuperior*2) then
		local fresado31 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado32 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado31,fresado32)
		
		if crearFresado==1 then
			local fresado29 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local fresado30 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			dibujarFresado_auxiliar(doc,fresado29,fresado30)
			local fresado33 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado34 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado33,fresado34)
		end
	end
	
	--anchura3 - Superior
	if anchura3>pliegueSuperior*2 then
		local fresado37 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado38 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado37,fresado38)
		
		if crearFresado==1 then
			local fresado35 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local fresado36 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			dibujarFresado_auxiliar(doc,fresado35,fresado36)
			local fresado39 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado40 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado39,fresado40)
		end
	end
	
	--anchura4 - Superior
	if anchura4>pliegueSuperior then
		local fresado43 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado44 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado43,fresado44)
		
		if crearFresado==1 then
			local fresado41 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local fresado42 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			dibujarFresado_auxiliar(doc,fresado41,fresado42)
		end
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



function dibujarCorte013(doc)
	
	local Contour = Contour(0.0)
	
	--Corte inferior
	local corte1 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
	Contour:AppendPoint(corte1)
	
	
	
	--Tramo pligue izquierda --Inferior
	if pliegueIzq > alaInferior then
		local corte2 = Point2D(origenX+alaIzquierda,origenY)
		local corte3 = Point2D(origenX+alaIzquierda+pliegueIzq-alaInferior,origenY)
		local corte4 = Point2D(origenX+alaIzquierda+pliegueIzq,origenY+alaInferior)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
	else
		local corte3 = Point2D(origenX+alaIzquierda,origenY+alaInferior-pliegueIzq)
		Contour:LineTo(corte3)
	end
	
	local corte4 = Point2D(origenX+alaIzquierda+pliegueIzq,origenY+alaInferior)
	Contour:LineTo(corte4)
	
	
	
	
	--Tramo anchura 1 --Inferior
	if anchura1 > alaInferior*2 then 
		local corte5 = Point2D(origenX+alaIzquierda+pliegueIzq+alaInferior,origenY)
		local corte6 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1-alaInferior,origenY)
		Contour:LineTo(corte5)
		Contour:LineTo(corte6)
	else 
		local corte5 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1/2,origenY+alaInferior-anchura1/2)
		Contour:LineTo(corte5)
	end
	local corte7 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1,origenY+alaInferior)
	Contour:LineTo(corte7)
	
	
	
	--Tramo anchura 2 --Inferior
	if anchura2 > alaInferior*2 then 
		local corte8 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+alaInferior,origenY)
		local corte9 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2-alaInferior,origenY)
		Contour:LineTo(corte8)
		Contour:LineTo(corte9)
	else 
		local corte8 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2/2,origenY+alaInferior-anchura2/2)
		Contour:LineTo(corte8)
	end
	local corte10 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2,origenY+alaInferior)
	Contour:LineTo(corte10)
	
	
	
	--Tramo anchura 3 --Inferior
	if anchura3 > alaInferior*2 then 
		local corte11 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+alaInferior,origenY)
		local corte12 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3-alaInferior,origenY)
		Contour:LineTo(corte11)
		Contour:LineTo(corte12)
	else
		local corte11 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3/2,origenY+alaInferior-anchura3/2)
		Contour:LineTo(corte11)
	end
	local corte13 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3,origenY+alaInferior)
	Contour:LineTo(corte13)
	
	
	
	--Tramo anchura 4 --Inferior
	if anchura4 > alaInferior then 
		local corte14 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3+alaInferior,origenY)
		local corte15 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3+anchura4,origenY)
		Contour:LineTo(corte14)
		Contour:LineTo(corte15)
	else
		local corte14 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior-anchura4)
		Contour:LineTo(corte14)
	end


	
	
	
	
	
	
	
	
	--Anchura 4 - Superior
	if anchura4>pliegueSuperior then
		local corte24 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte25 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte26 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local corte27 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3,origenY+alaInferior+alturaPlaca)
		Contour:LineTo(corte24)
		Contour:LineTo(corte25)
		Contour:LineTo(corte26)
		Contour:LineTo(corte27)
	else
		local corte24 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+alturaPlaca+anchura4)
		local corte25 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3,origenY+alaInferior+alturaPlaca)
		Contour:LineTo(corte24)
		Contour:LineTo(corte25)
	end
	
	
	--Anchura 3 - Superior
	if anchura3>(pliegueSuperior*2) then
		local corte28 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local corte29 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte30 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte31 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local corte32 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2,origenY+alaInferior+alturaPlaca)
		Contour:LineTo(corte28)
		Contour:LineTo(corte29)
		Contour:LineTo(corte30)
		Contour:LineTo(corte31)
		Contour:LineTo(corte32)
	else
		local corte28 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2+anchura3/2,origenY+alaInferior+alturaPlaca+anchura3/2)
		local corte29 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2,origenY+alaInferior+alturaPlaca)
		Contour:LineTo(corte28)
		Contour:LineTo(corte29)
	end
	
	
	--Anchura 2 - Superior
	if anchura2>(pliegueSuperior*2) then
		local corte33 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local corte34 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte35 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte36 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local corte37 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1,origenY+alaInferior+alturaPlaca)
		Contour:LineTo(corte33)
		Contour:LineTo(corte34)
		Contour:LineTo(corte35)
		Contour:LineTo(corte36)
		Contour:LineTo(corte37)
	else
		local corte33 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1+anchura2/2,origenY+alaInferior+alturaPlaca+anchura2/2)
		local corte34 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1,origenY+alaInferior+alturaPlaca)
		Contour:LineTo(corte33)
		Contour:LineTo(corte34)
	end
	
	
	--Anchura 1 - Superior
	if anchura1>(pliegueSuperior*2) then
		local corte38 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local corte39 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte40 = Point2D(origenX+alaIzquierda+pliegueIzq+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte41 = Point2D(origenX+alaIzquierda+pliegueIzq+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local corte42 = Point2D(origenX+alaIzquierda+pliegueIzq,origenY+alaInferior+alturaPlaca)
		Contour:LineTo(corte38)
		Contour:LineTo(corte39)
		Contour:LineTo(corte40)
		Contour:LineTo(corte41)
		Contour:LineTo(corte42)
	else
		local corte38 = Point2D(origenX+alaIzquierda+pliegueIzq+anchura1/2,origenY+alaInferior+alturaPlaca+anchura1/2)
		local corte39 = Point2D(origenX+alaIzquierda+pliegueIzq,origenY+alaInferior+alturaPlaca)
		Contour:LineTo(corte38)
		Contour:LineTo(corte39)
	end
	
	
	
	
	local corte43 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca+pliegueIzq)
	local corte44 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca)
	local corte45 = Point2D(origenX,origenY+alaInferior+alturaPlaca)
	local corte46 = Point2D(origenX,origenY+alaInferior)
	
	
	Contour:LineTo(corte43)
	Contour:LineTo(corte44)
	Contour:LineTo(corte45)
	Contour:LineTo(corte46)
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

















----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------- DIBUJAR BANDEJAS CLIENTES PERSONALIZADAS --------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------- [REFERENCIA 014 - F10] --------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


function dibujarFresado014(doc)
	
	--Puntos trayectoria 
	local Contour = Contour(0.0)
			--Son los mismos puntos que la figura 001 (el unico que cambia es fresado6 y fresado14)
	local fresado1 = Point2D(origenX+alaIzquierda,origenY+alaInferior) 
	local fresado2 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior)
	local fresado3 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior)
	local fresado4 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3,origenY+alaInferior)
	local fresado5 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior)
	
	
	
	
	
	local fresado6 = Point2D(origenX+alaIzquierda,origenY) --punto fresado abajo a la izquierda
	
	
	
	
	local fresado9 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca)
	local fresado10 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+alturaPlaca)
	local fresado11 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+alturaPlaca)
	local fresado12 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3,origenY+alaInferior+alturaPlaca)
	local fresado13 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+alturaPlaca)
	
	local fresado14 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca+pliegueSuperior)

	
	dibujarFresado_auxiliar(doc,fresado1,fresado5)
	dibujarFresado_auxiliar(doc,fresado9,fresado13)
	dibujarFresado_auxiliar(doc,fresado2,fresado10)
	dibujarFresado_auxiliar(doc,fresado3,fresado11)
	dibujarFresado_auxiliar(doc,fresado4,fresado12)
	dibujarFresado_auxiliar(doc,fresado6,fresado14)
	
	
	
	
	--anchura1
	if anchura1>pliegueSuperior then
		local fresado17 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado18 = Point2D(origenX+alaIzquierda+anchura1-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado17,fresado18)
		if crearFresado==1 then 
			local fresado19 = Point2D(origenX+alaIzquierda+anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado20 = Point2D(origenX+alaIzquierda+anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado19,fresado20)
		end
	end
	
	
	--anchura2
	if anchura2>pliegueSuperior*2 then
		
		local fresado23 = Point2D(origenX+alaIzquierda+anchura1+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado24 = Point2D(origenX+alaIzquierda+anchura1+anchura2-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado23,fresado24)
		if crearFresado==1 then 
			local fresado22 = Point2D(origenX+alaIzquierda+anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado21 = Point2D(origenX+alaIzquierda+anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado21,fresado22)
			local fresado25 = Point2D(origenX+alaIzquierda+anchura1+anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado26 = Point2D(origenX+alaIzquierda+anchura1+anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado25,fresado26)
		end
	end
	
	
	--anchura3
	if anchura3>pliegueSuperior*2 then
		local fresado29 = Point2D(origenX+alaIzquierda+anchura1+anchura2+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado30 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado29,fresado30)
		if crearFresado==1 then 
			local fresado28 = Point2D(origenX+alaIzquierda+anchura1+anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado27 = Point2D(origenX+alaIzquierda+anchura1+anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado28,fresado27)
			local fresado31 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado32 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado31,fresado32)
		end
	end
	
	
	--anchura4
	if anchura4>pliegueSuperior then
		local fresado35 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado36 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado35,fresado36)
		
		if crearFresado==1 then 
			local fresado34 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado33 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado33,fresado34)
		end
	end
	
	
	--]]
	
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



function dibujarCorte014(doc)

	
	local repeticiones
	local anchuras
	local nAnchuras

	repeticiones=2
	anchuras={anchura1,anchura2,anchura3,anchura4}
	nAnchuras=4 --numero de valores del vector "anchuras"
	anchura5=0
	
	
	
	
	
	
	
	local Contour = Contour(0.0)
	
	--PARTE INFERIOR-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	local corte1 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
	local corte2 = Point2D(origenX+alaIzquierda-alaInferior,origenY)
	local corte3 = Point2D(origenX+alaIzquierda+anchura1-alaInferior,origenY)
	local corte4 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior)
	Contour:AppendPoint(corte1)
	Contour:LineTo(corte2)
	Contour:LineTo(corte3)
	Contour:LineTo(corte4)
	
	
	--Bucle anchuras intermedias
	--local anchuras={anchura1,anchura2,anchura3,anchura4}
	--local repeticiones=2 --math.length(anchuras -2)
	local anchoA=anchuras[1]
	for n=2, (repeticiones+1) do
		local corte1 = Point2D(origenX+alaIzquierda+anchoA,origenY+alaInferior)
		Contour:LineTo(corte1)
		if anchuras[n]>alaInferior*2 then
			local corte2 = Point2D(origenX+alaIzquierda+anchoA+alaInferior,origenY)
			local corte3 = Point2D(origenX+alaIzquierda+anchoA+anchuras[n]-alaInferior,origenY)
			Contour:LineTo(corte2)
			Contour:LineTo(corte3)
			
		else
			local corte2 = Point2D(origenX+alaIzquierda+anchoA+anchuras[n]/2,origenY+alaInferior-anchuras[n]/2)
			Contour:LineTo(corte2)
		end
		
		local corte4 = Point2D(origenX+alaIzquierda+anchoA+anchuras[n],origenY+alaInferior)
		Contour:LineTo(corte4)
		
		anchoA=anchoA+anchuras[n]
	end	
	
	
	
	
	--Anchura ultima	
	if anchuras[nAnchuras]>alaInferior then --Para que acabe en pico o acabe en plano el ala inferior
		local corte1 = Point2D(origenX+alaIzquierda+anchoA,origenY+alaInferior)
		local corte2 = Point2D(origenX+alaIzquierda+anchoA+alaInferior,origenY)
		local corte3 = Point2D(origenX+alaIzquierda+anchoA+anchuras[nAnchuras],origenY)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)

	else
		local corte1 = Point2D(origenX+alaIzquierda+anchoA,origenY+alaInferior)
		local corte2 = Point2D(origenX+alaIzquierda+anchoA+anchuras[nAnchuras],origenY+alaInferior-anchuras[nAnchuras])
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
		
		
	end
	
	
	
	--PARTE SUPERIOR------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	anchoA=anchura1+anchura2+anchura3+anchura4+anchura5
	
	--Anchura primera
	if anchuras[nAnchuras]>pliegueSuperior then
		local corte1 = Point2D(origenX+alaIzquierda+anchoA,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte2 = Point2D(origenX+alaIzquierda+anchoA-(anchuras[nAnchuras]-pliegueSuperior),origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte3 = Point2D(origenX+alaIzquierda+anchoA-(anchuras[nAnchuras]-pliegueSuperior),origenY+alaInferior+alturaPlaca+pliegueSuperior)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
	else
		local corte1 = Point2D(origenX+alaIzquierda+anchoA,origenY+alaInferior+alturaPlaca+anchuras[nAnchuras])
		local corte2 = Point2D(origenX+alaIzquierda+anchoA-anchuras[nAnchuras],origenY+alaInferior+alturaPlaca)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
	end
	
	
	anchoA=anchoA-anchuras[nAnchuras]
	local m=repeticiones+1
	for n=2, (repeticiones+1) do
		
		local corte1 = Point2D(origenX+alaIzquierda+anchoA,origenY+alaInferior+alturaPlaca)
		Contour:LineTo(corte1)
		if anchuras[m]>pliegueSuperior*2 then
			local corte2 = Point2D(origenX+alaIzquierda+anchoA-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local corte3 = Point2D(origenX+alaIzquierda+anchoA-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local corte4 = Point2D(origenX+alaIzquierda+anchoA-anchuras[m]+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local corte5 = Point2D(origenX+alaIzquierda+anchoA-anchuras[m]+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			Contour:LineTo(corte2)
			Contour:LineTo(corte3)
			Contour:LineTo(corte4)
			Contour:LineTo(corte5)
		else
			local corte2 = Point2D(origenX+alaIzquierda+anchoA-anchuras[m]/2,origenY+alaInferior+alturaPlaca+anchuras[m]/2)
			Contour:LineTo(corte2)
		end
		
		local corte4 = Point2D(origenX+alaIzquierda+anchoA-anchuras[m],origenY+alaInferior+alturaPlaca)
		Contour:LineTo(corte4)
		
		anchoA=anchoA-anchuras[m]
		m=m-1
	end	
	
	
	--Anchura ultima
	if anchura1>pliegueSuperior then
		local corte1 = Point2D(origenX+alaIzquierda+anchoA,origenY+alaInferior+alturaPlaca)
		local corte2 = Point2D(origenX+alaIzquierda+anchoA-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local corte3 = Point2D(origenX+alaIzquierda+anchoA-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte4 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
		
	else
		local corte1 = Point2D(origenX+alaIzquierda+anchoA,origenY+alaInferior+alturaPlaca)
		local corte2 = Point2D(origenX+alaIzquierda+anchoA-anchura1,origenY+alaInferior+alturaPlaca+anchura1)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
	end
	
	
	
	local corte4 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	local corte5 = Point2D(origenX+alaIzquierda-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	local corte6 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca)
	local corte7 = Point2D(origenX,origenY+alaInferior+alturaPlaca-alaIzquierda)
	local corte8 = Point2D(origenX,origenY+alaInferior+alaIzquierda)
	local corte9 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
	
	Contour:LineTo(corte4)
	Contour:LineTo(corte5)
	Contour:LineTo(corte6)
	Contour:LineTo(corte7)
	Contour:LineTo(corte8)
	Contour:LineTo(corte9)

	
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
-------------------------------------------------------------------------------------- DIBUJAR BANDEJAS CLIENTES PERSONALIZADAS --------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------- [REFERENCIA 015 - F11] --------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


function dibujarFresado015(doc)
	
	
	local plieguesInf={pliegueInf1, pliegueInf2, pliegueInf3, pliegueInf4}
	
	--sacar el mayor pliegue
	pliegueInferior=pliegueInf1
	for n=1, 4 do
		if pliegueInferior<plieguesInf[n] then
			pliegueInferior=plieguesInf[n]
		end
	end
	
	
	
	--Puntos trayectoria 
	local Contour = Contour(0.0)
	
	local fresado11 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior)
	local fresado12 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior)
	local fresado13 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior)
	local fresado14 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior)
	
	
	
	local fresado16 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior) 
	local fresado17 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca)
	
	local fresado18 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado19 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado20 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado21 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior+alturaPlaca)
	
	local fresado22 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	
	
	--[[if anchura4>pliegueInf4 then
		local fresado15 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior-pliegueInf4-alaInferior)
		dibujarFresado_auxiliar(doc,fresado15,fresado22)
	else
		dibujarFresado_auxiliar(doc,fresado14,fresado22)
	end--]]
	local fresado2 = Point2D(origenX+alaIzquierda,origenY)
	
	dibujarFresado_auxiliar(doc,fresado16,fresado14)
	dibujarFresado_auxiliar(doc,fresado20,fresado13)
	dibujarFresado_auxiliar(doc,fresado12,fresado19)
	dibujarFresado_auxiliar(doc,fresado18,fresado11)
	dibujarFresado_auxiliar(doc,fresado17,fresado21)
	
	
	
	
	
	
	--anchura1 - Inferior
	if anchura1>pliegueInf1 then
		--local fresado10 = Point2D(origenX+alaIzquierda,origenY+pliegueInferior+alaInferior) 
		local fresado1 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior-pliegueInf1)
		--local fresado2 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior-pliegueInf1)
		local fresado3 = Point2D(origenX+alaIzquierda+anchura1-pliegueInf1,origenY+alaInferior+pliegueInferior-pliegueInf1)
		
		--dibujarFresado_auxiliar(doc,fresado10,fresado1)
		dibujarFresado_auxiliar(doc,fresado1,fresado3)
		--dibujarFresado_auxiliar(doc,fresado2,fresado11)
	end 
	
	--anchura2 - Inferior
	if anchura2>(pliegueInf2*2) then
		local fresado4 = Point2D(origenX+alaIzquierda+anchura1+pliegueInf2,origenY+alaInferior+pliegueInferior-pliegueInf2)
		local fresado5 = Point2D(origenX+alaIzquierda+anchura1+anchura2-pliegueInf2,origenY+alaInferior+pliegueInferior-pliegueInf2)
		dibujarFresado_auxiliar(doc,fresado4,fresado5)
	end
	
	--anchura3 - Inferior
	if anchura3>(pliegueInf3*2) then
		local fresado6 = Point2D(origenX+alaIzquierda+anchura1+anchura2+pliegueInf3,origenY+alaInferior+pliegueInferior-pliegueInf3)
		local fresado7 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3-pliegueInf3,origenY+alaInferior+pliegueInferior-pliegueInf3)
		dibujarFresado_auxiliar(doc,fresado6,fresado7)
	end 
	
	--anchura4 - Inferior
	if anchura4>pliegueInf4 then
		local fresado8 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+pliegueInf4,origenY+alaInferior+pliegueInferior-pliegueInf4)
		local fresado9 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior-pliegueInf4)
		dibujarFresado_auxiliar(doc,fresado8,fresado9)
	end 
	
	
	

	
	

	
	--anchura1 - Superior
	if anchura1>(pliegueSuperior*2) then
		local fresado25 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local fresado26 = Point2D(origenX+alaIzquierda+anchura1-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado25,fresado26)
		
		if crearFresado==1 then --Esto es para hacer el fresado externo o no
			local fresado27 = Point2D(origenX+alaIzquierda+anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			local fresado28 = Point2D(origenX+alaIzquierda+anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado27,fresado28)
		end
	end
	
	--anchura2 - Superior
	if anchura2>(pliegueSuperior*2) then
		local fresado31 = Point2D(origenX+alaIzquierda+anchura1+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local fresado32 = Point2D(origenX+alaIzquierda+anchura1+anchura2-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado31,fresado32)
		
		if crearFresado==1 then
			local fresado29 = Point2D(origenX+alaIzquierda+anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local fresado30 = Point2D(origenX+alaIzquierda+anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			dibujarFresado_auxiliar(doc,fresado29,fresado30)
			local fresado33 = Point2D(origenX+alaIzquierda+anchura1+anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			local fresado34 = Point2D(origenX+alaIzquierda+anchura1+anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado33,fresado34)
		end
	end
	
	--anchura3 - Superior
	if anchura3>pliegueSuperior*2 then
		local fresado37 = Point2D(origenX+alaIzquierda+anchura1+anchura2+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local fresado38 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado37,fresado38)
		
		if crearFresado==1 then
			local fresado35 = Point2D(origenX+alaIzquierda+anchura1+anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local fresado36 = Point2D(origenX+alaIzquierda+anchura1+anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			dibujarFresado_auxiliar(doc,fresado35,fresado36)
			local fresado39 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			local fresado40 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado39,fresado40)
		end
	end
	
	--anchura4 - Superior
	if anchura4>pliegueSuperior then
		local fresado43 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local fresado44 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado43,fresado44)
		
		if crearFresado==1 then
			local fresado41 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local fresado42 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			dibujarFresado_auxiliar(doc,fresado41,fresado42)
		end
	end
	
	
	local fresado2 = Point2D(origenX+alaIzquierda,origenY)
	local fresado25 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	dibujarFresado_auxiliar(doc,fresado2,fresado25)
	
	
	
	
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



function dibujarCorte015(doc)
	
	local plieguesInf={pliegueInf1, pliegueInf2, pliegueInf3, pliegueInf4}
	
	--sacar el mayor pliegue
	pliegueInferior=pliegueInf1
	for n=1, 4 do
		if pliegueInferior<plieguesInf[n] then
			pliegueInferior=plieguesInf[n]
		end
	end
	
	
	local Contour = Contour(0.0)
	
	--Corte inferior anchura1
	local corte1 = Point2D(origenX+alaIzquierda,origenY)
	Contour:AppendPoint(corte1)
	
	if anchura1>pliegueInf1 then
		local corte2 = Point2D(origenX+alaIzquierda,origenY+pliegueInferior-pliegueInf1)
		local corte3 = Point2D(origenX+alaIzquierda+anchura1-pliegueInf1-alaInferior,origenY+pliegueInferior-pliegueInf1)
		local corte4 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
	else 
		local corte2 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior-anchura1)
		local corte3 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
	end
	
	
	--Corte inferior anchura2
	if anchura2>pliegueInf2*2 then
		local corte12 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior)
		local corte13 = Point2D(origenX+alaIzquierda+anchura1+pliegueInf2+alaInferior,origenY+pliegueInferior-pliegueInf2)
		local corte14 = Point2D(origenX+alaIzquierda+anchura1+anchura2-pliegueInf2-alaInferior,origenY+pliegueInferior-pliegueInf2)
		local corte15 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte12)
		Contour:LineTo(corte13)
		Contour:LineTo(corte14)
		Contour:LineTo(corte15)
	else
		local corte12 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior)
		local corte13 = Point2D(origenX+alaIzquierda+anchura1+anchura2/2,origenY+alaInferior+pliegueInferior-anchura2/2)
		local corte14 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte12)
		Contour:LineTo(corte13)
		Contour:LineTo(corte14)
	end
	
	
	--Corte inferior anchura3
	if anchura3>pliegueInf3*2 then
		local corte16 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior)
		local corte17 = Point2D(origenX+alaIzquierda+anchura1+anchura2+pliegueInf3+alaInferior,origenY+pliegueInferior-pliegueInf3)
		local corte18 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3-pliegueInf3-alaInferior,origenY+pliegueInferior-pliegueInf3)
		local corte19 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte16)
		Contour:LineTo(corte17)
		Contour:LineTo(corte18)
		Contour:LineTo(corte19)
	else
		local corte16 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior)
		local corte17 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3/2,origenY+alaInferior+pliegueInferior-anchura3/2)
		local corte18 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte16)
		Contour:LineTo(corte17)
		Contour:LineTo(corte18)
	end
	
	--Corte inferior anchura4
	if anchura4>pliegueInf4 then
			local corte20 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior)
			local corte21 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+pliegueInf4+alaInferior,origenY+pliegueInferior-pliegueInf4)
			local corte22 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4,origenY+pliegueInferior-pliegueInf4)
			local corte23 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4,origenY+pliegueInferior-pliegueInf4+alaInferior)
			local corte24 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4,origenY+pliegueInferior-pliegueInf4+alaInferior)
			local corte25 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4,origenY+pliegueInferior-pliegueInf4+alaInferior+pliegueInferior)
			local corte26 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4,origenY+pliegueInferior-pliegueInf4+alaInferior+pliegueInferior)
			Contour:LineTo(corte20)
			Contour:LineTo(corte21)
			Contour:LineTo(corte22)
			Contour:LineTo(corte23)
			Contour:LineTo(corte24)
			Contour:LineTo(corte25)
			Contour:LineTo(corte26)
	else --anchura4<pliegueInf4
		local corte20 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior)
		local corte21 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4,origenY+pliegueInferior+alaInferior-anchura4)
		local corte22 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte20)
		Contour:LineTo(corte21)
		Contour:LineTo(corte22)
	end
	
	
	
	
	
	
	

	--Anchura 4 - Superior
	if anchura4>pliegueSuperior then
		local corte32 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte33 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte34 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte35 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte32)
		Contour:LineTo(corte33)
		Contour:LineTo(corte34)
		Contour:LineTo(corte35)
	else --anchura4<pliegueSuperior
		local corte32 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior+alturaPlaca+anchura4)
		local corte33 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte32)
		Contour:LineTo(corte33)
	end




	--Anchura 3 - Superior
	if anchura3>(pliegueSuperior*2) then
		local corte28 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte29 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte30 = Point2D(origenX+alaIzquierda+anchura1+anchura2+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte31 = Point2D(origenX+alaIzquierda+anchura1+anchura2+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte32 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte28)
		Contour:LineTo(corte29)
		Contour:LineTo(corte30)
		Contour:LineTo(corte31)
		Contour:LineTo(corte32)
	else
		local corte28 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3/2,origenY+alaInferior+pliegueInferior+alturaPlaca+anchura3/2)
		local corte29 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte28)
		Contour:LineTo(corte29)
	end
	
	
	--Anchura 2 - Superior
	if anchura2>(pliegueSuperior*2) then
		local corte33 = Point2D(origenX+alaIzquierda+anchura1+anchura2-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte34 = Point2D(origenX+alaIzquierda+anchura1+anchura2-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte35 = Point2D(origenX+alaIzquierda+anchura1+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte36 = Point2D(origenX+alaIzquierda+anchura1+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte37 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte33)
		Contour:LineTo(corte34)
		Contour:LineTo(corte35)
		Contour:LineTo(corte36)
		Contour:LineTo(corte37)
	else
		local corte33 = Point2D(origenX+alaIzquierda+anchura1+anchura2/2,origenY+alaInferior+pliegueInferior+alturaPlaca+anchura2/2)
		local corte34 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte33)
		Contour:LineTo(corte34)
	end
	
	
	--Anchura 1 - Superior
	if anchura1>(pliegueSuperior*2) then
		local corte38 = Point2D(origenX+alaIzquierda+anchura1-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte39 = Point2D(origenX+alaIzquierda+anchura1-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte40 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte41 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		Contour:LineTo(corte38)
		Contour:LineTo(corte39)
		Contour:LineTo(corte40)
		Contour:LineTo(corte41)
	else
		local corte38 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+anchura1)
		local corte39 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		Contour:LineTo(corte38)
		Contour:LineTo(corte39)
	end
	
	
	
	local corte40 = Point2D(origenX+alaIzquierda-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	local corte41 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local corte42 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca-alaIzquierda)
	local corte43 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alaIzquierda)
	local corte44 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior)
	local corte45 = Point2D(origenX,origenY+alaInferior+pliegueInferior-alaIzquierda)
	local corte46 = Point2D(origenX,origenY+alaInferior+alaIzquierda)
	local corte47 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
	local corte48 = Point2D(origenX+alaIzquierda-alaInferior,origenY)
	local corte49 = Point2D(origenX+alaIzquierda,origenY)
	
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









----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------- DIBUJAR BANDEJAS CLIENTES PERSONALIZADAS --------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------- [REFERENCIA 016 - F12] --------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


function dibujarFresado016(doc)
	anchura4=0
	anchura5=0
	
	--Puntos trayectoria 
	local Contour = Contour(0.0)
			--Son los mismos puntos que la figura 001 (el unico que cambia es fresado6 y fresado14)
	local fresado1 = Point2D(origenX+alaIzquierda,origenY+alaInferior) 
	local fresado2 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior)
	local fresado3 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior)
	local fresado4 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3,origenY+alaInferior)
	local fresado5 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior)
	
	
	
	
	
	
	local fresado6 = Point2D(origenX+alaIzquierda,origenY) --punto fresado abajo a la izquierda
	
	local fresado7 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4+pliegueDer,origenY+alaInferior)
	
	
	
	local fresado9 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca)
	local fresado10 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+alturaPlaca)
	local fresado11 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+alturaPlaca)
	local fresado12 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3,origenY+alaInferior+alturaPlaca)
	--local fresado13 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+alturaPlaca)
	
	local fresado14 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca+pliegueSuperior)

	local fresado13 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4+pliegueDer,origenY+alaInferior+alturaPlaca)
	
	dibujarFresado_auxiliar(doc,fresado1,fresado7)
	dibujarFresado_auxiliar(doc,fresado9,fresado13)
	dibujarFresado_auxiliar(doc,fresado7,fresado13)
	dibujarFresado_auxiliar(doc,fresado2,fresado10)
	dibujarFresado_auxiliar(doc,fresado3,fresado11)
	dibujarFresado_auxiliar(doc,fresado4,fresado12)
	dibujarFresado_auxiliar(doc,fresado6,fresado14)
	
	
	
	
	--anchura1
	if anchura1>pliegueSuperior then
		local fresado17 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado18 = Point2D(origenX+alaIzquierda+anchura1-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado17,fresado18)
		if crearFresado==1 then 
			local fresado19 = Point2D(origenX+alaIzquierda+anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado20 = Point2D(origenX+alaIzquierda+anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado19,fresado20)
		end
	end
	
	
	--anchura2
	if anchura2>pliegueSuperior*2 then
		
		local fresado23 = Point2D(origenX+alaIzquierda+anchura1+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado24 = Point2D(origenX+alaIzquierda+anchura1+anchura2-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado23,fresado24)
		if crearFresado==1 then 
			local fresado22 = Point2D(origenX+alaIzquierda+anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado21 = Point2D(origenX+alaIzquierda+anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado21,fresado22)
			local fresado25 = Point2D(origenX+alaIzquierda+anchura1+anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado26 = Point2D(origenX+alaIzquierda+anchura1+anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado25,fresado26)
		end
	end
	
	
	--anchura3
	if anchura3>pliegueSuperior*2 then
		local fresado29 = Point2D(origenX+alaIzquierda+anchura1+anchura2+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado30 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado29,fresado30)
		if crearFresado==1 then 
			local fresado28 = Point2D(origenX+alaIzquierda+anchura1+anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado27 = Point2D(origenX+alaIzquierda+anchura1+anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado28,fresado27)
			local fresado31 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado32 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado31,fresado32)
		end
	end
	
	
	--anchura4
	if anchura4>pliegueSuperior then
		local fresado35 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado36 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado35,fresado36)
		
		if crearFresado==1 then 
			local fresado34 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado33 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado33,fresado34)
		end
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






function dibujarCorte016(doc)

	
	local repeticiones
	local anchuras
	local nAnchuras

	repeticiones=1
	anchuras={anchura1,anchura2,anchura3}
	nAnchuras=3 --numero de valores del vector "anchuras"
	anchura5=0
	anchura4=0
	
	
	
	
	
	
	local Contour = Contour(0.0)
	
	--PARTE INFERIOR-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	local corte1 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
	local corte2 = Point2D(origenX+alaIzquierda-alaInferior,origenY)
	local corte3 = Point2D(origenX+alaIzquierda+anchura1-alaInferior,origenY)
	local corte4 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior)
	Contour:AppendPoint(corte1)
	Contour:LineTo(corte2)
	Contour:LineTo(corte3)
	Contour:LineTo(corte4)
	
	
	--Bucle anchuras intermedias
	--local anchuras={anchura1,anchura2,anchura3,anchura4}
	--local repeticiones=2 --math.length(anchuras -2)
	local anchoA=anchuras[1]
	for n=2, (repeticiones+1) do
		local corte1 = Point2D(origenX+alaIzquierda+anchoA,origenY+alaInferior)
		Contour:LineTo(corte1)
		if anchuras[n]>alaInferior*2 then
			local corte2 = Point2D(origenX+alaIzquierda+anchoA+alaInferior,origenY)
			local corte3 = Point2D(origenX+alaIzquierda+anchoA+anchuras[n]-alaInferior,origenY)
			Contour:LineTo(corte2)
			Contour:LineTo(corte3)
			
		else
			local corte2 = Point2D(origenX+alaIzquierda+anchoA+anchuras[n]/2,origenY+alaInferior-anchuras[n]/2)
			Contour:LineTo(corte2)
		end
		
		local corte4 = Point2D(origenX+alaIzquierda+anchoA+anchuras[n],origenY+alaInferior)
		Contour:LineTo(corte4)
		
		anchoA=anchoA+anchuras[n]
	end	
		
	
	--Anchura ultima	
	if anchuras[nAnchuras]>alaInferior then --Para que acabe en pico o acabe en plano el ala inferior
		local corte1 = Point2D(origenX+alaIzquierda+anchoA,origenY+alaInferior)
		local corte2 = Point2D(origenX+alaIzquierda+anchoA+alaInferior,origenY)
		local corte3 = Point2D(origenX+alaIzquierda+anchoA+anchuras[nAnchuras]-alaInferior,origenY)
		local corte4 = Point2D(origenX+alaIzquierda+anchoA+anchuras[nAnchuras],origenY+alaInferior)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
	else
		local corte1 = Point2D(origenX+alaIzquierda+anchoA,origenY+alaInferior)
		local corte2 = Point2D(origenX+alaIzquierda+anchoA+anchuras[nAnchuras]/2,origenY+alaInferior-anchuras[nAnchuras]/2)
		local corte3 = Point2D(origenX+alaIzquierda+anchoA+anchuras[nAnchuras],origenY+alaInferior)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
	end
	
	local corte1 = Point2D(origenX+alaIzquierda+anchoA+anchuras[nAnchuras]+pliegueDer,origenY+alaInferior-pliegueDer)
	local corte2 = Point2D(origenX+alaIzquierda+anchoA+anchuras[nAnchuras]+pliegueDer,origenY+alaInferior)
	local corte3 = Point2D(origenX+alaIzquierda+anchoA+anchuras[nAnchuras]+pliegueDer+alaDerecha,origenY+alaInferior)
	local corte4 = Point2D(origenX+alaIzquierda+anchoA+anchuras[nAnchuras]+pliegueDer+alaDerecha,origenY+alaInferior+alturaPlaca)
	local corte5 = Point2D(origenX+alaIzquierda+anchoA+anchuras[nAnchuras]+pliegueDer,origenY+alaInferior+alturaPlaca)
	local corte6 = Point2D(origenX+alaIzquierda+anchoA+anchuras[nAnchuras]+pliegueDer,origenY+alaInferior+alturaPlaca+pliegueDer)
	local corte7 = Point2D(origenX+alaIzquierda+anchoA+anchuras[nAnchuras],origenY+alaInferior+alturaPlaca)
	
	Contour:LineTo(corte1)
	Contour:LineTo(corte2)
	Contour:LineTo(corte3)
	Contour:LineTo(corte4)
	Contour:LineTo(corte5)
	Contour:LineTo(corte6)
	Contour:LineTo(corte7)
	
	
	
	
	
	--PARTE SUPERIOR------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	anchoA=anchura1+anchura2+anchura3
	
	--Anchura primera
	if anchuras[nAnchuras]>pliegueSuperior then
		local corte1 = Point2D(origenX+alaIzquierda+anchoA,origenY+alaInferior+alturaPlaca)
		local corte2 = Point2D(origenX+alaIzquierda+anchoA-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local corte3 = Point2D(origenX+alaIzquierda+anchoA-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte4 = Point2D(origenX+alaIzquierda+anchoA-(anchuras[nAnchuras]-pliegueSuperior),origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte5 = Point2D(origenX+alaIzquierda+anchoA-(anchuras[nAnchuras]-pliegueSuperior),origenY+alaInferior+alturaPlaca+pliegueSuperior)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
		Contour:LineTo(corte5)
	else
		local corte1 = Point2D(origenX+alaIzquierda+anchoA-anchuras[nAnchuras]/2,origenY+alaInferior+alturaPlaca+anchuras[nAnchuras]/2)
		local corte2 = Point2D(origenX+alaIzquierda+anchoA-anchuras[nAnchuras],origenY+alaInferior+alturaPlaca)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
	end
	
	
	--Anchuras intermedias
	anchoA=anchoA-anchuras[nAnchuras]
	local m=repeticiones+1
	for n=2, (repeticiones+1) do
		
		local corte1 = Point2D(origenX+alaIzquierda+anchoA,origenY+alaInferior+alturaPlaca)
		Contour:LineTo(corte1)
		if anchuras[m]>pliegueSuperior*2 then
			local corte2 = Point2D(origenX+alaIzquierda+anchoA-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local corte3 = Point2D(origenX+alaIzquierda+anchoA-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local corte4 = Point2D(origenX+alaIzquierda+anchoA-anchuras[m]+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local corte5 = Point2D(origenX+alaIzquierda+anchoA-anchuras[m]+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			Contour:LineTo(corte2)
			Contour:LineTo(corte3)
			Contour:LineTo(corte4)
			Contour:LineTo(corte5)
		else
			local corte2 = Point2D(origenX+alaIzquierda+anchoA-anchuras[m]/2,origenY+alaInferior+alturaPlaca+anchuras[m]/2)
			Contour:LineTo(corte2)
		end
		
		local corte4 = Point2D(origenX+alaIzquierda+anchoA-anchuras[m],origenY+alaInferior+alturaPlaca)
		Contour:LineTo(corte4)
		
		anchoA=anchoA-anchuras[m]
		m=m-1
	end	
	
	
	--Anchura ultima
	if anchura1>pliegueSuperior then
		local corte1 = Point2D(origenX+alaIzquierda+anchoA,origenY+alaInferior+alturaPlaca)
		local corte2 = Point2D(origenX+alaIzquierda+anchoA-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local corte3 = Point2D(origenX+alaIzquierda+anchoA-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte4 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
		
	else
		local corte1 = Point2D(origenX+alaIzquierda+anchoA,origenY+alaInferior+alturaPlaca)
		local corte2 = Point2D(origenX+alaIzquierda+anchoA-anchura1,origenY+alaInferior+alturaPlaca+anchura1)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
	end
	
	
	
	local corte4 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	local corte5 = Point2D(origenX+alaIzquierda-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	local corte6 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca)
	local corte7 = Point2D(origenX,origenY+alaInferior+alturaPlaca-alaIzquierda)
	local corte8 = Point2D(origenX,origenY+alaInferior+alaIzquierda)
	local corte9 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
	
	Contour:LineTo(corte4)
	Contour:LineTo(corte5)
	Contour:LineTo(corte6)
	Contour:LineTo(corte7)
	Contour:LineTo(corte8)
	Contour:LineTo(corte9)

	
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
-------------------------------------------------------------------------------------- DIBUJAR BANDEJAS CLIENTES PERSONALIZADAS --------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------- [REFERENCIA 017 - F13] --------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



function dibujarFresado017(doc)
	
	
	local plieguesInf={pliegueInf1, pliegueInf2, pliegueInf3, pliegueInf4}
	
	--sacar el mayor pliegue
	pliegueInferior=pliegueInf1
	for n=1, 4 do
		if pliegueInferior<plieguesInf[n] then
			pliegueInferior=plieguesInf[n]
		end
	end
	
	
	pliegueInf4=0
	
	
	--Puntos trayectoria 
	local Contour = Contour(0.0)
	
	local fresado11 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior)
	local fresado12 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior)
	local fresado13 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior)
	local fresado14 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior)
	
	
	
	local fresado16 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior) 
	local fresado17 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca)
	
	local fresado18 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado19 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado20 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado21 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior+alturaPlaca)
	
	local fresado22 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	
	
	--[[if anchura4>pliegueInf4 then
		local fresado15 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior-pliegueInf4-alaInferior)
		dibujarFresado_auxiliar(doc,fresado15,fresado22)
	else
		dibujarFresado_auxiliar(doc,fresado14,fresado22)
	end--]]
	
	local fresado2 = Point2D(origenX+alaIzquierda,origenY)
	
	dibujarFresado_auxiliar(doc,fresado16,fresado14)
	--dibujarFresado_auxiliar(doc,fresado20,fresado13)
	dibujarFresado_auxiliar(doc,fresado12,fresado19)
	dibujarFresado_auxiliar(doc,fresado18,fresado11)
	dibujarFresado_auxiliar(doc,fresado17,fresado21)
	

	
	
	
	--anchura1 - Inferior
	if anchura1>pliegueInf1 then
		--local fresado10 = Point2D(origenX+alaIzquierda,origenY+pliegueInferior+alaInferior) 
		local fresado1 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior-pliegueInf1)
		--local fresado2 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior-pliegueInf1)
		local fresado3 = Point2D(origenX+alaIzquierda+anchura1-pliegueInf1,origenY+alaInferior+pliegueInferior-pliegueInf1)
		
		--dibujarFresado_auxiliar(doc,fresado10,fresado1)
		dibujarFresado_auxiliar(doc,fresado1,fresado3)
		--dibujarFresado_auxiliar(doc,fresado2,fresado11)
	end 
	
	--anchura2 - Inferior
	if anchura2>(pliegueInf2*2) then
		local fresado4 = Point2D(origenX+alaIzquierda+anchura1+pliegueInf2,origenY+alaInferior+pliegueInferior-pliegueInf2)
		local fresado5 = Point2D(origenX+alaIzquierda+anchura1+anchura2-pliegueInf2,origenY+alaInferior+pliegueInferior-pliegueInf2)
		dibujarFresado_auxiliar(doc,fresado4,fresado5)
	end
	
	--anchura3 - Inferior
	if anchura3>(pliegueInf3) then
		local fresado6 = Point2D(origenX+alaIzquierda+anchura1+anchura2+pliegueInf3,origenY+alaInferior+pliegueInferior-pliegueInf3)
		local fresado7 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+pliegueDer,origenY+alaInferior+pliegueInferior-pliegueInf3) --
		dibujarFresado_auxiliar(doc,fresado6,fresado7)
	end 
	
	
	
	
	
	
	--Puntos extra para esta pieza
	local fresado7 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+pliegueDer,origenY+alaInferior+pliegueInferior-pliegueInf3)
	local fresado8 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+pliegueDer,origenY+alaInferior+pliegueInferior-pliegueDer)
	dibujarFresado_auxiliar(doc,fresado7,fresado8)
	
	local fresado9 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+pliegueDer,origenY+alaInferior+pliegueInferior+pliegueDer)
	local fresado10 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+pliegueDer,origenY+alaInferior+pliegueInferior+alturaPlaca)
	dibujarFresado_auxiliar(doc,fresado9,fresado10)
	
	dibujarFresado_auxiliar(doc,fresado21,fresado10)
	
	local fresado11 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3,origenY+alaInferior)
	dibujarFresado_auxiliar(doc,fresado20,fresado11)
	
	
	
	
	
	
	

	
	--anchura1 - Superior
	if anchura1>(pliegueSuperior*2) then
		local fresado25 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local fresado26 = Point2D(origenX+alaIzquierda+anchura1-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado25,fresado26)
		
		if crearFresado==1 then --Esto es para hacer el fresado externo o no
			local fresado27 = Point2D(origenX+alaIzquierda+anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			local fresado28 = Point2D(origenX+alaIzquierda+anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado27,fresado28)
		end
	end
	
	--anchura2 - Superior
	if anchura2>(pliegueSuperior*2) then
		local fresado31 = Point2D(origenX+alaIzquierda+anchura1+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local fresado32 = Point2D(origenX+alaIzquierda+anchura1+anchura2-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado31,fresado32)
		
		if crearFresado==1 then
			local fresado29 = Point2D(origenX+alaIzquierda+anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local fresado30 = Point2D(origenX+alaIzquierda+anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			dibujarFresado_auxiliar(doc,fresado29,fresado30)
			local fresado33 = Point2D(origenX+alaIzquierda+anchura1+anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			local fresado34 = Point2D(origenX+alaIzquierda+anchura1+anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado33,fresado34)
		end
	end
	
	--anchura3 - Superior
	if anchura3>pliegueSuperior*2 then
		local fresado37 = Point2D(origenX+alaIzquierda+anchura1+anchura2+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local fresado38 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado37,fresado38)
		
		if crearFresado==1 then
			local fresado35 = Point2D(origenX+alaIzquierda+anchura1+anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local fresado36 = Point2D(origenX+alaIzquierda+anchura1+anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			dibujarFresado_auxiliar(doc,fresado35,fresado36)
			local fresado39 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			local fresado40 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado39,fresado40)
		end
	end
	
	
	local fresado2 = Point2D(origenX+alaIzquierda,origenY)
	local fresado25 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	dibujarFresado_auxiliar(doc,fresado2,fresado25)
	
	
	
	
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



function dibujarCorte017(doc)
	
	local plieguesInf={pliegueInf1, pliegueInf2, pliegueInf3, pliegueInf4}
	
	--sacar el mayor pliegue
	pliegueInferior=pliegueInf1
	for n=1, 4 do
		if pliegueInferior<plieguesInf[n] then
			pliegueInferior=plieguesInf[n]
		end
	end
	
	
	local Contour = Contour(0.0)
	
	--Corte inferior anchura1
	local corte1 = Point2D(origenX+alaIzquierda,origenY)
	Contour:AppendPoint(corte1)
	
	if anchura1>pliegueInf1 then
		local corte2 = Point2D(origenX+alaIzquierda,origenY+pliegueInferior-pliegueInf1)
		local corte3 = Point2D(origenX+alaIzquierda+anchura1-pliegueInf1-alaInferior,origenY+pliegueInferior-pliegueInf1)
		local corte4 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
	else 
		local corte2 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior-anchura1)
		local corte3 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
	end
	
	
	--Corte inferior anchura2
	if anchura2>pliegueInf2*2 then
		local corte12 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior)
		local corte13 = Point2D(origenX+alaIzquierda+anchura1+pliegueInf2+alaInferior,origenY+pliegueInferior-pliegueInf2)
		local corte14 = Point2D(origenX+alaIzquierda+anchura1+anchura2-pliegueInf2-alaInferior,origenY+pliegueInferior-pliegueInf2)
		local corte15 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte12)
		Contour:LineTo(corte13)
		Contour:LineTo(corte14)
		Contour:LineTo(corte15)
	else
		local corte12 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior)
		local corte13 = Point2D(origenX+alaIzquierda+anchura1+anchura2/2,origenY+alaInferior+pliegueInferior-anchura2/2)
		local corte14 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte12)
		Contour:LineTo(corte13)
		Contour:LineTo(corte14)
	end
	
	
	--Corte inferior anchura3
	if anchura3>pliegueInf3*2 then
		local corte16 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior)
		local corte17 = Point2D(origenX+alaIzquierda+anchura1+anchura2+pliegueInf3+alaInferior,origenY+pliegueInferior-pliegueInf3)
		local corte18 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3-alaInferior,origenY+pliegueInferior-pliegueInf3)
		--local corte19 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte16)
		Contour:LineTo(corte17)
		Contour:LineTo(corte18)
		--Contour:LineTo(corte19)
	else
		local corte16 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior)
		local corte17 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3/2,origenY+alaInferior+pliegueInferior-anchura3/2)
		local corte18 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte16)
		Contour:LineTo(corte17)
		Contour:LineTo(corte18)
	end
	
	--Corte inferior anchura4
	--[[if anchura4>pliegueInf4 then
			local corte20 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior)
			local corte21 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+pliegueInf4+alaInferior,origenY+pliegueInferior-pliegueInf4)
			local corte22 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4,origenY+pliegueInferior-pliegueInf4)
			local corte23 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4,origenY+pliegueInferior-pliegueInf4+alaInferior)
			local corte24 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4,origenY+pliegueInferior-pliegueInf4+alaInferior)
			local corte25 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4,origenY+pliegueInferior-pliegueInf4+alaInferior+pliegueInferior)
			local corte26 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4,origenY+pliegueInferior-pliegueInf4+alaInferior+pliegueInferior)
			Contour:LineTo(corte20)
			Contour:LineTo(corte21)
			Contour:LineTo(corte22)
			Contour:LineTo(corte23)
			Contour:LineTo(corte24)
			Contour:LineTo(corte25)
			Contour:LineTo(corte26)
	else --anchura4<pliegueInf4
		local corte20 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior)
		local corte21 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4,origenY+pliegueInferior+alaInferior-anchura4)
		local corte22 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte20)
		Contour:LineTo(corte21)
		Contour:LineTo(corte22)
	end--]]
	
	
	
	local corte19 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3,origenY+alaInferior)
	local corte20 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+pliegueDer,origenY+alaInferior-pliegueDer)
	local corte21 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+pliegueDer,origenY+alaInferior)
	local corte22 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+pliegueDer+alaDerecha,origenY+alaInferior)
	local corte23 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+pliegueDer+alaDerecha,origenY+alaInferior+pliegueInferior-pliegueDer)
	local corte24 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+pliegueDer,origenY+alaInferior+pliegueInferior-pliegueDer)
	local corte25 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior)
	local corte26 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+pliegueDer,origenY+alaInferior+pliegueInferior+pliegueDer)
	local corte27 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+pliegueDer+alaDerecha,origenY+alaInferior+pliegueInferior+pliegueDer)
	local corte28 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+pliegueDer+alaDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local corte29 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+pliegueDer,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local corte30 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+pliegueDer,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueDer)
	local corte31 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior+alturaPlaca)
	
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
	Contour:LineTo(corte29)
	Contour:LineTo(corte30)
	Contour:LineTo(corte31)
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	--Anchura 4 - Superior
	--[[if anchura4>pliegueSuperior then
		local corte32 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte33 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte34 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte35 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte32)
		Contour:LineTo(corte33)
		Contour:LineTo(corte34)
		Contour:LineTo(corte35)
	else --anchura4<pliegueSuperior
		local corte32 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+pliegueInferior+alturaPlaca+anchura4)
		local corte33 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte32)
		Contour:LineTo(corte33)
	end--]]




	--Anchura 3 - Superior
	if anchura3>(pliegueSuperior*2) then
		local corte28 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte29 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte30 = Point2D(origenX+alaIzquierda+anchura1+anchura2+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte31 = Point2D(origenX+alaIzquierda+anchura1+anchura2+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte32 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte28)
		Contour:LineTo(corte29)
		Contour:LineTo(corte30)
		Contour:LineTo(corte31)
		Contour:LineTo(corte32)
	else
		local corte28 = Point2D(origenX+alaIzquierda+anchura1+anchura2+anchura3/2,origenY+alaInferior+pliegueInferior+alturaPlaca+anchura3/2)
		local corte29 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte28)
		Contour:LineTo(corte29)
	end
	
	
	--Anchura 2 - Superior
	if anchura2>(pliegueSuperior*2) then
		local corte33 = Point2D(origenX+alaIzquierda+anchura1+anchura2-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte34 = Point2D(origenX+alaIzquierda+anchura1+anchura2-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte35 = Point2D(origenX+alaIzquierda+anchura1+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte36 = Point2D(origenX+alaIzquierda+anchura1+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte37 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte33)
		Contour:LineTo(corte34)
		Contour:LineTo(corte35)
		Contour:LineTo(corte36)
		Contour:LineTo(corte37)
	else
		local corte33 = Point2D(origenX+alaIzquierda+anchura1+anchura2/2,origenY+alaInferior+pliegueInferior+alturaPlaca+anchura2/2)
		local corte34 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte33)
		Contour:LineTo(corte34)
	end
	
	
	--Anchura 1 - Superior
	if anchura1>(pliegueSuperior*2) then
		local corte38 = Point2D(origenX+alaIzquierda+anchura1-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte39 = Point2D(origenX+alaIzquierda+anchura1-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte40 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte41 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		Contour:LineTo(corte38)
		Contour:LineTo(corte39)
		Contour:LineTo(corte40)
		Contour:LineTo(corte41)
	else
		local corte38 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+anchura1)
		local corte39 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		Contour:LineTo(corte38)
		Contour:LineTo(corte39)
	end
	
	
	
	local corte40 = Point2D(origenX+alaIzquierda-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	local corte41 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local corte42 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca-alaIzquierda)
	local corte43 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alaIzquierda)
	local corte44 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior)
	local corte45 = Point2D(origenX,origenY+alaInferior+pliegueInferior-alaIzquierda)
	local corte46 = Point2D(origenX,origenY+alaInferior+alaIzquierda)
	local corte47 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
	local corte48 = Point2D(origenX+alaIzquierda-alaInferior,origenY)
	local corte49 = Point2D(origenX+alaIzquierda,origenY)
	
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








----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------ DIBUJAR BANDEJAS CLIENTES PERSONALIZADAS ----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- [REFERENCIA 018 - F14] -----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function dibujarFresado018(doc)
	
	
	local plieguesInf={pliegueInf1, pliegueInf2, pliegueInf3, pliegueInf4, pliegueInf5}
	
	--sacar el mayor pliegue
	pliegueInferior=pliegueInf1
	for n=1, 5 do
		if pliegueInferior<plieguesInf[n] then
			pliegueInferior=plieguesInf[n]
		end
	end
	
	
	
	--Puntos trayectoria 
	local Contour = Contour(0.0)
	
	local fresado11 = Point2D(origenX-anchura1,origenY+alaInferior+pliegueInferior)
	local fresado12 = Point2D(origenX-anchura1-anchura2,origenY+alaInferior+pliegueInferior)
	local fresado13 = Point2D(origenX-anchura1-anchura2-anchura3,origenY+alaInferior+pliegueInferior)
	local fresado14 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4,origenY+alaInferior+pliegueInferior)
	local fresado15 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-anchura5,origenY+alaInferior+pliegueInferior) --nuevo
	
	
	
	local fresado16 = Point2D(origenX,origenY+alaInferior+pliegueInferior) 
	local fresado17 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca)
	
	local fresado18 = Point2D(origenX-anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado19 = Point2D(origenX-anchura1-anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado20 = Point2D(origenX-anchura1-anchura2-anchura3,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado21 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado22 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-anchura5,origenY+alaInferior+pliegueInferior+alturaPlaca) --muevo
	
	local fresado23 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-anchura5,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	
	
	
	
	
	if anchura5>pliegueInf5 then
		local fresado14b = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-anchura5,origenY+alaInferior+pliegueInferior-pliegueInf5-alaInferior)
		dibujarFresado_auxiliar(doc,fresado14b,fresado23)
	else
		dibujarFresado_auxiliar(doc,fresado15,fresado23)
	end
	
	dibujarFresado_auxiliar(doc,fresado16,fresado15)
	dibujarFresado_auxiliar(doc,fresado15,fresado22)
	dibujarFresado_auxiliar(doc,fresado21,fresado14)
	
	dibujarFresado_auxiliar(doc,fresado13,fresado20)
	
	dibujarFresado_auxiliar(doc,fresado19,fresado12)
	
	dibujarFresado_auxiliar(doc,fresado11,fresado18)
	
	dibujarFresado_auxiliar(doc,fresado17,fresado22)
	
	
	
	
	
	
	--anchura1 - Inferior
	if anchura1>pliegueInf1 then
		--local fresado10 = Point2D(origenX,origenY+pliegueInferior+alaInferior) 
		local fresado1 = Point2D(origenX,origenY+alaInferior+pliegueInferior-pliegueInf1)
		--local fresado2 = Point2D(origenX,origenY+alaInferior+pliegueInferior-pliegueInf1)
		local fresado3 = Point2D(origenX-anchura1+pliegueInf1,origenY+alaInferior+pliegueInferior-pliegueInf1)
		
		--dibujarFresado_auxiliar(doc,fresado10,fresado1)
		dibujarFresado_auxiliar(doc,fresado1,fresado3)
		--dibujarFresado_auxiliar(doc,fresado2,fresado11)
	end 
	
	--anchura2 - Inferior
	if anchura2>(pliegueInf2*2) then
		local fresado4 = Point2D(origenX-anchura1-pliegueInf2,origenY+alaInferior+pliegueInferior-pliegueInf2)
		local fresado5 = Point2D(origenX-anchura1-anchura2+pliegueInf2,origenY+alaInferior+pliegueInferior-pliegueInf2)
		dibujarFresado_auxiliar(doc,fresado4,fresado5)
	end
	
	--anchura3 - Inferior
	if anchura3>(pliegueInf3*2) then
		local fresado6 = Point2D(origenX-anchura1-anchura2-pliegueInf3,origenY+alaInferior+pliegueInferior-pliegueInf3)
		local fresado7 = Point2D(origenX-anchura1-anchura2-anchura3+pliegueInf3,origenY+alaInferior+pliegueInferior-pliegueInf3)
		dibujarFresado_auxiliar(doc,fresado6,fresado7)
	end 
	
	--anchura4 - Inferior
	if anchura4>(pliegueInf4*2) then
		local fresado8 = Point2D(origenX-anchura1-anchura2-anchura3-pliegueInf4,origenY+alaInferior+pliegueInferior-pliegueInf4)
		local fresado9 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4+pliegueInf4,origenY+alaInferior+pliegueInferior-pliegueInf4)
		dibujarFresado_auxiliar(doc,fresado8,fresado9)
	end 
	
	--anchura4 - Inferior
	if anchura5>pliegueInf5 then
		local fresado10 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-pliegueInf5,origenY+alaInferior+pliegueInferior-pliegueInf5)
		local fresado11 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-anchura5,origenY+alaInferior+pliegueInferior-pliegueInf5)
		dibujarFresado_auxiliar(doc,fresado10,fresado11)
	end 
	
	
	

	
	

	
	--anchura1 - Superior
	if anchura1>(pliegueSuperior*2) then
		local fresado25 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local fresado26 = Point2D(origenX-anchura1+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado25,fresado26)
		
		if crearFresado==1 then --Esto es para hacer el fresado externo o no
			local fresado27 = Point2D(origenX-anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			local fresado28 = Point2D(origenX-anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado27,fresado28)
		end
	end
	
	--anchura2 - Superior
	if anchura2>(pliegueSuperior*2) then
		local fresado31 = Point2D(origenX-anchura1-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local fresado32 = Point2D(origenX-anchura1-anchura2+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado31,fresado32)
		
		if crearFresado==1 then
			local fresado29 = Point2D(origenX-anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local fresado30 = Point2D(origenX-anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			dibujarFresado_auxiliar(doc,fresado29,fresado30)
			local fresado33 = Point2D(origenX-anchura1-anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			local fresado34 = Point2D(origenX-anchura1-anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado33,fresado34)
		end
	end
	
	--anchura3 - Superior
	if anchura3>pliegueSuperior*2 then
		local fresado37 = Point2D(origenX-anchura1-anchura2-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local fresado38 = Point2D(origenX-anchura1-anchura2-anchura3+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado37,fresado38)
		
		if crearFresado==1 then
			local fresado35 = Point2D(origenX-anchura1-anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local fresado36 = Point2D(origenX-anchura1-anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			dibujarFresado_auxiliar(doc,fresado35,fresado36)
			local fresado39 = Point2D(origenX-anchura1-anchura2-anchura3+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			local fresado40 = Point2D(origenX-anchura1-anchura2-anchura3+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado39,fresado40)
		end
	end
	
	--anchura4 - Superior
	if anchura4>pliegueSuperior*2 then
		local fresado43 = Point2D(origenX-anchura1-anchura2-anchura3-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local fresado44 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado43,fresado44)
		
		if crearFresado==1 then
			local fresado41 = Point2D(origenX-anchura1-anchura2-anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local fresado42 = Point2D(origenX-anchura1-anchura2-anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			dibujarFresado_auxiliar(doc,fresado41,fresado42)
			local fresado45 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			local fresado46 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4+pliegueSuperior-margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado45,fresado46)
		end
	end
	
	--anchura5 - Superior
	if anchura5>pliegueSuperior then
		local fresado49 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local fresado50 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-anchura5,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado49,fresado50)
		
		if crearFresado==1 then
			local fresado47 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local fresado48 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-pliegueSuperior+margenFresado,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			dibujarFresado_auxiliar(doc,fresado47,fresado48)
		end
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


function dibujarCorte018(doc)
	--Es la misma pieza que la pieza F8(111) pero en espejo, por lo que he cambiado todos los signos "+" por "-" y los "-" por "+" en el eje X. Se han cambiado todos los signos menos los de origenX, ya que es sobre el punto que tiene que pivotar.
	
	
	
	
	
	local plieguesInf={pliegueInf1, pliegueInf2, pliegueInf3, pliegueInf4, pliegueInf5}
	
	--sacar el mayor pliegue
	pliegueInferior=pliegueInf1
	for n=1, 5 do
		if pliegueInferior<plieguesInf[n] then
			pliegueInferior=plieguesInf[n]
		end
	end
	
	
	local Contour = Contour(0.0)
	
	--Corte inferior anchura1
	local corte1 = Point2D(origenX,origenY+alaInferior+pliegueInferior)
	Contour:AppendPoint(corte1)
	
	if anchura1>pliegueInf1 then
		local corte2 = Point2D(origenX,origenY+pliegueInferior-pliegueInf1)
		local corte3 = Point2D(origenX-anchura1+pliegueInf1+alaInferior,origenY+pliegueInferior-pliegueInf1)
		local corte4 = Point2D(origenX-anchura1,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
	else 
		local corte2 = Point2D(origenX,origenY+alaInferior+pliegueInferior-anchura1)
		local corte3 = Point2D(origenX-anchura1,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
	end
	
	
	--Corte inferior anchura2
	if anchura2>pliegueInf2*2 then
		local corte12 = Point2D(origenX-anchura1,origenY+alaInferior+pliegueInferior)
		local corte13 = Point2D(origenX-anchura1-pliegueInf2-alaInferior,origenY+pliegueInferior-pliegueInf2)
		local corte14 = Point2D(origenX-anchura1-anchura2+pliegueInf2+alaInferior,origenY+pliegueInferior-pliegueInf2)
		local corte15 = Point2D(origenX-anchura1-anchura2,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte12)
		Contour:LineTo(corte13)
		Contour:LineTo(corte14)
		Contour:LineTo(corte15)
	else
		local corte12 = Point2D(origenX-anchura1,origenY+alaInferior+pliegueInferior)
		local corte13 = Point2D(origenX-anchura1-anchura2/2,origenY+alaInferior+pliegueInferior-anchura2/2)
		local corte14 = Point2D(origenX-anchura1-anchura2,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte12)
		Contour:LineTo(corte13)
		Contour:LineTo(corte14)
	end
	
	
	--Corte inferior anchura3
	if anchura3>pliegueInf3*2 then
		local corte16 = Point2D(origenX-anchura1-anchura2,origenY+alaInferior+pliegueInferior)
		local corte17 = Point2D(origenX-anchura1-anchura2-pliegueInf3-alaInferior,origenY+pliegueInferior-pliegueInf3)
		local corte18 = Point2D(origenX-anchura1-anchura2-anchura3+pliegueInf3+alaInferior,origenY+pliegueInferior-pliegueInf3)
		local corte19 = Point2D(origenX-anchura1-anchura2-anchura3,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte16)
		Contour:LineTo(corte17)
		Contour:LineTo(corte18)
		Contour:LineTo(corte19)
	else
		local corte16 = Point2D(origenX-anchura1-anchura2,origenY+alaInferior+pliegueInferior)
		local corte17 = Point2D(origenX-anchura1-anchura2-anchura3/2,origenY+alaInferior+pliegueInferior-anchura3/2)
		local corte18 = Point2D(origenX-anchura1-anchura2-anchura3,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte16)
		Contour:LineTo(corte17)
		Contour:LineTo(corte18)
	end
	
	--Corte inferior anchura4
	if anchura4>pliegueInf4*2 then
		local corte16 = Point2D(origenX-anchura1-anchura2-anchura3,origenY+alaInferior+pliegueInferior)
		local corte17 = Point2D(origenX-anchura1-anchura2-anchura3-pliegueInf4-alaInferior,origenY+pliegueInferior-pliegueInf4)
		local corte18 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4+pliegueInf4+alaInferior,origenY+pliegueInferior-pliegueInf4)
		local corte19 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte16)
		Contour:LineTo(corte17)
		Contour:LineTo(corte18)
		Contour:LineTo(corte19)
	else
		local corte16 = Point2D(origenX-anchura1-anchura2-anchura3,origenY+alaInferior+pliegueInferior)
		local corte17 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4/2,origenY+alaInferior+pliegueInferior-anchura4/2)
		local corte18 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte16)
		Contour:LineTo(corte17)
		Contour:LineTo(corte18)
	end
	
	--Corte inferior anchura5
	if anchura5>pliegueInf5 then
		if alaDerecha>pliegueInf5 then
			local corte20 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4,origenY+alaInferior+pliegueInferior)
			local corte21 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-pliegueInf5-alaInferior,origenY+pliegueInferior-pliegueInf5)
			local corte22 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-anchura5-alaInferior,origenY+pliegueInferior-pliegueInf5)
			local corte23 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-anchura5,origenY+pliegueInferior-pliegueInf5+alaInferior)
			local corte24 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-anchura5-pliegueInf5/2,origenY+pliegueInferior-pliegueInf5+alaInferior+pliegueInf5/2)
			local corte25 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-anchura5,origenY+pliegueInferior+alaInferior)
			Contour:LineTo(corte20)
			Contour:LineTo(corte21)
			Contour:LineTo(corte22)
			Contour:LineTo(corte23)
			Contour:LineTo(corte24)
			Contour:LineTo(corte25)
			
		else
			local corte20 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4,origenY+alaInferior+pliegueInferior)
			local corte21 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-pliegueInf5-alaInferior,origenY+pliegueInferior-pliegueInf5)
			local corte22 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-anchura5-alaInferior,origenY+pliegueInferior-pliegueInf5)
			local corte23 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-anchura5,origenY+pliegueInferior-pliegueInf5+alaInferior)
			local corte24 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-anchura5-alaDerecha,origenY+pliegueInferior-pliegueInf5+alaInferior+alaDerecha)
			local corte25 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-anchura5-alaDerecha,origenY+pliegueInferior-pliegueInf5+alaInferior+pliegueInferior-alaDerecha)
			local corte26 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-anchura5,origenY+pliegueInferior-pliegueInf5+alaInferior+pliegueInferior)
			Contour:LineTo(corte20)
			Contour:LineTo(corte21)
			Contour:LineTo(corte22)
			Contour:LineTo(corte23)
			Contour:LineTo(corte24)
			Contour:LineTo(corte25)
			Contour:LineTo(corte26)
		end
	else --anchura5<pliegueInf5
		local corte20 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4,origenY+alaInferior+pliegueInferior)
		local corte21 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-anchura5,origenY+pliegueInferior+alaInferior-anchura5)
		local corte22 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-anchura5,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte20)
		Contour:LineTo(corte21)
		Contour:LineTo(corte22)
	end
	
	
	
	
	
	
	
	
	local corte27 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-anchura5-alaDerecha,origenY+alaInferior+pliegueInferior+alaDerecha)
	local corte28 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-anchura5-alaDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca-alaDerecha)
	local corte29 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-anchura5,origenY+alaInferior+pliegueInferior+alturaPlaca)
	
	local corte30 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-anchura5-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	local corte31 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-anchura5,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	local corte32 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-anchura5,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
	local corte33 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
	local corte34 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	local corte35 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4,origenY+alaInferior+pliegueInferior+alturaPlaca)
	
	Contour:LineTo(corte27)
	Contour:LineTo(corte28)
	Contour:LineTo(corte29)
	Contour:LineTo(corte30)
	Contour:LineTo(corte31)
	Contour:LineTo(corte32)
	Contour:LineTo(corte33)
	Contour:LineTo(corte34)
	Contour:LineTo(corte35)
	
	
	
	
	
	
	
	--Anchura 4 - Superior
	if anchura4>(pliegueSuperior*2) then
		local corte28 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte29 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte30 = Point2D(origenX-anchura1-anchura2-anchura3-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte31 = Point2D(origenX-anchura1-anchura2-anchura3-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte32 = Point2D(origenX-anchura1-anchura2-anchura3,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte28)
		Contour:LineTo(corte29)
		Contour:LineTo(corte30)
		Contour:LineTo(corte31)
		Contour:LineTo(corte32)
	else
		local corte28 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4/2,origenY+alaInferior+pliegueInferior+alturaPlaca+anchura4/2)
		local corte29 = Point2D(origenX-anchura1-anchura2-anchura3,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte28)
		Contour:LineTo(corte29)
	end
	

	--Anchura 3 - Superior
	if anchura3>(pliegueSuperior*2) then
		local corte28 = Point2D(origenX-anchura1-anchura2-anchura3+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte29 = Point2D(origenX-anchura1-anchura2-anchura3+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte30 = Point2D(origenX-anchura1-anchura2-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte31 = Point2D(origenX-anchura1-anchura2-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte32 = Point2D(origenX-anchura1-anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte28)
		Contour:LineTo(corte29)
		Contour:LineTo(corte30)
		Contour:LineTo(corte31)
		Contour:LineTo(corte32)
	else
		local corte28 = Point2D(origenX-anchura1-anchura2-anchura3/2,origenY+alaInferior+pliegueInferior+alturaPlaca+anchura3/2)
		local corte29 = Point2D(origenX-anchura1-anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte28)
		Contour:LineTo(corte29)
	end
	
	
	--Anchura 2 - Superior
	if anchura2>(pliegueSuperior*2) then
		local corte33 = Point2D(origenX-anchura1-anchura2+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte34 = Point2D(origenX-anchura1-anchura2+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte35 = Point2D(origenX-anchura1-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte36 = Point2D(origenX-anchura1-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte37 = Point2D(origenX-anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte33)
		Contour:LineTo(corte34)
		Contour:LineTo(corte35)
		Contour:LineTo(corte36)
		Contour:LineTo(corte37)
	else
		local corte33 = Point2D(origenX-anchura1-anchura2/2,origenY+alaInferior+pliegueInferior+alturaPlaca+anchura2/2)
		local corte34 = Point2D(origenX-anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte33)
		Contour:LineTo(corte34)
	end
	
	
	--Anchura 1 - Superior
	if anchura1>(pliegueSuperior*2) then
		local corte38 = Point2D(origenX-anchura1+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte39 = Point2D(origenX-anchura1+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte40 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte41 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte38)
		Contour:LineTo(corte39)
		Contour:LineTo(corte40)
		Contour:LineTo(corte41)
	else
		local corte38 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca+anchura1)
		local corte39 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte38)
		Contour:LineTo(corte39)
	end
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












----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------ DIBUJAR BANDEJAS CLIENTES PERSONALIZADAS ----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- [REFERENCIA 007 - 008 - F4 - F5] -------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



function dibujarFresado019(doc)
	
	
	--Puntos trayectoria 
	local Contour = Contour(0.0)
	
	local fresado1 = Point2D(origenX,origenY+alaInferior)
	local fresado2 = Point2D(origenX-anchura1,origenY+alaInferior)
	local fresado3 = Point2D(origenX-anchura1-anchura2,origenY+alaInferior)
	local fresado4 = Point2D(origenX-anchura1-anchura2-anchura3,origenY+alaInferior)
	local fresado5 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4,origenY+alaInferior)
	local fresado6 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-anchura5,origenY+alaInferior)
	local fresado7 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-anchura5-anchura6,origenY+alaInferior)
	
	local fresado8 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-anchura5,origenY)
	
	local fresado9 = Point2D(origenX,origenY+alaInferior+alturaPlaca)
	local fresado10 = Point2D(origenX-anchura1,origenY+alaInferior+alturaPlaca)
	local fresado11 = Point2D(origenX-anchura1-anchura2,origenY+alaInferior+alturaPlaca)
	local fresado12 = Point2D(origenX-anchura1-anchura2-anchura3,origenY+alaInferior+alturaPlaca)
	local fresado13 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4,origenY+alaInferior+alturaPlaca)
	local fresado14 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-anchura5,origenY+alaInferior+alturaPlaca)
	local fresado15 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-anchura5-anchura6,origenY+alaInferior+alturaPlaca)
	
	local fresado16 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-anchura5,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	
	
	dibujarFresado_auxiliar(doc,fresado1,fresado6)
	dibujarFresado_auxiliar(doc,fresado9,fresado14)
	dibujarFresado_auxiliar(doc,fresado2,fresado10)
	dibujarFresado_auxiliar(doc,fresado3,fresado11)
	dibujarFresado_auxiliar(doc,fresado4,fresado12)
	dibujarFresado_auxiliar(doc,fresado5,fresado13)
	dibujarFresado_auxiliar(doc,fresado8,fresado16)
	
	
	
	--anchura1
	if anchura1>pliegueSuperior then
		local fresado17 = Point2D(origenX,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado18 = Point2D(origenX-anchura1+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado17,fresado18)
		
		if crearFresado==1 then 
			local fresado19 = Point2D(origenX-anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado20 = Point2D(origenX-anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado19,fresado20)
		end
	end
	
	
	--anchura2
	if anchura2>pliegueSuperior*2 then
		local fresado23 = Point2D(origenX-anchura1-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado24 = Point2D(origenX-anchura1-anchura2+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado23,fresado24)
		
		if crearFresado==1 then 
			local fresado22 = Point2D(origenX-anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado21 = Point2D(origenX-anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado21,fresado22)
			local fresado25 = Point2D(origenX-anchura1-anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado26 = Point2D(origenX-anchura1-anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado25,fresado26)
		end
	end
	
	
	--anchura3
	if anchura3>pliegueSuperior*2 then
		local fresado29 = Point2D(origenX-anchura1-anchura2-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado30 = Point2D(origenX-anchura1-anchura2-anchura3+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado29,fresado30)
		if crearFresado==1 then 
			local fresado28 = Point2D(origenX-anchura1-anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado27 = Point2D(origenX-anchura1-anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado28,fresado27)
			local fresado31 = Point2D(origenX-anchura1-anchura2-anchura3+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado32 = Point2D(origenX-anchura1-anchura2-anchura3+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado31,fresado32)	
		end
	end
	
	
	--anchura4
	if anchura4>pliegueSuperior*2 then
		local fresado35 = Point2D(origenX-anchura1-anchura2-anchura3-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado36 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado35,fresado36)
		
		if crearFresado==1 then 
			local fresado34 = Point2D(origenX-anchura1-anchura2-anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado33 = Point2D(origenX-anchura1-anchura2-anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado33,fresado34)
			local fresado37 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado38 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado37,fresado38)
		end
	end
	
	
	--anchura5
	if anchura5>pliegueSuperior*2 then		
		local fresado41 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado41,fresado16)
		if crearFresado==1 then 
			local fresado40 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local fresado39 = Point2D(origenX-anchura1-anchura2-anchura3-anchura4-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			dibujarFresado_auxiliar(doc,fresado39,fresado40)	
		end
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


function dibujarCorte019(doc)

	local repeticiones
	local anchuras
	local nAnchuras

	
	repeticiones=3
	anchuras={anchura1,anchura2,anchura3,anchura4,anchura5}
	nAnchuras=5 --numero de valores del vector "anchuras"
	
	
	
	
	
	
	local Contour = Contour(0.0)
	
	--PARTE INFERIOR-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	--Anchura primera
	if anchura1>alaInferior then
		local corte1 = Point2D(origenX,origenY+alaInferior)
		local corte2 = Point2D(origenX,origenY)
		local corte3 = Point2D(origenX-anchura1+alaInferior,origenY)
		Contour:AppendPoint(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		
	else
		local corte1 = Point2D(origenX,origenY+alaInferior)
		local corte2 = Point2D(origenX,origenY+alaInferior-anchura1)
		Contour:AppendPoint(corte1)
		Contour:LineTo(corte2)
	end
	local corte4 = Point2D(origenX-anchura1,origenY+alaInferior)
	Contour:LineTo(corte4)
	
	
	--Bucle anchuras intermedias
	--local anchuras={anchura1,anchura2,anchura3,anchura4}
	--local repeticiones=2 --math.length(anchuras -2)
	local anchoA=anchuras[1]
	for n=2, (repeticiones+1) do
		local corte1 = Point2D(origenX-anchoA,origenY+alaInferior)
		Contour:LineTo(corte1)
		if anchuras[n]>alaInferior*2 then
			local corte2 = Point2D(origenX-anchoA-alaInferior,origenY)
			local corte3 = Point2D(origenX-anchoA-anchuras[n]+alaInferior,origenY)
			Contour:LineTo(corte2)
			Contour:LineTo(corte3)
			
		else
			local corte2 = Point2D(origenX-anchoA-anchuras[n]/2,origenY+alaInferior-anchuras[n]/2)
			Contour:LineTo(corte2)
		end
		
		local corte4 = Point2D(origenX-anchoA-anchuras[n],origenY+alaInferior)
		Contour:LineTo(corte4)
		
		anchoA=anchoA+anchuras[n]
	end	
	
	
	
	
	--Anchura ultima	
	if anchuras[nAnchuras]>alaInferior then --Para que acabe en pico o acabe en plano el ala inferior
		local corte1 = Point2D(origenX-anchoA,origenY+alaInferior)
		local corte2 = Point2D(origenX-anchoA-alaInferior,origenY)
		
		if alaInferior>alaDerecha then --para evitar que el pico de abajo a la derecha sea muy muy grande
			
			local corte3 = Point2D(origenX-anchoA-anchuras[nAnchuras]-alaDerecha,origenY)
			local corte4 = Point2D(origenX-anchoA-anchuras[nAnchuras]-alaDerecha,origenY+alaInferior-alaDerecha)
			local corte5 = Point2D(origenX-anchoA-anchuras[nAnchuras],origenY+alaInferior)
			Contour:LineTo(corte1)
			Contour:LineTo(corte2)
			Contour:LineTo(corte3)
			Contour:LineTo(corte4)
			Contour:LineTo(corte5)
			
		else 
			local corte3 = Point2D(origenX-anchoA-anchuras[nAnchuras]-alaInferior,origenY)
			Contour:LineTo(corte1)
			Contour:LineTo(corte2)
			Contour:LineTo(corte3)
		end

	else
		local corte1 = Point2D(origenX-anchoA,origenY+alaInferior)
		local corte2 = Point2D(origenX-anchoA-anchuras[nAnchuras],origenY+alaInferior-anchuras[nAnchuras])
			
		if alaInferior>alaDerecha then --para evitar que el pico de abajo a la derecha sea muy muy grande
			local corte3 = Point2D(origenX-anchoA-anchuras[nAnchuras],origenY+alaInferior-anchuras[nAnchuras])
			local corte4 = Point2D(origenX-anchoA-anchuras[nAnchuras]-alaDerecha,origenY+alaInferior-anchuras[nAnchuras]+alaDerecha)
			local corte5 = Point2D(origenX-anchoA-anchuras[nAnchuras]-alaDerecha,origenY+alaInferior-alaDerecha)
			Contour:LineTo(corte1)
			Contour:LineTo(corte2)
			Contour:LineTo(corte3)
			Contour:LineTo(corte4)
			Contour:LineTo(corte5)
			
		else 
			local corte3 = Point2D(origenX-anchoA-anchuras[nAnchuras]-anchuras[nAnchuras],origenY+alaInferior-anchuras[nAnchuras])
			Contour:LineTo(corte1)
			Contour:LineTo(corte2)
			Contour:LineTo(corte3)
		end
		
	end
	
	local corte4 = Point2D(origenX-anchoA-anchuras[nAnchuras],origenY+alaInferior)
	local corte5 = Point2D(origenX-anchoA-anchuras[nAnchuras]-alaDerecha,origenY+alaInferior+alaDerecha)
	local corte6 = Point2D(origenX-anchoA-anchuras[nAnchuras]-alaDerecha,origenY+alaInferior+alturaPlaca-alaDerecha)
	local corte7 = Point2D(origenX-anchoA-anchuras[nAnchuras],origenY+alaInferior+alturaPlaca)
	local corte8 = Point2D(origenX-anchoA-anchuras[nAnchuras]-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	local corte9 = Point2D(origenX-anchoA-anchuras[nAnchuras],origenY+alaInferior+alturaPlaca+pliegueSuperior)
	
	Contour:LineTo(corte4)
	Contour:LineTo(corte5)
	Contour:LineTo(corte6)
	Contour:LineTo(corte7)
	Contour:LineTo(corte8)
	Contour:LineTo(corte9)
	
	
	
	
	--PARTE SUPERIOR------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	anchoA=anchura1+anchura2+anchura3+anchura4+anchura5
	
	--Anchura primera
	if anchuras[nAnchuras]>pliegueSuperior then
		local corte1 = Point2D(origenX-anchoA,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte2 = Point2D(origenX-anchoA+(anchuras[nAnchuras]-pliegueSuperior),origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte3 = Point2D(origenX-anchoA+(anchuras[nAnchuras]-pliegueSuperior),origenY+alaInferior+alturaPlaca+pliegueSuperior)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
	else
		local corte1 = Point2D(origenX-anchoA,origenY+alaInferior+alturaPlaca+anchuras[nAnchuras])
		local corte2 = Point2D(origenX-anchoA+anchuras[nAnchuras],origenY+alaInferior+alturaPlaca)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
	end
	
	
	anchoA=anchoA-anchuras[nAnchuras]
	local m=repeticiones+1
	for n=2, (repeticiones+1) do
		
		local corte1 = Point2D(origenX-anchoA,origenY+alaInferior+alturaPlaca)
		Contour:LineTo(corte1)
		if anchuras[m]>pliegueSuperior*2 then
			local corte2 = Point2D(origenX-anchoA+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			local corte3 = Point2D(origenX-anchoA+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local corte4 = Point2D(origenX-anchoA+anchuras[m]-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			local corte5 = Point2D(origenX-anchoA+anchuras[m]-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
			Contour:LineTo(corte2)
			Contour:LineTo(corte3)
			Contour:LineTo(corte4)
			Contour:LineTo(corte5)
		else
			local corte2 = Point2D(origenX-anchoA+anchuras[m]/2,origenY+alaInferior+alturaPlaca+anchuras[m]/2)
			Contour:LineTo(corte2)
		end
		
		local corte4 = Point2D(origenX-anchoA+anchuras[m],origenY+alaInferior+alturaPlaca)
		Contour:LineTo(corte4)
		
		anchoA=anchoA-anchuras[m]
		m=m-1
	end	
	
	
	--Anchura ultima
	if anchura1>pliegueSuperior then
		local corte1 = Point2D(origenX-anchoA,origenY+alaInferior+alturaPlaca)
		local corte2 = Point2D(origenX-anchoA+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local corte3 = Point2D(origenX-anchoA+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte4 = Point2D(origenX,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
		
	else
		local corte1 = Point2D(origenX-anchoA,origenY+alaInferior+alturaPlaca)
		local corte2 = Point2D(origenX-anchoA+anchura1,origenY+alaInferior+alturaPlaca+anchura1)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
	end
	local corte4 = Point2D(origenX,origenY+alaInferior)
	Contour:LineTo(corte4)
	
	
	
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







































