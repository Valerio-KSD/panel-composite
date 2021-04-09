
-- VECTRIC LUA SCRIPT
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------ DIBUJAR BANDEJAS CLIENTES PERSONALIZADAS ----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- [REFERENCIA 012] -----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------




function dibujarFresado012(doc)
	
	--[[pliegueSup1=15
	pliegueSup2=30
	pliegueSup3=80
	
	pliegueIzq1=15
	pliegueIzq2=30
	pliegueIzq3=80
	
	pliegueDer1=15
	pliegueDer2=30
	pliegueDer3=80
	
	pliegueInf1=15
	pliegueInf2=30
	pliegueInf3=80
	
	anchuraPlaca=1000
	alturaPlaca=500--]]
	
	
	
	--Puntos trayectoria 
	local Contour = Contour(0.0)
	
	local fresado1 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3,origenY+pliegueInf1+pliegueInf2+pliegueInf3)
	local fresado2 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca,origenY+pliegueInf1+pliegueInf2+pliegueInf3)
	local fresado3 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca)
	local fresado4 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca)
	
	local fresado5 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3,origenY+pliegueInf1+pliegueInf2)
	local fresado6 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca,origenY+pliegueInf1+pliegueInf2)
	local fresado7 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+pliegueInf2,origenY+pliegueInf1)
	local fresado8 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca-pliegueInf2,origenY+pliegueInf1)
	
	local fresado9 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca+pliegueDer3,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca)
	local fresado10 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca+pliegueDer3,origenY+pliegueInf1+pliegueInf2+pliegueInf3)
	local fresado11 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca+pliegueDer3+pliegueDer2,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca-pliegueDer2)
	local fresado12 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca+pliegueDer3+pliegueDer2,origenY+pliegueInf1+pliegueInf2+pliegueInf3+pliegueDer2)
	
	local fresado13 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+pliegueSup3)
	local fresado14 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+pliegueSup3)
	local fresado15 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+pliegueSup2,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+pliegueSup3+pliegueSup2)
	local fresado16 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca-pliegueSup2,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+pliegueSup3+pliegueSup2)
	
	local fresado17 = Point2D(origenX+pliegueIzq1+pliegueIzq2,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca)
	local fresado18 = Point2D(origenX+pliegueIzq1+pliegueIzq2,origenY+pliegueInf1+pliegueInf2+pliegueInf3)
	local fresado19 = Point2D(origenX+pliegueIzq1,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca-pliegueIzq2)
	local fresado20 = Point2D(origenX+pliegueIzq1,origenY+pliegueInf1+pliegueInf2+pliegueInf3+pliegueIzq2)
	
	
	dibujarFresado_auxiliar(doc,fresado1,fresado2)
	dibujarFresado_auxiliar(doc,fresado2,fresado3)
	dibujarFresado_auxiliar(doc,fresado3,fresado4)
	dibujarFresado_auxiliar(doc,fresado4,fresado1)
	
	dibujarFresado_auxiliar(doc,fresado5,fresado6)
	dibujarFresado_auxiliar(doc,fresado7,fresado8)
	
	dibujarFresado_auxiliar(doc,fresado9,fresado10)
	dibujarFresado_auxiliar(doc,fresado11,fresado12)
	
	dibujarFresado_auxiliar(doc,fresado13,fresado14)
	dibujarFresado_auxiliar(doc,fresado15,fresado16)
	
	dibujarFresado_auxiliar(doc,fresado17,fresado18)
	dibujarFresado_auxiliar(doc,fresado19,fresado20)
	
	
	--FRESADO EXTERNO--
	if crearFresado==1 then 
		local fresado1 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3-margenFresado,origenY+pliegueInf1+pliegueInf2+pliegueInf3-margenFresado)
		local fresado2 = Point2D(origenX+pliegueIzq1+pliegueIzq2,origenY+pliegueInf1+pliegueInf2+pliegueInf3-margenFresado)
		local fresado3 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3-margenFresado,origenY+pliegueInf1+pliegueInf2)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		dibujarFresado_auxiliar(doc,fresado1,fresado3)
		
		local fresado1 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca+margenFresado,origenY+pliegueInf1+pliegueInf2+pliegueInf3-margenFresado)
		local fresado2 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca+pliegueDer3,origenY+pliegueInf1+pliegueInf2+pliegueInf3-margenFresado)
		local fresado3 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca+margenFresado,origenY+pliegueInf1+pliegueInf2)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		dibujarFresado_auxiliar(doc,fresado1,fresado3)
		
		local fresado1 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+margenFresado+anchuraPlaca,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+margenFresado)
		local fresado2 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+pliegueDer3+anchuraPlaca,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+margenFresado)
		local fresado3 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+margenFresado+anchuraPlaca,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+pliegueSup3)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		dibujarFresado_auxiliar(doc,fresado1,fresado3)
		
		local fresado1 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3-margenFresado,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+margenFresado)
		local fresado2 = Point2D(origenX+pliegueIzq1+pliegueIzq2,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+margenFresado)
		local fresado3 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3-margenFresado,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+pliegueSup3)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		dibujarFresado_auxiliar(doc,fresado1,fresado3)
		
		
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




function dibujarCorte012(doc)
	
	--[[pliegueSup1=15
	pliegueSup2=30
	pliegueSup3=80
	
	pliegueIzq1=15
	pliegueIzq2=30
	pliegueIzq3=80
	
	pliegueDer1=15
	pliegueDer2=30
	pliegueDer3=80
	
	pliegueInf1=15
	pliegueInf2=30
	pliegueInf3=80
	
	anchuraPlaca=1000
	alturaPlaca=500--]]
	
	
	
	local Contour = Contour(0.0)
	
	local corte1 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3,origenY+pliegueInf1+pliegueInf2+pliegueInf3)
	local corte2 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3,origenY+pliegueInf1+pliegueInf2)
	local corte3 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+pliegueInf2,origenY+pliegueInf1)
	local corte4 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+pliegueInf2,origenY)
	local corte5 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca-pliegueInf2,origenY)
	local corte6 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca-pliegueInf2,origenY+pliegueInf1)
	local corte7 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca,origenY+pliegueInf1+pliegueInf2)
	local corte8 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca,origenY+pliegueInf1+pliegueInf2+pliegueInf3)
	local corte9 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca+pliegueDer3,origenY+pliegueInf1+pliegueInf2+pliegueInf3)
	local corte10 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca+pliegueDer3+pliegueDer2,origenY+pliegueInf1+pliegueInf2+pliegueInf3+pliegueDer2)
	local corte11 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca+pliegueDer3+pliegueDer2+pliegueDer1,origenY+pliegueInf1+pliegueInf2+pliegueInf3+pliegueDer2)
	local corte12 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca+pliegueDer3+pliegueDer2+pliegueDer1,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca-pliegueDer2)
	local corte13 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca+pliegueDer3+pliegueDer2,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca-pliegueDer2)
	local corte14 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca+pliegueDer3,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca)
	local corte15 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca)
	local corte16 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+pliegueSup3)
	local corte17 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca-pliegueSup2,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+pliegueSup3+pliegueSup2)
	local corte18 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+anchuraPlaca-pliegueSup2,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+pliegueSup3+pliegueSup2+pliegueSup1)
	local corte19 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+pliegueSup2,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+pliegueSup3+pliegueSup2+pliegueSup1)
	local corte20 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3+pliegueSup2,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+pliegueSup3+pliegueSup2)
	local corte21 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca+pliegueSup3)
	local corte22 = Point2D(origenX+pliegueIzq1+pliegueIzq2+pliegueIzq3,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca)
	local corte23 = Point2D(origenX+pliegueIzq1+pliegueIzq2,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca)
	local corte24 = Point2D(origenX+pliegueIzq1,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca-pliegueIzq2)
	local corte25 = Point2D(origenX,origenY+pliegueInf1+pliegueInf2+pliegueInf3+alturaPlaca-pliegueIzq2)
	local corte26 = Point2D(origenX,origenY+pliegueInf1+pliegueInf2+pliegueInf3+pliegueIzq2)
	local corte27 = Point2D(origenX+pliegueIzq1,origenY+pliegueInf1+pliegueInf2+pliegueInf3+pliegueIzq2)
	local corte28 = Point2D(origenX+pliegueIzq1+pliegueIzq2,origenY+pliegueInf1+pliegueInf2+pliegueInf3)
	
	
	
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
	Contour:LineTo(corte21)
	Contour:LineTo(corte22)
	Contour:LineTo(corte23)
	Contour:LineTo(corte24)
	Contour:LineTo(corte25)
	Contour:LineTo(corte26)
	Contour:LineTo(corte27)
	Contour:LineTo(corte28)
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
















