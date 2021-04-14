-- VECTRIC LUA SCRIPT


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- PLANTILLA -------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function OnLuaButton_plantilla(framePrincipal)
	
	local html_path
	if remoto==1 then
		html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/plantilla.html"
	else
		html_path = "file:" .. ruta .. "\\Paneles\\plantilla.html"
	end
	
	
	local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "Generador de plantillas")
	
	escalaPlantilla=1
	
	modelo000:AddDoubleField("escalaPlantilla", escalaPlantilla)
	
	modelo000:AddTextField("tutulo", titulo)
	
	
	if  not modelo000:ShowDialog() then
			return false;
	end
	
	
end


function OnLuaButton_aceptarPlantilla(modelo000)
	
	escalaPlantilla = modelo000:GetDoubleField("escalaPlantilla")
	
	titulo = modeloCH:GetTextField("titulo")
	
	--Punto inicial de la pieza
		origenX=-(anchuraPlaca+alaIzquierda+alaDerecha+400)
		origenY= 400
	
	--dibujarPlantilla(doc)
	
	DisplayMessageBox("PLANTILLA CREADA CORRECTAMENTE")
	
	
	return true;
	
end


function dibujarPlantilla(doc)
	
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









----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------ TAMAÑO PANTALLA -----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function OnLuaButton_grande()
	tamanoVentana=1
	return true
end
function OnLuaButton_mediana()
	tamanoVentana=2
	return true
end
function OnLuaButton_pequena()
	tamanoVentana=3
	return true
end



function OnLuaButton_ajustes(framePrincipal)
	
	local html_path
	if remoto==1 then
		html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/ajustes.html"
	else
		html_path = "file:" .. ruta .. "\\Paneles\\ajustes.html"
	end
	
	
	local modeloAjustes = HTML_Dialog(false, html_path, tamX, tamY/2, "Ajustes")
	
	
	
	
	
	if  not modeloAjustes:ShowDialog() then
			return false;
	end
	
	
end


function OnLuaButton_aceptarAjustes(modeloAjustes)
	
	
	--Punto inicial de la pieza
		origenX=-(anchuraPlaca+alaIzquierda+alaDerecha+400)
		origenY= 400
	
	ajustarTamano(doc)
	
	DisplayMessageBox("Tamano cambiado correctamente. Por favor, cierra y vuelve a abrir la ventana para ver el cambio.")
	
	
	return true;
	
end



function ajustarTamano(doc)
	
	--Tamaño de la ventana [en pixeles]
	
	if tamanoVentana==1 then --GRANDE
		tamX=1024--1920
		tamY=1080-35 --(Se resta la barra de window que son 35px)
	elseif tamanoVentana==2 then --MEDIANA 
		tamX=1280
		tamY=720
	elseif tamanoVentana==3 then --PEQUEÑA
		tamX=1024
		tamY=768
	end
	
	return true; 
end





















