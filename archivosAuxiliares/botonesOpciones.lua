-- VECTRIC LUA SCRIPT


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- PLANTILLA -------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function OnLuaButton_a4horizontal()
	formatoPapel=1
	return true
end
function OnLuaButton_a4vertical()
	formatoPapel=2
	return true
end
function OnLuaButton_a3horizontal()
	formatoPapel=3
	return true
end
function OnLuaButton_a3vertical()
	formatoPapel=4
	return true
end


function OnLuaButton_plantilla(framePrincipal)
	
	local html_path
	if remoto==1 then
		html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/plantilla.html"
	else
		html_path = "file:" .. ruta .. "\\Paneles\\plantilla.html"
	end
	
	
	local modeloOpciones = HTML_Dialog(false, html_path, tamX, tamY, "Generador de plantillas")
	
	escalaPlantilla=1
	
	modeloOpciones:AddDoubleField("escalaPlantilla", escalaPlantilla) --Escala para determinar el tamaño del dibujo (NO es la escala que aparece en cajetin)
	
	
	
	if  not modeloOpciones:ShowDialog() then
		return false;
	end
	
end


function OnLuaButton_aceptarPlantilla(modeloOpciones)
	
	escalaPlantilla = modeloOpciones:GetDoubleField("escalaPlantilla")
	
	
	
	
	--Punto inicial de la pieza
		origenX=0
		origenY=0
	
	
	
	dibujarPlantilla(doc)
	
	
	DisplayMessageBox("PLANTILLA CREADA CORRECTAMENTE")
	
	
	return true;
end









function dibujarPlantilla(doc)
	
	--Ancho y largo de la plantilla [para que se dibuje en vertical o en horizontal, lo unico que se hace es permutar "tamHorizontal" y "tamVertical"]
	if formatoPapel==1 then --A4 HORIZONTAL
		tamHorizontal=297*escalaPlantilla
		tamVertical=210*escalaPlantilla
	elseif formatoPapel==2 then --A4 VERTICAL
		tamHorizontal=210*escalaPlantilla
		tamVertical=297*escalaPlantilla
	elseif formatoPapel==3 then --A3 HORIZONTAL
		tamHorizontal=420*escalaPlantilla
		tamVertical=297*escalaPlantilla
	elseif formatoPapel==4 then --A3 VERTICAL
		tamHorizontal=297*escalaPlantilla
		tamVertical=420*escalaPlantilla
	end
	
	--Margenes de la plantilla
	margenInf=7*escalaPlantilla
	margenDer=7*escalaPlantilla
	margenSup=7*escalaPlantilla
	margenIzq=12*escalaPlantilla
	
	--Tamaño cajetin
	anchuraCajetin=120*escalaPlantilla --Anchura del cajetin (sin contar la imagen
	alturaLineas=6.50*escalaPlantilla --Separacion entre las lineas
	anchuraCaracteristicas=25*escalaPlantilla --Ancho del recuadro inferior derecho del cajetin
	
	--Tamaño recuadro imagen
	anchuraImg=37.5*escalaPlantilla
	
	
	
	
	local Contour = Contour(0.0) --Inicio trayectoria 
	
	--Borde exterior
	local fresado1 = Point2D(origenX,origenY)
	local fresado2 = Point2D(origenX+tamHorizontal,origenY)
	local fresado3 = Point2D(origenX+tamHorizontal,origenY+tamVertical)
	local fresado4 = Point2D(origenX,origenY+tamVertical)
	
	dibujarPlantilla_auxiliar(doc,fresado1,fresado2,fresado3,fresado4,0)
	
	
	--Borde interior
	local fresado5 = Point2D(origenX+margenIzq,origenY+margenInf)
	local fresado6 = Point2D(origenX+tamHorizontal-margenDer,origenY+margenInf)
	local fresado7 = Point2D(origenX+tamHorizontal-margenDer,origenY+tamVertical-margenSup)
	local fresado8 = Point2D(origenX+margenIzq,origenY+tamVertical-margenSup)
	
	dibujarPlantilla_auxiliar(doc,fresado5,fresado6,fresado7,fresado8,0)
	
	
	--Cajetin
	local fresado9 = Point2D(origenX+tamHorizontal-margenDer-anchuraCajetin,origenY+margenInf+alturaLineas*5+5*escalaPlantilla)
	local fresado11 = Point2D(origenX+tamHorizontal-margenDer-anchuraCajetin,origenY+margenInf+alturaLineas*4)
	local fresado14 = Point2D(origenX+tamHorizontal-margenDer-anchuraCajetin,origenY+margenInf+alturaLineas*3)
	local fresado16 = Point2D(origenX+tamHorizontal-margenDer-anchuraCajetin,origenY+margenInf+alturaLineas*2)
	local fresado18 = Point2D(origenX+tamHorizontal-margenDer-anchuraCajetin,origenY+margenInf+alturaLineas*1)
	local fresado20 = Point2D(origenX+tamHorizontal-margenDer-anchuraCajetin,origenY+margenInf+alturaLineas*0)
	
	local fresado10 = Point2D(origenX+tamHorizontal-margenDer,origenY+margenInf+alturaLineas*5+5*escalaPlantilla)
	local fresado13 = Point2D(origenX+tamHorizontal-margenDer,origenY+margenInf+alturaLineas*4)
	
	local fresado12 = Point2D(origenX+tamHorizontal-margenDer-anchuraCaracteristicas,origenY+margenInf+alturaLineas*4)
	local fresado15 = Point2D(origenX+tamHorizontal-margenDer-anchuraCaracteristicas,origenY+margenInf+alturaLineas*3)
	local fresado17 = Point2D(origenX+tamHorizontal-margenDer-anchuraCaracteristicas,origenY+margenInf+alturaLineas*2)
	local fresado19 = Point2D(origenX+tamHorizontal-margenDer-anchuraCaracteristicas,origenY+margenInf+alturaLineas*1)
	local fresado21 = Point2D(origenX+tamHorizontal-margenDer-anchuraCaracteristicas,origenY+margenInf+alturaLineas*0)
	
	local fresado22 = Point2D(origenX+tamHorizontal-margenDer-anchuraCajetin-anchuraImg,origenY+margenInf+alturaLineas*5+5*escalaPlantilla)
	local fresado23 = Point2D(origenX+tamHorizontal-margenDer-anchuraCajetin-anchuraImg,origenY+margenInf)
	
	dibujarPlantilla_auxiliar(doc,fresado9,fresado10,fresado13,fresado11,0)
	dibujarPlantilla_auxiliar(doc,fresado11,fresado12,fresado15,fresado14,1)
	dibujarPlantilla_auxiliar(doc,fresado14,fresado15,fresado17,fresado16,1)
	dibujarPlantilla_auxiliar(doc,fresado16,fresado17,fresado19,fresado18,1)
	dibujarPlantilla_auxiliar(doc,fresado18,fresado19,fresado21,fresado20,1)
	dibujarPlantilla_auxiliar(doc,fresado12,fresado13,fresado6,fresado21,0)
	dibujarPlantilla_auxiliar(doc,fresado22,fresado23,fresado20,fresado9,0)
	
	
	
	
	
	
	
	
	--------------------------------------------------------
	local cad_object = CreateCadContour(Contour)
	local cur_layer = doc.LayerManager:GetActiveLayer()
	local layer = doc.LayerManager:GetLayerWithName("Plantilla")
	layer:AddObject(cad_object, true)
	layer:SetColor(0,0,0)
	layer.Visible = true 
	doc.LayerManager:SetActiveLayer(cur_layer)
	doc:Refresh2DView()	
	--------------------------------------------------------
	return true; 
end


function dibujarPlantilla_A3horizontal(doc)
	return true;
end

function dibujarPlantilla_A3vertical(doc)
	return true;
end

function dibujarPlantilla_auxiliar(doc,punto1,punto2,punto3,punto4,dibujarCruz)
  --dibujarCruz es para dibujar una cruz en el lateral del rectangulo para asi poder clickar y escribir en el mas facil [dibujarCruz=0 NO SE DIBUJA] [dibujarCruz=1 SE DIBUJA]--
  
  local Contour = Contour(0.0)
  Contour:AppendPoint(punto1)
  
  if punto3==0 and dibujarCruz==0 then
	Contour:LineTo(punto2)
  elseif punto4==0 and dibujarCruz==0 then
	Contour:LineTo(punto2)
	Contour:LineTo(punto3)
  elseif dibujarCruz==0 then
	Contour:LineTo(punto2)
	Contour:LineTo(punto3)
	Contour:LineTo(punto4)
	Contour:LineTo(punto1)
	
  elseif dibujarCruz==1 then
	Contour:LineTo(punto2)
	
	local alturaRecuadro = (punto2.Y - punto3.Y)
	local anchuraRecuadro = (punto2.X - punto1.X)
	--DisplayMessageBox("altura adjfdlkjadfk:    " .. anchuraRecuadro .. "")
	
	local tamCruz=0.625*2*escalaPlantilla
	local tam1=0.25*2*escalaPlantilla
	local tam2=tam1*2
	
	local puntoCruz1 = Point2D(punto2.X,punto3.Y+alturaRecuadro/2 +tam1)
	local puntoCruz2 = Point2D(punto2.X-tamCruz,punto3.Y+alturaRecuadro/2 +tam1)
	local puntoCruz3 = Point2D(punto2.X-tamCruz,punto3.Y+alturaRecuadro/2 +tam1+tamCruz)
	local puntoCruz4 = Point2D(punto2.X-tamCruz-tamCruz,punto3.Y+alturaRecuadro/2 +tam1+tamCruz)
	local puntoCruz5 = Point2D(punto2.X-tamCruz-tamCruz,punto3.Y+alturaRecuadro/2 +tam1)
	local puntoCruz6 = Point2D(punto2.X-tamCruz-tamCruz-tamCruz,punto3.Y+alturaRecuadro/2 +tam1)
	local puntoCruz7 = Point2D(punto2.X-tamCruz-tamCruz-tamCruz,punto3.Y+alturaRecuadro/2 +tam1-tam2)
	local puntoCruz8 = Point2D(punto2.X-tamCruz-tamCruz,punto3.Y+alturaRecuadro/2 +tam1-tam2)
	local puntoCruz9 = Point2D(punto2.X-tamCruz-tamCruz,punto3.Y+alturaRecuadro/2 +tam1-tam2-tamCruz)
	local puntoCruz10 = Point2D(punto2.X-tamCruz,punto3.Y+alturaRecuadro/2 +tam1-tam2-tamCruz)
	local puntoCruz11 = Point2D(punto2.X-tamCruz,punto3.Y+alturaRecuadro/2 +tam1-tam2)
	local puntoCruz12 = Point2D(punto2.X,punto3.Y+alturaRecuadro/2 -tam1)
	
	Contour:LineTo(puntoCruz1)
	Contour:LineTo(puntoCruz2)
	Contour:LineTo(puntoCruz3)
	Contour:LineTo(puntoCruz4)
	Contour:LineTo(puntoCruz5)
	Contour:LineTo(puntoCruz6)
	Contour:LineTo(puntoCruz7)
	Contour:LineTo(puntoCruz8)
	Contour:LineTo(puntoCruz9)
	Contour:LineTo(puntoCruz10)
	Contour:LineTo(puntoCruz11)
	Contour:LineTo(puntoCruz12)

	
	Contour:LineTo(punto3)
	Contour:LineTo(punto4)
	Contour:LineTo(punto1)
  end
  
  
  --------------------------------------------------------
  local cad_object = CreateCadContour(Contour)
  local cur_layer = doc.LayerManager:GetActiveLayer()
  local layer = doc.LayerManager:GetLayerWithName("Plantilla")
  layer:AddObject(cad_object, true)
  layer:SetColor(0,0,0)
  layer.Visible = true 
  doc.LayerManager:SetActiveLayer(cur_layer)
  --------------------------------------------------------
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
	
	
	local modeloOpciones = HTML_Dialog(false, html_path, tamX, tamY/2, "Ajustes")
	
	
	
	
	
	if  not modeloOpciones:ShowDialog() then
			return false;
	end
	
	
end


function OnLuaButton_aceptarAjustes(modeloOpciones)
	
	
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





















