
-- VECTRIC LUA SCRIPT
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------ DIBUJAR BANDEJAS CLIENTES PERSONALIZADAS ----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- [REFERENCIA 011] -----------------------------------------------------------------------------------------------------------------
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












