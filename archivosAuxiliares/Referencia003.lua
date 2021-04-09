-- VECTRIC LUA SCRIPT

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------ DIBUJAR BANDEJAS CLIENTES PERSONALIZADAS ----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- [REFERENCIA 003] -----------------------------------------------------------------------------------------------------------------
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
