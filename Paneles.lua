-- VECTRIC LUA SCRIPT

require "strict"

--Variable texto
textoDescriptivo=""

--Variables Taladros/Coliso
crearColiso=1
diametroTaladros=5
anchuraColiso=20
alturaColiso=5

--Márgenes Taladros
margenAla=26.26

margenTaladroBota=8.04

margenXTaladroSuperior=13.46
margenYTaladroSuperior=9.06

margenXTaladroInferior=11.64
margenYTaladroInferior=8.84

distanciaYTaladrosSuperiores=53.24

distanciaXTaladrosInferiores=1.82


anchoBota=18.5

--Matrices
--cantidadX=1
--cantidadY=1
--distanciaX=100
--distanciaY=100

--Entradas comunes a todos los modelos [AH][BH][CH]
alaSuperior=40
alaInferior=40
alaDerecha=40--64
alaIzquierda=alaDerecha

pliegueSuperior=36
pliegueInferior=36

margenA=57--74 --Margen Superior
margenB=108--132 --Margen Inferior

anchuraPlaca = 2000 --1000
margenPlaca = 3
alturaPlaca = 1000 --500



origenX=0
origenY=0



--Entrada para modelo [BH]
anchura1=1200 --izquierda
anchura2=800 --derecha
anchuraPlaca=anchura1+anchura2
	
separacionPliegues=4

--Entrada para modelo [CH]
anchuraIzq=400
anchuraCentro=1200
anchuraDcha=400





modelo=0

--[AH=0 - AH1=1 - AH2=2 - AH3=3 - AH4=4 - AH5=5 - AH6=6 - AH7=7 - AH8=8]
--[BH=9 - BH1=10 - BH2=11 - BH3=12 - BH4=13 - BH5=14 - BH6=15 - BH7=16 - BH8=17]
--[BH9=18 - BH10=19 - BH11=20 - BH12=21 - BH13=22 - BH14=23 - BH15=24 - BH16=25 - BH17=26]
--[CH=27 - CH1=28 - CH2=329 - CH3=30 - CH4=31 - CH5=32 - CH6=33 - CH7=34 - CH8=35]




ruta=""
doc = VectricJob()




function main(script_path)

    ruta=script_path
	
		
	if not doc.Exists then
	   DisplayMessageBox("Trabajo NO Cargado")
		return false;
	end
	
	
		
	local html_path = "file:" .. script_path .. "\\Paneles\\Paneles.html"
	
	local framePrincipal = HTML_Dialog(false, html_path, 1900, 950, "KSD Motion Control S.L.U.")

	--framePrincipal:AddRadioGroup("refAH", 1)
		
	if  not framePrincipal:ShowDialog() then
	
		return false;
		
	end

	--modelo=framePrincipal:GetRadioIndex("refAH")
		
	return true; 
end 






function OnLuaButton_crearColiso()
	crearColiso=1
	return true
end

function OnLuaButton_noCrearColiso()
	crearColiso=0
	return true
end



function OnLuaButton_refAH()
	modelo=0
  return true
end

function OnLuaButton_refAH1()
	modelo=1
  return true
end

function OnLuaButton_refAH2()
	modelo=2
  return true
end

function OnLuaButton_refAH3()
	modelo=3
  return true
end

function OnLuaButton_refAH4()
	modelo=4
  return true
end

function OnLuaButton_refAH5()
	modelo=5
  return true
end

function OnLuaButton_refAH6()
	modelo=6
  return true
end

function OnLuaButton_refAH7()
	modelo=7
  return true
end

function OnLuaButton_refAH8()
	modelo=8
  return true
end



function OnLuaButton_refBH()
	modelo=9
  return true
end

function OnLuaButton_refBH1()
	modelo=10
  return true
end

function OnLuaButton_refBH2()
	modelo=11
  return true
end

function OnLuaButton_refBH3()
	modelo=12
  return true
end

function OnLuaButton_refBH4()
	modelo=13
  return true
end

function OnLuaButton_refBH5()
	modelo=14
  return true
end

function OnLuaButton_refBH6()
	modelo=15
  return true
end

function OnLuaButton_refBH7()
	modelo=16
  return true
end

function OnLuaButton_refBH8()
	modelo=17
  return true
end

function OnLuaButton_refBH9()
	modelo=18
  return true
end

function OnLuaButton_refBH10()
	modelo=19
  return true
end

function OnLuaButton_refBH11()
	modelo=20
  return true
end

function OnLuaButton_refBH12()
	modelo=21
  return true
end

function OnLuaButton_refBH13()
	modelo=22
  return true
end

function OnLuaButton_refBH14()
	modelo=23
  return true
end

function OnLuaButton_refBH15()
	modelo=24
  return true
end

function OnLuaButton_refBH16()
	modelo=25
  return true
end

function OnLuaButton_refBH17()
	modelo=26
  return true
end









function OnLuaButton_modeloAH(framePrincipal)

	if modelo == 0 then 
		
		local html_path = "file:" .. ruta .. "\\Paneles\\referenciaAH.html"
		
		local modeloAH = HTML_Dialog(false, html_path, 1900, 950, "REFERENCIA AH")
		
		textoDescriptivo="REFERENCIA AH"
		anchuraPlaca=2000 margenPlaca=3 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=36 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloAH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloAH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    modeloAH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloAH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloAH:AddDoubleField("origenX", origenX)
		--modeloAH:AddDoubleField("origenY", origenY)

		--modeloAH:AddIntegerField("cantidadX", cantidadX)
		--modeloAH:AddIntegerField("cantidadY", cantidadY)
		--modeloAH:AddDoubleField("distanciaX", distanciaX)
		--modeloAH:AddDoubleField("distanciaY", distanciaY)

		modeloAH:AddDoubleField("alaLateral", alaIzquierda)
		modeloAH:AddDoubleField("alaSuperior", alaSuperior)
		modeloAH:AddDoubleField("alaInferior", alaInferior)

		--modeloAH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloAH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloAH:AddDoubleField("margenA", margenA)
		modeloAH:AddDoubleField("margenB", margenB)

		modeloAH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloAH:AddCheckBox("crearColiso", true)
		
	    if  not modeloAH:ShowDialog() then
			
				return false;
					
		end

   	elseif modelo==1 then
		
		local html_path = "file:" .. ruta .. "\\Paneles\\referenciaAH1.html"
			
		local modeloAH = HTML_Dialog(false, html_path, 1900, 950, "REFERENCIA AH1")

		textoDescriptivo="REFERENCIA AH1"
		anchuraPlaca=2000 margenPlaca=3 alturaPlaca=1000 alaIzquierda=40 alaSuperior=20 alaInferior=32
		pliegueSuperior=40 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloAH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloAH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    modeloAH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloAH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloAH:AddDoubleField("origenX", origenX)
		--modeloAH:AddDoubleField("origenY", origenY)

		modeloAH:AddDoubleField("alaLateral", alaIzquierda)
		modeloAH:AddDoubleField("alaSuperior", alaSuperior)
		modeloAH:AddDoubleField("alaInferior", alaInferior)

		--modeloAH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloAH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloAH:AddDoubleField("margenA", margenA)
		modeloAH:AddDoubleField("margenB", margenB)

		modeloAH:AddDoubleField("diametroTaladros", diametroTaladros)
		
	    if  not modeloAH:ShowDialog() then
			
				return false;
					
		end
		
    elseif modelo==2 then
				
		local html_path = "file:" .. ruta .. "\\Paneles\\referenciaAH2.html"
			
		local modeloAH = HTML_Dialog(false, html_path, 1900, 950, "REFERENCIA AH2")

		textoDescriptivo="REFERENCIA AH2"
		anchuraPlaca=2000 margenPlaca=3 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=20.6
		pliegueSuperior=36 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloAH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloAH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    modeloAH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloAH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloAH:AddDoubleField("origenX", origenX)
		--modeloAH:AddDoubleField("origenY", origenY)

		modeloAH:AddDoubleField("alaLateral", alaIzquierda)
		modeloAH:AddDoubleField("alaSuperior", alaSuperior)
		modeloAH:AddDoubleField("alaInferior", alaInferior)

		modeloAH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloAH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloAH:AddDoubleField("margenA", margenA)
		modeloAH:AddDoubleField("margenB", margenB)

		modeloAH:AddDoubleField("diametroTaladros", diametroTaladros)
		
	    if  not modeloAH:ShowDialog() then
			
				return false;
					
		end
	
    elseif modelo==3 then
				
		local html_path = "file:" .. ruta .. "\\Paneles\\referenciaAH3.html"
			
		local modeloAH = HTML_Dialog(false, html_path, 1900, 950, "REFERENCIA AH3")

		textoDescriptivo="REFERENCIA AH3"
		anchuraPlaca=2000 margenPlaca=3 alturaPlaca=1000 alaIzquierda=40 alaSuperior=20 alaInferior=20
		pliegueSuperior=40 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloAH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloAH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    modeloAH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloAH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloAH:AddDoubleField("origenX", origenX)
		--modeloAH:AddDoubleField("origenY", origenY)

		modeloAH:AddDoubleField("alaLateral", alaIzquierda)
		modeloAH:AddDoubleField("alaSuperior", alaSuperior)
		modeloAH:AddDoubleField("alaInferior", alaInferior)

		modeloAH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloAH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloAH:AddDoubleField("margenA", margenA)
		modeloAH:AddDoubleField("margenB", margenB)

		modeloAH:AddDoubleField("diametroTaladros", diametroTaladros)
		
	    if  not modeloAH:ShowDialog() then
			
				return false;
					
		end
	
    elseif modelo==4 then
				
		local html_path = "file:" .. ruta .. "\\Paneles\\referenciaAH4.html"
			
		local modeloAH = HTML_Dialog(false, html_path, 1900, 950, "REFERENCIA AH4")

		textoDescriptivo="REFERENCIA AH4"
		anchuraPlaca=2000 margenPlaca=3 alturaPlaca=1000 alaIzquierda=40 alaSuperior=260 alaInferior=32
		pliegueSuperior=40 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloAH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloAH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    modeloAH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloAH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloAH:AddDoubleField("origenX", origenX)
		--modeloAH:AddDoubleField("origenY", origenY)

		modeloAH:AddDoubleField("alaLateral", alaIzquierda)
		modeloAH:AddDoubleField("alaSuperior", alaSuperior)
		modeloAH:AddDoubleField("alaInferior", alaInferior)

		--modeloAH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloAH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloAH:AddDoubleField("margenA", margenA)
		modeloAH:AddDoubleField("margenB", margenB)

		modeloAH:AddDoubleField("diametroTaladros", diametroTaladros)
		
	    if  not modeloAH:ShowDialog() then
			
				return false;
					
		end
	
    elseif modelo==5 then
				
		local html_path = "file:" .. ruta .. "\\Paneles\\referenciaAH5.html"
			
		local modeloAH = HTML_Dialog(false, html_path, 1900, 950, "REFERENCIA AH5")

		textoDescriptivo="REFERENCIA AH5"
		anchuraPlaca=2000 margenPlaca=3 alturaPlaca=1000 alaIzquierda=40 alaSuperior=260 alaInferior=20
		pliegueSuperior=40 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloAH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloAH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    modeloAH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloAH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloAH:AddDoubleField("origenX", origenX)
		--modeloAH:AddDoubleField("origenY", origenY)

		modeloAH:AddDoubleField("alaLateral", alaIzquierda)
		modeloAH:AddDoubleField("alaSuperior", alaSuperior)
		modeloAH:AddDoubleField("alaInferior", alaInferior)

		modeloAH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloAH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloAH:AddDoubleField("margenA", margenA)
		modeloAH:AddDoubleField("margenB", margenB)

		modeloAH:AddDoubleField("diametroTaladros", diametroTaladros)
		
	    if  not modeloAH:ShowDialog() then
			
				return false;
					
		end
	
    elseif modelo==6 then
				
		local html_path = "file:" .. ruta .. "\\Paneles\\referenciaAH6.html"
			
		local modeloAH = HTML_Dialog(false, html_path, 1900, 950, "REFERENCIA AH6")

		textoDescriptivo="REFERENCIA AH6"
		anchuraPlaca=2000 margenPlaca=3 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=300 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloAH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloAH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    modeloAH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloAH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloAH:AddDoubleField("origenX", origenX)
		--modeloAH:AddDoubleField("origenY", origenY)

		modeloAH:AddDoubleField("alaLateral", alaIzquierda)
		modeloAH:AddDoubleField("alaSuperior", alaSuperior)
		modeloAH:AddDoubleField("alaInferior", alaInferior)

		--modeloAH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloAH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloAH:AddDoubleField("margenA", margenA)
		modeloAH:AddDoubleField("margenB", margenB)

		modeloAH:AddDoubleField("diametroTaladros", diametroTaladros)
		
	    if  not modeloAH:ShowDialog() then
			
				return false;
					
		end
	
    elseif modelo==7 then
				
		local html_path = "file:" .. ruta .. "\\Paneles\\referenciaAH7.html"
			
		local modeloAH = HTML_Dialog(false, html_path, 1900, 950, "REFERENCIA AH7")

		textoDescriptivo="REFERENCIA AH7"
		anchuraPlaca=2000 margenPlaca=3 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=20
		pliegueSuperior=300 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloAH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloAH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    modeloAH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloAH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloAH:AddDoubleField("origenX", origenX)
		--modeloAH:AddDoubleField("origenY", origenY)

		modeloAH:AddDoubleField("alaLateral", alaIzquierda)
		modeloAH:AddDoubleField("alaSuperior", alaSuperior)
		modeloAH:AddDoubleField("alaInferior", alaInferior)

		modeloAH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloAH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloAH:AddDoubleField("margenA", margenA)
		modeloAH:AddDoubleField("margenB", margenB)

		modeloAH:AddDoubleField("diametroTaladros", diametroTaladros)
		
	    if  not modeloAH:ShowDialog() then
			
				return false;
					
		end
	
    elseif modelo==8 then
				
		local html_path = "file:" .. ruta .. "\\Paneles\\referenciaAH8.html"
			
		local modeloAH = HTML_Dialog(false, html_path, 1900, 950, "REFERENCIA AH8")

		textoDescriptivo="REFERENCIA AH8"
		anchuraPlaca=2000 margenPlaca=3 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=40
		pliegueSuperior=36 pliegueInferior=300 margenA=57 margenB=108 diametroTaladros=5 
		
        modeloAH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloAH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    modeloAH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloAH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloAH:AddDoubleField("origenX", origenX)
		--modeloAH:AddDoubleField("origenY", origenY)

		modeloAH:AddDoubleField("alaLateral", alaIzquierda)
		modeloAH:AddDoubleField("alaSuperior", alaSuperior)
		modeloAH:AddDoubleField("alaInferior", alaInferior)

		modeloAH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloAH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloAH:AddDoubleField("margenA", margenA)
		modeloAH:AddDoubleField("margenB", margenB)

		modeloAH:AddDoubleField("diametroTaladros", diametroTaladros)
		
	    if  not modeloAH:ShowDialog() then
			
				return false;
					
		end
  	end
	
	
return true;

end






function OnLuaButton_aceptarAH(modeloAH)

	if modelo==0 or modelo==1 or modelo==4 or modelo==6 then --Modelos con pliegue inferior = 0
		pliegueInferior=0
		
		textoDescriptivo = modeloAH:GetTextField("textoDescriptivo")
		anchuraPlaca = modeloAH:GetDoubleField("anchuraPlaca")
	    margenPlaca = modeloAH:GetDoubleField("margenPlaca")
	    alturaPlaca = modeloAH:GetDoubleField("alturaPlaca")
		--origenX = modeloAH:GetDoubleField("origenXAH")
		--origenY = modeloAH:GetDoubleField("origenYAH")

		--cantidadX=modeloAH:GetIntegerField("cantidadX")
		--cantidadY=modeloAH:GetIntegerField("cantidadY")
		--distanciaX=modeloAH:GetDoubleField("distanciaX")
		--distanciaY=modeloAH:GetDoubleField("distanciaY")

		alaIzquierda=modeloAH:GetDoubleField("alaLateral")
		alaSuperior=modeloAH:GetDoubleField("alaSuperior")
		alaInferior=modeloAH:GetDoubleField("alaInferior")
		--pliegueInferior=modeloAH:GetDoubleField("pliegueInferior")
		pliegueSuperior=modeloAH:GetDoubleField("pliegueSuperior")
		margenA=modeloAH:GetDoubleField("margenA")
		margenB=modeloAH:GetDoubleField("margenB")

		diametroTaladros=modeloAH:GetDoubleField("diametroTaladros")
		--alturaColiso=diametroTaladros
		--crearColiso=modeloAH:GetCheckBox("crearColiso")



	elseif modelo==2 or modelo==3 or modelo==5 or modelo==7 or modelo==8 then --Modelos con pliegue inferior != 0 
		
		textoDescriptivo = modeloAH:GetTextField("textoDescriptivo")
		anchuraPlaca = modeloAH:GetDoubleField("anchuraPlaca")
	    margenPlaca = modeloAH:GetDoubleField("margenPlaca")
	    alturaPlaca = modeloAH:GetDoubleField("alturaPlaca")
		
		alaIzquierda = modeloAH:GetDoubleField("alaLateral")
		alaSuperior = modeloAH:GetDoubleField("alaSuperior")
		alaInferior = modeloAH:GetDoubleField("alaInferior")
		
		pliegueInferior=modeloAH:GetDoubleField("pliegueInferior")
		pliegueSuperior = modeloAH:GetDoubleField("pliegueSuperior")
		margenA = modeloAH:GetDoubleField("margenA")
		margenB = modeloAH:GetDoubleField("margenB")

		diametroTaladros=modeloAH:GetDoubleField("diametroTaladros")
		
		--crearColiso=modeloAH:GetCheckBox("crearColiso")
  	end

    
	--Caracteristicas generales
	anchuraPlaca=anchuraPlaca-margenPlaca
    alturaPlaca=alturaPlaca-margenPlaca
	
	alaDerecha=alaIzquierda
	
	alturaColiso=diametroTaladros
	
    --Comprobaciones y validaciones de los datos
	if anchuraPlaca < 0 then
		
		DisplayMessageBox("La anchura de la placa NO puede ser negativa.Creación Modelo AH Fallida")
				
	
	elseif margenPlaca < 0 then
		
		DisplayMessageBox("El margen de la placa NO puede ser negativo.Creación Modelo AH Fallida")
	
	elseif  alturaPlaca < 0 then
		
		DisplayMessageBox("La altura de la placa NO puede ser negativa.Creación Modelo AH Fallida")
	
    	
	else
		
		
		
		
		--origenX=-(alaDerecha+anchuraPlaca+alaIzquierda+200)
		--origenY=-(0)
		
		dibujarFresadoAH(doc)
		dibujarCorteAH(doc)
		dibujarTextoAH(doc)
		dibujarTaladrosAH(doc)
		
		
		
		
		
		--origenX=-(alaDerechaanchura1+anchura2+alaIzquierda+200)
		--origenY=-(0)
		
		--dibujarFresadoBH(doc)
		--dibujarCorteBH(doc)
		--dibujarTextoBH(doc)
		--dibujarTaladrosBH(doc)
		
		
		
		
		
		
		
		--origenX=-(alaDerecha+anchuraIzq+anchuraCentro+anchuraDcha+alaIzquierda+200)
		--origenY=-(0)
		
		--dibujarFresadoCH(doc)
		--dibujarCorteCH(doc)
		--dibujarTextoCH(doc)
		--dibujarTaladrosCH(doc)
				
		
		DisplayMessageBox("Modelo AH Creado Correctamente")
	
	end
	
return true;

end



function OnLuaButton_modeloBH(framePrincipal)
	
	if modelo == 9 then 
		
		local html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH.html"
		
		local modeloBH = HTML_Dialog(false, html_path, 1900, 950, "REFERENCIA BH")
		
		textoDescriptivo="REFERENCIA BH"
		anchura1=1200 anchura2=800 margenPlaca=3 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=36 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)

		--modeloBH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end

   	elseif modelo==10 then
		local html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH1.html"
		
		local modeloBH = HTML_Dialog(false, html_path, 1900, 950, "REFERENCIA BH1")
		
		textoDescriptivo="REFERENCIA BH1"
		anchura1=1200 anchura2=800 margenPlaca=3 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=36 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)

		--modeloBH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==11 then
		local html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH2.html"
		
		local modeloBH = HTML_Dialog(false, html_path, 1900, 950, "REFERENCIA BH2")
		
		textoDescriptivo="REFERENCIA BH2"
		anchura1=1200 anchura2=800 margenPlaca=3 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=36 pliegueInferior=4000  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)

		modeloBH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==12 then
		local html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH3.html"
		
		local modeloBH = HTML_Dialog(false, html_path, 1900, 950, "REFERENCIA BH3")
		
		textoDescriptivo="REFERENCIA BH3"
		anchura1=1200 anchura2=800 margenPlaca=3 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=36 pliegueInferior=4000  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)

		modeloBH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==13 then
		local html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH4.html"
		
		local modeloBH = HTML_Dialog(false, html_path, 1900, 950, "REFERENCIA BH4")
		
		textoDescriptivo="REFERENCIA BH4"
		anchura1=1200 anchura2=800 margenPlaca=3 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=36 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)

		--modeloBH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==14 then
		local html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH5.html"
		
		local modeloBH = HTML_Dialog(false, html_path, 1900, 950, "REFERENCIA BH5")
		
		textoDescriptivo="REFERENCIA BH5"
		anchura1=1200 anchura2=800 margenPlaca=3 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=36 pliegueInferior=4000  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)

		modeloBH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==15 then
		local html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH6.html"
		
		local modeloBH = HTML_Dialog(false, html_path, 1900, 950, "REFERENCIA BH6")
		
		textoDescriptivo="REFERENCIA BH6"
		anchura1=1200 anchura2=800 margenPlaca=3 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=36 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)

		--modeloBH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==16 then
		local html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH7.html"
		
		local modeloBH = HTML_Dialog(false, html_path, 1900, 950, "REFERENCIA BH7")
		
		textoDescriptivo="REFERENCIA BH7"
		anchura1=1200 anchura2=800 margenPlaca=3 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=36 pliegueInferior=4000  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)

		modeloBH:AddDoubleField("pliegueInferior", pliegueInferior)
		
		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==17 then
		local html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH8.html"
		
		local modeloBH = HTML_Dialog(false, html_path, 1900, 950, "REFERENCIA BH8")
		
		textoDescriptivo="REFERENCIA BH8"
		anchura1=1200 anchura2=800 margenPlaca=3 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=36 pliegueInferior=4000  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)

		modeloBH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==18 then
		local html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH9.html"
		
		local modeloBH = HTML_Dialog(false, html_path, 1900, 950, "REFERENCIA BH9")
		
		textoDescriptivo="REFERENCIA BH9"
		anchura1=1200 anchura2=800 margenPlaca=3 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=36 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)

		--modeloBH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==19 then
		local html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH10.html"
		
		local modeloBH = HTML_Dialog(false, html_path, 1900, 950, "REFERENCIA BH10")
		
		textoDescriptivo="REFERENCIA BH10"
		anchura1=1200 anchura2=800 margenPlaca=3 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=36 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)

		--modeloBH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==20 then
		local html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH11.html"
		
		local modeloBH = HTML_Dialog(false, html_path, 1900, 950, "REFERENCIA BH11")
		
		textoDescriptivo="REFERENCIA BH11"
		anchura1=1200 anchura2=800 margenPlaca=3 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=36 pliegueInferior=4000  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)

		modeloBH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==21 then
		local html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH12.html"
		
		local modeloBH = HTML_Dialog(false, html_path, 1900, 950, "REFERENCIA BH12")
		
		textoDescriptivo="REFERENCIA BH12"
		anchura1=1200 anchura2=800 margenPlaca=3 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=36 pliegueInferior=4000  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)

		modeloBH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==22 then
		local html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH13.html"
		
		local modeloBH = HTML_Dialog(false, html_path, 1900, 950, "REFERENCIA BH13")
		
		textoDescriptivo="REFERENCIA BH13"
		anchura1=1200 anchura2=800 margenPlaca=3 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=36 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)

		--modeloBH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==23 then
		local html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH14.html"
		
		local modeloBH = HTML_Dialog(false, html_path, 1900, 950, "REFERENCIA BH14")
		
		textoDescriptivo="REFERENCIA BH14"
		anchura1=1200 anchura2=800 margenPlaca=3 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=36 pliegueInferior=4000  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)

		modeloBH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==24 then
		local html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH15.html"
		
		local modeloBH = HTML_Dialog(false, html_path, 1900, 950, "REFERENCIA BH15")
		
		textoDescriptivo="REFERENCIA BH15"
		anchura1=1200 anchura2=800 margenPlaca=3 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=36 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)

		--modeloBH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==25 then
		local html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH16.html"
		
		local modeloBH = HTML_Dialog(false, html_path, 1900, 950, "REFERENCIA BH16")
		
		textoDescriptivo="REFERENCIA BH16"
		anchura1=1200 anchura2=800 margenPlaca=3 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=36 pliegueInferior=4000  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)

		modeloBH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
		
	elseif modelo==26 then
		local html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH17.html"
		
		local modeloBH = HTML_Dialog(false, html_path, 1900, 950, "REFERENCIA BH17")
		
		textoDescriptivo="REFERENCIA BH17"
		anchura1=1200 anchura2=800 margenPlaca=3 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=36 pliegueInferior=4000  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    modeloBH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)

		modeloBH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	end
		

return true;

end
  
  
  
function OnLuaButton_aceptarBH(modeloBH)

	if modelo==9 or modelo==10 or modelo==13 or modelo==15 then --SIN PLIEGUE / FILA 1
		pliegueInferior=0
		
		textoDescriptivo = modeloBH:GetTextField("textoDescriptivo")
		anchura1 = modeloBH:GetDoubleField("anchuraPlacaIzquierda")
		anchura2 = modeloBH:GetDoubleField("anchuraPlacaDerecha")
	    margenPlaca = modeloBH:GetDoubleField("margenPlaca")
	    alturaPlaca = modeloBH:GetDoubleField("alturaPlaca")
		--origenX = modeloBH:GetDoubleField("origenXAH")
		--origenY = modeloBH:GetDoubleField("origenYAH")

		--cantidadX=modeloBH:GetIntegerField("cantidadX")
		--cantidadY=modeloBH:GetIntegerField("cantidadY")
		--distanciaX=modeloBH:GetDoubleField("distanciaX")
		--distanciaY=modeloBH:GetDoubleField("distanciaY")

		alaIzquierda=modeloBH:GetDoubleField("alaLateral")
		alaSuperior=modeloBH:GetDoubleField("alaSuperior")
		alaInferior=modeloBH:GetDoubleField("alaInferior")
		--pliegueInferior=modeloBH:GetDoubleField("pliegueInferior")
		pliegueSuperior=modeloBH:GetDoubleField("pliegueSuperior")
		margenA=modeloBH:GetDoubleField("margenA")
		margenB=modeloBH:GetDoubleField("margenB")

		diametroTaladros=modeloBH:GetDoubleField("diametroTaladros")
		--alturaColiso=diametroTaladros
		--crearColiso=modeloBH:GetCheckBox("crearColiso")



	elseif modelo==11 or modelo==12 or modelo==14 or modelo==16 or modelo==17 then  --CON PLIEGUE / FILA 1
		
		textoDescriptivo = modeloBH:GetTextField("textoDescriptivo")
		anchura1 = modeloBH:GetDoubleField("anchuraPlacaIzquierda")
		anchura2 = modeloBH:GetDoubleField("anchuraPlacaDerecha")
	    margenPlaca = modeloBH:GetDoubleField("margenPlaca")
	    alturaPlaca = modeloBH:GetDoubleField("alturaPlaca")
		--origenX = modeloBH:GetDoubleField("origenXAH")
		--origenY = modeloBH:GetDoubleField("origenYAH")

		--cantidadX=modeloBH:GetIntegerField("cantidadX")
		--cantidadY=modeloBH:GetIntegerField("cantidadY")
		--distanciaX=modeloBH:GetDoubleField("distanciaX")
		--distanciaY=modeloBH:GetDoubleField("distanciaY")

		alaIzquierda=modeloBH:GetDoubleField("alaLateral")
		alaSuperior=modeloBH:GetDoubleField("alaSuperior")
		alaInferior=modeloBH:GetDoubleField("alaInferior")
		pliegueInferior=modeloBH:GetDoubleField("pliegueInferior")
		pliegueSuperior=modeloBH:GetDoubleField("pliegueSuperior")
		margenA=modeloBH:GetDoubleField("margenA")
		margenB=modeloBH:GetDoubleField("margenB")

		diametroTaladros=modeloBH:GetDoubleField("diametroTaladros")
		--alturaColiso=diametroTaladros
		--crearColiso=modeloBH:GetCheckBox("crearColiso")
		
		
	elseif modelo==18 or modelo==19 or modelo==22 or modelo==24 then  --SIN PLIEGUE / FILA 2 -> 18 19 22 24
	
	elseif modelo==20 or modelo==21 or modelo==23 or modelo==25 or modelo==26 then  --CON PLIEGUE / FILA 2 ->20 21 23 25 26
	
  	end

    
	--Caracteristicas generales
	anchuraPlaca=anchura1+anchura2 --¿Como se reparte el margen de la placa en este tipo de piezas? <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< DUDA <<<<<<<<<<<<<<<<
	
	anchuraPlaca=anchuraPlaca-margenPlaca
    alturaPlaca=alturaPlaca-margenPlaca
	
	alaDerecha=alaIzquierda
	
	alturaColiso=diametroTaladros
	
    --Comprobaciones y validaciones de los datos
	if anchuraPlaca < 0 then
		
		DisplayMessageBox("La anchura de la placa NO puede ser negativa.Creación Modelo AH Fallida")
				
	
	elseif margenPlaca < 0 then
		
		DisplayMessageBox("El margen de la placa NO puede ser negativo.Creación Modelo AH Fallida")
	
	elseif  alturaPlaca < 0 then
		
		DisplayMessageBox("La altura de la placa NO puede ser negativa.Creación Modelo AH Fallida")
	
    	
	else
		
		--origenX=-(alaDerecha+anchura1+anchura2+alaIzquierda+200)
		--origenY=-(0)
		
		dibujarFresadoBH(doc)
		dibujarCorteBH(doc)
		--dibujarTextoBH(doc)
		--dibujarTaladrosBH(doc)
		
			
		DisplayMessageBox("Modelo AH Creado Correctamente")
	
	end
	
return true;

end


--=======
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- DIBUJAR REF AH ---------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-->>>>>>> dad597bfe66999383933152f688e45bdb15aaf6b

function dibujarFresadoAH(doc)
	
	local Contour = Contour(0.0)
	
	local fresado9 = Point2D(origenX+alaIzquierda,origenY)
	local fresado1 = Point2D(origenX+alaIzquierda, origenY+alaInferior)
	local fresado2 = Point2D(origenX+alaIzquierda, origenY+alaInferior+pliegueInferior)
	local fresado3 = Point2D(origenX+anchuraPlaca+alaIzquierda,origenY+alaInferior+pliegueInferior)
	local fresado4 = Point2D(origenX+anchuraPlaca+alaIzquierda,origenY+alaInferior)
 	local fresado10 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY)
  	local fresado5 = Point2D(origenX+anchuraPlaca+alaIzquierda,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
   	local fresado6 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca+pliegueSuperior+pliegueInferior)
   	local fresado7 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca+pliegueInferior)
	local fresado8 = Point2D(origenX+anchuraPlaca+alaIzquierda,origenY+alaInferior+alturaPlaca+pliegueInferior)
	local fresado11 = Point2D(origenX+anchuraPlaca+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
	
	
	if modelo==0 or modelo==1 then --REF [AH][AH1]
		Contour:AppendPoint(fresado9)
		Contour:LineTo(fresado2)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado6)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado8)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado2)



	elseif modelo==2 or modelo==3 then --REF [AH2][AH3]
		Contour:AppendPoint(fresado1)
		Contour:LineTo(fresado2)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado4)
		Contour:LineTo(fresado1)
		Contour:LineTo(fresado6)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado4)
		Contour:LineTo(fresado8)
		Contour:LineTo(fresado7)
	elseif modelo==4 then --REF [AH4]
		Contour:AppendPoint(fresado9)
		Contour:LineTo(fresado2)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado8)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado6)
		Contour:LineTo(fresado1)
	elseif modelo==5 then --REF [AH5]
		Contour:AppendPoint(fresado1)
		Contour:LineTo(fresado2)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado4)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado8)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado6)
		Contour:LineTo(fresado1)
		Contour:LineTo(fresado4)
	elseif modelo==6 then --REF [AH6]
		Contour:AppendPoint(fresado9)
		Contour:LineTo(fresado2)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado6)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado8)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado1)
	elseif modelo==7 then --REF [AH7]
		Contour:AppendPoint(fresado1)
		Contour:LineTo(fresado2)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado4)
		Contour:LineTo(fresado1)
		Contour:LineTo(fresado6)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado8)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado8)
		Contour:LineTo(fresado4)
	elseif modelo==8 then  --REF [AH8]
		Contour:AppendPoint(fresado9)
		Contour:LineTo(fresado2)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado4)
		Contour:LineTo(fresado1)
		Contour:LineTo(fresado6)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado8)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado8)
		Contour:LineTo(fresado4)
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
	-----------------------------------------------------------------
	return true; 
end





function dibujarCorteAH(doc)
	
	local Contour = Contour(0.0)
	
	--PARTE INFERIOR-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	if (modelo==0 or modelo==1 or modelo==4 or modelo==6) then --Parte Inferior para los modelos (AH-AH1-AH4-AH6-AH8)   ->[el tamaño de la escuadra depende del ALA]
		local corte1 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
		local corte2 = Point2D(origenX+(alaIzquierda-alaInferior),origenY)
		local corte3 = Point2D(origenX+alaIzquierda+anchuraPlaca+alaInferior,origenY)
		local corte4 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior)
		
		Contour:AppendPoint(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
		
	elseif (modelo==2 or modelo==3 or modelo==5 or modelo==7) then --Parte Inferior para los modelos (AH2-AH3-AH5-AH7)   ->[el tamaño de la escuadra depende del PLIEGUE]
		local corte1 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior)
		local corte2 = Point2D(origenX+(alaIzquierda-pliegueInferior),origenY+alaInferior)
		local corte3 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
		local corte4 = Point2D(origenX+alaIzquierda,origenY)
		local corte5 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY)
		local corte6 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior)
		local corte7 = Point2D(origenX+alaIzquierda+anchuraPlaca+pliegueInferior,origenY+alaInferior)
		local corte8 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior+pliegueInferior)
		
		Contour:AppendPoint(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
		Contour:LineTo(corte5)
		Contour:LineTo(corte6)
		Contour:LineTo(corte7)
		Contour:LineTo(corte8)
		
	else --Parte Inferior para el modelo (AH8)
		local corte1 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior)
		local corte2 = Point2D(origenX+(alaIzquierda-alaInferior),origenY+pliegueInferior)
		local corte3 = Point2D(origenX+(alaIzquierda-alaInferior),origenY+alaInferior*2)
		local corte4 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
		local corte5 = Point2D(origenX+(alaIzquierda-alaInferior),origenY)
		local corte6 = Point2D(origenX+alaIzquierda+anchuraPlaca+alaInferior,origenY)
		local corte7 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior)
		local corte8 = Point2D(origenX+alaIzquierda+anchuraPlaca+alaInferior,origenY+alaInferior*2)
		local corte9 = Point2D(origenX+alaIzquierda+anchuraPlaca+alaInferior,origenY+pliegueInferior)
		local corte10 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+pliegueInferior+alaInferior)
		
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
	end
	
	
	
	
	
	
	
	--PARTE DERECHA (BOTAS)------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
		--Variables BOTAS
	local alturaBotaDeCuelgue=56
	local anchoBota=18.5
	
	local tramoRecto1BotaDerecha=52
	local radioArcoBotaDerecha=4
	local tramoRecto2BotaDerecha=18
	local tramoRecto3BotaDerecha=6.5
	local tramoRecto4BotaDerecha=26
	
	
		--Variables MARGENES superior e inferior
	local cotaInicioDerecha=((margenB-alturaBotaDeCuelgue)+(alaDerecha-anchoBota))/2 --[relacion trigonometrica][explicacion en la hoja de papel] 
	
	local anchoLateral1=alaDerecha-anchoBota  --21.5 --variable para reducir codigo (se podria eliminar)
	local alturaLateral1=cotaInicioDerecha-alaDerecha+anchoBota --15.3  --variable para reducir codigo (se podria eliminar)
	
	local sumaComienzoFin=(margenA)+(margenB-alturaBotaDeCuelgue) --109
	
	
	--Parte inicial
	local corte20 = Point2D(origenX+alaIzquierda+anchuraPlaca+cotaInicioDerecha,origenY+alaInferior+pliegueInferior+cotaInicioDerecha)
	local corte21 = Point2D(origenX+alaIzquierda+anchuraPlaca+anchoLateral1,origenY+alaInferior+pliegueInferior+alturaLateral1+cotaInicioDerecha)
	Contour:LineTo(corte20)
	Contour:LineTo(corte21)
	
	--Parte botas
	local repeticiones=math.ceil((alturaPlaca-sumaComienzoFin)/500.0)
	local tramoRectoEntreBotaDeCuelgue=(alturaPlaca-sumaComienzoFin-((repeticiones+1)*alturaBotaDeCuelgue)-(repeticiones*anchoBota))/repeticiones
	
	local puntoInicioX=(origenX+alaIzquierda+anchuraPlaca+anchoLateral1)
	local puntoInicioY=(origenY+alaInferior+pliegueInferior+cotaInicioDerecha+alturaLateral1)
	
	for n=1, (repeticiones+1) do
		--Dibujar bota
	    local corte6 = Point2D(puntoInicioX, puntoInicioY+tramoRecto1BotaDerecha)
		Contour:LineTo(corte6)
		
		puntoInicioY=puntoInicioY+tramoRecto1BotaDerecha
		
		local corte7=Point2D(puntoInicioX+(2*radioArcoBotaDerecha),puntoInicioY)
		local corte8=Point2D(puntoInicioX+(radioArcoBotaDerecha),puntoInicioY)
		Contour:ArcTo(corte7,corte8,false)
		puntoInicioX=puntoInicioX+(2*radioArcoBotaDerecha)
		
		local corte9=Point2D(puntoInicioX, puntoInicioY-tramoRecto2BotaDerecha)
		Contour:LineTo(corte9)
		puntoInicioY=puntoInicioY-tramoRecto2BotaDerecha
		
		local corte10=Point2D(puntoInicioX+(radioArcoBotaDerecha),puntoInicioY-radioArcoBotaDerecha)
		local corte11=Point2D(puntoInicioX+(radioArcoBotaDerecha),puntoInicioY)
		Contour:ArcTo(corte10,corte11,true)
		puntoInicioX=puntoInicioX+radioArcoBotaDerecha
		puntoInicioY=puntoInicioY-radioArcoBotaDerecha
		
		local corte12=Point2D(puntoInicioX+tramoRecto3BotaDerecha,puntoInicioY)
		Contour:LineTo(corte12)
		puntoInicioX=puntoInicioX+tramoRecto3BotaDerecha
		
		local corte13=Point2D(puntoInicioX,puntoInicioY+tramoRecto4BotaDerecha)
		Contour:LineTo(corte13)
		puntoInicioY=puntoInicioY+tramoRecto4BotaDerecha
		
		--Dibujar tramo recto
		if n==(repeticiones+1) then
			break
		else
			local corte14=Point2D(puntoInicioX,puntoInicioY+tramoRectoEntreBotaDeCuelgue)
			Contour:LineTo(corte14)
			puntoInicioY=puntoInicioY+tramoRectoEntreBotaDeCuelgue
			
			local corte15=Point2D(puntoInicioX-(alaDerecha-anchoLateral1),puntoInicioY+(alaDerecha-anchoLateral1))
			Contour:LineTo(corte15)
			puntoInicioX=puntoInicioX-(alaDerecha-anchoLateral1)
			puntoInicioY=puntoInicioY+(alaDerecha-anchoLateral1)
		end

	end
	
	--Parte final
	local corte22 = Point2D(origenX+alaIzquierda+anchuraPlaca+alaDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca-alaDerecha)
	Contour:LineTo(corte22)
	
	
	
	
	
	
	--PARTE SUPERIOR------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	if (modelo==0 or modelo==1 or modelo==2 or modelo==3 or modelo==4 or modelo==5 or modelo==8) then --Parte Superior para los modelos (AH-AH1-AH2-AH3-AH4-AH5-AH8)   ->[el tamaño de la escuadra depende del PLIEGUE]
		local corte40 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior+pliegueInferior+alturaPlaca)
		local corte41 = Point2D(origenX+alaIzquierda+anchuraPlaca+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte42 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte43 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte44 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte45 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte46 = Point2D(origenX+(alaIzquierda-pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte47 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca)
		
		Contour:LineTo(corte40)
		Contour:LineTo(corte41)
		Contour:LineTo(corte42)
		Contour:LineTo(corte43)
		Contour:LineTo(corte44)
		Contour:LineTo(corte45)
		Contour:LineTo(corte46)
		Contour:LineTo(corte47)
		
		
	else --Parte Superior para los modelos (AH6-AH7)   ->[el tamaño de la escuadra depende del ALA]
		local corte40 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior+pliegueInferior+alturaPlaca)
		local corte41 = Point2D(origenX+alaIzquierda+anchuraPlaca+alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+alaSuperior)
		local corte42 = Point2D(origenX+alaIzquierda+anchuraPlaca+alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior-alaSuperior)
		local corte43 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte44 = Point2D(origenX+alaIzquierda+anchuraPlaca+alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte45 = Point2D(origenX+(alaIzquierda-alaSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte46 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte47 = Point2D(origenX+(alaIzquierda-alaSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior-alaSuperior)
		local corte48 = Point2D(origenX+(alaIzquierda-alaSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+alaSuperior)
		local corte49 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca)
		
		Contour:LineTo(corte40)
		Contour:LineTo(corte41)
		Contour:LineTo(corte42)
		Contour:LineTo(corte43)
		Contour:LineTo(corte44)
		Contour:LineTo(corte45)
		Contour:LineTo(corte46)
		Contour:LineTo(corte47)
		Contour:LineTo(corte48)
		Contour:LineTo(corte49)
		
	end
	
	
	
	
	
	
	
	--PARTE IZQUIERDA (BOTAS)------------------------------------------------------------------------------------------------------------------------------------------------------------------
		--Variables BOTAS
	local tramoRecto1BotaIzquierda=26
	local radioArcoBotaIzquierda=4
	local tramoRecto2BotaIzquierda=6.5
	local tramoRecto3BotaIzquierda=18
	local tramoRecto4BotaIzquierda=52
	
		--Variables por si el ala derecha e izquierda no son simetricas
	local margenA_izq = margenA --Al igualarlo al tamaño de los margenes de la derecha la figura es simetrica, si deja de ser simetrica, hay que pedirle que introduzca manualmente los margenes de la izquierda
	local margenB_izq = margenB
	local cotaInicioIzquierda=((margenB-alturaBotaDeCuelgue)+(alaIzquierda-anchoBota))/2 --[relacion trigonometrica][explicacion en la hoja de papel]
	
	
	--Parte inicial
	local lineaIzquierda=(margenA_izq)*(17/57)
	
	local corte60 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca-alaIzquierda)
	Contour:LineTo(corte60)
	local corte61 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca-alaIzquierda-lineaIzquierda)
	Contour:LineTo(corte61)
	
	
	--Parte botas
	local puntoInicioX=(origenX)
	local puntoInicioY=(origenY+alaInferior+pliegueInferior+alturaPlaca-margenA_izq)
		
	for n=1, (repeticiones+1) do
		--Dibujar bota
	    local corte32 = Point2D(puntoInicioX, puntoInicioY-tramoRecto1BotaIzquierda)
		Contour:LineTo(corte32)
		
		puntoInicioY=puntoInicioY-tramoRecto1BotaIzquierda
		
		local corte33=Point2D(puntoInicioX+tramoRecto2BotaIzquierda, puntoInicioY)
		Contour:LineTo(corte33)
		puntoInicioX=puntoInicioX+tramoRecto2BotaIzquierda
		
		local corte34=Point2D(puntoInicioX+(radioArcoBotaIzquierda),puntoInicioY+radioArcoBotaIzquierda)
		local corte35=Point2D(puntoInicioX,puntoInicioY+radioArcoBotaIzquierda)
		Contour:ArcTo(corte34,corte35,true)
		puntoInicioX=puntoInicioX+radioArcoBotaIzquierda
		puntoInicioY=puntoInicioY+radioArcoBotaIzquierda
		
		local corte36=Point2D(puntoInicioX, puntoInicioY+tramoRecto3BotaIzquierda)
		Contour:LineTo(corte36)
		puntoInicioY=puntoInicioY+tramoRecto3BotaIzquierda
		
		local corte37=Point2D(puntoInicioX+(2*radioArcoBotaIzquierda),puntoInicioY)
		local corte38=Point2D(puntoInicioX+(radioArcoBotaIzquierda),puntoInicioY)
		Contour:ArcTo(corte37,corte38,false)
		puntoInicioX=puntoInicioX+(2*radioArcoBotaIzquierda)
		
		
		local corte39=Point2D(puntoInicioX,puntoInicioY-tramoRecto4BotaIzquierda)
		Contour:LineTo(corte39)
		puntoInicioY=puntoInicioY-tramoRecto4BotaIzquierda
		
		--Dibujar tramo recto
		if n==(repeticiones+1) then
			break
		else
			local corte40=Point2D(puntoInicioX-(anchoBota),puntoInicioY-(anchoBota))
			Contour:LineTo(corte40)
			puntoInicioY=puntoInicioY-(anchoBota)
			puntoInicioX=puntoInicioX-(anchoBota)
			
			
			local corte41=Point2D(puntoInicioX,puntoInicioY-tramoRectoEntreBotaDeCuelgue)
			Contour:LineTo(corte41)
			puntoInicioY=puntoInicioY-tramoRectoEntreBotaDeCuelgue
		end
		

	end
	
	--Parte final
	local corte65 = Point2D(origenX+alaIzquierda-cotaInicioIzquierda,origenY+alaInferior+pliegueInferior+cotaInicioIzquierda)
	local corte66 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior)
	Contour:LineTo(corte65)
	Contour:LineTo(corte66)
	
		
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


function colisoIzq()

	local Contour = Contour(0.0)
    --Coliso Izquierda
	local origenColisoIzq = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
	local pt2ColisoIzq=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
    local pt3ColisoIzq=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
    local pt4ColisoIzq=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	
    Contour:AppendPoint(origenColisoIzq)
	Contour:LineTo(pt2ColisoIzq)
	Contour:LineTo(pt3ColisoIzq)
	Contour:LineTo(pt4ColisoIzq)
	Contour:LineTo(origenColisoIzq)

	local cad_object = CreateCadContour(Contour)

	local cur_layer = doc.LayerManager:GetActiveLayer()
	local layer = doc.LayerManager:GetLayerWithName("Taladros")

	layer:AddObject(cad_object, true)
	layer:SetColor(0,0,1)
	layer.Visible = true 
	doc.LayerManager:SetActiveLayer(cur_layer)
	doc:Refresh2DView()	

end

function colisoDer()

    local Contour = Contour(0.0)
	--Coliso Derecha
	local origenColisoDerecha = Point2D(origenX+alaIzquierda+anchuraPlaca-(2*anchuraColiso),origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
	local pt2ColisoDer=Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
    local pt3ColisoDer=Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
    local pt4ColisoDer=Point2D(origenX+alaIzquierda+anchuraPlaca-(2*anchuraColiso),origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	
    Contour:AppendPoint(origenColisoDerecha)
	Contour:LineTo(pt2ColisoDer)
	Contour:LineTo(pt3ColisoDer)
	Contour:LineTo(pt4ColisoDer)
	Contour:LineTo(origenColisoDerecha)

	local cad_object = CreateCadContour(Contour)
	local cur_layer = doc.LayerManager:GetActiveLayer()
	local layer = doc.LayerManager:GetLayerWithName("Taladros")

	layer:AddObject(cad_object, true)
	layer:SetColor(0,0,1)
	layer.Visible = true 
	doc.LayerManager:SetActiveLayer(cur_layer)
	doc:Refresh2DView()	


end

function dibujarTaladro(puntoCentro, Radio, Layer)

	
    
    local function Polar2D(pt, ang, dis)     
      return Point2D((pt.X + dis * math.cos(math.rad(ang))), 
                     (pt.Y + dis * math.sin(math.rad(ang))))  
    end -- End Fuction
    local pa = Polar2D(puntoCentro,   180.0, Radio) 
    local pb = Polar2D(puntoCentro,     0.0, Radio)
    local line = Contour(0.0)
    local layer = doc.LayerManager:GetLayerWithName(Layer)
    line:AppendPoint(pa) ;    
    line:ArcTo(pb,1);   
    line:ArcTo(pa,1);    
    layer:AddObject(CreateCadContour(line), true)
    local cur_layer = doc.LayerManager:GetActiveLayer()
    layer:SetColor(0,0,1)
	layer.Visible = true 
	doc.LayerManager:SetActiveLayer(cur_layer)
	doc:Refresh2DView()	
    return true 
  end -- function end


function dibujarTaladrosAH(doc)

	if modelo==0 then

		local numeroFilasTaladros=1
		local numeroColumnasTaladros=2

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
	       colisoIzq()
		   colisoDer()

		   --Dibujar Taladros Superiores e inferiores

		   for i=1, numeroFilasTaladros do

		   	for j=1, numeroColumnasTaladros do

		   		local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+pliegueSuperior-margenYTaladroSuperior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+pliegueSuperior-margenYTaladroSuperior-distanciaYTaladrosSuperiores)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+margenAla)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D((anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroInferior))))+distanciaXTaladrosInferiores,margenYTaladroInferior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		   	end

		   end



		 --Sin colisos superiores	  		
   		 else
   		 	
	   		--Taladro Superior Izquierda
	   		local puntoCentro = Point2D(alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
	        local radio = diametroTaladros/2
	        local layer = "Taladros"
	        dibujarTaladro(puntoCentro, radio, layer)
	        
	        --Taladro Superior Derecha
	   		local puntoCentro = Point2D(alaIzquierda+anchuraPlaca-anchuraColiso-anchuraColiso/2,alaInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
	        local radio = diametroTaladros/2
	        local layer = "Taladros"
	        dibujarTaladro(puntoCentro, radio, layer)

	        --Dibujar Taladros Superiores e inferiores

		   for i=1, numeroFilasTaladros do

		   	for j=1, numeroColumnasTaladros do

		   		local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+pliegueSuperior-margenYTaladroSuperior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+pliegueSuperior-margenYTaladroSuperior-distanciaYTaladrosSuperiores)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+margenAla)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D((anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroInferior))))+distanciaXTaladrosInferiores,margenYTaladroInferior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		   	end

		   end

        end


    elseif (modelo==2) then


    elseif (modelo==3) then



   	--Test	
    elseif (modelo==4) then




    --Test
	elseif (modelo==5) then

		local numeroFilasTaladros=1
		local numeroColumnasTaladros=2

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
	       colisoIzq()
		   colisoDer()

		   --Dibujar Taladros Superiores e inferiores

		   for i=1, numeroFilasTaladros do

		   	for j=1, numeroColumnasTaladros do

		   		
		   		local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+pliegueSuperior-margenYTaladroSuperior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+pliegueSuperior-margenYTaladroSuperior-distanciaYTaladrosSuperiores)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)


		   		local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+margenYTaladroSuperior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+margenYTaladroSuperior-distanciaYTaladrosSuperiores)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+margenAla)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D((anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroInferior))))+distanciaXTaladrosInferiores,margenYTaladroInferior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		   	end

		   end



		 --Sin colisos superiores	  		
   		 else
   		 	
	   		--Taladro Superior Izquierda
	   		local puntoCentro = Point2D(alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
	        local radio = diametroTaladros/2
	        local layer = "Taladros"
	        dibujarTaladro(puntoCentro, radio, layer)
	        
	        --Taladro Superior Derecha
	   		local puntoCentro = Point2D(alaIzquierda+anchuraPlaca-anchuraColiso-anchuraColiso/2,alaInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
	        local radio = diametroTaladros/2
	        local layer = "Taladros"
	        dibujarTaladro(puntoCentro, radio, layer)

	        --Dibujar Taladros Superiores e inferiores

		   for i=1, numeroFilasTaladros do

		   	for j=1, numeroColumnasTaladros do

		   		local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+pliegueSuperior-margenYTaladroSuperior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+pliegueSuperior-margenYTaladroSuperior-distanciaYTaladrosSuperiores)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)


		   		local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+margenYTaladroSuperior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+margenYTaladroSuperior-distanciaYTaladrosSuperiores)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+margenAla)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D((anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroInferior))))+distanciaXTaladrosInferiores,margenYTaladroInferior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		   	end

		   end

        end

   	elseif modelo==6 then


   	elseif modelo==7 then
    

    else





  	end

	
   
	return true; 
end




function dibujarTextoAH(doc)
	
	--------------------------------------------------------
	local cur_layer = doc.LayerManager:GetActiveLayer()
	local layer = doc.LayerManager:GetLayerWithName("Descripcion")
	local origenTexto=Point2D(anchuraPlaca/2-(2*alaIzquierda),alturaPlaca/2+pliegueInferior)
    local texto=CadMarker(textoDescriptivo,origenTexto,0)
    texto:SetColor(0,0,1)
	
	layer:AddObject(texto,true)
	layer:SetColor(0,0,1)
	layer.Visible = true 
	doc.LayerManager:SetActiveLayer(cur_layer)
	doc:Refresh2DView()	
	-----------------------------------------------------------------
	return true; 
	
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- DIBUJAR REF BH ---------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--[AH=0 - AH1=1 - AH2=2 - AH3=3 - AH4=4 - AH5=5 - AH6=6 - AH7=7 - AH8=8]
--[BH=9 - BH1=10 - BH2=11 - BH3=12 - BH4=13 - BH5=14 - BH6=15 - BH7=16 - BH8=17]
--[BH9=18 - BH10=19 - BH11=20 - BH12=21 - BH13=22 - BH14=23 - BH15=24 - BH16=25 - BH17=26]
--[CH=27 - CH1=28 - CH2=329 - CH3=30 - CH4=31 - CH5=32 - CH6=33 - CH7=34 - CH8=35]

function dibujarFresadoBH(doc)
	--modelo=12 --[borrar]
	--anchuraPlaca=anchura1+anchura2 --[borrar]
	
	
	
	--Puntos trayectoria
	local Contour = Contour(0.0)
	
	
	local fresado1 = Point2D(origenX+alaIzquierda,origenY)
	local fresado2 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
	local fresado3 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior)
	local fresado4 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior+pliegueInferior)
	local fresado5 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior)
	local fresado6 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY)
	local fresado7 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior)
	
	local fresado8
	local fresado9
	
	local fresado10 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado11 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	
	local fresado12
	local fresado13
	
	local fresado14 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	local fresado15 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado16 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado17 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
	
	
	if modelo>=9 and modelo<=17 then
		fresado8 = Point2D(origenX+alaIzquierda+anchura1-pliegueInferior,origenY+alaInferior)
		fresado9 = Point2D(origenX+alaIzquierda+anchura1+pliegueInferior,origenY+alaInferior)
		fresado12 = Point2D(origenX+alaIzquierda+anchura1-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		fresado13 = Point2D(origenX+alaIzquierda+anchura1+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	elseif modelo>=18 and modelo<=26 then
		fresado8 = Point2D(origenX+alaIzquierda+anchura1-(separacionPliegues/2),origenY+alaInferior)	
		fresado9 = Point2D(origenX+alaIzquierda+anchura1+(separacionPliegues/2),origenY+alaInferior)
		fresado12 = Point2D(origenX+alaIzquierda+anchura1-(separacionPliegues/2),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		fresado13 = Point2D(origenX+alaIzquierda+anchura1+(separacionPliegues/2),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	end
	
	
	if modelo==9 or modelo==10 or modelo==18 or modelo==19  then --REF [BH][BH1] [BH9][BH10]
		Contour:AppendPoint(fresado1)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado4)
		Contour:LineTo(fresado6)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado13)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado15)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado12)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado16)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado10)
		
	elseif modelo==11 or modelo==12  or modelo==20 or modelo==21  then --REF [BH2][BH3] [BH11][BH12]
		Contour:AppendPoint(fresado8)
		Contour:LineTo(fresado2)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado4)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado9)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado13)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado15)
		Contour:LineTo(fresado16)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado12)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado15)
		
	elseif modelo==13 or modelo==22  then --REF [BH4]  [BH13]
		Contour:AppendPoint(fresado1)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado4)
		Contour:LineTo(fresado6)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado15)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado16)
		
	elseif modelo==14 or modelo==23  then --REF [BH5]  [BH14]
		Contour:AppendPoint(fresado8)
		Contour:LineTo(fresado2)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado4)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado9)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado15)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado16)
		
	elseif modelo==15 or modelo==24  then --REF [BH6] [BH15]
		Contour:AppendPoint(fresado1)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado4)
		Contour:LineTo(fresado6)
		Contour:LineTo(fresado17)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado13)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado15)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado12)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado16)
		
	elseif modelo==16 or modelo==25  then --REF [BH7]  [BH16]
		Contour:AppendPoint(fresado8)
		Contour:LineTo(fresado2)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado4)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado9)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado17)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado13)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado15)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado12)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado16)
		
	elseif modelo==17 or modelo==26  then --REF [BH8] [BH17]
		Contour:AppendPoint(fresado8)
		Contour:LineTo(fresado2)
		Contour:LineTo(fresado1)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado4)
		Contour:LineTo(fresado6)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado9)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado13)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado15)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado12)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado16)	
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
	-----------------------------------------------------------------
	return true; 
end



--[AH=0 - AH1=1 - AH2=2 - AH3=3 - AH4=4 - AH5=5 - AH6=6 - AH7=7 - AH8=8]
--[BH=9 - BH1=10 - BH2=11 - BH3=12 - BH4=13 - BH5=14 - BH6=15 - BH7=16 - BH8=17]
--[BH9=18 - BH10=19 - BH11=20 - BH12=21 - BH13=22 - BH14=23 - BH15=24 - BH16=25 - BH17=26]
--[CH=27 - CH1=28 - CH2=329 - CH3=30 - CH4=31 - CH5=32 - CH6=33 - CH7=34 - CH8=35]

function dibujarCorteBH(doc)
	modelo=12 --[borrar]
	anchuraPlaca=anchura1+anchura2 --borrar
	
	local Contour = Contour(0.0)
	
	--PARTE INFERIOR-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	
	if modelo==9 or modelo==18 or modelo==10 or modelo==19 or modelo==13 or modelo==22 or modelo==15 or modelo==24 then --Parte Inferior para los modelos [BH-BH9][BH1-BH10][BH4-BH13][BH6-BH15]
		
		local corte1 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
		local corte2 = Point2D(origenX+alaIzquierda-alaInferior,origenY)
		Contour:AppendPoint(corte1)
		Contour:LineTo(corte2)
		
		local corte3
		local corte4
		local corte5
		local corte6
		local corte7
		
		if modelo==9 or modelo==10 or modelo==13 or modelo==15 then --[BH][BH1][BH4][BH6]
			corte3 = Point2D(origenX+alaIzquierda+anchura1-alaInferior,origenY)
			corte4 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior)
			corte5 = Point2D(origenX+alaIzquierda+anchura1+alaInferior,origenY)
			Contour:LineTo(corte3)
			Contour:LineTo(corte4)
			Contour:LineTo(corte5)
		else --[BH9][BH10]
			corte3 = Point2D(origenX+alaIzquierda+anchura1-separacionPliegues/2,origenY)
			corte4 = Point2D(origenX+alaIzquierda+anchura1-separacionPliegues/2,origenY+alaInferior-separacionPliegues/2)
			Contour:LineTo(corte3)
			Contour:LineTo(corte4)
			
			corte5 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior-separacionPliegues/2) --centro de la circunferencia
			corte6 = Point2D(origenX+alaIzquierda+anchura1+separacionPliegues/2,origenY+alaInferior-separacionPliegues/2)
			
			Contour:ArcTo(corte6,corte5,false)
			
			corte7 = Point2D(origenX+alaIzquierda+anchura1+separacionPliegues/2,origenY)
			Contour:LineTo(corte7)
		end
		
		
		local corte8 = Point2D(origenX+alaIzquierda+anchura1+anchura2+alaInferior,origenY)
		local corte9 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior)
		Contour:LineTo(corte8)
		Contour:LineTo(corte9)
		
		
	elseif modelo==11 or modelo==20 or modelo==12 or modelo==21 or modelo==14 or modelo==23 or modelo==16 or modelo==25 then --Parte Inferior para los modelos [BH2-BH11][BH3-BH12][BH5-BH14][BH7-BH16]   
		local corte1 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior)
		local corte2 = Point2D(origenX+alaIzquierda-pliegueInferior,origenY+alaInferior)
		local corte3 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
		local corte4 = Point2D(origenX+alaIzquierda,origenY)
		Contour:AppendPoint(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
		
		local corte5
		local corte6
		local corte7
		local corte8
		local corte9
		
		if modelo==11 or modelo==12 or modelo==21 or modelo==14 or modelo==16 then --[BH2][BH3][BH12][BH5][BH7]
			corte5 = Point2D(origenX+alaIzquierda+anchura1-pliegueInferior,origenY)
			corte6 = Point2D(origenX+alaIzquierda+anchura1-pliegueInferior,origenY+alaInferior)
			corte7 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior)
			corte8 = Point2D(origenX+alaIzquierda+anchura1+pliegueInferior,origenY+alaInferior)
			corte9 = Point2D(origenX+alaIzquierda+anchura1+pliegueInferior,origenY)
			Contour:LineTo(corte5)
			Contour:LineTo(corte6)
			Contour:LineTo(corte7)
			Contour:LineTo(corte8)
			Contour:LineTo(corte9)
			
		else --[BH11]
			corte5 = Point2D(origenX+alaIzquierda+anchura1-separacionPliegues/2,origenY)
			corte6 = Point2D(origenX+alaIzquierda+anchura1-separacionPliegues/2,origenY+alaInferior+pliegueInferior-separacionPliegues/2)
			Contour:LineTo(corte5)
			Contour:LineTo(corte6)
			
			corte7 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior-separacionPliegues/2) --centro de la circunferencia
			corte8 = Point2D(origenX+alaIzquierda+anchura1+separacionPliegues/2,origenY+alaInferior+pliegueInferior-separacionPliegues/2)
			
			Contour:ArcTo(corte8,corte7,false)
			
			corte9 = Point2D(origenX+alaIzquierda+anchura1+separacionPliegues/2,origenY)
			Contour:LineTo(corte9)
		end
		
		local corte10 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY)
		local corte11 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior)
		local corte12 = Point2D(origenX+alaIzquierda+anchura1+anchura2+pliegueInferior,origenY+alaInferior)
		local corte13 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior)
		Contour:LineTo(corte10)
		Contour:LineTo(corte11)
		Contour:LineTo(corte12)
		Contour:LineTo(corte13)
		
	
	
	
	elseif modelo==17 or modelo==26 then --Parte Inferior para los modelos [BH8-BH17]
		
		local corte1 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior)
		local corte2 = Point2D(origenX+alaIzquierda-alaInferior,origenY+alaInferior+pliegueInferior-alaInferior)
		local corte3 = Point2D(origenX+alaIzquierda-alaInferior,origenY+alaInferior*2)
		local corte4 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
		local corte5 = Point2D(origenX+alaIzquierda-alaInferior,origenY)
		Contour:AppendPoint(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
		Contour:LineTo(corte5)
		
		local corte6
		local corte7
		local corte8
		local corte9
		local corte10
		local corte11
		
		if modelo==17 then --[BH8]
			corte6 = Point2D(origenX+alaIzquierda+anchura1-pliegueInferior,origenY)
			corte7 = Point2D(origenX+alaIzquierda+anchura1-pliegueInferior,origenY+alaInferior)
			corte8 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior)
			corte9 = Point2D(origenX+alaIzquierda+anchura1+pliegueInferior,origenY+alaInferior)
			corte10 = Point2D(origenX+alaIzquierda+anchura1+pliegueInferior,origenY)
			Contour:LineTo(corte6)
			Contour:LineTo(corte7)
			Contour:LineTo(corte8)
			Contour:LineTo(corte9)
			Contour:LineTo(corte10)
		else --[BH17]
			corte6 = Point2D(origenX+alaIzquierda+anchura1-separacionPliegues/2,origenY)
			corte7 = Point2D(origenX+alaIzquierda+anchura1-separacionPliegues/2,origenY+alaInferior+pliegueInferior-separacionPliegues/2)
			Contour:LineTo(corte6)
			Contour:LineTo(corte7)
			
			corte8 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior-separacionPliegues/2) --centro de la circunferencia
			corte9 = Point2D(origenX+alaIzquierda+anchura1+separacionPliegues/2,origenY+alaInferior+pliegueInferior-separacionPliegues/2)
			
			Contour:ArcTo(corte9,corte8,false)
			
			corte10 = Point2D(origenX+alaIzquierda+anchura1+separacionPliegues/2,origenY)
			Contour:LineTo(corte10)
		end
		
		
		local corte12 = Point2D(origenX+alaIzquierda+anchura1+anchura2+alaInferior,origenY)
		local corte13 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior)
		local corte14 = Point2D(origenX+alaIzquierda+anchura1+anchura2+alaInferior,origenY+alaInferior*2)
		local corte15 = Point2D(origenX+alaIzquierda+anchura1+anchura2+alaInferior,origenY+pliegueInferior)
		local corte16 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+pliegueInferior+alaInferior)
		Contour:LineTo(corte12)
		Contour:LineTo(corte13)
		Contour:LineTo(corte14)
		Contour:LineTo(corte15)
		Contour:LineTo(corte16)
	end
	
	
	
	
	
	
	
	--PARTE DERECHA (BOTAS)------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
		--Variables BOTAS
	local alturaBotaDeCuelgue=56
	local anchoBota=18.5
	
	local tramoRecto1BotaDerecha=52
	local radioArcoBotaDerecha=4
	local tramoRecto2BotaDerecha=18
	local tramoRecto3BotaDerecha=6.5
	local tramoRecto4BotaDerecha=26
	
	
		--Variables MARGENES superior e inferior
	local cotaInicioDerecha=((margenB-alturaBotaDeCuelgue)+(alaDerecha-anchoBota))/2 --[relacion trigonometrica][explicacion en la hoja de papel] 
	
	local anchoLateral1=alaDerecha-anchoBota  --21.5 --variable para reducir codigo (se podria eliminar)
	local alturaLateral1=cotaInicioDerecha-alaDerecha+anchoBota --15.3  --variable para reducir codigo (se podria eliminar)
	
	local sumaComienzoFin=(margenA)+(margenB-alturaBotaDeCuelgue) --109
	
	
	--Parte inicial
	local corte20 = Point2D(origenX+alaIzquierda+anchuraPlaca+cotaInicioDerecha,origenY+alaInferior+pliegueInferior+cotaInicioDerecha)
	local corte21 = Point2D(origenX+alaIzquierda+anchuraPlaca+anchoLateral1,origenY+alaInferior+pliegueInferior+alturaLateral1+cotaInicioDerecha)
	Contour:LineTo(corte20)
	Contour:LineTo(corte21)
	
	--Parte botas
	local repeticiones=math.ceil((alturaPlaca-sumaComienzoFin)/500.0)
	local tramoRectoEntreBotaDeCuelgue=(alturaPlaca-sumaComienzoFin-((repeticiones+1)*alturaBotaDeCuelgue)-(repeticiones*anchoBota))/repeticiones
	
	local puntoInicioX=(origenX+alaIzquierda+anchuraPlaca+anchoLateral1)
	local puntoInicioY=(origenY+alaInferior+pliegueInferior+cotaInicioDerecha+alturaLateral1)
	
	for n=1, (repeticiones+1) do
		--Dibujar bota
	    local corte6 = Point2D(puntoInicioX, puntoInicioY+tramoRecto1BotaDerecha)
		Contour:LineTo(corte6)
		
		puntoInicioY=puntoInicioY+tramoRecto1BotaDerecha
		
		local corte7=Point2D(puntoInicioX+(2*radioArcoBotaDerecha),puntoInicioY)
		local corte8=Point2D(puntoInicioX+(radioArcoBotaDerecha),puntoInicioY)
		Contour:ArcTo(corte7,corte8,false)
		puntoInicioX=puntoInicioX+(2*radioArcoBotaDerecha)
		
		local corte9=Point2D(puntoInicioX, puntoInicioY-tramoRecto2BotaDerecha)
		Contour:LineTo(corte9)
		puntoInicioY=puntoInicioY-tramoRecto2BotaDerecha
		
		local corte10=Point2D(puntoInicioX+(radioArcoBotaDerecha),puntoInicioY-radioArcoBotaDerecha)
		local corte11=Point2D(puntoInicioX+(radioArcoBotaDerecha),puntoInicioY)
		Contour:ArcTo(corte10,corte11,true)
		puntoInicioX=puntoInicioX+radioArcoBotaDerecha
		puntoInicioY=puntoInicioY-radioArcoBotaDerecha
		
		local corte12=Point2D(puntoInicioX+tramoRecto3BotaDerecha,puntoInicioY)
		Contour:LineTo(corte12)
		puntoInicioX=puntoInicioX+tramoRecto3BotaDerecha
		
		local corte13=Point2D(puntoInicioX,puntoInicioY+tramoRecto4BotaDerecha)
		Contour:LineTo(corte13)
		puntoInicioY=puntoInicioY+tramoRecto4BotaDerecha
		
		--Dibujar tramo recto
		if n==(repeticiones+1) then
			break
		else
			local corte14=Point2D(puntoInicioX,puntoInicioY+tramoRectoEntreBotaDeCuelgue)
			Contour:LineTo(corte14)
			puntoInicioY=puntoInicioY+tramoRectoEntreBotaDeCuelgue
			
			local corte15=Point2D(puntoInicioX-(alaDerecha-anchoLateral1),puntoInicioY+(alaDerecha-anchoLateral1))
			Contour:LineTo(corte15)
			puntoInicioX=puntoInicioX-(alaDerecha-anchoLateral1)
			puntoInicioY=puntoInicioY+(alaDerecha-anchoLateral1)
		end

	end
	
	--Parte final
	local corte22 = Point2D(origenX+alaIzquierda+anchuraPlaca+alaDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca-alaDerecha)
	Contour:LineTo(corte22)
	
	
	
	--PARTE SUPERIOR------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	if modelo==9 or modelo==18 or modelo==10 or modelo==19 or modelo==11 or modelo==20 or modelo==12 or modelo==21 or modelo==17 or modelo==26 or modelo==13 or modelo==22 or modelo==14 or modelo==23  then --Parte Superior [BH-BH9][BH1-BH10][BH2-BH11][BH3-BH12][BH8-BH17][BH4-BH13][BH5-BH14]
		
		local corte40 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca)
		local corte41 = Point2D(origenX+alaIzquierda+anchura1+anchura2+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte42 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte43 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		Contour:LineTo(corte40)
		Contour:LineTo(corte41)
		Contour:LineTo(corte42)
		Contour:LineTo(corte43)
		
		local corte44
		local corte45
		local corte46
		local corte47
		local corte48
		
		if modelo==9 or modelo==10 or modelo==11 or modelo==12 or modelo==17 then --[BH][BH1][BH2][BH3][BH8]
			corte44 = Point2D(origenX+alaIzquierda+anchura1+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			corte45 = Point2D(origenX+alaIzquierda+anchura1+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			corte46 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca)
			corte47 = Point2D(origenX+alaIzquierda+anchura1-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			corte48 = Point2D(origenX+alaIzquierda+anchura1-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			Contour:LineTo(corte44)
			Contour:LineTo(corte45)
			Contour:LineTo(corte46)
			Contour:LineTo(corte47)
			Contour:LineTo(corte48)
			
		elseif modelo==13 or modelo==14 then --[BH5][BH6]
			corte44 = Point2D(origenX+alaIzquierda+anchura1+alaSuperior+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			corte45 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca)
			corte46 = Point2D(origenX+alaIzquierda+anchura1-pliegueSuperior-alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			Contour:LineTo(corte44)
			Contour:LineTo(corte45)
			Contour:LineTo(corte46)
			
		else
			corte44 = Point2D(origenX+alaIzquierda+anchura1+separacionPliegues/2,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			corte45 = Point2D(origenX+alaIzquierda+anchura1+separacionPliegues/2,origenY+alaInferior+pliegueInferior+alturaPlaca+separacionPliegues/2)
			Contour:LineTo(corte44)
			Contour:LineTo(corte45)
			
			corte46 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca+separacionPliegues/2) --centro de la circunferencia
			corte47 = Point2D(origenX+alaIzquierda+anchura1-separacionPliegues/2,origenY+alaInferior+pliegueInferior+alturaPlaca+separacionPliegues/2)
			Contour:ArcTo(corte47,corte46,false)
			
			corte48 = Point2D(origenX+alaIzquierda+anchura1-separacionPliegues/2,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			Contour:LineTo(corte48)
			
		end
		
		
		local corte49 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+alaSuperior+pliegueSuperior)
		local corte50 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte51 = Point2D(origenX+alaIzquierda-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte52 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte49)
		Contour:LineTo(corte50)
		Contour:LineTo(corte51)
		Contour:LineTo(corte52)
		
		
	elseif modelo==15 or modelo==24 or modelo==16 or modelo==25  then --Parte Superior [BH6-BH15][BH7-BH16]
		
		local corte40 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca)
		local corte41 = Point2D(origenX+alaIzquierda+anchura1+anchura2+alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+alaSuperior)
		local corte42 = Point2D(origenX+alaIzquierda+anchura1+anchura2+alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior-alaSuperior)
		local corte43 = Point2D(origenX+alaIzquierda+anchura1+anchura2,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte44 = Point2D(origenX+alaIzquierda+anchura1+anchura2+alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		Contour:LineTo(corte40)
		Contour:LineTo(corte41)
		Contour:LineTo(corte42)
		Contour:LineTo(corte43)
		Contour:LineTo(corte44)
		
		local corte45
		local corte46
		local corte47
		local corte48
		local corte49
		
		if modelo==15 or modelo==16 then --[BH6][BH7]
			corte45 = Point2D(origenX+alaIzquierda+anchura1+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			corte46 = Point2D(origenX+alaIzquierda+anchura1+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			corte47 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca)
			corte48 = Point2D(origenX+alaIzquierda+anchura1-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
			corte49 = Point2D(origenX+alaIzquierda+anchura1-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			Contour:LineTo(corte45)
			Contour:LineTo(corte46)
			Contour:LineTo(corte47)
			Contour:LineTo(corte48)
			Contour:LineTo(corte49)
			
		else --[BH15][BH16]
			corte45 = Point2D(origenX+alaIzquierda+anchura1+separacionPliegues/2,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			corte46 = Point2D(origenX+alaIzquierda+anchura1+separacionPliegues/2,origenY+alaInferior+pliegueInferior+alturaPlaca+separacionPliegues/2)
			Contour:LineTo(corte45)
			Contour:LineTo(corte46)
			
			corte47 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca+separacionPliegues/2) --centro de la circunferencia
			corte48 = Point2D(origenX+alaIzquierda+anchura1-separacionPliegues/2,origenY+alaInferior+pliegueInferior+alturaPlaca+separacionPliegues/2)
			Contour:ArcTo(corte48,corte47,false)
			
			corte49 = Point2D(origenX+alaIzquierda+anchura1-separacionPliegues/2,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			Contour:LineTo(corte49)
			
		end
		
		
		local corte50 = Point2D(origenX+alaIzquierda-alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+alaSuperior+pliegueSuperior)
		local corte51 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte52 = Point2D(origenX+alaIzquierda-alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior-alaSuperior)
		local corte53 = Point2D(origenX+alaIzquierda-alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+alaSuperior)
		local corte54 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca)
		Contour:LineTo(corte50)
		Contour:LineTo(corte51)
		Contour:LineTo(corte52)
		Contour:LineTo(corte53)
		Contour:LineTo(corte54)
		
	
	end
	
	
	
	
	
	--PARTE IZQUIERDA (BOTAS)------------------------------------------------------------------------------------------------------------------------------------------------------------------
		--Variables BOTAS
	local tramoRecto1BotaIzquierda=26
	local radioArcoBotaIzquierda=4
	local tramoRecto2BotaIzquierda=6.5
	local tramoRecto3BotaIzquierda=18
	local tramoRecto4BotaIzquierda=52
	
		--Variables por si el ala derecha e izquierda no son simetricas
	local margenA_izq = margenA --Al igualarlo al tamaño de los margenes de la derecha la figura es simetrica, si deja de ser simetrica, hay que pedirle que introduzca manualmente los margenes de la izquierda
	local margenB_izq = margenB
	local cotaInicioIzquierda=((margenB-alturaBotaDeCuelgue)+(alaIzquierda-anchoBota))/2 --[relacion trigonometrica][explicacion en la hoja de papel]
	
	
	--Parte inicial
	local lineaIzquierda=(margenA_izq)*(17/57)
	
	local corte60 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca-alaIzquierda)
	Contour:LineTo(corte60)
	local corte61 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca-alaIzquierda-lineaIzquierda)
	Contour:LineTo(corte61)
	
	
	--Parte botas
	local puntoInicioX=(origenX)
	local puntoInicioY=(origenY+alaInferior+pliegueInferior+alturaPlaca-margenA_izq)
		
	for n=1, (repeticiones+1) do
		--Dibujar bota
	    local corte32 = Point2D(puntoInicioX, puntoInicioY-tramoRecto1BotaIzquierda)
		Contour:LineTo(corte32)
		
		puntoInicioY=puntoInicioY-tramoRecto1BotaIzquierda
		
		local corte33=Point2D(puntoInicioX+tramoRecto2BotaIzquierda, puntoInicioY)
		Contour:LineTo(corte33)
		puntoInicioX=puntoInicioX+tramoRecto2BotaIzquierda
		
		local corte34=Point2D(puntoInicioX+(radioArcoBotaIzquierda),puntoInicioY+radioArcoBotaIzquierda)
		local corte35=Point2D(puntoInicioX,puntoInicioY+radioArcoBotaIzquierda)
		Contour:ArcTo(corte34,corte35,true)
		puntoInicioX=puntoInicioX+radioArcoBotaIzquierda
		puntoInicioY=puntoInicioY+radioArcoBotaIzquierda
		
		local corte36=Point2D(puntoInicioX, puntoInicioY+tramoRecto3BotaIzquierda)
		Contour:LineTo(corte36)
		puntoInicioY=puntoInicioY+tramoRecto3BotaIzquierda
		
		local corte37=Point2D(puntoInicioX+(2*radioArcoBotaIzquierda),puntoInicioY)
		local corte38=Point2D(puntoInicioX+(radioArcoBotaIzquierda),puntoInicioY)
		Contour:ArcTo(corte37,corte38,false)
		puntoInicioX=puntoInicioX+(2*radioArcoBotaIzquierda)
		
		
		local corte39=Point2D(puntoInicioX,puntoInicioY-tramoRecto4BotaIzquierda)
		Contour:LineTo(corte39)
		puntoInicioY=puntoInicioY-tramoRecto4BotaIzquierda
		
		--Dibujar tramo recto
		if n==(repeticiones+1) then
			break
		else
			local corte40=Point2D(puntoInicioX-(anchoBota),puntoInicioY-(anchoBota))
			Contour:LineTo(corte40)
			puntoInicioY=puntoInicioY-(anchoBota)
			puntoInicioX=puntoInicioX-(anchoBota)
			
			
			local corte41=Point2D(puntoInicioX,puntoInicioY-tramoRectoEntreBotaDeCuelgue)
			Contour:LineTo(corte41)
			puntoInicioY=puntoInicioY-tramoRectoEntreBotaDeCuelgue
		end
		

	end
	
	--Parte final
	local corte65 = Point2D(origenX+alaIzquierda-cotaInicioIzquierda,origenY+alaInferior+pliegueInferior+cotaInicioIzquierda)
	local corte66 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior)
	Contour:LineTo(corte65)
	Contour:LineTo(corte66)
	
		
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




------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- DIBUJAR REF CH ---------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--[AH=0 - AH1=1 - AH2=2 - AH3=3 - AH4=4 - AH5=5 - AH6=6 - AH7=7 - AH8=8]
--[BH=9 - BH1=10 - BH2=11 - BH3=12 - BH4=13 - BH5=14 - BH6=15 - BH7=16 - BH8=17]
--[BH9=18 - BH10=19 - BH11=20 - BH12=21 - BH13=22 - BH14=23 - BH15=24 - BH16=25 - BH17=26]
--[CH=27 - CH1=28 - CH2=29 - CH3=30 - CH4=31 - CH5=32 - CH6=33 - CH7=34 - CH8=35]

function dibujarFresadoCH(doc)
	--modelo=33 --[borrar]
	--anchuraIzq=400 --[borrar]
	--anchuraCentro=1200 --[borrar]
	--anchuraDcha=400 --[borrar]
	--anchuraPlaca=anchuraIzq+anchuraCentro+anchuraDcha --[borrar]
	
	
	
	--Puntos trayectoria 
	local Contour = Contour(0.0)
	
	local fresado1 = Point2D(origenX+alaIzquierda,origenY)
	local fresado2 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
	local fresado3 = Point2D(origenX+alaIzquierda+anchuraIzq-pliegueInferior,origenY+alaInferior)
	local fresado4 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior)
	local fresado5 = Point2D(origenX+alaIzquierda+anchuraIzq,origenY+alaInferior+pliegueInferior)
	local fresado6 = Point2D(origenX+alaIzquierda+anchuraIzq+pliegueInferior,origenY+alaInferior)--Punto externo a la polilinea principal
	local fresado7 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro,origenY+alaInferior+pliegueInferior)
	local fresado8 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-pliegueInferior,origenY+alaInferior)--Punto externo a la polilinea principal
	local fresado9 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+pliegueInferior,origenY+alaInferior)
	local fresado10 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDcha,origenY+alaInferior+pliegueInferior)
	local fresado11 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDcha,origenY+alaInferior)
	local fresado12 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDcha,origenY)
	local fresado13 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado14 = Point2D(origenX+alaIzquierda+anchuraIzq,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado15 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado16 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDcha,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado17 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	local fresado18 = Point2D(origenX+alaIzquierda+anchuraIzq-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	local fresado19 = Point2D(origenX+alaIzquierda+anchuraIzq+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)--Punto externo a la polilinea principal
	local fresado20 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)--Punto externo a la polilinea principal
	local fresado21 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	local fresado22 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDcha,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	local fresado23 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDcha,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
	
	if modelo==27 or modelo==28 then --REF [CH][CH1]
		Contour:AppendPoint(fresado1)
		Contour:LineTo(fresado4)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado12)
		Contour:LineTo(fresado22)
		Contour:LineTo(fresado21)
		Contour:LineTo(fresado22)
		Contour:LineTo(fresado16)
		Contour:LineTo(fresado15)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado15)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado13)
		Contour:LineTo(fresado17)
		Contour:LineTo(fresado18)
		Contour:LineTo(fresado17)
		Contour:LineTo(fresado1)
		
		dibujarFresadoCH_auxiliar(doc,fresado19,fresado20)
		
	elseif modelo==29 or modelo==30  or modelo==35 then --[CH2][CH3][CH8]
		Contour:AppendPoint(fresado2)
		Contour:LineTo(fresado3)
		Contour:LineTo(fresado2)
		Contour:LineTo(fresado4)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado9)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado22)
		Contour:LineTo(fresado21)
		Contour:LineTo(fresado22)
		Contour:LineTo(fresado16)
		Contour:LineTo(fresado15)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado15)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado13)
		Contour:LineTo(fresado17)
		Contour:LineTo(fresado18)
		Contour:LineTo(fresado17)
		Contour:LineTo(fresado2)
		
		dibujarFresadoCH_auxiliar(doc,fresado19,fresado20)
		dibujarFresadoCH_auxiliar(doc,fresado6,fresado8)
	
	elseif modelo==31 then --[CH4]
		Contour:AppendPoint(fresado1)
		Contour:LineTo(fresado4)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado12)
		Contour:LineTo(fresado22)
		Contour:LineTo(fresado16)
		Contour:LineTo(fresado15)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado15)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado13)
		Contour:LineTo(fresado17)
		Contour:LineTo(fresado1)
		
	elseif modelo==32 then --[CH5]
		Contour:AppendPoint(fresado3)
		Contour:LineTo(fresado2)
		Contour:LineTo(fresado4)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado9)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado22)
		Contour:LineTo(fresado16)
		Contour:LineTo(fresado15)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado15)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado13)
		Contour:LineTo(fresado17)
		Contour:LineTo(fresado2)
		
		dibujarFresadoCH_auxiliar(doc,fresado6,fresado8)
	
	elseif modelo==33 then --[CH6]
		Contour:AppendPoint(fresado1)
		Contour:LineTo(fresado4)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado12)
		Contour:LineTo(fresado23)
		Contour:LineTo(fresado22)
		Contour:LineTo(fresado21)
		Contour:LineTo(fresado22)
		Contour:LineTo(fresado16)
		Contour:LineTo(fresado15)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado15)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado13)
		Contour:LineTo(fresado17)
		Contour:LineTo(fresado18)
		Contour:LineTo(fresado17)
		Contour:LineTo(fresado1)
		
		dibujarFresadoCH_auxiliar(doc,fresado19,fresado20)
	
	elseif modelo==34 then --[CH7]
		Contour:AppendPoint(fresado3)
		Contour:LineTo(fresado2)
		Contour:LineTo(fresado4)
		Contour:LineTo(fresado10)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado9)
		Contour:LineTo(fresado11)
		Contour:LineTo(fresado23)
		Contour:LineTo(fresado22)
		Contour:LineTo(fresado21)
		Contour:LineTo(fresado22)
		Contour:LineTo(fresado16)
		Contour:LineTo(fresado15)
		Contour:LineTo(fresado7)
		Contour:LineTo(fresado15)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado5)
		Contour:LineTo(fresado14)
		Contour:LineTo(fresado13)
		Contour:LineTo(fresado17)
		Contour:LineTo(fresado18)
		Contour:LineTo(fresado17)
		Contour:LineTo(fresado2)
		
		dibujarFresadoCH_auxiliar(doc,fresado6,fresado8)
		dibujarFresadoCH_auxiliar(doc,fresado19,fresado20)
		
	end
	
	--[[
	
	local Contour1 = Contour(0.0)
	local Contour2 = Contour(0.0)
	Contour1:AppendPoint(1000,1000)
	Contour1:LineTo(2000,2000)
	Contour2:AppendPoint(500,500)
	Contour2:LineTo(700,700)
	
	--------------------------------------------------------
	
	local cad_object1 = CreateCadContour(Contour1)
	local cad_object2 = CreateCadContour(Contour2)
	CadObjectList:AddHead(cad_object1)
	CadObjectList:AddHead(cad_object2)
	
	
	local pos=obj_list:GetHeadPosition()
	while pos ~= nil do
		object,pos=obj_list:GetNext(pos)
		
	end
	--]]
	
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

function dibujarFresadoCH_auxiliar(doc,punto1,punto2)

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
end







--[AH=0 - AH1=1 - AH2=2 - AH3=3 - AH4=4 - AH5=5 - AH6=6 - AH7=7 - AH8=8]
--[BH=9 - BH1=10 - BH2=11 - BH3=12 - BH4=13 - BH5=14 - BH6=15 - BH7=16 - BH8=17]
--[BH9=18 - BH10=19 - BH11=20 - BH12=21 - BH13=22 - BH14=23 - BH15=24 - BH16=25 - BH17=26]
--[CH=27 - CH1=28 - CH2=29 - CH3=30 - CH4=31 - CH5=32 - CH6=33 - CH7=34 - CH8=35]

function dibujarCorteCH(doc)
	
	--modelo=33 --[borrar]
	
	
	local Contour = Contour(0.0)
	
	--PARTE INFERIOR-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	if modelo==27 or modelo==28 or modelo==31 or modelo==33 then --Parte Inferior [CH][CH1][CH4][CH6]
		local corte1 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
		local corte2 = Point2D(origenX+alaIzquierda-alaInferior,origenY)
		local corte3 = Point2D(origenX+alaIzquierda+anchuraIzq-alaInferior,origenY)
		local corte4 = Point2D(origenX+alaIzquierda+anchuraIzq,origenY+alaInferior)
		local corte5 = Point2D(origenX+alaIzquierda+anchuraIzq+alaInferior,origenY)
		local corte6 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-alaInferior,origenY)
		local corte7 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro,origenY+alaInferior)
		local corte8 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+alaInferior,origenY)
		local corte9 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDcha+alaInferior,origenY)
		local corte10 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDcha,origenY+alaInferior)
		
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
		
	elseif modelo==29 or modelo==30 or modelo==32 or modelo==34 then --Parte Inferior [CH2][CH3][CH5][CH7]
		local corte1 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior)
		local corte2 = Point2D(origenX+alaIzquierda-pliegueInferior,origenY+alaInferior)
		local corte3 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
		local corte4 = Point2D(origenX+alaIzquierda,origenY)
		local corte5 = Point2D(origenX+alaIzquierda+anchuraIzq-pliegueInferior,origenY)
		local corte6 = Point2D(origenX+alaIzquierda+anchuraIzq-pliegueInferior,origenY+alaInferior)
		local corte7 = Point2D(origenX+alaIzquierda+anchuraIzq,origenY+alaInferior+pliegueInferior)
		local corte8 = Point2D(origenX+alaIzquierda+anchuraIzq+pliegueInferior,origenY+alaInferior)
		local corte9 = Point2D(origenX+alaIzquierda+anchuraIzq+pliegueInferior,origenY)
		local corte10 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-pliegueInferior,origenY)
		local corte11 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-pliegueInferior,origenY+alaInferior)
		local corte12 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro,origenY+alaInferior+pliegueInferior)
		local corte13 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+pliegueInferior,origenY+alaInferior)
		local corte14 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+pliegueInferior,origenY)
		local corte15 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDcha,origenY)
		local corte16 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDcha,origenY+alaInferior)
		local corte17 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDcha+pliegueInferior,origenY+alaInferior)
		local corte18 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDcha,origenY+alaInferior+pliegueInferior)
		
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
		
	else --Parte Inferior [CH8]
		local corte1 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior)
		local corte2 = Point2D(origenX+alaIzquierda-alaInferior,origenY+pliegueInferior)
		local corte3 = Point2D(origenX+alaIzquierda-alaInferior,origenY+alaInferior*2)
		local corte4 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
		local corte5 = Point2D(origenX+alaIzquierda-alaInferior,origenY)
		local corte6 = Point2D(origenX+alaIzquierda+anchuraIzq-pliegueInferior,origenY)
		local corte7 = Point2D(origenX+alaIzquierda+anchuraIzq-pliegueInferior,origenY+alaInferior)
		local corte8 = Point2D(origenX+alaIzquierda+anchuraIzq,origenY+alaInferior+pliegueInferior)
		local corte9 = Point2D(origenX+alaIzquierda+anchuraIzq+pliegueInferior,origenY+alaInferior)
		local corte10 = Point2D(origenX+alaIzquierda+anchuraIzq+pliegueInferior,origenY)
		local corte11 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-pliegueInferior,origenY)
		local corte12 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-pliegueInferior,origenY+alaInferior)
		local corte13 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro,origenY+alaInferior+pliegueInferior)
		local corte14 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+pliegueInferior,origenY+alaInferior)
		local corte15 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+pliegueInferior,origenY)
		local corte16 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDcha+alaInferior,origenY)
		local corte17 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDcha,origenY+alaInferior)
		local corte18 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDcha+alaInferior,origenY+alaInferior*2)
		local corte19 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDcha+alaInferior,origenY+pliegueInferior)
		local corte20 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDcha,origenY+pliegueInferior+alaInferior)
		
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
	end
	
	
	
	
	--PARTE DERECHA (BOTAS)------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
		--Variables BOTAS
	local alturaBotaDeCuelgue=56
	local anchoBota=18.5
	
	local tramoRecto1BotaDerecha=52
	local radioArcoBotaDerecha=4
	local tramoRecto2BotaDerecha=18
	local tramoRecto3BotaDerecha=6.5
	local tramoRecto4BotaDerecha=26
	
	
		--Variables MARGENES superior e inferior
	local cotaInicioDerecha=((margenB-alturaBotaDeCuelgue)+(alaDerecha-anchoBota))/2 --[relacion trigonometrica][explicacion en la hoja de papel] 
	
	local anchoLateral1=alaDerecha-anchoBota  --21.5 --variable para reducir codigo (se podria eliminar)
	local alturaLateral1=cotaInicioDerecha-alaDerecha+anchoBota --15.3  --variable para reducir codigo (se podria eliminar)
	
	local sumaComienzoFin=(margenA)+(margenB-alturaBotaDeCuelgue) --109
	
	
	--Parte inicial
	local corte20 = Point2D(origenX+alaIzquierda+anchuraPlaca+cotaInicioDerecha,origenY+alaInferior+pliegueInferior+cotaInicioDerecha)
	local corte21 = Point2D(origenX+alaIzquierda+anchuraPlaca+anchoLateral1,origenY+alaInferior+pliegueInferior+alturaLateral1+cotaInicioDerecha)
	Contour:LineTo(corte20)
	Contour:LineTo(corte21)
	
	--Parte botas
	local repeticiones=math.ceil((alturaPlaca-sumaComienzoFin)/500.0)
	local tramoRectoEntreBotaDeCuelgue=(alturaPlaca-sumaComienzoFin-((repeticiones+1)*alturaBotaDeCuelgue)-(repeticiones*anchoBota))/repeticiones
	
	local puntoInicioX=(origenX+alaIzquierda+anchuraPlaca+anchoLateral1)
	local puntoInicioY=(origenY+alaInferior+pliegueInferior+cotaInicioDerecha+alturaLateral1)
	
	for n=1, (repeticiones+1) do
		--Dibujar bota
	    local corte6 = Point2D(puntoInicioX, puntoInicioY+tramoRecto1BotaDerecha)
		Contour:LineTo(corte6)
		
		puntoInicioY=puntoInicioY+tramoRecto1BotaDerecha
		
		local corte7=Point2D(puntoInicioX+(2*radioArcoBotaDerecha),puntoInicioY)
		local corte8=Point2D(puntoInicioX+(radioArcoBotaDerecha),puntoInicioY)
		Contour:ArcTo(corte7,corte8,false)
		puntoInicioX=puntoInicioX+(2*radioArcoBotaDerecha)
		
		local corte9=Point2D(puntoInicioX, puntoInicioY-tramoRecto2BotaDerecha)
		Contour:LineTo(corte9)
		puntoInicioY=puntoInicioY-tramoRecto2BotaDerecha
		
		local corte10=Point2D(puntoInicioX+(radioArcoBotaDerecha),puntoInicioY-radioArcoBotaDerecha)
		local corte11=Point2D(puntoInicioX+(radioArcoBotaDerecha),puntoInicioY)
		Contour:ArcTo(corte10,corte11,true)
		puntoInicioX=puntoInicioX+radioArcoBotaDerecha
		puntoInicioY=puntoInicioY-radioArcoBotaDerecha
		
		local corte12=Point2D(puntoInicioX+tramoRecto3BotaDerecha,puntoInicioY)
		Contour:LineTo(corte12)
		puntoInicioX=puntoInicioX+tramoRecto3BotaDerecha
		
		local corte13=Point2D(puntoInicioX,puntoInicioY+tramoRecto4BotaDerecha)
		Contour:LineTo(corte13)
		puntoInicioY=puntoInicioY+tramoRecto4BotaDerecha
		
		--Dibujar tramo recto
		if n==(repeticiones+1) then
			break
		else
			local corte14=Point2D(puntoInicioX,puntoInicioY+tramoRectoEntreBotaDeCuelgue)
			Contour:LineTo(corte14)
			puntoInicioY=puntoInicioY+tramoRectoEntreBotaDeCuelgue
			
			local corte15=Point2D(puntoInicioX-(alaDerecha-anchoLateral1),puntoInicioY+(alaDerecha-anchoLateral1))
			Contour:LineTo(corte15)
			puntoInicioX=puntoInicioX-(alaDerecha-anchoLateral1)
			puntoInicioY=puntoInicioY+(alaDerecha-anchoLateral1)
		end

	end
	
	--Parte final
	local corte22 = Point2D(origenX+alaIzquierda+anchuraPlaca+alaDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca-alaDerecha)
	Contour:LineTo(corte22)
	
	
	
	
	--PARTE SUPERIOR------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	if modelo==27 or modelo==28 or modelo==29 or modelo==30 or modelo==35 then --Parte Superior [CH][CH1][CH2][CH3][CH8]
		local corte40 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDcha,origenY+alaInferior+pliegueInferior+alturaPlaca)
		local corte41 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDcha+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte42 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDcha,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte43 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDcha,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte44 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte45 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte46 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro,origenY+alaInferior+pliegueInferior+alturaPlaca)
		local corte47 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte48 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte49 = Point2D(origenX+alaIzquierda+anchuraIzq+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte50 = Point2D(origenX+alaIzquierda+anchuraIzq+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte51 = Point2D(origenX+alaIzquierda+anchuraIzq,origenY+alaInferior+pliegueInferior+alturaPlaca)
		local corte52 = Point2D(origenX+alaIzquierda+anchuraIzq-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte53 = Point2D(origenX+alaIzquierda+anchuraIzq-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte54 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte55 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte56 = Point2D(origenX+alaIzquierda-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte57 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca)
		
		Contour:LineTo(corte40)
		Contour:LineTo(corte41)
		Contour:LineTo(corte42)
		Contour:LineTo(corte43)
		Contour:LineTo(corte44)
		Contour:LineTo(corte45)
		Contour:LineTo(corte46)
		Contour:LineTo(corte47)
		Contour:LineTo(corte48)
		Contour:LineTo(corte49)
		Contour:LineTo(corte50)
		Contour:LineTo(corte51)
		Contour:LineTo(corte52)
		Contour:LineTo(corte53)
		Contour:LineTo(corte54)
		Contour:LineTo(corte55)
		Contour:LineTo(corte56)
		Contour:LineTo(corte57)
		
	elseif modelo==31 or modelo==32 then --Parte Superior [CH4][CH5]
		local corte40 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDcha,origenY+alaInferior+pliegueInferior+alturaPlaca)
		local corte41 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDcha+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte42 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDcha,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte43 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDcha,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte44 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+pliegueSuperior+alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte45 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro,origenY+alaInferior+pliegueInferior+alturaPlaca)
		local corte46 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-pliegueSuperior-alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+alaSuperior+pliegueSuperior)
		local corte47 = Point2D(origenX+alaIzquierda+anchuraIzq+pliegueSuperior+alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+alaSuperior+pliegueSuperior)
		local corte48 = Point2D(origenX+alaIzquierda+anchuraIzq,origenY+alaInferior+pliegueInferior+alturaPlaca)
		local corte49 = Point2D(origenX+alaIzquierda+anchuraIzq-pliegueSuperior-alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte50 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte51 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte52 = Point2D(origenX+alaIzquierda-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte53 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca)
		
		Contour:LineTo(corte40)
		Contour:LineTo(corte41)
		Contour:LineTo(corte42)   
		Contour:LineTo(corte43)
		Contour:LineTo(corte44)
		Contour:LineTo(corte45)
		Contour:LineTo(corte46)
		Contour:LineTo(corte47)
		Contour:LineTo(corte48)
		Contour:LineTo(corte49)
		Contour:LineTo(corte50)
		Contour:LineTo(corte51)
		Contour:LineTo(corte52)
		Contour:LineTo(corte53)
	
	elseif modelo==33 or modelo==34 then --[CH6][CH7]
		local corte40 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDcha,origenY+alaInferior+pliegueInferior+alturaPlaca)
		local corte41 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDcha+alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+alaSuperior)
		local corte42 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDcha+alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior-alaSuperior)
		local corte43 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDcha,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte44 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDcha+alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte45 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte46 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte47 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro,origenY+alaInferior+pliegueInferior+alturaPlaca)
		local corte48 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte49 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte50 = Point2D(origenX+alaIzquierda+anchuraIzq+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte51 = Point2D(origenX+alaIzquierda+anchuraIzq+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte52 = Point2D(origenX+alaIzquierda+anchuraIzq,origenY+alaInferior+pliegueInferior+alturaPlaca)
		local corte53 = Point2D(origenX+alaIzquierda+anchuraIzq-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte54 = Point2D(origenX+alaIzquierda+anchuraIzq-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte55 = Point2D(origenX+alaIzquierda-alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte56 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte57 = Point2D(origenX+alaIzquierda-alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior-alaSuperior)
		local corte58 = Point2D(origenX+alaIzquierda-alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+alaSuperior)
		local corte59 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca)
		
		Contour:LineTo(corte40)
		Contour:LineTo(corte41)
		Contour:LineTo(corte42)
		Contour:LineTo(corte43)
		Contour:LineTo(corte44)
		Contour:LineTo(corte45)
		Contour:LineTo(corte46)
		Contour:LineTo(corte47)
		Contour:LineTo(corte48)
		Contour:LineTo(corte49)
		Contour:LineTo(corte50)
		Contour:LineTo(corte51)
		Contour:LineTo(corte52)
		Contour:LineTo(corte53)
		Contour:LineTo(corte54)
		Contour:LineTo(corte55)
		Contour:LineTo(corte56)
		Contour:LineTo(corte57)
		Contour:LineTo(corte58)
		Contour:LineTo(corte59)
		
	end
	
	
	
	
	
	
	
	--PARTE IZQUIERDA (BOTAS)------------------------------------------------------------------------------------------------------------------------------------------------------------------
		--Variables BOTAS
	local tramoRecto1BotaIzquierda=26
	local radioArcoBotaIzquierda=4
	local tramoRecto2BotaIzquierda=6.5
	local tramoRecto3BotaIzquierda=18
	local tramoRecto4BotaIzquierda=52
	
		--Variables por si el ala derecha e izquierda no son simetricas
	local margenA_izq = margenA --Al igualarlo al tamaño de los margenes de la derecha la figura es simetrica, si deja de ser simetrica, hay que pedirle que introduzca manualmente los margenes de la izquierda
	local margenB_izq = margenB
	local cotaInicioIzquierda=((margenB-alturaBotaDeCuelgue)+(alaIzquierda-anchoBota))/2 --[relacion trigonometrica][explicacion en la hoja de papel]
	
	
	--Parte inicial
	local lineaIzquierda=(margenA_izq)*(17/57)
	
	local corte60 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca-alaIzquierda)
	Contour:LineTo(corte60)
	local corte61 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca-alaIzquierda-lineaIzquierda)
	Contour:LineTo(corte61)
	
	
	--Parte botas
	local puntoInicioX=(origenX)
	local puntoInicioY=(origenY+alaInferior+pliegueInferior+alturaPlaca-margenA_izq)
		
	for n=1, (repeticiones+1) do
		--Dibujar bota
	    local corte32 = Point2D(puntoInicioX, puntoInicioY-tramoRecto1BotaIzquierda)
		Contour:LineTo(corte32)
		
		puntoInicioY=puntoInicioY-tramoRecto1BotaIzquierda
		
		local corte33=Point2D(puntoInicioX+tramoRecto2BotaIzquierda, puntoInicioY)
		Contour:LineTo(corte33)
		puntoInicioX=puntoInicioX+tramoRecto2BotaIzquierda
		
		local corte34=Point2D(puntoInicioX+(radioArcoBotaIzquierda),puntoInicioY+radioArcoBotaIzquierda)
		local corte35=Point2D(puntoInicioX,puntoInicioY+radioArcoBotaIzquierda)
		Contour:ArcTo(corte34,corte35,true)
		puntoInicioX=puntoInicioX+radioArcoBotaIzquierda
		puntoInicioY=puntoInicioY+radioArcoBotaIzquierda
		
		local corte36=Point2D(puntoInicioX, puntoInicioY+tramoRecto3BotaIzquierda)
		Contour:LineTo(corte36)
		puntoInicioY=puntoInicioY+tramoRecto3BotaIzquierda
		
		local corte37=Point2D(puntoInicioX+(2*radioArcoBotaIzquierda),puntoInicioY)
		local corte38=Point2D(puntoInicioX+(radioArcoBotaIzquierda),puntoInicioY)
		Contour:ArcTo(corte37,corte38,false)
		puntoInicioX=puntoInicioX+(2*radioArcoBotaIzquierda)
		
		
		local corte39=Point2D(puntoInicioX,puntoInicioY-tramoRecto4BotaIzquierda)
		Contour:LineTo(corte39)
		puntoInicioY=puntoInicioY-tramoRecto4BotaIzquierda
		
		--Dibujar tramo recto
		if n==(repeticiones+1) then
			break
		else
			local corte40=Point2D(puntoInicioX-(anchoBota),puntoInicioY-(anchoBota))
			Contour:LineTo(corte40)
			puntoInicioY=puntoInicioY-(anchoBota)
			puntoInicioX=puntoInicioX-(anchoBota)
			
			
			local corte41=Point2D(puntoInicioX,puntoInicioY-tramoRectoEntreBotaDeCuelgue)
			Contour:LineTo(corte41)
			puntoInicioY=puntoInicioY-tramoRectoEntreBotaDeCuelgue
		end
		

	end
	
	--Parte final
	local corte65 = Point2D(origenX+alaIzquierda-cotaInicioIzquierda,origenY+alaInferior+pliegueInferior+cotaInicioIzquierda)
	local corte66 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior)
	Contour:LineTo(corte65)
	Contour:LineTo(corte66)
	
		
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


















