
-- VECTRIC LUA SCRIPT

--Familia Personalizada



function OnLuaButton_modelo000(framePrincipal)

	if modelo == 101 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia001.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia001.html"
		end
		
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES 001")
		
		textoDescriptivo="BANDEJA 001"
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
	
	elseif modelo == 102 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia002.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia002.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES 002")
		
		textoDescriptivo="BANDEJA 002"
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
	
	elseif modelo == 103 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia003.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia003.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES 003")
		
		textoDescriptivo="BANDEJA 003"
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
		
	elseif modelo == 104 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia004.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia004.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES 004")
		
		textoDescriptivo="BANDEJA 004"
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
	
	elseif modelo == 105 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia005.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia005.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES 005")
		
		textoDescriptivo="BANDEJA 005"
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
	
	elseif modelo == 106 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia006.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia006.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES 006")
		
		textoDescriptivo="BANDEJA 006"
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
	elseif modelo == 107 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia007.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia007.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES 007")
		
		textoDescriptivo="[007]Junta dilatacion Derecha 2"
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
	
	elseif modelo == 108 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia008.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia008.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES 008")
		
		textoDescriptivo="[008]Entrante escalera 2"
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
		
	elseif modelo == 109 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia009.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia009.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES 009")
		
		textoDescriptivo="[009]Junta dilatacion Izquierda"
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
		
	elseif modelo == 110 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia010.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia010.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES 010")
		
		textoDescriptivo="[010]Junta dilatacion derecha"
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
		
	elseif modelo == 111 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia011.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia011.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES 011")
		
		textoDescriptivo="[011]Entrante escalera"
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
		
	elseif modelo == 112 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia012.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia012.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES 012")
		
		textoDescriptivo="[012]Tapa Machon"
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


function OnLuaButton_aceptar000(modelo000)

	if modelo==101 then  --PIEZA ESPECIAL 001------------------
		
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
		
		
		dibujarFresado001(doc)
		dibujarCorte001(doc)
		dibujarTexto(doc)
		DisplayMessageBox("MODELO 001 CREADO CORRECTAMENTE")
		
	elseif modelo==102 then  --PIEZA ESPECIAL 002
		
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
		
		dibujarFresado002(doc)
		dibujarCorte002(doc)
		dibujarTexto(doc)
		DisplayMessageBox("MODELO 002 CREADO CORRECTAMENTE")
		
	
	elseif modelo==103 then  --PIEZA ESPECIAL 003
		
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
		dibujarFresado003(doc)
		if dibujoHorizontal==1 then
			dibujarCorte003Horizontal(doc)
		else
			dibujarCorte003Vertical(doc)
		end
		dibujarTexto(doc)
		DisplayMessageBox("MODELO 003 CREADO CORRECTAMENTE")
	
	elseif modelo==104 then  --PIEZA ESPECIAL 004
		
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
		dibujarFresado004(doc)
		dibujarCorte004(doc)
		dibujarTexto(doc)
		DisplayMessageBox("MODELO 004 CREADO CORRECTAMENTE")
	
	elseif modelo==105 then  --PIEZA ESPECIAL 005
		
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
		dibujarFresado005(doc)
		dibujarCorte005(doc)
		dibujarTexto(doc)
		DisplayMessageBox("MODELO 005 CREADO CORRECTAMENTE")
		
	elseif modelo==106 then  --PIEZA ESPECIAL 006
		
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
		
		dibujarFresado006(doc)
		dibujarCorte006(doc)
		
		DisplayMessageBox("MODELO 006 CREADO CORRECTAMENTE")
	
	elseif modelo==107 then  --PIEZA ESPECIAL 007
		
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
		
		dibujarFresado007(doc)
		dibujarCorte007(doc)
		dibujarTexto(doc)
		DisplayMessageBox("MODELO 007 CREADO CORRECTAMENTE")
		
	elseif modelo==108 then  --PIEZA ESPECIAL 008
		
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
		
		dibujarFresado008(doc)
		dibujarCorte007(doc)
		dibujarTexto(doc)
		DisplayMessageBox("MODELO 008 CREADO CORRECTAMENTE")
	
	elseif modelo==109 then  --PIEZA ESPECIAL 009
		
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
		
		
		
		dibujarFresado009(doc)
		dibujarCorte009(doc)
		dibujarTexto(doc)
		DisplayMessageBox("MODELO 009 CREADO CORRECTAMENTE")
		
	elseif modelo==110 then  --PIEZA ESPECIAL 010
		
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
		
		dibujarFresado010(doc)
		dibujarCorte010(doc)
		dibujarTexto(doc)
		
		DisplayMessageBox("MODELO 010 CREADO CORRECTAMENTE")
		
	elseif modelo==111 then  --PIEZA ESPECIAL 011
		
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
		
		dibujarFresado011(doc)
		dibujarCorte011(doc)
		dibujarTexto(doc)
		DisplayMessageBox("MODELO 011 CREADO CORRECTAMENTE")
		
	elseif modelo==112 then  --PIEZA ESPECIAL 012
		
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
		
		
		
		dibujarFresado012(doc)
		dibujarCorte012(doc)
		dibujarTexto(doc)
		DisplayMessageBox("MODELO 012 CREADO CORRECTAMENTE")
		
	
	end
	
	
return true;

end










-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------ DIBUJAR BANDEJAS CLIENTES PERSONALIZADAS -----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- [REFERENCIA 001] ------------------------------------------------------------------------------------------------------------------
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
	
	
	--anchura1
	if anchura1>pliegueSuperior then
		local fresado17 = Point2D(origenX,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado18 = Point2D(origenX+anchura1-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado17,fresado18)
		local fresado19 = Point2D(origenX+anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado20 = Point2D(origenX+anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		dibujarFresado_auxiliar(doc,fresado19,fresado20)
	end
	
	
	--anchura2
	if anchura2>pliegueSuperior*2 then
		local fresado22 = Point2D(origenX+anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado21 = Point2D(origenX+anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		dibujarFresado_auxiliar(doc,fresado21,fresado22)
		local fresado23 = Point2D(origenX+anchura1+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado24 = Point2D(origenX+anchura1+anchura2-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado23,fresado24)
		local fresado25 = Point2D(origenX+anchura1+anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado26 = Point2D(origenX+anchura1+anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		dibujarFresado_auxiliar(doc,fresado25,fresado26)
	end
	
	
	--anchura3
	if anchura3>pliegueSuperior*2 then
		local fresado28 = Point2D(origenX+anchura1+anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado27 = Point2D(origenX+anchura1+anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		dibujarFresado_auxiliar(doc,fresado28,fresado27)
		local fresado29 = Point2D(origenX+anchura1+anchura2+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado30 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado29,fresado30)
		local fresado31 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado32 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		dibujarFresado_auxiliar(doc,fresado31,fresado32)	
	end
	
	
	--anchura4
	if anchura4>pliegueSuperior*2 then
		local fresado34 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado33 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		dibujarFresado_auxiliar(doc,fresado33,fresado34)
		local fresado35 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado36 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado35,fresado36)
		local fresado37 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado38 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		dibujarFresado_auxiliar(doc,fresado37,fresado38)	
	end
	
	
	--anchura5
	if anchura5>pliegueSuperior*2 then
		local fresado40 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado39 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		dibujarFresado_auxiliar(doc,fresado39,fresado40)
		local fresado41 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado42 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado41,fresado42)
		local fresado43 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado44 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		dibujarFresado_auxiliar(doc,fresado43,fresado44)	
	end
	
	
	--anchura6
	if anchura6>pliegueSuperior*2 then
		local fresado46 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado45 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		dibujarFresado_auxiliar(doc,fresado45,fresado46)
		local fresado47 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado48 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado47,fresado48)
		local fresado49 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado50 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		dibujarFresado_auxiliar(doc,fresado49,fresado50)	
	end
	
	
	--anchura7
	if anchura7>pliegueSuperior then
		local fresado52 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado51 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		dibujarFresado_auxiliar(doc,fresado51,fresado52)
		local fresado53 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado54 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+anchura7,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado53,fresado54)
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





--[[function dibujarFresado001_auxiliar(doc,punto1,punto2)

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
