
-- VECTRIC LUA SCRIPT
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------ DIBUJAR BANDEJAS CLIENTES PERSONALIZADAS ----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- [REFERENCIA 006] -----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


function dibujarFresado006(doc)
	--[[
	alturaPlaca=500 --[A][borrar]
	anchuraPlaca=733.5821 --[B][borrar]
	
	alaInferior=45 --[C4][borrar]
	alaDerecha=45 --[C2][borrar]
	alaSuperior=45 --[C3][borrar]
	pliegueSuperior=50 --[P][borrar]
	alaIzquierda=45 --[C1][borrar]
	
	margenL=985.9861 --[L][borrar]
	margenS=522.6872 --[S][borrar]
	margenM=311.5437 --[M][borrar]
	--alfa=45 --[alfa][borrar]
	--]]
	
	
	--Puntos trayectoria 
	local Contour = Contour(0.0)
	
	local fresado1 = Point2D(origenX+alaInferior,origenY)
	local fresado2 = Point2D(origenX+alaInferior+margenL,origenY)
	local fresado3 = Point2D(origenX+alaInferior,origenY+alaInferior)
	local fresado4 = Point2D(origenX+alaInferior+margenL,origenY+alaInferior)
	
	--Calculo punto inclinado
	local z=anchuraPlaca-margenL
	local k=margenM^2-alturaPlaca^2-z^2-margenS^2
	--DisplayMessageBox("z: " ..z.. "    k: " ..k.. "")
	
	local y=((4*k*alturaPlaca)+math.sqrt((-4*k*alturaPlaca)^2-4*(-4*alturaPlaca^2-4*z^2)*(4*z^2*margenS^2-k^2)))/(2*(-4*alturaPlaca^2-4*z^2))
	local x=math.sqrt(margenS^2-y^2)
	--DisplayMessageBox("x: " ..x.. "    y: " ..y.. "")
	
	
	local fresado5 = Point2D(origenX+alaInferior+x,origenY+alaInferior+y)
	local fresado6 = Point2D(origenX+alaInferior+margenL-anchuraPlaca,origenY+alaInferior+alturaPlaca)
	local fresado7 = Point2D(origenX+alaInferior+margenL,origenY+alaInferior+alturaPlaca)
	local fresado8 = Point2D(origenX+alaInferior+margenL-anchuraPlaca,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	local fresado9 = Point2D(origenX+alaInferior+margenL,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	
	
	
	
	dibujarFresado_auxiliar(doc,fresado1,fresado3)
	dibujarFresado_auxiliar(doc,fresado3,fresado4)
	dibujarFresado_auxiliar(doc,fresado2,fresado9)
	dibujarFresado_auxiliar(doc,fresado9,fresado8)
	dibujarFresado_auxiliar(doc,fresado8,fresado6)
	dibujarFresado_auxiliar(doc,fresado6,fresado7)
	dibujarFresado_auxiliar(doc,fresado6,fresado5)
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









function dibujarCorte006(doc)
	--Calculo punto inclinado
	local z=anchuraPlaca-margenL
	local k=margenM^2-alturaPlaca^2-z^2-margenS^2
	
	local y=((4*k*alturaPlaca)+math.sqrt((-4*k*alturaPlaca)^2-4*(-4*alturaPlaca^2-4*z^2)*(4*z^2*margenS^2-k^2)))/(2*(-4*alturaPlaca^2-4*z^2))
	local x=math.sqrt(margenS^2-y^2)
	
	
	
	
	
	
	
	local Contour = Contour(0.0)
	
	local corte1 = Point2D(origenX+alaInferior,origenY+alaInferior)
	local corte2 = Point2D(origenX,origenY)
	local corte3 = Point2D(origenX+alaInferior+margenL+alaInferior,origenY)
	local corte4 = Point2D(origenX+alaInferior+margenL,origenY+alaInferior)
	local corte5 = Point2D(origenX+alaInferior+margenL+alaIzquierda,origenY+alaInferior+alaIzquierda)
	local corte6 = Point2D(origenX+alaInferior+margenL+alaIzquierda,origenY+alaInferior+alturaPlaca-alaIzquierda)
	local corte7 = Point2D(origenX+alaInferior+margenL,origenY+alaInferior+alturaPlaca)
	local corte8 = Point2D(origenX+alaInferior+margenL+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	local corte9 = Point2D(origenX+alaInferior+margenL,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	local corte10 = Point2D(origenX+alaInferior+margenL,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
	local corte11 = Point2D(origenX+alaInferior+margenL-anchuraPlaca,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
	local corte12 = Point2D(origenX+alaInferior+margenL-anchuraPlaca,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	local corte13 = Point2D(origenX+alaInferior+margenL-anchuraPlaca-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
	local corte14 = Point2D(origenX+alaInferior+margenL-anchuraPlaca,origenY+alaInferior+alturaPlaca)
	
	
	
	
	
	--Angulo de arriba
	local beta=math.atan((alturaPlaca-y)/(anchuraPlaca-margenL+x))
	local hipot=alaIzquierda/math.sin(math.rad(45))
	local distanciaX=hipot*math.cos(math.rad(45)+beta)
	--distanciaX=math.abs(distanciaX)
	local distanciaY=math.sqrt(hipot^2-distanciaX^2)
	--DisplayMessageBox("distx: " ..distanciaX.. "")
	--DisplayMessageBox("disty: " ..distanciaY.. "")
	local corte15 = Point2D(origenX+alaInferior+margenL-anchuraPlaca+distanciaX,origenY+alaInferior+alturaPlaca-distanciaY)
	
	
	
	--Angulo de abajo
	local fi=math.atan(y/x)
	local hipot=alaIzquierda/math.sin(math.rad(45)) 
	local distanciaX=hipot*math.cos(math.rad(45)+fi)
	distanciaX=math.abs(distanciaX)
	local distanciaY=math.sqrt(hipot^2-distanciaX^2)
	--DisplayMessageBox("distx: " ..distanciaX.. "")
	--DisplayMessageBox("disty: " ..distanciaY.. "")	
	local corte18 = Point2D(origenX+alaInferior+distanciaX,origenY+alaInferior+distanciaY)
	
	
	
	--Angulo de en medio
	local alfa=-beta-fi
	alfa=math.abs(alfa)
	local alfa1=alfa/2
	local alfa11=alfa1-fi
	local hipot=alaIzquierda/math.sin(alfa1)
	local distanciaY=hipot*math.sin(alfa11)
	local distanciaX=hipot*math.cos(alfa11)
	
	--DisplayMessageBox("distx: " ..distanciaX.. "")
	--DisplayMessageBox("disty: " ..distanciaY.. "")
	local corte16 = Point2D(origenX+alaInferior+x-distanciaX,origenY+alaInferior+y+distanciaY)
	local corte17 = Point2D(origenX+alaInferior+x,origenY+alaInferior+y)
	
	
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
	Contour:LineTo(corte16)
	Contour:LineTo(corte18)
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


