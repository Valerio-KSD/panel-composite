
-- VECTRIC LUA SCRIPT
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------ DIBUJAR BANDEJAS CLIENTES PERSONALIZADAS ----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- [REFERENCIA 007 - 008] -----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

        --TAREAR PENDIENTES DE ESTA FIGURA--
            --Corregir formas raras abajo y a arrib a la derecha
            --Añadir opcion de dibujar fresado exterior o no


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
		dibujarFresado_auxiliar(doc,fresado35,fresado14)
	
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
		dibujarFresado_auxiliar(doc,fresado41,fresado16)	
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

