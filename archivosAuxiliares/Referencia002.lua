
-- VECTRIC LUA SCRIPT
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------ DIBUJAR BANDEJAS CLIENTES PERSONALIZADAS ----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- [REFERENCIA 002] -----------------------------------------------------------------------------------------------------------------
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
	

	
	--anchura1 - Superior
	if anchura1>pliegueSuperior then
		local fresado17 = Point2D(origenX,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		local fresado18 = Point2D(origenX+anchura1-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		dibujarFresado_auxiliar(doc,fresado17,fresado18)
		local fresado19 = Point2D(origenX+anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		local fresado20 = Point2D(origenX+anchura1-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior+pliegueInferior)
		dibujarFresado_auxiliar(doc,fresado19,fresado20)
	end
	
	
	--anchura2 - Superior
	if anchura2>pliegueSuperior*2 then
		local fresado22 = Point2D(origenX+anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		local fresado21 = Point2D(origenX+anchura1+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior+pliegueInferior)
		dibujarFresado_auxiliar(doc,fresado21,fresado22)
		local fresado23 = Point2D(origenX+anchura1+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		local fresado24 = Point2D(origenX+anchura1+anchura2-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		dibujarFresado_auxiliar(doc,fresado23,fresado24)
		local fresado25 = Point2D(origenX+anchura1+anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		local fresado26 = Point2D(origenX+anchura1+anchura2-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior+pliegueInferior)
		dibujarFresado_auxiliar(doc,fresado25,fresado26)
	end
	
	
	--anchura3 - Superior
	if anchura3>pliegueSuperior*2 then
		local fresado28 = Point2D(origenX+anchura1+anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		local fresado27 = Point2D(origenX+anchura1+anchura2+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior+pliegueInferior)
		dibujarFresado_auxiliar(doc,fresado28,fresado27)
		local fresado29 = Point2D(origenX+anchura1+anchura2+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		local fresado30 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		dibujarFresado_auxiliar(doc,fresado29,fresado30)
		local fresado31 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		local fresado32 = Point2D(origenX+anchura1+anchura2+anchura3-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior+pliegueInferior)
		dibujarFresado_auxiliar(doc,fresado31,fresado32)	
	end
	
	
	--anchura4 - Superior
	if anchura4>pliegueSuperior*2 then
		local fresado34 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		local fresado33 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior+pliegueInferior)
		dibujarFresado_auxiliar(doc,fresado33,fresado34)
		local fresado35 = Point2D(origenX+anchura1+anchura2+anchura3+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		local fresado36 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		dibujarFresado_auxiliar(doc,fresado35,fresado36)
		local fresado37 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		local fresado38 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior+pliegueInferior)
		dibujarFresado_auxiliar(doc,fresado37,fresado38)	
	end
	
	
	--anchura5 - Superior
	if anchura5>pliegueSuperior*2 then
		local fresado40 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		local fresado39 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior+pliegueInferior)
		dibujarFresado_auxiliar(doc,fresado39,fresado40)
		local fresado41 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		local fresado42 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		dibujarFresado_auxiliar(doc,fresado41,fresado42)
		local fresado43 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		local fresado44 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior+pliegueInferior)
		dibujarFresado_auxiliar(doc,fresado43,fresado44)	
	end
	
	
	--anchura6 - Superior
	if anchura6>pliegueSuperior*2 then
		local fresado46 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		local fresado45 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior+pliegueInferior)
		dibujarFresado_auxiliar(doc,fresado45,fresado46)
		local fresado47 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		local fresado48 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		dibujarFresado_auxiliar(doc,fresado47,fresado48)
		local fresado49 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		local fresado50 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior+pliegueInferior)
		dibujarFresado_auxiliar(doc,fresado49,fresado50)	
	end
	
	
	--anchura7 - Superior
	if anchura7>pliegueSuperior then
		local fresado52 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		local fresado51 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior+pliegueInferior)
		dibujarFresado_auxiliar(doc,fresado51,fresado52)
		local fresado53 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		local fresado54 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+anchura7,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
		dibujarFresado_auxiliar(doc,fresado53,fresado54)
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



--[[function dibujarFresado002_auxiliar(doc,punto1,punto2)

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
