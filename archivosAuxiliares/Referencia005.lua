-- VECTRIC LUA SCRIPT

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
