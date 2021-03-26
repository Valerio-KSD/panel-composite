-- VECTRIC LUA SCRIPT

require "strict"


---------------------------------------------------------------
------------------- GESTION DE ARCHIVOS -----------------------
---------------------------------------------------------------

ruta_carpeta="https://cuttool.es/prueba/"
carpeta="Paneles"

--DisplayMessageBox("La ruta es: " .. ruta_carpeta.. "" .. carpeta .. "")

remoto=1 --Esto es para que los archivos html se lean en remoto (https://...) o en local (file:/...)
--1=remoto
--0=local

---------------------------------------------------------------
---------------------------------------------------------------
---------------------------------------------------------------






--Variable texto
textoDescriptivo=""

--Variables Taladros/Coliso
crearColiso=1
diametroTaladros=5
anchuraColiso=20
alturaColiso=5

--Márgenes Taladros
--margenAla=26.26

--margenTaladroBota=8.04

--margenXTaladroSuperior=13.46
--margenYTaladroSuperior=9.06

--margenXTaladroInferior=11.64
--margenYTaladroInferior=8.84

--distanciaYTaladrosSuperiores=53.24

--distanciaXTaladrosInferiores=1.82


alturaBotaDeCuelgue=56
anchoBota=18.5

--Matrices
--cantidadX=1
--cantidadY=1
--distanciaX=100
--distanciaY=100

--Entradas comunes a todos los modelos [AH][BH][CH]
crearBotas=1

alaSuperior=40
alaInferior=40
alaDerecha=40
alaIzquierda=alaDerecha

pliegueSuperior=36
pliegueInferior=36

margenA=57--74 --Margen Superior
margenB=108--132 --Margen Inferior

anchuraPlaca = 2000
alturaPlaca = 1000
--margenPlaca = 3


--Entrada para modelo [BH]

anchura1=1200 --izquierda
anchura2=800 --derecha
distanciaAlas=4

--Entrada para modelo [CH]
anchuraIzq=400
anchuraCentro=1200
anchuraDerecha=400

--Entrada para modelo [DH]
pliegueDer=50
pliegueIzq=50

--Entrada para modelo [E]
margenM1=50
margenM2=50
crearFresado=0



origenX=0
origenY=0



modelo=0
--[AH=0 - AH1=1 - AH2=2 - AH3=3 - AH4=4 - AH5=5 - AH6=6 - AH7=7 - AH8=8]
--[BH=9 - BH1=10 - BH2=11 - BH3=12 - BH4=13 - BH5=14 - BH6=15 - BH7=16 - BH8=17]
--[BH9=18 - BH10=19 - BH11=20 - BH12=21 - BH13=22 - BH14=23 - BH15=24 - BH16=25 - BH17=26]
--[CH=27 - CH1=28 - CH2=29 - CH3=30 - CH4=31 - CH5=32 - CH6=33 - CH7=34 - CH8=35]
--[DH=40 - DH1=41 - DH2=42 - DH3=43 - DH4=44 - DH5=45 - DH6=46 - DH7=47]
--[ref001=101 - ref002=102 - ref003=103 - ref004=104 - ref005=105]



--PIEZA ESPECIAL 001 - 002
anchura1=50
anchura2=130
anchura3=285
anchura4=1745
anchura5=300
anchura6=130
anchura7=50
alturaPlaca=457
alaInferior=34
pliegueSuperior=35
alaSuperior=40
margenFresado=1

pliegueInf1=34
pliegueInf2=34
pliegueInf3=34
pliegueInf4=34
pliegueInf5=34
pliegueInf6=34
pliegueInf7=34

--PIEZA ESPECIAL 003
altura1=50
altura2=50
altura3=50
altura4=50
altura5=50
altura6=50
altura7=50
altura8=50
altura9=50
altura10=50
alaIzquierda=50
alaDerecha=50

pliegueIzq1=0 pliegueIzq2=0 pliegueIzq3=0 pliegueIzq4=0 pliegueIzq5=0 pliegueIzq6=0 pliegueIzq7=0 pliegueIzq8=0 pliegueIzq9=0 pliegueIzq10=0
pliegueDer1=0 pliegueDer2=0 pliegueDer3=0 pliegueDer4=0 pliegueDer5=0 pliegueDer6=0 pliegueDer7=0 pliegueDer8=0 pliegueDer9=0 pliegueDer10=0 

dibujoHorizontal=0
dibujoVertical=0

--PIEZA ESPECIAL 004
margenM=100
margenL=700

--Documento
ruta=""
doc = VectricJob()

--Tamaño de la ventana [en pixeles]
tamX=1024 --1900
tamY=768 --950

function main(script_path)

    ruta=script_path
	
	if not doc.Exists then
	   DisplayMessageBox("Trabajo NO Cargado")
		return false;
	end	
	
	local html_path
	if remoto==1 then
		html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/Paneles.html"
	else
		html_path = "file:" .. script_path .. "\\Paneles\\Paneles.html"
	end

	
	
	local framePrincipal = HTML_Dialog(false, html_path, tamX, tamY, "KSD Motion Control S.L.U.") --14.7" (proporcion 4:3)
	
	
	
	if  not framePrincipal:ShowDialog() then
	
		return false;
		
	end
		
	return true; 
end 





function OnLuaButton_crearBotas()
	crearBotas=1
	return true
end
function OnLuaButton_noCrearBotas()
	crearBotas=0
	return true
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


function OnLuaButton_refCH()
	modelo=27
  return true
end
function OnLuaButton_refCH1()
	modelo=28
  return true
end
function OnLuaButton_refCH2()
	modelo=29
  return true
end
function OnLuaButton_refCH3()
	modelo=30
  return true
end
function OnLuaButton_refCH4()
	modelo=31
  return true
end
function OnLuaButton_refCH5()
	modelo=32
  return true
end
function OnLuaButton_refCH6()
	modelo=33
  return true
end
function OnLuaButton_refCH7()
	modelo=34
  return true
end
function OnLuaButton_refCH8()
	modelo=35
  return true
end





function OnLuaButton_refDH()
	modelo=40
  return true
end
function OnLuaButton_refDH1()
	modelo=41
  return true
end
function OnLuaButton_refDH2()
	modelo=42
  return true
end
function OnLuaButton_refDH3()
	modelo=43
  return true
end
function OnLuaButton_refDH4()
	modelo=44
  return true
end
function OnLuaButton_refDH5()
	modelo=45
  return true
end
function OnLuaButton_refDH6()
	modelo=46
  return true
end
function OnLuaButton_refDH7()
	modelo=47
  return true
end



function OnLuaButton_refE0()
	modelo=50
  return true
end
function OnLuaButton_refE1()
	modelo=51
  return true
end
function OnLuaButton_refE2()
	modelo=52
  return true
end
function OnLuaButton_refE3()
	modelo=53
  return true
end
function OnLuaButton_refE4()
	modelo=54
  return true
end
function OnLuaButton_refE5()
	modelo=55
  return true
end





function OnLuaButton_ref001()
	modelo=101
  return true
end
function OnLuaButton_ref002()
	modelo=102
  return true
end
function OnLuaButton_ref003()
	modelo=103
  return true
end
function OnLuaButton_ref004()
	modelo=104
  return true
end
function OnLuaButton_ref005()
	modelo=105
  return true
end
function OnLuaButton_ref006()
	modelo=106
  return true
end
function OnLuaButton_ref007()
	modelo=107
  return true
end
function OnLuaButton_ref008()
	modelo=108
  return true
end
function OnLuaButton_ref009()
	modelo=109
  return true
end
function OnLuaButton_ref010()
	modelo=110
  return true
end
function OnLuaButton_ref011()
	modelo=111
  return true
end
function OnLuaButton_ref012()
	modelo=112
  return true
end
function OnLuaButton_ref013()
	modelo=113
  return true
end
function OnLuaButton_ref014()
	modelo=114
  return true
end
function OnLuaButton_ref015()
	modelo=115
  return true
end
function OnLuaButton_ref016()
	modelo=116
  return true
end
function OnLuaButton_ref017()
	modelo=117
  return true
end
function OnLuaButton_ref018()
	modelo=118
  return true
end
function OnLuaButton_ref019()
	modelo=119
  return true
end
function OnLuaButton_ref020()
	modelo=120
  return true
end






function OnLuaButton_modeloAH(framePrincipal)

	if modelo == 0 then 
		
		
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaAH.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaAH.html"
		end
		
		
		
		local modeloAH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA AH")
		
		textoDescriptivo="AH"
		anchuraPlaca=2000 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=36 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloAH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloAH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    --modeloAH:AddDoubleField("margenPlaca", margenPlaca)
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
		
		modeloAH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloAH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloAH:AddCheckBox("crearColiso", true)
		
	    if  not modeloAH:ShowDialog() then
			
				return false;
					
		end

   	elseif modelo==1 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaAH1.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaAH1.html"
		end
		

			
		local modeloAH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA AH1")
		

		textoDescriptivo="AH1"
		anchuraPlaca=2000 alturaPlaca=1000 alaIzquierda=40 alaSuperior=20 alaInferior=32
		pliegueSuperior=40 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloAH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloAH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    --modeloAH:AddDoubleField("margenPlaca", margenPlaca)
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
		
		modeloAH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloAH:AddDoubleField("diametroTaladros", diametroTaladros)
		
	    if  not modeloAH:ShowDialog() then
			
				return false;
					
		end
		
    elseif modelo==2 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaAH2.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaAH2.html"
		end
		
			
		local modeloAH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA AH2")

		textoDescriptivo="AH2"
		anchuraPlaca=2000 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=20
		pliegueSuperior=36 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloAH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloAH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    --modeloAH:AddDoubleField("margenPlaca", margenPlaca)
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
		
		modeloAH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloAH:AddDoubleField("diametroTaladros", diametroTaladros)
		
	    if  not modeloAH:ShowDialog() then
			
				return false;
					
		end
	
    elseif modelo==3 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaAH3.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaAH3.html"
		end	
		
			
		local modeloAH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA AH3")

		textoDescriptivo="AH3"
		anchuraPlaca=2000 alturaPlaca=1000 alaIzquierda=40 alaSuperior=20 alaInferior=20
		pliegueSuperior=40 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloAH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloAH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    --modeloAH:AddDoubleField("margenPlaca", margenPlaca)
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

		modeloAH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloAH:AddDoubleField("diametroTaladros", diametroTaladros)
		
	    if  not modeloAH:ShowDialog() then
			
				return false;
					
		end
	
    elseif modelo==4 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaAH4.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaAH4.html"
		end
		
			
		local modeloAH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA AH4")

		textoDescriptivo="AH4"
		anchuraPlaca=2000 alturaPlaca=1000 alaIzquierda=40 alaSuperior=260 alaInferior=32
		pliegueSuperior=40 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloAH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloAH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    --modeloAH:AddDoubleField("margenPlaca", margenPlaca)
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

		modeloAH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloAH:AddDoubleField("diametroTaladros", diametroTaladros)
		
	    if  not modeloAH:ShowDialog() then
			
				return false;
					
		end
	
    elseif modelo==5 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaAH5.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaAH5.html"
		end
		
			
		local modeloAH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA AH5")

		textoDescriptivo="AH5"
		anchuraPlaca=2000 alturaPlaca=1000 alaIzquierda=40 alaSuperior=260 alaInferior=20
		pliegueSuperior=40 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloAH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloAH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    --modeloAH:AddDoubleField("margenPlaca", margenPlaca)
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

		modeloAH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloAH:AddDoubleField("diametroTaladros", diametroTaladros)
		
	    if  not modeloAH:ShowDialog() then
			
				return false;
					
		end
	
    elseif modelo==6 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaAH6.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaAH6.html"
		end
		
			
		local modeloAH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA AH6")

		textoDescriptivo="AH6"
		anchuraPlaca=2000 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=300 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloAH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloAH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    --modeloAH:AddDoubleField("margenPlaca", margenPlaca)
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

		modeloAH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloAH:AddDoubleField("diametroTaladros", diametroTaladros)
		
	    if  not modeloAH:ShowDialog() then
			
				return false;
					
		end
	
    elseif modelo==7 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaAH7.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaAH7.html"
		end
		
			
		local modeloAH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA AH7")

		textoDescriptivo="AH7"
		anchuraPlaca=2000 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=20
		pliegueSuperior=300 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloAH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloAH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    --modeloAH:AddDoubleField("margenPlaca", margenPlaca)
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

		modeloAH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloAH:AddDoubleField("diametroTaladros", diametroTaladros)
		
	    if  not modeloAH:ShowDialog() then
			
				return false;
					
		end
	
    elseif modelo==8 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaAH8.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaAH8.html"
		end
		
			
		local modeloAH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA AH8")

		textoDescriptivo="AH8"
		anchuraPlaca=2000 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=40
		pliegueSuperior=36 pliegueInferior=300 margenA=57 margenB=108 diametroTaladros=5 
		
        modeloAH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloAH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    --modeloAH:AddDoubleField("margenPlaca", margenPlaca)
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

		modeloAH:AddDoubleField("anchuraColiso", anchuraColiso)
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
	    --margenPlaca = modeloAH:GetDoubleField("margenPlaca")
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
		
		anchuraColiso=modeloAH:GetDoubleField("anchuraColiso")
		diametroTaladros=modeloAH:GetDoubleField("diametroTaladros")
		--alturaColiso=diametroTaladros
		--crearColiso=modeloAH:GetCheckBox("crearColiso")



	elseif modelo==2 or modelo==3 or modelo==5 or modelo==7 or modelo==8 then --Modelos con pliegue inferior != 0 
		
		textoDescriptivo = modeloAH:GetTextField("textoDescriptivo")
		anchuraPlaca = modeloAH:GetDoubleField("anchuraPlaca")
	    --margenPlaca = modeloAH:GetDoubleField("margenPlaca")
	    alturaPlaca = modeloAH:GetDoubleField("alturaPlaca")
		
		alaIzquierda = modeloAH:GetDoubleField("alaLateral")
		alaSuperior = modeloAH:GetDoubleField("alaSuperior")
		alaInferior = modeloAH:GetDoubleField("alaInferior")
		
		pliegueInferior=modeloAH:GetDoubleField("pliegueInferior")
		pliegueSuperior = modeloAH:GetDoubleField("pliegueSuperior")
		margenA = modeloAH:GetDoubleField("margenA")
		margenB = modeloAH:GetDoubleField("margenB")

		anchuraColiso=modeloAH:GetDoubleField("anchuraColiso")
		diametroTaladros=modeloAH:GetDoubleField("diametroTaladros")
		
		--crearColiso=modeloAH:GetCheckBox("crearColiso")
  	end

    
	--Caracteristicas generales
	--anchuraPlaca=anchuraPlaca-margenPlaca
    --alturaPlaca=alturaPlaca-margenPlaca
	
	alaDerecha=alaIzquierda
	
	alturaColiso=diametroTaladros
	
    --Comprobaciones y validaciones de los datos
	if anchuraPlaca < 0 then
		DisplayMessageBox("La anchura de la placa NO puede ser negativa. Creacion Modelo AH"..modelo.." Fallida")	
	elseif  alturaPlaca < 0 then
		DisplayMessageBox("La altura de la placa NO puede ser negativa. Creacion Modelo AH"..modelo.." Fallida")
	elseif alaIzquierda<0 or alaSuperior<0 or alaInferior<0 then
    	DisplayMessageBox("El tamaño las alas NO puede ser negativa. Creacion Modelo AH"..modelo.." Fallida")
	elseif pliegueSuperior<0 or pliegueInferior<0 then
		DisplayMessageBox("El tamaño del pliegue NO puede ser negativo. Creacion Modelo AH"..modelo.." Fallida")
	elseif anchuraColiso>anchuraPlaca/2 then 
		DisplayMessageBox("El tamano de los colisos NO puede ser mayor al ancho de la plancha. Creacion Modelo AH"..modelo.." Fallida")
		
	elseif doc.Width <(alaIzquierda+anchuraPlaca+alaDerecha) then
		DisplayMessageBox("El ancho del panel es mayor al ancho del area de trabajo. Creacion Modelo AH"..modelo.." Fallida")
	
	
	elseif margenA<alturaBotaDeCuelgue then 
		DisplayMessageBox("El tamaño del margenA no puede ser menor al tamaño de una bota de cuelgue. Creación Modelo AH"..modelo.." Fallida")	
	else
		
		--Para dibujar la pieza fuera del area de trabajo
			--origenX=-(alaDerecha+anchuraPlaca+alaIzquierda+400)
			--origenY=400
			
		--Para dibujar la pieza
			dibujarFresadoAH(doc)
			dibujarCorteAH(doc)
			dibujarTexto(doc)
			dibujarTaladrosAH(doc)
			
			
			
			
			
			
			
			
			
			
			
		DisplayMessageBox("Modelo AH"..modelo.." Creado Correctamente")
		
	
	end
	
return true;

end









function OnLuaButton_modeloBH(framePrincipal)
	
	if modelo == 9 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH.html"
		end
		
		
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA BH")
		
		textoDescriptivo="BH"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=36 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    --modeloBH:AddDoubleField("margenPlaca", margenPlaca)
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
		
		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end

   	elseif modelo==10 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH1.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH1.html"
		end
		
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA BH1")
		
		textoDescriptivo="BH1"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=20 alaInferior=32
		pliegueSuperior=40 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    --modeloBH:AddDoubleField("margenPlaca", margenPlaca)
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

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==11 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH2.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH2.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA BH2")
		
		textoDescriptivo="BH2"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=20
		pliegueSuperior=36 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    --modeloBH:AddDoubleField("margenPlaca", margenPlaca)
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

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==12 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH3.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH3.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA BH3")
		
		textoDescriptivo="BH3"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=20 alaInferior=20
		pliegueSuperior=36 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    --modeloBH:AddDoubleField("margenPlaca", margenPlaca)
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

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==13 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH4.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH4.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA BH4")
		
		textoDescriptivo="BH4"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=260 alaInferior=32
		pliegueSuperior=40 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    --modeloBH:AddDoubleField("margenPlaca", margenPlaca)
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

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==14 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH5.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH5.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA BH5")
		
		textoDescriptivo="BH5"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=260 alaInferior=20
		pliegueSuperior=40 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    --modeloBH:AddDoubleField("margenPlaca", margenPlaca)
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

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==15 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH6.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH6.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA BH6")
		
		textoDescriptivo="BH6"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=300 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    --modeloBH:AddDoubleField("margenPlaca", margenPlaca)
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

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==16 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH7.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH7.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA BH7")
		
		textoDescriptivo="BH7"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=20
		pliegueSuperior=300 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    --modeloBH:AddDoubleField("margenPlaca", margenPlaca)
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

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==17 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH8.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH8.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA BH8")
		
		textoDescriptivo="BH8"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=36 pliegueInferior=300  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    --modeloBH:AddDoubleField("margenPlaca", margenPlaca)
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

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==18 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH9.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH9.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA BH9")
		
		textoDescriptivo="BH9"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=36 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    --modeloBH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)
		modeloBH:AddDoubleField("distanciaAlas", distanciaAlas)

		--modeloBH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==19 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH10.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH10.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA BH10")
		
		textoDescriptivo="BH10"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=20 alaInferior=32
		pliegueSuperior=40 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    --modeloBH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)
		modeloBH:AddDoubleField("distanciaAlas", distanciaAlas)

		--modeloBH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==20 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH11.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH11.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA BH11")
		
		textoDescriptivo="BH11"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=20
		pliegueSuperior=36 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    --modeloBH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)
		modeloBH:AddDoubleField("distanciaAlas", distanciaAlas)

		modeloBH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==21 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH12.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH12.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA BH12")
		
		textoDescriptivo="BH12"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=20 alaInferior=20
		pliegueSuperior=36 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    --modeloBH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)
		modeloBH:AddDoubleField("distanciaAlas", distanciaAlas)

		modeloBH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==22 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH13.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH13.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA BH13")
		
		textoDescriptivo="BH13"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=260 alaInferior=32
		pliegueSuperior=40 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    --modeloBH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)
		modeloBH:AddDoubleField("distanciaAlas", distanciaAlas)

		--modeloBH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==23 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH14.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH14.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA BH14")
		
		textoDescriptivo="BH14"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=260 alaInferior=20
		pliegueSuperior=40 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    --modeloBH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)
		modeloBH:AddDoubleField("distanciaAlas", distanciaAlas)

		modeloBH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==24 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH15.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH15.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA BH15")
		
		textoDescriptivo="BH15"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=300 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    --modeloBH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)
		modeloBH:AddDoubleField("distanciaAlas", distanciaAlas)

		--modeloBH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo==25 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH16.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH16.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA BH16")
		
		textoDescriptivo="BH16"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=20
		pliegueSuperior=300 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    --modeloBH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)
		modeloBH:AddDoubleField("distanciaAlas", distanciaAlas)

		modeloBH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
		
	elseif modelo==26 then
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaBH17.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaBH17.html"
		end
		
		local modeloBH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA BH17")
		
		textoDescriptivo="BH17"
		anchura1=1200 anchura2=800 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=40
		pliegueSuperior=36 pliegueInferior=300  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloBH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloBH:AddDoubleField("anchuraPlacaIzquierda", anchura1)
		modeloBH:AddDoubleField("anchuraPlacaDerecha", anchura2)
	    --modeloBH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloBH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloBH:AddDoubleField("origenX", origenX)
		--modeloBH:AddDoubleField("origenY", origenY)

		modeloBH:AddDoubleField("alaLateral", alaIzquierda)
		modeloBH:AddDoubleField("alaSuperior", alaSuperior)
		modeloBH:AddDoubleField("alaInferior", alaInferior)
		modeloBH:AddDoubleField("distanciaAlas", distanciaAlas)

		modeloBH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloBH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloBH:AddDoubleField("margenA", margenA)
		modeloBH:AddDoubleField("margenB", margenB)

		modeloBH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloBH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloBH:AddCheckBox("crearColiso", true)
		
	    if  not modeloBH:ShowDialog() then
			
				return false;
					
		end
	end
		

return true;

end


function OnLuaButton_aceptarBH(modeloBH)

	if modelo==9 or modelo==10 or modelo==13 or modelo==15 then --SIN PLIEGUE / COLUMNA 1
		pliegueInferior=0
		
		textoDescriptivo = modeloBH:GetTextField("textoDescriptivo")
		anchura1 = modeloBH:GetDoubleField("anchuraPlacaIzquierda")
		anchura2 = modeloBH:GetDoubleField("anchuraPlacaDerecha")
	    --margenPlaca = modeloBH:GetDoubleField("margenPlaca")
	    alturaPlaca = modeloBH:GetDoubleField("alturaPlaca")
		--origenX = modeloBH:GetDoubleField("origenXAH")
		--origenY = modeloBH:GetDoubleField("origenYAH")

		alaIzquierda=modeloBH:GetDoubleField("alaLateral")
		alaSuperior=modeloBH:GetDoubleField("alaSuperior")
		alaInferior=modeloBH:GetDoubleField("alaInferior")
		--pliegueInferior=modeloBH:GetDoubleField("pliegueInferior")
		pliegueSuperior=modeloBH:GetDoubleField("pliegueSuperior")
		margenA=modeloBH:GetDoubleField("margenA")
		margenB=modeloBH:GetDoubleField("margenB")

		anchuraColiso=modeloBH:GetDoubleField("anchuraColiso")
		diametroTaladros=modeloBH:GetDoubleField("diametroTaladros")
		
		--crearColiso=modeloBH:GetCheckBox("crearColiso")



	elseif modelo==11 or modelo==12 or modelo==14 or modelo==16 or modelo==17 then  --CON PLIEGUE / COLUMNA 1
		
		textoDescriptivo = modeloBH:GetTextField("textoDescriptivo")
		anchura1 = modeloBH:GetDoubleField("anchuraPlacaIzquierda")
		anchura2 = modeloBH:GetDoubleField("anchuraPlacaDerecha")
	    --margenPlaca = modeloBH:GetDoubleField("margenPlaca")
	    alturaPlaca = modeloBH:GetDoubleField("alturaPlaca")
		--origenX = modeloBH:GetDoubleField("origenXAH")
		--origenY = modeloBH:GetDoubleField("origenYAH")

		alaIzquierda=modeloBH:GetDoubleField("alaLateral")
		alaSuperior=modeloBH:GetDoubleField("alaSuperior")
		alaInferior=modeloBH:GetDoubleField("alaInferior")
		pliegueInferior=modeloBH:GetDoubleField("pliegueInferior")
		pliegueSuperior=modeloBH:GetDoubleField("pliegueSuperior")
		margenA=modeloBH:GetDoubleField("margenA")
		margenB=modeloBH:GetDoubleField("margenB")

		anchuraColiso=modeloBH:GetDoubleField("anchuraColiso")
		diametroTaladros=modeloBH:GetDoubleField("diametroTaladros")
		
		--crearColiso=modeloBH:GetCheckBox("crearColiso")

	elseif modelo==18 or modelo==19 or modelo==22 or modelo==24 then  --SIN PLIEGUE / COLUMNA 2
		pliegueInferior=0
		
		textoDescriptivo = modeloBH:GetTextField("textoDescriptivo")
		anchura1 = modeloBH:GetDoubleField("anchuraPlacaIzquierda")
		anchura2 = modeloBH:GetDoubleField("anchuraPlacaDerecha")
	    --margenPlaca = modeloBH:GetDoubleField("margenPlaca")
	    alturaPlaca = modeloBH:GetDoubleField("alturaPlaca")
		--origenX = modeloBH:GetDoubleField("origenXAH")
		--origenY = modeloBH:GetDoubleField("origenYAH")
		
		alaIzquierda=modeloBH:GetDoubleField("alaLateral")
		alaSuperior=modeloBH:GetDoubleField("alaSuperior")
		alaInferior=modeloBH:GetDoubleField("alaInferior")
		distanciaAlas=modeloBH:GetDoubleField("distanciaAlas")
		
		--pliegueInferior=modeloBH:GetDoubleField("pliegueInferior")
		pliegueSuperior=modeloBH:GetDoubleField("pliegueSuperior")
		margenA=modeloBH:GetDoubleField("margenA")
		margenB=modeloBH:GetDoubleField("margenB")

		anchuraColiso=modeloBH:GetDoubleField("anchuraColiso")
		diametroTaladros=modeloBH:GetDoubleField("diametroTaladros")
		
		--crearColiso=modeloBH:GetCheckBox("crearColiso")
	
	elseif modelo==20 or modelo==21 or modelo==23 or modelo==25 or modelo==26 then  --CON PLIEGUE / COLUMNA 2
	
		textoDescriptivo = modeloBH:GetTextField("textoDescriptivo")
		anchura1 = modeloBH:GetDoubleField("anchuraPlacaIzquierda")
		anchura2 = modeloBH:GetDoubleField("anchuraPlacaDerecha")
	    --margenPlaca = modeloBH:GetDoubleField("margenPlaca")
	    alturaPlaca = modeloBH:GetDoubleField("alturaPlaca")
		--origenX = modeloBH:GetDoubleField("origenXAH")
		--origenY = modeloBH:GetDoubleField("origenYAH")

		alaIzquierda=modeloBH:GetDoubleField("alaLateral")
		alaSuperior=modeloBH:GetDoubleField("alaSuperior")
		alaInferior=modeloBH:GetDoubleField("alaInferior")
		distanciaAlas=modeloBH:GetDoubleField("distanciaAlas")
		
		pliegueInferior=modeloBH:GetDoubleField("pliegueInferior")
		pliegueSuperior=modeloBH:GetDoubleField("pliegueSuperior")
		margenA=modeloBH:GetDoubleField("margenA")
		margenB=modeloBH:GetDoubleField("margenB")

		anchuraColiso=modeloBH:GetDoubleField("anchuraColiso")
		diametroTaladros=modeloBH:GetDoubleField("diametroTaladros")
		
		--crearColiso=modeloBH:GetCheckBox("crearColiso")
	
  	end

    
	--Caracteristicas generales
	anchuraPlaca=anchura1+anchura2
	
	--anchuraPlaca=anchuraPlaca-margenPlaca
    --alturaPlaca=alturaPlaca-margenPlaca
	
	alaDerecha=alaIzquierda
	
	alturaColiso=diametroTaladros
	
    --Comprobaciones y validaciones de los datos
	if anchuraPlaca < 0 then
		DisplayMessageBox("La anchura de la placa NO puede ser negativa. Creacion Modelo BH"..modelo-9 .." Fallida")
	elseif anchuraIzq<0 or anchuraDerecha<0 then
		DisplayMessageBox("La anchura de una de las partes de la placa NO puede ser negativa. Creacion Modelo BH"..modelo-9 .." Fallida")	
	elseif  alturaPlaca < 0 then
		DisplayMessageBox("La altura de la placa NO puede ser negativa. Creacion Modelo BH"..modelo-9 .." Fallida")
	elseif alaIzquierda<0 or alaSuperior<0 or alaInferior<0 then
    	DisplayMessageBox("El tamano las alas NO puede ser negativa. Creacion Modelo BH"..modelo-9 .." Fallida")
	elseif pliegueSuperior<0 or pliegueInferior<0 then
		DisplayMessageBox("El tamano del pliegue NO puede ser negativo. Creacion Modelo BH"..modelo-9 .." Fallida")
	elseif anchuraColiso>anchuraPlaca/2 then 
		DisplayMessageBox("El tamano de los colisos NO puede ser mayor al ancho de la plancha. Creacion Modelo BH"..modelo-9 .." Fallida")
	else
		
		--Para que la pieza apareza fuera del area de trabajo
			--origenX=-(alaDerecha+anchura1+anchura2+alaIzquierda+400)
			--origenY=400
		
		--Para dibujar la pieza
			dibujarFresadoBH(doc)
			dibujarCorteBH(doc)
			dibujarTexto(doc)
			dibujarTaladrosBH(doc)
		
			
		DisplayMessageBox("Modelo BH"..modelo-9 .. " Creado Correctamente")
	
	end
	
return true;

end









function OnLuaButton_modeloCH(framePrincipal)
	
	if modelo == 27 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaCH.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaCH.html"
		end
		
		
		local modeloCH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA CH")
		
		textoDescriptivo="CH"
		anchuraIzq=400 anchuraCentro=1200 anchuraDerecha=400 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=36 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloCH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloCH:AddDoubleField("anchuraPlacaIzquierda", anchuraIzq)
		modeloCH:AddDoubleField("anchuraPlacaCentro", anchuraCentro)
		modeloCH:AddDoubleField("anchuraPlacaDerecha", anchuraDerecha)
	    --modeloCH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloCH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloCH:AddDoubleField("origenX", origenX)
		--modeloCH:AddDoubleField("origenY", origenY)

		modeloCH:AddDoubleField("alaLateral", alaIzquierda)
		modeloCH:AddDoubleField("alaSuperior", alaSuperior)
		modeloCH:AddDoubleField("alaInferior", alaInferior)

		--modeloCH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloCH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloCH:AddDoubleField("margenA", margenA)
		modeloCH:AddDoubleField("margenB", margenB)
		
		modeloCH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloCH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloCH:AddCheckBox("crearColiso", true)
		
	    if  not modeloCH:ShowDialog() then
			
				return false;
					
		end
	
	elseif modelo == 28 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaCH1.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaCH1.html"
		end
		
		
		local modeloCH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA CH1")
		
		textoDescriptivo="CH1"
		anchuraIzq=400 anchuraCentro=1200 anchuraDerecha=400 alturaPlaca=1000 alaIzquierda=40 alaSuperior=20 alaInferior=32
		pliegueSuperior=40 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloCH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloCH:AddDoubleField("anchuraPlacaIzquierda", anchuraIzq)
		modeloCH:AddDoubleField("anchuraPlacaCentro", anchuraCentro)
		modeloCH:AddDoubleField("anchuraPlacaDerecha", anchuraDerecha)
	    --modeloCH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloCH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloCH:AddDoubleField("origenX", origenX)
		--modeloCH:AddDoubleField("origenY", origenY)

		modeloCH:AddDoubleField("alaLateral", alaIzquierda)
		modeloCH:AddDoubleField("alaSuperior", alaSuperior)
		modeloCH:AddDoubleField("alaInferior", alaInferior)

		--modeloCH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloCH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloCH:AddDoubleField("margenA", margenA)
		modeloCH:AddDoubleField("margenB", margenB)

		modeloCH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloCH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloCH:AddCheckBox("crearColiso", true)
		
	    if  not modeloCH:ShowDialog() then
			
				return false;
					
		end
		
	elseif modelo == 29 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaCH2.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaCH2.html"
		end
		
		local modeloCH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA CH2")
		
		textoDescriptivo="CH2"
		anchuraIzq=400 anchuraCentro=1200 anchuraDerecha=400 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=20
		pliegueSuperior=36 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloCH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloCH:AddDoubleField("anchuraPlacaIzquierda", anchuraIzq)
		modeloCH:AddDoubleField("anchuraPlacaCentro", anchuraCentro)
		modeloCH:AddDoubleField("anchuraPlacaDerecha", anchuraDerecha)
	    --modeloCH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloCH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloCH:AddDoubleField("origenX", origenX)
		--modeloCH:AddDoubleField("origenY", origenY)

		modeloCH:AddDoubleField("alaLateral", alaIzquierda)
		modeloCH:AddDoubleField("alaSuperior", alaSuperior)
		modeloCH:AddDoubleField("alaInferior", alaInferior)

		modeloCH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloCH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloCH:AddDoubleField("margenA", margenA)
		modeloCH:AddDoubleField("margenB", margenB)

		modeloCH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloCH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloCH:AddCheckBox("crearColiso", true)
		
	    if  not modeloCH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo == 30 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaCH3.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaCH3.html"
		end
		
		
		local modeloCH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA CH3")
		
		textoDescriptivo="CH3"
		anchuraIzq=400 anchuraCentro=1200 anchuraDerecha=400 alturaPlaca=1000 alaIzquierda=40 alaSuperior=20 alaInferior=20
		pliegueSuperior=36 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloCH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloCH:AddDoubleField("anchuraPlacaIzquierda", anchuraIzq)
		modeloCH:AddDoubleField("anchuraPlacaCentro", anchuraCentro)
		modeloCH:AddDoubleField("anchuraPlacaDerecha", anchuraDerecha)
	    --modeloCH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloCH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloCH:AddDoubleField("origenX", origenX)
		--modeloCH:AddDoubleField("origenY", origenY)

		modeloCH:AddDoubleField("alaLateral", alaIzquierda)
		modeloCH:AddDoubleField("alaSuperior", alaSuperior)
		modeloCH:AddDoubleField("alaInferior", alaInferior)

		modeloCH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloCH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloCH:AddDoubleField("margenA", margenA)
		modeloCH:AddDoubleField("margenB", margenB)

		modeloCH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloCH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloCH:AddCheckBox("crearColiso", true)
		
	    if  not modeloCH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo == 31 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaCH4.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaCH4.html"
		end
		
		local modeloCH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA CH4")
		
		textoDescriptivo="CH4"
		anchuraIzq=400 anchuraCentro=1200 anchuraDerecha=400 alturaPlaca=1000 alaIzquierda=40 alaSuperior=260 alaInferior=32
		pliegueSuperior=40 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloCH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloCH:AddDoubleField("anchuraPlacaIzquierda", anchuraIzq)
		modeloCH:AddDoubleField("anchuraPlacaCentro", anchuraCentro)
		modeloCH:AddDoubleField("anchuraPlacaDerecha", anchuraDerecha)
	    --modeloCH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloCH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloCH:AddDoubleField("origenX", origenX)
		--modeloCH:AddDoubleField("origenY", origenY)

		modeloCH:AddDoubleField("alaLateral", alaIzquierda)
		modeloCH:AddDoubleField("alaSuperior", alaSuperior)
		modeloCH:AddDoubleField("alaInferior", alaInferior)

		--modeloCH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloCH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloCH:AddDoubleField("margenA", margenA)
		modeloCH:AddDoubleField("margenB", margenB)

		modeloCH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloCH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloCH:AddCheckBox("crearColiso", true)
		
	    if  not modeloCH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo == 32 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaCH5.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaCH5.html"
		end
		
		local modeloCH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA CH5")
		
		textoDescriptivo="CH5"
		anchuraIzq=400 anchuraCentro=1200 anchuraDerecha=400 alturaPlaca=1000 alaIzquierda=40 alaSuperior=260 alaInferior=20
		pliegueSuperior=40 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloCH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloCH:AddDoubleField("anchuraPlacaIzquierda", anchuraIzq)
		modeloCH:AddDoubleField("anchuraPlacaCentro", anchuraCentro)
		modeloCH:AddDoubleField("anchuraPlacaDerecha", anchuraDerecha)
	    --modeloCH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloCH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloCH:AddDoubleField("origenX", origenX)
		--modeloCH:AddDoubleField("origenY", origenY)

		modeloCH:AddDoubleField("alaLateral", alaIzquierda)
		modeloCH:AddDoubleField("alaSuperior", alaSuperior)
		modeloCH:AddDoubleField("alaInferior", alaInferior)

		modeloCH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloCH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloCH:AddDoubleField("margenA", margenA)
		modeloCH:AddDoubleField("margenB", margenB)

		modeloCH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloCH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloCH:AddCheckBox("crearColiso", true)
		
	    if  not modeloCH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo == 33 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaCH6.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaCH6.html"
		end
		
		local modeloCH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA CH6")
		
		textoDescriptivo="CH6"
		anchuraIzq=400 anchuraCentro=1200 anchuraDerecha=400 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=32
		pliegueSuperior=300 pliegueInferior=0  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloCH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloCH:AddDoubleField("anchuraPlacaIzquierda", anchuraIzq)
		modeloCH:AddDoubleField("anchuraPlacaCentro", anchuraCentro)
		modeloCH:AddDoubleField("anchuraPlacaDerecha", anchuraDerecha)
	    --modeloCH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloCH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloCH:AddDoubleField("origenX", origenX)
		--modeloCH:AddDoubleField("origenY", origenY)

		modeloCH:AddDoubleField("alaLateral", alaIzquierda)
		modeloCH:AddDoubleField("alaSuperior", alaSuperior)
		modeloCH:AddDoubleField("alaInferior", alaInferior)

		--modeloCH:AddDoubleField("pliegueInferior", pliegueInferior) --No lleva pliegue inferior

		modeloCH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloCH:AddDoubleField("margenA", margenA)
		modeloCH:AddDoubleField("margenB", margenB)

		modeloCH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloCH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloCH:AddCheckBox("crearColiso", true)
		
	    if  not modeloCH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo == 34 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaCH7.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaCH7.html"
		end
		
		local modeloCH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA CH7")
		
		textoDescriptivo="CH7"
		anchuraIzq=400 anchuraCentro=1200 anchuraDerecha=400 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=20
		pliegueSuperior=300 pliegueInferior=40  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloCH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloCH:AddDoubleField("anchuraPlacaIzquierda", anchuraIzq)
		modeloCH:AddDoubleField("anchuraPlacaCentro", anchuraCentro)
		modeloCH:AddDoubleField("anchuraPlacaDerecha", anchuraDerecha)
	    --modeloCH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloCH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloCH:AddDoubleField("origenX", origenX)
		--modeloCH:AddDoubleField("origenY", origenY)

		modeloCH:AddDoubleField("alaLateral", alaIzquierda)
		modeloCH:AddDoubleField("alaSuperior", alaSuperior)
		modeloCH:AddDoubleField("alaInferior", alaInferior)

		modeloCH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloCH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloCH:AddDoubleField("margenA", margenA)
		modeloCH:AddDoubleField("margenB", margenB)

		modeloCH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloCH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloCH:AddCheckBox("crearColiso", true)
		
	    if  not modeloCH:ShowDialog() then
			
				return false;
					
		end
	elseif modelo == 35 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaCH8.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaCH8.html"
		end
		
		local modeloCH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA CH8")
		
		textoDescriptivo="CH8"
		anchuraIzq=400 anchuraCentro=1200 anchuraDerecha=400 alturaPlaca=1000 alaIzquierda=40 alaSuperior=40 alaInferior=40
		pliegueSuperior=36 pliegueInferior=300  margenA=57 margenB=108 diametroTaladros=5 
		
        modeloCH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloCH:AddDoubleField("anchuraPlacaIzquierda", anchuraIzq)
		modeloCH:AddDoubleField("anchuraPlacaCentro", anchuraCentro)
		modeloCH:AddDoubleField("anchuraPlacaDerecha", anchuraDerecha)
	    --modeloCH:AddDoubleField("margenPlaca", margenPlaca)
	    modeloCH:AddDoubleField("alturaPlaca", alturaPlaca)
		--modeloCH:AddDoubleField("origenX", origenX)
		--modeloCH:AddDoubleField("origenY", origenY)

		modeloCH:AddDoubleField("alaLateral", alaIzquierda)
		modeloCH:AddDoubleField("alaSuperior", alaSuperior)
		modeloCH:AddDoubleField("alaInferior", alaInferior)

		modeloCH:AddDoubleField("pliegueInferior", pliegueInferior)

		modeloCH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modeloCH:AddDoubleField("margenA", margenA)
		modeloCH:AddDoubleField("margenB", margenB)

		modeloCH:AddDoubleField("anchuraColiso", anchuraColiso)
		modeloCH:AddDoubleField("diametroTaladros", diametroTaladros)
		--modeloCH:AddCheckBox("crearColiso", true)
		
	    if  not modeloCH:ShowDialog() then
			
				return false;
					
		end
		
	end
		

	return true;

end


function OnLuaButton_aceptarCH(modeloCH)

	if modelo==27 or modelo==28 or modelo==31 or modelo==33 then --SIN PLIEGUE CH
		pliegueInferior=0
		
		textoDescriptivo = modeloCH:GetTextField("textoDescriptivo")
		anchuraIzq = modeloCH:GetDoubleField("anchuraPlacaIzquierda")
		anchuraCentro = modeloCH:GetDoubleField("anchuraPlacaCentro")
		anchuraDerecha = modeloCH:GetDoubleField("anchuraPlacaDerecha")
	    --margenPlaca = modeloCH:GetDoubleField("margenPlaca")
	    alturaPlaca = modeloCH:GetDoubleField("alturaPlaca")
		--origenX = modeloCH:GetDoubleField("origenXAH")
		--origenY = modeloCH:GetDoubleField("origenYAH")

		alaIzquierda=modeloCH:GetDoubleField("alaLateral")
		alaSuperior=modeloCH:GetDoubleField("alaSuperior")
		alaInferior=modeloCH:GetDoubleField("alaInferior")
		--pliegueInferior=modeloCH:GetDoubleField("pliegueInferior")
		pliegueSuperior=modeloCH:GetDoubleField("pliegueSuperior")
		margenA=modeloCH:GetDoubleField("margenA")
		margenB=modeloCH:GetDoubleField("margenB")

		anchuraColiso=modeloCH:GetDoubleField("anchuraColiso")
		diametroTaladros=modeloCH:GetDoubleField("diametroTaladros")
		
		--crearColiso=modeloCH:GetCheckBox("crearColiso")


	elseif modelo==29 or modelo==30 or modelo==32 or modelo==34 or modelo==35 then  --CON PLIEGUE CH
		
		textoDescriptivo = modeloCH:GetTextField("textoDescriptivo")
		anchuraIzq = modeloCH:GetDoubleField("anchuraPlacaIzquierda")
		anchuraCentro = modeloCH:GetDoubleField("anchuraPlacaCentro")
		anchuraDerecha = modeloCH:GetDoubleField("anchuraPlacaDerecha")
	    --margenPlaca = modeloCH:GetDoubleField("margenPlaca")
	    alturaPlaca = modeloCH:GetDoubleField("alturaPlaca")
		--origenX = modeloCH:GetDoubleField("origenXAH")
		--origenY = modeloCH:GetDoubleField("origenYAH")
		
		alaIzquierda=modeloCH:GetDoubleField("alaLateral")
		alaSuperior=modeloCH:GetDoubleField("alaSuperior")
		alaInferior=modeloCH:GetDoubleField("alaInferior")
		pliegueInferior=modeloCH:GetDoubleField("pliegueInferior")
		pliegueSuperior=modeloCH:GetDoubleField("pliegueSuperior")
		margenA=modeloCH:GetDoubleField("margenA")
		margenB=modeloCH:GetDoubleField("margenB")
		
		anchuraColiso=modeloCH:GetDoubleField("anchuraColiso")
		diametroTaladros=modeloCH:GetDoubleField("diametroTaladros")
		
		--crearColiso=modeloCH:GetCheckBox("crearColiso")
		
	
  	end

    
	--Caracteristicas generales
	anchuraPlaca=anchuraIzq+anchuraCentro+anchuraDerecha
	
	--anchuraPlaca=anchuraPlaca-margenPlaca
    --alturaPlaca=alturaPlaca-margenPlaca
	
	alaDerecha=alaIzquierda
	
	alturaColiso=diametroTaladros
	
    --Comprobaciones y validaciones de los datos
	if anchuraPlaca < 0 then
		DisplayMessageBox("La anchura de la placa NO puede ser negativa. Creacion Modelo CH"..modelo-27 .." Fallida")
	elseif anchuraIzq<0 or anchuraDerecha<0 or anchuraCentro<0 then
		DisplayMessageBox("La anchura de una de las partes de la placa NO puede ser negativa. Creacion Modelo CH"..modelo-27 .." Fallida")	
	elseif  alturaPlaca < 0 then
		DisplayMessageBox("La altura de la placa NO puede ser negativa. Creacion Modelo CH"..modelo-27 .." Fallida")
	elseif alaIzquierda<0 or alaSuperior<0 or alaInferior<0 then
    	DisplayMessageBox("El tamano las alas NO puede ser negativa. Creacion Modelo CH"..modelo-27 .." Fallida")
	elseif pliegueSuperior<0 or pliegueInferior<0 then
		DisplayMessageBox("El tamano del pliegue NO puede ser negativo. Creacion Modelo CH"..modelo-27 .." Fallida")
	elseif anchuraColiso>anchuraPlaca/2 then 
		DisplayMessageBox("El tamano de los colisos NO puede ser mayor al ancho de la plancha. Creacion Modelo CH"..modelo-27 .." Fallida")
	else
		
		--Para que la pieza apareza fuera del area de trabajo
			--origenX=-(alaDerecha+anchuraIzq+anchuraCentro+anchuraDerecha+alaIzquierda+400)
			--origenY= 400
		
		--Para dibujar la pieza
			dibujarFresadoCH(doc)
			dibujarCorteCH(doc)
			dibujarTexto(doc)
			dibujarTaladrosCH(doc)
		
			
		DisplayMessageBox("Modelo CH"..modelo-27 .." Creado Correctamente")
	
	end
	
	return true;

end










function OnLuaButton_modeloDH(framePrincipal)
	
	if modelo == 40 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaDH.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaDH.html"
		end
		
		
		local modeloDH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA DH")
		
		textoDescriptivo="DH"
		anchuraPlaca=500 alturaPlaca=500 
		
        modeloDH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloDH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    modeloDH:AddDoubleField("alturaPlaca", alturaPlaca)
		
	    if  not modeloDH:ShowDialog() then
				return false;
		end
	
	elseif modelo == 41 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaDH1.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaDH1.html"
		end
		
		local modeloDH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA DH1")
		
		textoDescriptivo="DH1"
		altura1=400 altura2=400 anchuraPlaca=1000
		alaSuperior=50 alaInferior=50 
		
        modeloDH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloDH:AddDoubleField("anchuraPlaca", anchuraPlaca)
		modeloDH:AddDoubleField("altura1", altura1)
		modeloDH:AddDoubleField("altura2", altura2)
		
		modeloDH:AddDoubleField("alaSuperior", alaSuperior)
		modeloDH:AddDoubleField("alaInferior", alaInferior)
		
	    if  not modeloDH:ShowDialog() then
				return false;
		end
		
	elseif modelo == 42 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaDH2.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaDH2.html"
		end
		
		local modeloDH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA DH2")
		
		textoDescriptivo="DH2"
		anchuraPlaca=1000 alturaPlaca=500 
		alaInferior=20 pliegueInferior=30
		
        modeloDH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloDH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    modeloDH:AddDoubleField("alturaPlaca", alturaPlaca)

		modeloDH:AddDoubleField("alaInferior", alaInferior)
		modeloDH:AddDoubleField("pliegueInferior", pliegueInferior)
		
	    if  not modeloDH:ShowDialog() then
				return false;
		end
		
	elseif modelo == 43 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaDH3.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaDH3.html"
		end
		
		local modeloDH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA DH3")
		
		textoDescriptivo="DH3"
		anchuraPlaca=1000 alturaPlaca=500 
		alaInferior=20 alaSuperior=20 pliegueSuperior=30 pliegueInferior=30		
		
        modeloDH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloDH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    modeloDH:AddDoubleField("alturaPlaca", alturaPlaca)

		modeloDH:AddDoubleField("alaInferior", alaInferior)
		modeloDH:AddDoubleField("alaSuperior", alaSuperior)
		modeloDH:AddDoubleField("pliegueInferior", pliegueInferior)
		modeloDH:AddDoubleField("pliegueSuperior", pliegueSuperior)
		
	    if  not modeloDH:ShowDialog() then
				return false;
		end
	
	elseif modelo == 44 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaDH4.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaDH4.html"
		end
		
		local modeloDH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA DH4")
		
		textoDescriptivo="DH4"
		anchura1=300 anchura2=300 alturaPlaca=1000 
		
        modeloDH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloDH:AddDoubleField("anchura1", anchura1)
		modeloDH:AddDoubleField("anchura2", anchura2)
	    modeloDH:AddDoubleField("alturaPlaca", alturaPlaca)
		
	    if  not modeloDH:ShowDialog() then
				return false;
		end
	
	elseif modelo == 45 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaDH5.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaDH5.html"
		end
		
		local modeloDH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA DH5")
		
		textoDescriptivo="DH5"
		anchura1=20 anchura2=40 anchura3=500 anchura4=200 alturaPlaca=1000 
		
        modeloDH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloDH:AddDoubleField("anchura1", anchura1)
		modeloDH:AddDoubleField("anchura2", anchura2)
		modeloDH:AddDoubleField("anchura3", anchura3)
		modeloDH:AddDoubleField("anchura4", anchura4)
	    modeloDH:AddDoubleField("alturaPlaca", alturaPlaca)
		
	    if  not modeloDH:ShowDialog() then
				return false;
		end
	
	elseif modelo == 46 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaDH6.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaDH6.html"
		end
		
		local modeloDH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA DH6")
		
		textoDescriptivo="DH6"
		anchuraPlaca=1500 alturaPlaca=1500
		alaIzquierda=50 alaSuperior=50 alaInferior=50 alaDerecha=50
		
        modeloDH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloDH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    modeloDH:AddDoubleField("alturaPlaca", alturaPlaca)

		modeloDH:AddDoubleField("alaIzquierda", alaIzquierda)
		modeloDH:AddDoubleField("alaDerecha", alaDerecha)
		modeloDH:AddDoubleField("alaSuperior", alaSuperior)
		modeloDH:AddDoubleField("alaInferior", alaInferior)
		
	    if  not modeloDH:ShowDialog() then
				return false;
		end
	
	elseif modelo == 47 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaDH7.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaDH7.html"
		end
		
		local modeloDH = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA DH7")
		
		textoDescriptivo="DH7"
		anchuraPlaca=700 alturaPlaca=1000 
		alaIzquierda=40 alaSuperior=40 alaInferior=20 alaDerecha=40
		pliegueDer=50 pliegueIzq=50 
		
        modeloDH:AddTextField("textoDescriptivo", textoDescriptivo)
		modeloDH:AddDoubleField("anchuraPlaca", anchuraPlaca)
	    modeloDH:AddDoubleField("alturaPlaca", alturaPlaca)

		modeloDH:AddDoubleField("alaIzquierda", alaIzquierda)
		modeloDH:AddDoubleField("alaDerecha", alaDerecha)
		modeloDH:AddDoubleField("alaSuperior", alaSuperior)
		modeloDH:AddDoubleField("alaInferior", alaInferior)

		modeloDH:AddDoubleField("pliegueIzq", pliegueIzq)
		modeloDH:AddDoubleField("pliegueDer", pliegueDer)
		
	    if  not modeloDH:ShowDialog() then
				return false;
		end
	
	end
	
	
	return true;
	
end


function OnLuaButton_aceptarDH(modeloDH)

	if modelo==40 then --DH
		textoDescriptivo = modeloDH:GetTextField("textoDescriptivo")
		anchuraPlaca = modeloDH:GetDoubleField("anchuraPlaca")
	    alturaPlaca = modeloDH:GetDoubleField("alturaPlaca")
	
	elseif modelo==41 then  --DH1
		textoDescriptivo = modeloDH:GetTextField("textoDescriptivo")
		anchuraPlaca = modeloDH:GetDoubleField("anchuraPlaca")
	    altura1 = modeloDH:GetDoubleField("altura1")
	    altura2 = modeloDH:GetDoubleField("altura2")
		
		alaSuperior=modeloDH:GetDoubleField("alaSuperior")
		alaInferior=modeloDH:GetDoubleField("alaInferior")
	
	elseif modelo==42 then --DH2
		textoDescriptivo = modeloDH:GetTextField("textoDescriptivo")
		anchuraPlaca = modeloDH:GetDoubleField("anchuraPlaca")
	    alturaPlaca = modeloDH:GetDoubleField("alturaPlaca")
		
		pliegueInferior=modeloDH:GetDoubleField("pliegueInferior")
		alaInferior=modeloDH:GetDoubleField("alaInferior")
	
	elseif modelo==43 then --DH3
		textoDescriptivo = modeloDH:GetTextField("textoDescriptivo")
		anchuraPlaca = modeloDH:GetDoubleField("anchuraPlaca")
	    alturaPlaca = modeloDH:GetDoubleField("alturaPlaca")
		
		pliegueInferior=modeloDH:GetDoubleField("pliegueInferior")
		pliegueSuperior=modeloDH:GetDoubleField("pliegueSuperior")
		alaInferior=modeloDH:GetDoubleField("alaInferior")
		alaSuperior=modeloDH:GetDoubleField("alaSuperior")
		
	elseif modelo==44 then --DH4
		textoDescriptivo = modeloDH:GetTextField("textoDescriptivo")
		anchura1 = modeloDH:GetDoubleField("anchura1")
		anchura2 = modeloDH:GetDoubleField("anchura2")
	    alturaPlaca = modeloDH:GetDoubleField("alturaPlaca")
	
	elseif modelo==45 then --DH5
		textoDescriptivo = modeloDH:GetTextField("textoDescriptivo")
		anchura1 = modeloDH:GetDoubleField("anchura1")
		anchura2 = modeloDH:GetDoubleField("anchura2")
		anchura3 = modeloDH:GetDoubleField("anchura3")
		anchura4 = modeloDH:GetDoubleField("anchura4")
	    alturaPlaca = modeloDH:GetDoubleField("alturaPlaca")
	
	elseif modelo==46 then --DH6
		textoDescriptivo = modeloDH:GetTextField("textoDescriptivo")
		anchuraPlaca = modeloDH:GetDoubleField("anchuraPlaca")
	    alturaPlaca = modeloDH:GetDoubleField("alturaPlaca")
	
		alaDerecha=modeloDH:GetDoubleField("alaDerecha")
		alaIzquierda=modeloDH:GetDoubleField("alaIzquierda")
		alaInferior=modeloDH:GetDoubleField("alaInferior")
		alaSuperior=modeloDH:GetDoubleField("alaSuperior")
	
	elseif modelo==47 then --DH7
		textoDescriptivo = modeloDH:GetTextField("textoDescriptivo")
		anchuraPlaca = modeloDH:GetDoubleField("anchuraPlaca")
	    alturaPlaca = modeloDH:GetDoubleField("alturaPlaca")
	
		alaDerecha=modeloDH:GetDoubleField("alaDerecha")
		alaIzquierda=modeloDH:GetDoubleField("alaIzquierda")
		alaInferior=modeloDH:GetDoubleField("alaInferior")
		alaSuperior=modeloDH:GetDoubleField("alaSuperior")
		
		pliegueIzq=modeloDH:GetDoubleField("pliegueIzq")
		pliegueDer=modeloDH:GetDoubleField("pliegueDer")
	
  	end

    
	--Caracteristicas generales
	--anchuraPlaca=anchuraIzq+anchuraCentro+anchuraDerecha
	
	--anchuraPlaca=anchuraPlaca-margenPlaca
    --alturaPlaca=alturaPlaca-margenPlaca
	
	--alaDerecha=alaIzquierda
	
	--alturaColiso=diametroTaladros
	
    --Comprobaciones y validaciones de los datos
	if anchuraPlaca < 0 then
		DisplayMessageBox("La anchura de la placa NO puede ser negativa. Creacion Modelo DH"..modelo-27 .." Fallida")
	elseif anchuraIzq<0 or anchuraDerecha<0 or anchuraCentro<0 then
		DisplayMessageBox("La anchura de una de las partes de la placa NO puede ser negativa. Creacion Modelo DH"..modelo-27 .." Fallida")	
	elseif  alturaPlaca < 0 then
		DisplayMessageBox("La altura de la placa NO puede ser negativa. Creacion Modelo DH"..modelo-27 .." Fallida")
	elseif alaIzquierda<0 or alaSuperior<0 or alaInferior<0 then
    	DisplayMessageBox("El tamano las alas NO puede ser negativa. Creacion Modelo DH"..modelo-27 .." Fallida")
	elseif pliegueSuperior<0 or pliegueInferior<0 then
		DisplayMessageBox("El tamano del pliegue NO puede ser negativo. Creacion Modelo DH"..modelo-27 .." Fallida")
	elseif anchuraColiso>anchuraPlaca/2 then 
		DisplayMessageBox("El tamano de los colisos NO puede ser mayor al ancho de la plancha. Creacion Modelo DH"..modelo-27 .." Fallida")
	else
		
		--Para que la pieza apareza fuera del area de trabajo
			--origenX=-(alaDerecha+anchuraIzq+anchuraCentro+anchuraDerecha+alaIzquierda+400)
			--origenY= 400
		
		--Para dibujar la pieza
			dibujarFresadoDH(doc)
			dibujarCorteDH(doc)
			dibujarTexto(doc)
		
			
		DisplayMessageBox("Modelo DH"..modelo-40 .." Creado Correctamente")
	
	end
	
	return true;

end








function OnLuaButton_modeloE(framePrincipal)
	
	if modelo == 50 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaE0.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaE0.html"
		end
		
		
		local modeloE = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA E0")
		
		textoDescriptivo="E0"
		anchuraPlaca=500 altura1=50 altura2=50 altura3=50 altura4=50 altura5=50  
		margenM1=50 margenM2=50 margenFresado=1
		
        modeloE:AddTextField("textoDescriptivo", textoDescriptivo)
		
        modeloE:AddDoubleField("margenFresado", margenFresado)
		
		modeloE:AddDoubleField("altura1", altura1)
		modeloE:AddDoubleField("altura2", altura2)
		modeloE:AddDoubleField("altura3", altura3)
		modeloE:AddDoubleField("altura4", altura4)
		modeloE:AddDoubleField("altura5", altura5)
		
	    modeloE:AddDoubleField("anchuraPlaca", anchuraPlaca)
		
	    modeloE:AddDoubleField("margenM1", margenM1)
	    modeloE:AddDoubleField("margenM2", margenM2)
		
	    if  not modeloE:ShowDialog() then
				return false;
		end
	
	elseif modelo == 51 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaE1.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaE1.html"
		end
		
		local modeloE = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA E1")
		
		textoDescriptivo="E1"
		anchuraPlaca=500 altura1=50 altura2=50 altura3=50 altura4=50 altura5=50  
		margenM1=50 margenM2=50 margenFresado=1
		
        modeloE:AddTextField("textoDescriptivo", textoDescriptivo)
		
		modeloE:AddDoubleField("margenFresado", margenFresado)
		modeloE:AddDoubleField("altura1", altura1)
		modeloE:AddDoubleField("altura2", altura2)
		modeloE:AddDoubleField("altura3", altura3)
		modeloE:AddDoubleField("altura4", altura4)
		modeloE:AddDoubleField("altura5", altura5)
		
	    modeloE:AddDoubleField("anchuraPlaca", anchuraPlaca)
		
	    modeloE:AddDoubleField("margenM1", margenM1)
	    modeloE:AddDoubleField("margenM2", margenM2)
		
	    if  not modeloE:ShowDialog() then
				return false;
		end
		
	elseif modelo == 52 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaE2.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaE2.html"
		end
		
		local modeloE = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA E2")
		
		textoDescriptivo="E2"
		anchura1=700 anchura2=1000 altura1=80 altura2=50 altura3=50 altura4=600  
		margenM1=50 margenM2=50 margenFresado=1
		
        modeloE:AddTextField("textoDescriptivo", textoDescriptivo)
		
		modeloE:AddDoubleField("margenFresado", margenFresado)
		modeloE:AddDoubleField("altura1", altura1)
		modeloE:AddDoubleField("altura2", altura2)
		modeloE:AddDoubleField("altura3", altura3)
		modeloE:AddDoubleField("altura4", altura4)
		
	    modeloE:AddDoubleField("anchura1", anchura1)
	    modeloE:AddDoubleField("anchura2", anchura2)
		
	    modeloE:AddDoubleField("margenM1", margenM1)
	    modeloE:AddDoubleField("margenM2", margenM2)
		
	    if  not modeloE:ShowDialog() then
				return false;
		end
		
	elseif modelo == 53 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaE3.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaE3.html"
		end
		
		local modeloE = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA E3")
		
		textoDescriptivo="E3"
		anchura1=700 anchura2=1000 altura1=80 altura2=50 altura3=50 altura4=600  
		margenM1=50 margenM2=50 margenFresado=1
		
        modeloE:AddTextField("textoDescriptivo", textoDescriptivo)
		
		modeloE:AddDoubleField("margenFresado", margenFresado)
		modeloE:AddDoubleField("altura1", altura1)
		modeloE:AddDoubleField("altura2", altura2)
		modeloE:AddDoubleField("altura3", altura3)
		modeloE:AddDoubleField("altura4", altura4)
		
	    modeloE:AddDoubleField("anchura1", anchura1)
	    modeloE:AddDoubleField("anchura2", anchura2)
		
	    modeloE:AddDoubleField("margenM1", margenM1)
	    modeloE:AddDoubleField("margenM2", margenM2)
		
	    if  not modeloE:ShowDialog() then
				return false;
		end
	
	elseif modelo == 54 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaE4.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaE4.html"
		end
		
		local modeloE = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA E4")
		
		textoDescriptivo="E4"
		anchura1=50 anchura2=500 altura1=50 altura2=50 altura3=50 altura4=600
		margenM1=50 margenM2=50 margenFresado=1
		
        modeloE:AddTextField("textoDescriptivo", textoDescriptivo)
		
		modeloE:AddDoubleField("margenFresado", margenFresado)
		modeloE:AddDoubleField("anchura1", anchura1)
		modeloE:AddDoubleField("anchura2", anchura2)
	    modeloE:AddDoubleField("altura1", altura1)
	    modeloE:AddDoubleField("altura2", altura2)
	    modeloE:AddDoubleField("altura3", altura3)
	    modeloE:AddDoubleField("altura4", altura4)
		
	    modeloE:AddDoubleField("margenM1", margenM1)
	    modeloE:AddDoubleField("margenM2", margenM2)
		
		
		
	    if  not modeloE:ShowDialog() then
				return false;
		end
	
	elseif modelo == 55 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referenciaE5.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referenciaE5.html"
		end
		
		local modeloE = HTML_Dialog(false, html_path, tamX, tamY, "REFERENCIA E5")
		
		textoDescriptivo="E5"
		anchura1=50 anchura2=500 altura1=50 altura2=50 altura3=50 altura4=600
		margenM1=50 margenM2=50 margenFresado=1
		
        modeloE:AddTextField("textoDescriptivo", textoDescriptivo)
		
		modeloE:AddDoubleField("margenFresado", margenFresado)
		modeloE:AddDoubleField("anchura1", anchura1)
		modeloE:AddDoubleField("anchura2", anchura2)
	    modeloE:AddDoubleField("altura1", altura1)
	    modeloE:AddDoubleField("altura2", altura2)
	    modeloE:AddDoubleField("altura3", altura3)
	    modeloE:AddDoubleField("altura4", altura4)
		
	    modeloE:AddDoubleField("margenM1", margenM1)
	    modeloE:AddDoubleField("margenM2", margenM2)
		
	    if  not modeloE:ShowDialog() then
				return false;
		end
	
	end
	
	
	return true;
	
end


function OnLuaButton_aceptarE(modeloE)

	if modelo==50 then --E0
		textoDescriptivo = modeloE:GetTextField("textoDescriptivo")
		
		margenFresado = modeloE:GetDoubleField("margenFresado")
		
		anchuraPlaca = modeloE:GetDoubleField("anchuraPlaca")
	    altura1 = modeloE:GetDoubleField("altura1")
	    altura2 = modeloE:GetDoubleField("altura2")
	    altura3 = modeloE:GetDoubleField("altura3")
	    altura4 = modeloE:GetDoubleField("altura4")
	    altura5 = modeloE:GetDoubleField("altura5")
		
		margenM1=modeloE:GetDoubleField("margenM1")
		margenM2=modeloE:GetDoubleField("margenM2")
		
		
		
	elseif modelo==51 then  --E1
		textoDescriptivo = modeloE:GetTextField("textoDescriptivo")
		
		margenFresado = modeloE:GetDoubleField("margenFresado")
		
		anchuraPlaca = modeloE:GetDoubleField("anchuraPlaca")
	    altura1 = modeloE:GetDoubleField("altura1")
	    altura2 = modeloE:GetDoubleField("altura2")
	    altura3 = modeloE:GetDoubleField("altura3")
	    altura4 = modeloE:GetDoubleField("altura4")
	    altura5 = modeloE:GetDoubleField("altura5")
		
		margenM1=modeloE:GetDoubleField("margenM1")
		margenM2=modeloE:GetDoubleField("margenM2")
		
	
	elseif modelo==52 then --E2
		textoDescriptivo = modeloE:GetTextField("textoDescriptivo")
		
		margenFresado = modeloE:GetDoubleField("margenFresado")
		
		anchura1 = modeloE:GetDoubleField("anchura1")
		anchura2 = modeloE:GetDoubleField("anchura2")
	    altura1 = modeloE:GetDoubleField("altura1")
	    altura2 = modeloE:GetDoubleField("altura2")
	    altura3 = modeloE:GetDoubleField("altura3")
	    altura4 = modeloE:GetDoubleField("altura4")
		
		margenM1=modeloE:GetDoubleField("margenM1")
		margenM2=modeloE:GetDoubleField("margenM2")
		
		--Ajuste de las entradas (porque el ancho 1 esta al reves en la acotacion)
		anchura1=anchura2-anchura1
		
	
	elseif modelo==53 then --E3
		textoDescriptivo = modeloE:GetTextField("textoDescriptivo")
		
		margenFresado = modeloE:GetDoubleField("margenFresado")
		
		anchura1 = modeloE:GetDoubleField("anchura1")
		anchura2 = modeloE:GetDoubleField("anchura2")
	    altura1 = modeloE:GetDoubleField("altura1")
	    altura2 = modeloE:GetDoubleField("altura2")
	    altura3 = modeloE:GetDoubleField("altura3")
	    altura4 = modeloE:GetDoubleField("altura4")
		
		margenM1=modeloE:GetDoubleField("margenM1")
		margenM2=modeloE:GetDoubleField("margenM2")
		
		--Ajuste de las entradas (porque el ancho 1 esta al reves en la acotacion)
		anchura1=anchura2-anchura1
		
	elseif modelo==54 then --E4
		textoDescriptivo = modeloE:GetTextField("textoDescriptivo")
		
		margenFresado = modeloE:GetDoubleField("margenFresado")
		
		anchura1 = modeloE:GetDoubleField("anchura1")
		anchura2 = modeloE:GetDoubleField("anchura2")
	    altura1 = modeloE:GetDoubleField("altura1")
	    altura2 = modeloE:GetDoubleField("altura2")
	    altura3 = modeloE:GetDoubleField("altura3")
	    altura4 = modeloE:GetDoubleField("altura4")
		
		margenM1=modeloE:GetDoubleField("margenM1")
		margenM2=modeloE:GetDoubleField("margenM2")
	
	elseif modelo==55 then --E5
		textoDescriptivo = modeloE:GetTextField("textoDescriptivo")
		
		margenFresado = modeloE:GetDoubleField("margenFresado")
		
		anchura1 = modeloE:GetDoubleField("anchura1")
		anchura2 = modeloE:GetDoubleField("anchura2")
	    altura1 = modeloE:GetDoubleField("altura1")
	    altura2 = modeloE:GetDoubleField("altura2")
	    altura3 = modeloE:GetDoubleField("altura3")
	    altura4 = modeloE:GetDoubleField("altura4")
		
		margenM1=modeloE:GetDoubleField("margenM1")
		margenM2=modeloE:GetDoubleField("margenM2")
	
	
	
  	end
	
	--Ajuste de las entradas (porque el ancho 1 esta al reves en la acotacion)

    
	
    --Comprobaciones y validaciones de los datos
	--[[if anchuraPlaca < 0 then
		DisplayMessageBox("La anchura de la placa NO puede ser negativa. Creacion Modelo DH"..modelo-27 .." Fallida")
	elseif anchuraIzq<0 or anchuraDerecha<0 or anchuraCentro<0 then
		DisplayMessageBox("La anchura de una de las partes de la placa NO puede ser negativa. Creacion Modelo DH"..modelo-27 .." Fallida")	
	elseif  alturaPlaca < 0 then
		DisplayMessageBox("La altura de la placa NO puede ser negativa. Creacion Modelo DH"..modelo-27 .." Fallida")
	elseif alaIzquierda<0 or alaSuperior<0 or alaInferior<0 then
    	DisplayMessageBox("El tamano las alas NO puede ser negativa. Creacion Modelo DH"..modelo-27 .." Fallida")
	elseif pliegueSuperior<0 or pliegueInferior<0 then
		DisplayMessageBox("El tamano del pliegue NO puede ser negativo. Creacion Modelo DH"..modelo-27 .." Fallida")
	elseif anchuraColiso>anchuraPlaca/2 then 
		DisplayMessageBox("El tamano de los colisos NO puede ser mayor al ancho de la plancha. Creacion Modelo DH"..modelo-27 .." Fallida")
	else--]]
		
		--Para que la pieza apareza fuera del area de trabajo
			--origenX=-(alaDerecha+anchuraIzq+anchuraCentro+anchuraDerecha+alaIzquierda+400)
			--origenY= 400
		
		--Para dibujar la pieza
			dibujarFresadoE(doc)
			dibujarCorteE(doc)
			dibujarTexto(doc)
			
			if crearFresado==1 then
				dibujarFresadoExteriorE(doc)
			end
		
			
		DisplayMessageBox("Modelo DH"..modelo-50 .." Creado Correctamente")
	
	--end
	
	return true;

end









function OnLuaButton_modelo000(framePrincipal)

	if modelo == 101 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia001.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia001.html"
		end
		
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES 001")
		
		textoDescriptivo="BANDEJA 001"
		anchura1=50 anchura2=130 anchura3=285 anchura4=1745 anchura5=300 anchura6=130 anchura7=50
		alturaPlaca=457 alaInferior=34 pliegueSuperior=35 alaSuperior=40 margenFresado=1
		
		
        modelo000:AddTextField("textoDescriptivo", textoDescriptivo)
		modelo000:AddDoubleField("alturaPlaca", alturaPlaca)
		
		modelo000:AddDoubleField("anchura1", anchura1)
		modelo000:AddDoubleField("anchura2", anchura2)
		modelo000:AddDoubleField("anchura3", anchura3)
		modelo000:AddDoubleField("anchura4", anchura4)
		modelo000:AddDoubleField("anchura5", anchura5)
		modelo000:AddDoubleField("anchura6", anchura6)
		modelo000:AddDoubleField("anchura7", anchura7)

		modelo000:AddDoubleField("alaSuperior", alaSuperior)
		modelo000:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modelo000:AddDoubleField("alaInferior", alaInferior)
		
		modelo000:AddDoubleField("margenFresado", margenFresado)
		
	    if  not modelo000:ShowDialog() then
				return false;
		end
	
	elseif modelo == 102 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia002.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia002.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES 002")
		
		textoDescriptivo="BANDEJA 002"
		anchura1=50 anchura2=130 anchura3=290 anchura4=1765 anchura5=295 anchura6=130 anchura7=50
		alturaPlaca=500	alaInferior=20 pliegueSuperior=35 pliegueInferior=105 alaSuperior=40 margenFresado=1
		
		pliegueInf1=34 pliegueInf2=34 pliegueInf3=34 pliegueInf4=34 pliegueInf5=34 pliegueInf6=34 pliegueInf7=34
		
        modelo000:AddTextField("textoDescriptivo", textoDescriptivo)
		modelo000:AddDoubleField("anchura1", anchura1)
		modelo000:AddDoubleField("anchura2", anchura2)
		modelo000:AddDoubleField("anchura3", anchura3)
		modelo000:AddDoubleField("anchura4", anchura4)
		modelo000:AddDoubleField("anchura5", anchura5)
		modelo000:AddDoubleField("anchura6", anchura6)
		modelo000:AddDoubleField("anchura7", anchura7)
		
		modelo000:AddDoubleField("pliegueInf1", pliegueInf1)
	    modelo000:AddDoubleField("pliegueInf2", pliegueInf2)
	    modelo000:AddDoubleField("pliegueInf3", pliegueInf3)
	    modelo000:AddDoubleField("pliegueInf4", pliegueInf4)
	    modelo000:AddDoubleField("pliegueInf5", pliegueInf5)
	    modelo000:AddDoubleField("pliegueInf6", pliegueInf6)
	    modelo000:AddDoubleField("pliegueInf7", pliegueInf7)
		
	    modelo000:AddDoubleField("alturaPlaca", alturaPlaca)

		modelo000:AddDoubleField("alaSuperior", alaSuperior)
		modelo000:AddDoubleField("pliegueSuperior", pliegueSuperior)
		modelo000:AddDoubleField("alaInferior", alaInferior)
		
		modelo000:AddDoubleField("margenFresado", margenFresado)
		
	    if  not modelo000:ShowDialog() then
				return false;	
		end
	
	elseif modelo == 103 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia003.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia003.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES 003")
		
		textoDescriptivo="BANDEJA 003"
		altura1=100 altura2=100 altura3=0 altura4=0 altura5=0 altura6=0 altura7=0 altura8=0 altura9=0 altura10=0
		anchuraPlaca=500	alaIzquierda=25 alaDerecha=25 
		
        modelo000:AddTextField("textoDescriptivo", textoDescriptivo)
		modelo000:AddDoubleField("altura1", altura1)
		modelo000:AddDoubleField("altura2", altura2)
		modelo000:AddDoubleField("altura3", altura3)
		modelo000:AddDoubleField("altura4", altura4)
		modelo000:AddDoubleField("altura5", altura5)
		modelo000:AddDoubleField("altura6", altura6)
		modelo000:AddDoubleField("altura7", altura7)
		modelo000:AddDoubleField("altura8", altura8)
		modelo000:AddDoubleField("altura9", altura9)
		modelo000:AddDoubleField("altura10", altura10)
		
	    modelo000:AddDoubleField("anchuraPlaca", anchuraPlaca)

		modelo000:AddDoubleField("alaIzquierda", alaIzquierda)
		modelo000:AddDoubleField("alaDerecha", alaDerecha)
		
	    if  not modelo000:ShowDialog() then
				return false;
		end
		
	elseif modelo == 104 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia004.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia004.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES 004")
		
		textoDescriptivo="BANDEJA 004"
		alturaPlaca=500 anchuraPlaca=1000 margenM=107.5401 margenL=565.4093		
		alaSuperior=45 alaInferior=45 alaIzquierda=45 alaDerecha=45 pliegueSuperior=45  
		
        modelo000:AddTextField("textoDescriptivo", textoDescriptivo)
		modelo000:AddDoubleField("alturaPlaca", alturaPlaca)
		modelo000:AddDoubleField("anchuraPlaca", anchuraPlaca)
		modelo000:AddDoubleField("margenM", margenM)
		modelo000:AddDoubleField("margenL", margenL)
		modelo000:AddDoubleField("alaSuperior", alaSuperior)
		modelo000:AddDoubleField("alaInferior", alaInferior)
		modelo000:AddDoubleField("alaIzquierda", alaIzquierda)
		modelo000:AddDoubleField("alaDerecha", alaDerecha)
		modelo000:AddDoubleField("pliegueSuperior", pliegueSuperior)
		
	    if  not modelo000:ShowDialog() then
				return false;
		end
	
	elseif modelo == 105 then 
		local html_path
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/referencia005.html"
		else
			html_path = "file:" .. ruta .. "\\Paneles\\referencia005.html"
		end
		
		
		local modelo000 = HTML_Dialog(false, html_path, tamX, tamY, "BANDEJA CLIENTES 004")
		
		textoDescriptivo="BANDEJA 004"
		alturaPlaca=500 anchuraPlaca=1000 margenL=565.4093		
		alaSuperior=45 alaInferior=45 alaIzquierda=45 alaDerecha=45 pliegueSuperior=45  
		
        modelo000:AddTextField("textoDescriptivo", textoDescriptivo)
		modelo000:AddDoubleField("alturaPlaca", alturaPlaca)
		modelo000:AddDoubleField("anchuraPlaca", anchuraPlaca)
		modelo000:AddDoubleField("margenL", margenL)
		modelo000:AddDoubleField("alaSuperior", alaSuperior)
		modelo000:AddDoubleField("alaInferior", alaInferior)
		modelo000:AddDoubleField("alaIzquierda", alaIzquierda)
		modelo000:AddDoubleField("alaDerecha", alaDerecha)
		modelo000:AddDoubleField("pliegueSuperior", pliegueSuperior)
		
	    if  not modelo000:ShowDialog() then
				return false;
		end
	end
	
end


function OnLuaButton_aceptar000(modelo000)

	if modelo==101 then  --PIEZA ESPECIAL 001------------------
		
		textoDescriptivo = modelo000:GetTextField("textoDescriptivo")
		anchura1 = modelo000:GetDoubleField("anchura1")
		anchura2 = modelo000:GetDoubleField("anchura2")
		anchura3 = modelo000:GetDoubleField("anchura3")
		anchura4 = modelo000:GetDoubleField("anchura4")
		anchura5 = modelo000:GetDoubleField("anchura5")
		anchura6 = modelo000:GetDoubleField("anchura6")
		anchura7 = modelo000:GetDoubleField("anchura7")
		
	    alturaPlaca = modelo000:GetDoubleField("alturaPlaca")
		
		alaSuperior=modelo000:GetDoubleField("alaSuperior")
		pliegueSuperior=modelo000:GetDoubleField("pliegueSuperior")
		alaInferior=modelo000:GetDoubleField("alaInferior")
		
		margenFresado=modelo000:GetDoubleField("margenFresado")
		
		
		dibujarFresado001(doc)
		dibujarCorte001(doc)
		DisplayMessageBox("MODELO 001 CREADO CORRECTAMENTE")
		
	elseif modelo==102 then  --PIEZA ESPECIAL 002
		
		textoDescriptivo = modelo000:GetTextField("textoDescriptivo")
		anchura1 = modelo000:GetDoubleField("anchura1")
		anchura2 = modelo000:GetDoubleField("anchura2")
		anchura3 = modelo000:GetDoubleField("anchura3")
		anchura4 = modelo000:GetDoubleField("anchura4")
		anchura5 = modelo000:GetDoubleField("anchura5")
		anchura6 = modelo000:GetDoubleField("anchura6")
		anchura7 = modelo000:GetDoubleField("anchura7")
		
		pliegueInf1 = modelo000:GetDoubleField("pliegueInf1")
		pliegueInf2 = modelo000:GetDoubleField("pliegueInf2")
		pliegueInf3 = modelo000:GetDoubleField("pliegueInf3")
		pliegueInf4 = modelo000:GetDoubleField("pliegueInf4")
		pliegueInf5 = modelo000:GetDoubleField("pliegueInf5")
		pliegueInf6 = modelo000:GetDoubleField("pliegueInf6")
		pliegueInf7 = modelo000:GetDoubleField("pliegueInf7")
		
	    alturaPlaca = modelo000:GetDoubleField("alturaPlaca")
		
		alaSuperior=modelo000:GetDoubleField("alaSuperior")
		pliegueSuperior=modelo000:GetDoubleField("pliegueSuperior")
		alaInferior=modelo000:GetDoubleField("alaInferior")
		
		margenFresado=modelo000:GetDoubleField("margenFresado")
		
		
		dibujarFresado002(doc)
		dibujarCorte002(doc)
		DisplayMessageBox("MODELO 002 CREADO CORRECTAMENTE")
		
	
	elseif modelo==103 then  --PIEZA ESPECIAL 003
		
		textoDescriptivo = modelo000:GetTextField("textoDescriptivo")
		altura1 = modelo000:GetDoubleField("altura1")
		altura2 = modelo000:GetDoubleField("altura2")
		altura3 = modelo000:GetDoubleField("altura3")
		altura4 = modelo000:GetDoubleField("altura4")
		altura5 = modelo000:GetDoubleField("altura5")
		altura6 = modelo000:GetDoubleField("altura6")
		altura7 = modelo000:GetDoubleField("altura7")
		altura8 = modelo000:GetDoubleField("altura8")
		altura9 = modelo000:GetDoubleField("altura9")
		altura10 = modelo000:GetDoubleField("altura10")
		
	    anchuraPlaca = modelo000:GetDoubleField("anchuraPlaca")
		
		alaIzquierda=modelo000:GetDoubleField("alaIzquierda")
		alaDerecha=modelo000:GetDoubleField("alaDerecha")
		
		
		dibujarFresado003(doc)
		if dibujoHorizontal==1 then
			dibujarCorte003Horizontal(doc)
		else
			dibujarCorte003Vertical(doc)
		end
		
		DisplayMessageBox("MODELO 003 CREADO CORRECTAMENTE")
	
	elseif modelo==104 then  --PIEZA ESPECIAL 004
		
		textoDescriptivo = modelo000:GetTextField("textoDescriptivo")
		alturaPlaca = modelo000:GetDoubleField("alturaPlaca")
		anchuraPlaca = modelo000:GetDoubleField("anchuraPlaca")
		margenM = modelo000:GetDoubleField("margenM")
		margenL = modelo000:GetDoubleField("margenL")
		alaSuperior = modelo000:GetDoubleField("alaSuperior")
		alaInferior = modelo000:GetDoubleField("alaInferior")
		alaDerecha = modelo000:GetDoubleField("alaDerecha")
		alaIzquierda = modelo000:GetDoubleField("alaIzquierda")
		pliegueSuperior = modelo000:GetDoubleField("pliegueSuperior")
		
		dibujarFresado004(doc)
		dibujarCorte004(doc)
		
		DisplayMessageBox("MODELO 004 CREADO CORRECTAMENTE")
	
	elseif modelo==105 then  --PIEZA ESPECIAL 005
		
		textoDescriptivo = modelo000:GetTextField("textoDescriptivo")
		alturaPlaca = modelo000:GetDoubleField("alturaPlaca")
		anchuraPlaca = modelo000:GetDoubleField("anchuraPlaca")
		margenL = modelo000:GetDoubleField("margenL")
		alaSuperior = modelo000:GetDoubleField("alaSuperior")
		alaInferior = modelo000:GetDoubleField("alaInferior")
		alaDerecha = modelo000:GetDoubleField("alaDerecha")
		alaIzquierda = modelo000:GetDoubleField("alaIzquierda")
		pliegueSuperior = modelo000:GetDoubleField("pliegueSuperior")
		
		dibujarFresado005(doc)
		dibujarCorte005(doc)
		
		DisplayMessageBox("MODELO 005 CREADO CORRECTAMENTE")
		
	elseif modelo==106 then  --PIEZA ESPECIAL 006
		
		textoDescriptivo = modelo000:GetTextField("textoDescriptivo")
		alturaPlaca = modelo000:GetDoubleField("alturaPlaca")
		anchuraPlaca = modelo000:GetDoubleField("anchuraPlaca")
		margenL = modelo000:GetDoubleField("margenL")
		alaSuperior = modelo000:GetDoubleField("alaSuperior")
		alaInferior = modelo000:GetDoubleField("alaInferior")
		alaDerecha = modelo000:GetDoubleField("alaDerecha")
		alaIzquierda = modelo000:GetDoubleField("alaIzquierda")
		pliegueSuperior = modelo000:GetDoubleField("pliegueSuperior")
		
		dibujarFresado006(doc)
		dibujarCorte006(doc)
		
		DisplayMessageBox("MODELO 006 CREADO CORRECTAMENTE")
	
	end

    

		
	
	
return true;

end






------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- DIBUJAR REF AH ---------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
	local fresado12 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
	
	if modelo==0 or modelo==1 then --REF [AH][AH1]
		dibujarFresado_auxiliar(doc,fresado9,fresado6)
		dibujarFresado_auxiliar(doc,fresado10,fresado5)
		dibujarFresado_auxiliar(doc,fresado6,fresado5)
		dibujarFresado_auxiliar(doc,fresado7,fresado8)
		dibujarFresado_auxiliar(doc,fresado2,fresado3)
	elseif modelo==2 or modelo==3 then --REF [AH2][AH3]
		dibujarFresado_auxiliar(doc,fresado1,fresado4)
		dibujarFresado_auxiliar(doc,fresado2,fresado3)
		dibujarFresado_auxiliar(doc,fresado6,fresado5)
		dibujarFresado_auxiliar(doc,fresado7,fresado8)
		dibujarFresado_auxiliar(doc,fresado1,fresado6)
		dibujarFresado_auxiliar(doc,fresado4,fresado5)
	elseif modelo==4 then --REF [AH4]
		dibujarFresado_auxiliar(doc,fresado9,fresado6)
		dibujarFresado_auxiliar(doc,fresado10,fresado5)
		dibujarFresado_auxiliar(doc,fresado7,fresado8)
		dibujarFresado_auxiliar(doc,fresado2,fresado3)
	elseif modelo==5 then --REF [AH5]
		dibujarFresado_auxiliar(doc,fresado1,fresado6)
		dibujarFresado_auxiliar(doc,fresado4,fresado5)
		dibujarFresado_auxiliar(doc,fresado7,fresado8)
		dibujarFresado_auxiliar(doc,fresado2,fresado3)
		dibujarFresado_auxiliar(doc,fresado1,fresado4)
	elseif modelo==6 then --REF [AH6]
		dibujarFresado_auxiliar(doc,fresado9,fresado12)
		dibujarFresado_auxiliar(doc,fresado10,fresado11)
		dibujarFresado_auxiliar(doc,fresado6,fresado5)
		dibujarFresado_auxiliar(doc,fresado7,fresado8)
		dibujarFresado_auxiliar(doc,fresado2,fresado3)
	elseif modelo==7 then --REF [AH7]
		dibujarFresado_auxiliar(doc,fresado6,fresado7)
		dibujarFresado_auxiliar(doc,fresado7,fresado8)
		dibujarFresado_auxiliar(doc,fresado2,fresado3)
		dibujarFresado_auxiliar(doc,fresado1,fresado4)
		dibujarFresado_auxiliar(doc,fresado1,fresado12)
		dibujarFresado_auxiliar(doc,fresado4,fresado11)
		dibujarFresado_auxiliar(doc,fresado6,fresado5)
	elseif modelo==8 then  --REF [AH8]
		dibujarFresado_auxiliar(doc,fresado6,fresado5)
		dibujarFresado_auxiliar(doc,fresado7,fresado8)
		dibujarFresado_auxiliar(doc,fresado2,fresado3)
		dibujarFresado_auxiliar(doc,fresado1,fresado4)
		dibujarFresado_auxiliar(doc,fresado9,fresado6)
		dibujarFresado_auxiliar(doc,fresado10,fresado5)
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
	--Variables MARGENES superior e inferior
	local cotaInicioDerecha=((margenB-alturaBotaDeCuelgue)+(alaDerecha-anchoBota))/2 --[relacion trigonometrica][explicacion en la hoja de papel] 
	
	local anchoLateral1=alaDerecha-anchoBota  --21.5 --variable para reducir codigo (se podria eliminar)
	local alturaLateral1=cotaInicioDerecha-alaDerecha+anchoBota --15.3  --variable para reducir codigo (se podria eliminar)
	
	local sumaComienzoFin=(margenA)+(margenB-alturaBotaDeCuelgue) --109
	
	--Parte botas
	local repeticiones=math.ceil((alturaPlaca-sumaComienzoFin)/500.0)
	local tramoRectoEntreBotaDeCuelgue=(alturaPlaca-sumaComienzoFin-((repeticiones+1)*alturaBotaDeCuelgue)-(repeticiones*anchoBota))/repeticiones
	
	
	
	
	if crearBotas==1 then --Dobujar botas en el ala lateral
			--Variables BOTAS	
		local tramoRecto1BotaDerecha=52
		local radioArcoBotaDerecha=4
		local tramoRecto2BotaDerecha=18
		local tramoRecto3BotaDerecha=6.5
		local tramoRecto4BotaDerecha=26
		
		--Parte inicial
		local corte20 = Point2D(origenX+alaIzquierda+anchuraPlaca+cotaInicioDerecha,origenY+alaInferior+pliegueInferior+cotaInicioDerecha)
		local corte21 = Point2D(origenX+alaIzquierda+anchuraPlaca+anchoLateral1,origenY+alaInferior+pliegueInferior+alturaLateral1+cotaInicioDerecha)
		Contour:LineTo(corte20)
		Contour:LineTo(corte21)
		
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
	
	else --Dibujar el ala lateral lisa
		local corte20=Point2D(origenX+alaIzquierda+anchuraPlaca+alaDerecha,origenY+alaInferior+pliegueInferior+alaDerecha)
		local corte21=Point2D(origenX+alaIzquierda+anchuraPlaca+alaDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca-alaDerecha)
		--local corte22=Point2D(origenX+alaIzquierda+anchuraPlaca+alaDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca-alaDerecha)
		Contour:LineTo(corte20)
		Contour:LineTo(corte21)
	end
	
	
	
	
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
	if crearBotas==1 then --Dobujar botas en el ala lateral
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
	
	else --Dibujar el ala lateral lisa
		local corte60=Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca-alaIzquierda)
		local corte61=Point2D(origenX,origenY+alaInferior+pliegueInferior+alaIzquierda)
		local corte62=Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior)

		Contour:LineTo(corte60)
		Contour:LineTo(corte61)
		Contour:LineTo(corte62)
		
	end
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



function dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)



	local Contour = Contour(0.0)


    
    Contour:AppendPoint(origenColiso)
	Contour:LineTo(pt2Coliso)
	Contour:LineTo(pt3Coliso)
	Contour:LineTo(pt4Coliso)
	Contour:LineTo(origenColiso)

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

		--local numeroFilasTaladros=1
		--local numeroColumnasTaladros=2

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
		    --Coliso Izquierda
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)
	       --Coliso Derecha
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraPlaca-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		  dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		   --Dibujar Taladros Superiores e inferiores

		   --[[for i=1, numeroFilasTaladros do

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

		   end]]--



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

		   --[[for i=1, numeroFilasTaladros do

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

		   end]]--

        end


    
    --Dispone de pliegue inferior
    elseif (modelo==2 or modelo==3) then

    	--local numeroFilasTaladros=1
		--local numeroColumnasTaladros=2

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
	        --Coliso Izquierda
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)
	       --Coliso Derecha
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraPlaca-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		   --Dibujar Taladros Superiores e inferiores

		   --[[for i=1, numeroFilasTaladros do

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

		        local puntoCentro = Point2D((anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroInferior))))+distanciaXTaladrosInferiores,margenYTaladroInferior+alaInferior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		   	end

		   end]]--



		 --Sin colisos superiores	  		
   		 else
   		 	
	   		--Taladro Superior Izquierda
	   		local puntoCentro = Point2D(alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
	        local radio = diametroTaladros/2
	        local layer = "Taladros"
	        dibujarTaladro(puntoCentro, radio, layer)
	        
	        --Taladro Superior Derecha
	   		local puntoCentro = Point2D(alaIzquierda+anchuraPlaca-anchuraColiso-anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
	        local radio = diametroTaladros/2
	        local layer = "Taladros"
	        dibujarTaladro(puntoCentro, radio, layer)

	        --Dibujar Taladros Superiores e inferiores

		   --[[for i=1, numeroFilasTaladros do

		   	for j=1, numeroColumnasTaladros do

		   		local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+pliegueSuperior-margenYTaladroSuperior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+pliegueSuperior-margenYTaladroSuperior-distanciaYTaladrosSuperiores)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)


    elseif (modelo==2) then



    elseif (modelo==3) then

		   	end

		   end]]--

        end




   	--Test	
    elseif (modelo==4) then


    	--local numeroFilasTaladros=1
		--local numeroColumnasTaladros=2

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
	        --Coliso Izquierda
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)
	       --Coliso Derecha
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraPlaca-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		   --Dibujar Taladros Superiores e inferiores

		   --[[for i=1, numeroFilasTaladros do

		   	for j=1, numeroColumnasTaladros do

		   		local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+alaLateral-margenYTaladroSuperior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+alaLateral-margenYTaladroSuperior-distanciaYTaladrosSuperiores)
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

		   end]]--



		 --Sin colisos superiores	  		
   		 else
   		 	
	   		--Taladro Superior Izquierda
	   		local puntoCentro = Point2D(alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+alturaPlaca+pliegueInferior+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
	        local radio = diametroTaladros/2
	        local layer = "Taladros"
	        dibujarTaladro(puntoCentro, radio, layer)
	        
	        --Taladro Superior Derecha
	   		local puntoCentro = Point2D(alaIzquierda+anchuraPlaca-anchuraColiso-anchuraColiso/2,alaInferior+alturaPlaca+pliegueInferior+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
	        local radio = diametroTaladros/2
	        local layer = "Taladros"
	        dibujarTaladro(puntoCentro, radio, layer)

	        --Dibujar Taladros Superiores e inferiores

		   --[[for i=1, numeroFilasTaladros do

		   	for j=1, numeroColumnasTaladros do

		   		local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+alaLateral-margenYTaladroSuperior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+alaLateral-margenYTaladroSuperior-distanciaYTaladrosSuperiores)
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

		   end]]--

        end


    elseif (modelo==5) then

    	--local numeroFilasTaladros=1
		--local numeroColumnasTaladros=2

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
	        --Coliso Izquierda
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)
	       --Coliso Derecha
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraPlaca-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		   --Dibujar Taladros Superiores e inferiores

		  --[[ for i=1, numeroFilasTaladros do

		   	for j=1, numeroColumnasTaladros do

		   		local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+alaLateral-margenYTaladroSuperior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+alaLateral-margenYTaladroSuperior-distanciaYTaladrosSuperiores)
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

		   end]]--



		 --Sin colisos superiores	  		
   		 else
   		 	
	   		--Taladro Superior Izquierda
	   		local puntoCentro = Point2D(alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
	        local radio = diametroTaladros/2
	        local layer = "Taladros"
	        dibujarTaladro(puntoCentro, radio, layer)
	        
	        --Taladro Superior Derecha
	   		local puntoCentro = Point2D(alaIzquierda+anchuraPlaca-anchuraColiso-anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
	        local radio = diametroTaladros/2
	        local layer = "Taladros"
	        dibujarTaladro(puntoCentro, radio, layer)

	        --Dibujar Taladros Superiores e inferiores

		   --[[for i=1, numeroFilasTaladros do

		   	for j=1, numeroColumnasTaladros do

		   		local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+alturaPlaca+alaLateral-margenYTaladroSuperior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)





    --Test
	elseif (modelo==5) then
=======
		        local puntoCentro = Point2D((anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroInferior))))+distanciaXTaladrosInferiores,margenYTaladroInferior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		   	end

		   end]]--

        end

   
	elseif (modelo==6) then


		--local numeroFilasTaladros=1
		--local numeroColumnasTaladros=2

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
	        --Coliso Izquierda
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)
	       --Coliso Derecha
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraPlaca-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		   --Dibujar Taladros Superiores e inferiores

		   --[[for i=1, numeroFilasTaladros do

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

		   end]]--



		 --Sin colisos superiores	  		
   		 else
   		 	
	   		--Taladro Superior Izquierda
	   		local puntoCentro = Point2D(alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
	        local radio = diametroTaladros/2
	        local layer = "Taladros"
	        dibujarTaladro(puntoCentro, radio, layer)
	        
	        --Taladro Superior Derecha
	   		local puntoCentro = Point2D(alaIzquierda+anchuraPlaca-anchuraColiso-anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
	        local radio = diametroTaladros/2
	        local layer = "Taladros"
	        dibujarTaladro(puntoCentro, radio, layer)

	        --Dibujar Taladros Superiores e inferiores

		   --[[for i=1, numeroFilasTaladros do

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

		   end]]--

        end


   	elseif modelo==7 then

   		--local numeroFilasTaladros=1
		--local numeroColumnasTaladros=2

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
	        --Coliso Izquierda
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)
	       --Coliso Derecha
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraPlaca-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		  dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		   --Dibujar Taladros Superiores e inferiores

		   --[[for i=1, numeroFilasTaladros do

		   	for j=1, numeroColumnasTaladros do

		   		
		   		local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-margenYTaladroSuperior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-margenYTaladroSuperior-distanciaYTaladrosSuperiores)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)


		   		local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior-margenYTaladroSuperior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior-margenYTaladroSuperior-distanciaYTaladrosSuperiores)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+margenAla+pliegueInferior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D((anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroInferior))))+distanciaXTaladrosInferiores,margenYTaladroInferior+pliegueInferior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		   	end

		   end]]--



		 --Sin colisos superiores	  		
   		 else
   		 	
	   		--Taladro Superior Izquierda
	   		local puntoCentro = Point2D(alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+alturaPlaca+pliegueInferior+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
	        local radio = diametroTaladros/2
	        local layer = "Taladros"
	        dibujarTaladro(puntoCentro, radio, layer)
	        
	        --Taladro Superior Derecha
	   		local puntoCentro = Point2D(alaIzquierda+anchuraPlaca-anchuraColiso-anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
	        local radio = diametroTaladros/2
	        local layer = "Taladros"
	        dibujarTaladro(puntoCentro, radio, layer)

	        --Dibujar Taladros Superiores e inferiores

		   --[[for i=1, numeroFilasTaladros do

		   	for j=1, numeroColumnasTaladros do

		   		local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-margenYTaladroSuperior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-margenYTaladroSuperior-distanciaYTaladrosSuperiores)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)


		   		local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior-margenYTaladroSuperior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior-margenYTaladroSuperior-distanciaYTaladrosSuperiores)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D(anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroSuperior))),alaInferior+margenAla+pliegueInferior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		        local puntoCentro = Point2D((anchoBota+margenTaladroBota+((j-1)*(anchuraPlaca+(2*margenXTaladroInferior))))+distanciaXTaladrosInferiores,margenYTaladroInferior+pliegueInferior)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

		   	end

		   end]]--
		   end

    

    else

    	

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
	        --Coliso Izquierda
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)
	       --Coliso Derecha
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraPlaca-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraPlaca-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		 
		 --Sin colisos superiores	  		
   		 else
   		 	
	   		--Taladro Superior Izquierda
	   		local puntoCentro = Point2D(alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+alturaPlaca+pliegueInferior+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
	        local radio = diametroTaladros/2
	        local layer = "Taladros"
	        dibujarTaladro(puntoCentro, radio, layer)
	        
	        --Taladro Superior Derecha
	   		local puntoCentro = Point2D(alaIzquierda+anchuraPlaca-anchuraColiso-anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
	        local radio = diametroTaladros/2
	        local layer = "Taladros"
	        dibujarTaladro(puntoCentro, radio, layer)

	        

        end



  	end

	
   
	return true; 
end



function dibujarTexto(doc)
	--------------------------------------------------------
	local cur_layer = doc.LayerManager:GetActiveLayer()
	local layer = doc.LayerManager:GetLayerWithName("Descripcion")
	
	local origenTexto
	if modelo==50 or modelo==51 then --MODELO E
		origenTexto = Point2D(anchuraPlaca/2+margenM1,(altura1+altura2+altura3+altura4+altura5)/2)
	elseif modelo==52 or modelo==53 or modelo==54 or modelo==55 then
		origenTexto = Point2D((anchura1+anchura2)/2,(altura1+altura2+altura3+altura4)/2)
	else
		origenTexto = Point2D(anchuraPlaca/3-(2*alaIzquierda),alturaPlaca/2+pliegueInferior+alaInferior)
    end
	
	
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

function dibujarFresadoBH(doc)
	
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
	
	local fresado18 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
	
	
	if modelo>=9 and modelo<=17 then
		fresado8 = Point2D(origenX+alaIzquierda+anchura1-pliegueInferior+100,origenY+alaInferior)--
		fresado9 = Point2D(origenX+alaIzquierda+anchura1+pliegueInferior,origenY+alaInferior)
		fresado12 = Point2D(origenX+alaIzquierda+anchura1-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		fresado13 = Point2D(origenX+alaIzquierda+anchura1+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	elseif modelo==21 then
		fresado8 = Point2D(origenX+alaIzquierda+anchura1-pliegueInferior,origenY+alaInferior)
		fresado9 = Point2D(origenX+alaIzquierda+anchura1+pliegueInferior,origenY+alaInferior)
		fresado12 = Point2D(origenX+alaIzquierda+anchura1-(distanciaAlas/2),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		fresado13 = Point2D(origenX+alaIzquierda+anchura1+(distanciaAlas/2),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	elseif modelo>=18 and modelo<=26 then
		fresado8 = Point2D(origenX+alaIzquierda+anchura1-(distanciaAlas/2),origenY+alaInferior)	
		fresado9 = Point2D(origenX+alaIzquierda+anchura1+(distanciaAlas/2),origenY+alaInferior)
		fresado12 = Point2D(origenX+alaIzquierda+anchura1-(distanciaAlas/2),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		fresado13 = Point2D(origenX+alaIzquierda+anchura1+(distanciaAlas/2),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	end
	
	
	if modelo==9 or modelo==10 or modelo==18 or modelo==19  then --REF [BH][BH1] [BH9][BH10]
		dibujarFresado_auxiliar(doc,fresado1,fresado11)
		dibujarFresado_auxiliar(doc,fresado6,fresado14)
		dibujarFresado_auxiliar(doc,fresado11,fresado12)
		dibujarFresado_auxiliar(doc,fresado13,fresado14)
		dibujarFresado_auxiliar(doc,fresado10,fresado15)
		dibujarFresado_auxiliar(doc,fresado16,fresado7)
		dibujarFresado_auxiliar(doc,fresado3,fresado4)
		
	elseif modelo==11 or modelo==12  or modelo==20 or modelo==21 then --REF [BH2][BH3] [BH11][BH12]	
		dibujarFresado_auxiliar(doc,fresado8,fresado2)
		dibujarFresado_auxiliar(doc,fresado9,fresado5)
		dibujarFresado_auxiliar(doc,fresado3,fresado4)
		dibujarFresado_auxiliar(doc,fresado2,fresado11)
		dibujarFresado_auxiliar(doc,fresado5,fresado14)
		dibujarFresado_auxiliar(doc,fresado11,fresado12)
		dibujarFresado_auxiliar(doc,fresado13,fresado14)
		dibujarFresado_auxiliar(doc,fresado10,fresado15)
		dibujarFresado_auxiliar(doc,fresado16,fresado7)
		
		
	elseif modelo==13 or modelo==22  then --REF [BH4]  [BH13]		
		dibujarFresado_auxiliar(doc,fresado1,fresado11)
		dibujarFresado_auxiliar(doc,fresado10,fresado15)
		dibujarFresado_auxiliar(doc,fresado14,fresado6)
		dibujarFresado_auxiliar(doc,fresado3,fresado4)
		dibujarFresado_auxiliar(doc,fresado16,fresado7)
		
	elseif modelo==14 or modelo==23  then --REF [BH5]  [BH14]
		dibujarFresado_auxiliar(doc,fresado2,fresado11)
		dibujarFresado_auxiliar(doc,fresado10,fresado15)
		dibujarFresado_auxiliar(doc,fresado14,fresado5)
		dibujarFresado_auxiliar(doc,fresado5,fresado9)
		dibujarFresado_auxiliar(doc,fresado2,fresado8)
		dibujarFresado_auxiliar(doc,fresado3,fresado4)
		dibujarFresado_auxiliar(doc,fresado16,fresado7)
		
	elseif modelo==15 or modelo==24  then --REF [BH6] [BH15]
		dibujarFresado_auxiliar(doc,fresado1,fresado18)
		dibujarFresado_auxiliar(doc,fresado11,fresado12)
		dibujarFresado_auxiliar(doc,fresado13,fresado14)
		dibujarFresado_auxiliar(doc,fresado15,fresado10)
		dibujarFresado_auxiliar(doc,fresado16,fresado7)
		dibujarFresado_auxiliar(doc,fresado17,fresado6)
		dibujarFresado_auxiliar(doc,fresado3,fresado4)
		
	elseif modelo==16 or modelo==25  then --REF [BH7]  [BH16]
		
		dibujarFresado_auxiliar(doc,fresado1,fresado18)
		dibujarFresado_auxiliar(doc,fresado17,fresado6)
		dibujarFresado_auxiliar(doc,fresado2,fresado8)
		dibujarFresado_auxiliar(doc,fresado9,fresado5)
		dibujarFresado_auxiliar(doc,fresado3,fresado4)
		dibujarFresado_auxiliar(doc,fresado7,fresado16)
		dibujarFresado_auxiliar(doc,fresado10,fresado15)
		dibujarFresado_auxiliar(doc,fresado11,fresado12)
		dibujarFresado_auxiliar(doc,fresado13,fresado14)
		
	elseif modelo==17 or modelo==26  then --REF [BH8] [BH17]		
		dibujarFresado_auxiliar(doc,fresado11,fresado12)
		dibujarFresado_auxiliar(doc,fresado13,fresado14)
		dibujarFresado_auxiliar(doc,fresado10,fresado15)
		dibujarFresado_auxiliar(doc,fresado16,fresado7)
		dibujarFresado_auxiliar(doc,fresado3,fresado4)
		dibujarFresado_auxiliar(doc,fresado6,fresado17)
		dibujarFresado_auxiliar(doc,fresado18,fresado1)
		dibujarFresado_auxiliar(doc,fresado2,fresado8)
		dibujarFresado_auxiliar(doc,fresado9,fresado5)
		
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



function dibujarCorteBH(doc)
	
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
			corte3 = Point2D(origenX+alaIzquierda+anchura1-distanciaAlas/2,origenY)
			corte4 = Point2D(origenX+alaIzquierda+anchura1-distanciaAlas/2,origenY+alaInferior-distanciaAlas/2)
			Contour:LineTo(corte3)
			Contour:LineTo(corte4)
			
			corte5 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior-distanciaAlas/2) --centro de la circunferencia
			corte6 = Point2D(origenX+alaIzquierda+anchura1+distanciaAlas/2,origenY+alaInferior-distanciaAlas/2)
			
			Contour:ArcTo(corte6,corte5,false)
			
			corte7 = Point2D(origenX+alaIzquierda+anchura1+distanciaAlas/2,origenY)
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
			corte5 = Point2D(origenX+alaIzquierda+anchura1-distanciaAlas/2,origenY)
			corte6 = Point2D(origenX+alaIzquierda+anchura1-distanciaAlas/2,origenY+alaInferior+pliegueInferior-distanciaAlas/2)
			Contour:LineTo(corte5)
			Contour:LineTo(corte6)
			
			corte7 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior-distanciaAlas/2) --centro de la circunferencia
			corte8 = Point2D(origenX+alaIzquierda+anchura1+distanciaAlas/2,origenY+alaInferior+pliegueInferior-distanciaAlas/2)
			
			Contour:ArcTo(corte8,corte7,false)
			
			corte9 = Point2D(origenX+alaIzquierda+anchura1+distanciaAlas/2,origenY)
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
			corte6 = Point2D(origenX+alaIzquierda+anchura1-distanciaAlas/2,origenY)
			corte7 = Point2D(origenX+alaIzquierda+anchura1-distanciaAlas/2,origenY+alaInferior+pliegueInferior-distanciaAlas/2)
			Contour:LineTo(corte6)
			Contour:LineTo(corte7)
			
			corte8 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior-distanciaAlas/2) --centro de la circunferencia
			corte9 = Point2D(origenX+alaIzquierda+anchura1+distanciaAlas/2,origenY+alaInferior+pliegueInferior-distanciaAlas/2)
			
			Contour:ArcTo(corte9,corte8,false)
			
			corte10 = Point2D(origenX+alaIzquierda+anchura1+distanciaAlas/2,origenY)
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
	
	--Parte botas
	local repeticiones=math.ceil((alturaPlaca-sumaComienzoFin)/500.0)
	local tramoRectoEntreBotaDeCuelgue=(alturaPlaca-sumaComienzoFin-((repeticiones+1)*alturaBotaDeCuelgue)-(repeticiones*anchoBota))/repeticiones
	
	local puntoInicioX=(origenX+alaIzquierda+anchuraPlaca+anchoLateral1)
	local puntoInicioY=(origenY+alaInferior+pliegueInferior+cotaInicioDerecha+alturaLateral1)
	
	
	if crearBotas==1 then --Dobujar botas en el ala lateral
		--Parte inicial
		local corte20 = Point2D(origenX+alaIzquierda+anchuraPlaca+cotaInicioDerecha,origenY+alaInferior+pliegueInferior+cotaInicioDerecha)
		local corte21 = Point2D(origenX+alaIzquierda+anchuraPlaca+anchoLateral1,origenY+alaInferior+pliegueInferior+alturaLateral1+cotaInicioDerecha)
		Contour:LineTo(corte20)
		Contour:LineTo(corte21)
	
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
		
	else --Dibujar el ala lateral lisa
		local corte20=Point2D(origenX+alaIzquierda+anchuraPlaca+alaDerecha,origenY+alaInferior+pliegueInferior+alaDerecha)
		local corte21=Point2D(origenX+alaIzquierda+anchuraPlaca+alaDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca-alaDerecha)
		--local corte22=Point2D(origenX+alaIzquierda+anchuraPlaca+alaDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca-alaDerecha)
		Contour:LineTo(corte20)
		Contour:LineTo(corte21)
	
	end
	
	
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
			corte44 = Point2D(origenX+alaIzquierda+anchura1+distanciaAlas/2,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			corte45 = Point2D(origenX+alaIzquierda+anchura1+distanciaAlas/2,origenY+alaInferior+pliegueInferior+alturaPlaca+distanciaAlas/2)
			Contour:LineTo(corte44)
			Contour:LineTo(corte45)
			
			corte46 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca+distanciaAlas/2) --centro de la circunferencia
			corte47 = Point2D(origenX+alaIzquierda+anchura1-distanciaAlas/2,origenY+alaInferior+pliegueInferior+alturaPlaca+distanciaAlas/2)
			Contour:ArcTo(corte47,corte46,false)
			
			corte48 = Point2D(origenX+alaIzquierda+anchura1-distanciaAlas/2,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
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
			corte45 = Point2D(origenX+alaIzquierda+anchura1+distanciaAlas/2,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
			corte46 = Point2D(origenX+alaIzquierda+anchura1+distanciaAlas/2,origenY+alaInferior+pliegueInferior+alturaPlaca+distanciaAlas/2)
			Contour:LineTo(corte45)
			Contour:LineTo(corte46)
			
			corte47 = Point2D(origenX+alaIzquierda+anchura1,origenY+alaInferior+pliegueInferior+alturaPlaca+distanciaAlas/2) --centro de la circunferencia
			corte48 = Point2D(origenX+alaIzquierda+anchura1-distanciaAlas/2,origenY+alaInferior+pliegueInferior+alturaPlaca+distanciaAlas/2)
			Contour:ArcTo(corte48,corte47,false)
			
			corte49 = Point2D(origenX+alaIzquierda+anchura1-distanciaAlas/2,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
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
	if crearBotas==1 then --Dibujar botas
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
	
	else --Dibujar el ala lateral lisa
		local corte60=Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca-alaIzquierda)
		local corte61=Point2D(origenX,origenY+alaInferior+pliegueInferior+alaIzquierda)
		local corte62=Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior)

		Contour:LineTo(corte60)
		Contour:LineTo(corte61)
		Contour:LineTo(corte62)
		
	end
	
		
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




function dibujarTaladrosBH(doc)
    
    local numeroColisos=1
    local numeroTaladros=1

	if modelo==9 then

		numeroColisos=1
		numeroTaladros=1
				
		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
		   	for i=0,numeroColisos do

		   		--Coliso Izquierda
				local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		  		  
		       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		       --Coliso Derecha
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		    end

		 --Sin colisos superiores	  		
   		 else

   		 	for i=0,numeroColisos do
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(i*(anchura1+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(i*(anchura2+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        end
        end

    end


    if modelo==10 then

    	numeroColisos=1
		numeroTaladros=1
				
		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
		   	for i=0,numeroColisos do
		  		  
		       --Coliso Izquierda
				local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		  		  
		       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		       --Coliso Derecha
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		    end

		 --Sin colisos superiores	  		
   		 else

   		 	for i=0,numeroColisos do
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(i*(anchura1+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(i*(anchura2+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        end
        end

    end

    if modelo==11 then

    	numeroColisos=1
		numeroTaladros=1

				
		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
		   	for i=0,numeroColisos do
		  		  
		       --Coliso Izquierda
				local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		  		  
		       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		       --Coliso Derecha
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		    end

		 --Sin colisos superiores	  		
   		 else

   		 	for i=0,numeroColisos do
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(i*(anchura1+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(i*(anchura2+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        end
        end

    end

    if modelo==12 then

		numeroColisos=1
		numeroTaladros=1

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
		   	for i=0,numeroColisos do
		  		  
		       --Coliso Izquierda
				local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		  		  
		       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		       --Coliso Derecha
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)
		    end

		 --Sin colisos superiores	  		
   		 else

   		 	for i=0,numeroColisos do
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(i*(anchura1+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(i*(anchura2+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        end
        end

    end

   
    if modelo==13 then

		numeroColisos=1
		numeroTaladros=1

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
		   	for i=0,numeroColisos do
		  		  
		       --Coliso Izquierda
				local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		  		
		  	    
		       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		       --Coliso Derecha
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1-(alaSuperior+pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1-(alaSuperior+pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1-(alaSuperior+pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1-(alaSuperior+pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		    end

		 --Sin colisos superiores	  		
   		 else

   		 	for i=0,numeroColisos do
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(i*(anchura1+(alaSuperior+pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1-(alaSuperior+pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(i*(anchura2+(alaSuperior+pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        end
        end

    end
   
    if modelo==14 then

		numeroColisos=1
		numeroTaladros=1

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
		   	for i=0,numeroColisos do
		  		  
		      --Coliso Izquierda
				local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		  		
		  	    
		       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		       --Coliso Derecha
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1-(alaSuperior+pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1-(alaSuperior+pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1-(alaSuperior+pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1-(alaSuperior+pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(alaSuperior+pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		    end

		 --Sin colisos superiores	  		
   		 else

   		 	for i=0,numeroColisos do
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(i*(anchura1+(alaSuperior+pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1-(alaSuperior+pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(i*(anchura2+(alaSuperior+pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        end
        end

    end
   
    if modelo==15 then

		numeroColisos=1
		numeroTaladros=1

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
		   	for i=0,numeroColisos do
		  		  
		       --Coliso Izquierda
				local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		  		  
		       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		       --Coliso Derecha
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		    end

		 --Sin colisos superiores	  		
   		 else

   		 	for i=0,numeroColisos do
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(i*(anchura1+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(i*(anchura2+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        end
        end

    end
    
    if modelo==16 then

		numeroColisos=1
		numeroTaladros=1

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
		   	for i=0,numeroColisos do
		  		  
		       --Coliso Izquierda
				local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		  		  
		       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		       --Coliso Derecha
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		    end

		 --Sin colisos superiores	  		
   		 else

   		 	for i=0,numeroColisos do
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(i*(anchura1+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(i*(anchura2+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        end
        end

    end

    if modelo==17 then

		numeroColisos=1
		numeroTaladros=1

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
		   	for i=0,numeroColisos do
		  		  
		       --Coliso Izquierda
				local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchura1+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		  		  
		       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		       --Coliso Derecha
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchura2+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		    end

		 --Sin colisos superiores	  		
   		 else

   		 	for i=0,numeroColisos do
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(i*(anchura1+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(i*(anchura2+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        end
        end

    end


    if modelo==18 then

		numeroColisos=1
		numeroTaladros=1

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
		   	
		  		  
		       --Coliso Izquierda
				local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		  		  
		       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		       --Coliso Derecha
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		  

		 --Sin colisos superiores	  		
   		 else

   		 	
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso)-(anchuraColiso/2),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        
        end

    end

    if modelo==19 then

		numeroColisos=1
		numeroTaladros=1

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
		   	
		  		  
		       --Coliso Izquierda
				local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		  		  
		       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		       --Coliso Derecha
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		  

		 --Sin colisos superiores	  		
   		 else

   		 	
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso)-(anchuraColiso/2),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        
        end

    end

    if modelo==20 then

		numeroColisos=1
		numeroTaladros=1

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
		   	
		  		  
		       --Coliso Izquierda
				local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		  		  
		       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		       --Coliso Derecha
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		  

		 --Sin colisos superiores	  		
   		 else

   		 	
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso)-(anchuraColiso/2),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        
        end

    end

    if modelo==21 then

		numeroColisos=1
		numeroTaladros=1

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
		   	
		  		  
		       --Coliso Izquierda
				local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		  		  
		       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		       --Coliso Derecha
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		  

		 --Sin colisos superiores	  		
   		 else

   		 	
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso)-(anchuraColiso/2),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        
        end

    end

    if modelo==22 then

		numeroColisos=1
		numeroTaladros=1

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
		   	
		  		  
		       --Coliso Izquierda
				local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		  		  
		       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		       --Coliso Derecha
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		  

		 --Sin colisos superiores	  		
   		 else

   		 	
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso)-(anchuraColiso/2),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        
        end

    end

    if modelo==23 then

		numeroColisos=1
		numeroTaladros=1

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
		   	
		  		  
		       --Coliso Izquierda
				local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		  		  
		       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		       --Coliso Derecha
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		  

		 --Sin colisos superiores	  		
   		 else

   		 	
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso)-(anchuraColiso/2),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        
        end

    end

    if modelo==24 then

		numeroColisos=1
		numeroTaladros=1

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
		   	
		  		  
		       --Coliso Izquierda
				local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		  		  
		       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		       --Coliso Derecha
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		  

		 --Sin colisos superiores	  		
   		 else

   		 	
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso)-(anchuraColiso/2),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        
        end

    end

    if modelo==25 then

		numeroColisos=1
		numeroTaladros=1

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
		   	
		  		  
		       --Coliso Izquierda
				local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		  		  
		       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		       --Coliso Derecha
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		  

		 --Sin colisos superiores	  		
   		 else

   		 	
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso)-(anchuraColiso/2),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        
        end

    end

    if modelo==26 then

		numeroColisos=1
		numeroTaladros=1

		--Con colisos superiores
    	if crearColiso==1 then
			
		   --Dibujar Coliso Izquierda y Derecha
		   	
		  		  
		       --Coliso Izquierda
				local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		  		  
		       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		       --Coliso Derecha
				local origenColiso = Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				local pt2Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			    local pt3Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			    local pt4Coliso=Point2D(origenX+alaIzquierda+anchura1+anchura2-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

			   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		  

		 --Sin colisos superiores	  		
   		 else

   		 	
   		 	
		   		--Taladro Superior Izquierda
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchura1+anchura2-(anchuraColiso)-(anchuraColiso/2),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        
        end

    end
    
  	
	return true; 
end




------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- DIBUJAR REF CH ---------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function dibujarFresadoCH(doc)
	
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
	local fresado10 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior+pliegueInferior)
	local fresado11 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior)
	local fresado12 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY)
	local fresado13 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado14 = Point2D(origenX+alaIzquierda+anchuraIzq,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado15 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado16 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca)
	local fresado17 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	local fresado18 = Point2D(origenX+alaIzquierda+anchuraIzq-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	local fresado19 = Point2D(origenX+alaIzquierda+anchuraIzq+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)--Punto externo a la polilinea principal
	local fresado20 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)--Punto externo a la polilinea principal
	local fresado21 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	local fresado22 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
	local fresado23 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
	
	local fresado24 = Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
	
	if modelo==27 or modelo==28 then --REF [CH][CH1]		
		dibujarFresado_auxiliar(doc,fresado1,fresado17)
		dibujarFresado_auxiliar(doc,fresado17,fresado18)
		dibujarFresado_auxiliar(doc,fresado19,fresado20)
		dibujarFresado_auxiliar(doc,fresado21,fresado22)
		dibujarFresado_auxiliar(doc,fresado22,fresado12)
		dibujarFresado_auxiliar(doc,fresado10,fresado4)
		dibujarFresado_auxiliar(doc,fresado5,fresado14)
		dibujarFresado_auxiliar(doc,fresado13,fresado16)
		dibujarFresado_auxiliar(doc,fresado15,fresado7)

		
	elseif modelo==29 or modelo==30 then --[CH2][CH3]		
		dibujarFresado_auxiliar(doc,fresado2,fresado17)
		dibujarFresado_auxiliar(doc,fresado17,fresado18)
		dibujarFresado_auxiliar(doc,fresado19,fresado20)
		dibujarFresado_auxiliar(doc,fresado21,fresado22)
		dibujarFresado_auxiliar(doc,fresado22,fresado11)
		dibujarFresado_auxiliar(doc,fresado11,fresado9)
		dibujarFresado_auxiliar(doc,fresado8,fresado6)
		dibujarFresado_auxiliar(doc,fresado3,fresado2)
		dibujarFresado_auxiliar(doc,fresado4,fresado10)
		dibujarFresado_auxiliar(doc,fresado7,fresado15)
		dibujarFresado_auxiliar(doc,fresado16,fresado13)
		dibujarFresado_auxiliar(doc,fresado14,fresado5)
		
		
	
	elseif modelo==31 then --[CH4]		
		dibujarFresado_auxiliar(doc,fresado1,fresado17)
		dibujarFresado_auxiliar(doc,fresado13,fresado16)
		dibujarFresado_auxiliar(doc,fresado16,fresado12)
		dibujarFresado_auxiliar(doc,fresado10,fresado4)
		dibujarFresado_auxiliar(doc,fresado5,fresado14)
		dibujarFresado_auxiliar(doc,fresado15,fresado7)
		
	elseif modelo==32 then --[CH5]		
		dibujarFresado_auxiliar(doc,fresado2,fresado17)
		dibujarFresado_auxiliar(doc,fresado13,fresado16)
		dibujarFresado_auxiliar(doc,fresado22,fresado11)
		dibujarFresado_auxiliar(doc,fresado11,fresado9)
		dibujarFresado_auxiliar(doc,fresado8,fresado6)
		dibujarFresado_auxiliar(doc,fresado3,fresado2)
		dibujarFresado_auxiliar(doc,fresado4,fresado10)
		dibujarFresado_auxiliar(doc,fresado7,fresado15)
		dibujarFresado_auxiliar(doc,fresado14,fresado5)
	
	elseif modelo==33 then --[CH6]		
		dibujarFresado_auxiliar(doc,fresado1,fresado17)
		dibujarFresado_auxiliar(doc,fresado17,fresado18)
		dibujarFresado_auxiliar(doc,fresado19,fresado20)
		dibujarFresado_auxiliar(doc,fresado21,fresado22)
		dibujarFresado_auxiliar(doc,fresado22,fresado12)
		dibujarFresado_auxiliar(doc,fresado10,fresado4)
		dibujarFresado_auxiliar(doc,fresado5,fresado14)
		dibujarFresado_auxiliar(doc,fresado13,fresado16)
		dibujarFresado_auxiliar(doc,fresado15,fresado7)
	
	elseif modelo==34 then --[CH7]		
		dibujarFresado_auxiliar(doc,fresado2,fresado24)
		dibujarFresado_auxiliar(doc,fresado17,fresado18)
		dibujarFresado_auxiliar(doc,fresado19,fresado20)
		dibujarFresado_auxiliar(doc,fresado21,fresado22)
		dibujarFresado_auxiliar(doc,fresado23,fresado11)
		dibujarFresado_auxiliar(doc,fresado11,fresado9)
		dibujarFresado_auxiliar(doc,fresado8,fresado6)
		dibujarFresado_auxiliar(doc,fresado3,fresado2)
		dibujarFresado_auxiliar(doc,fresado4,fresado10)
		dibujarFresado_auxiliar(doc,fresado7,fresado15)
		dibujarFresado_auxiliar(doc,fresado16,fresado13)
		dibujarFresado_auxiliar(doc,fresado14,fresado5)
		
	elseif modelo==35 then --[CH8]		
		dibujarFresado_auxiliar(doc,fresado1,fresado17)
		dibujarFresado_auxiliar(doc,fresado17,fresado18)
		dibujarFresado_auxiliar(doc,fresado19,fresado20)
		dibujarFresado_auxiliar(doc,fresado21,fresado22)
		dibujarFresado_auxiliar(doc,fresado22,fresado12)
		dibujarFresado_auxiliar(doc,fresado11,fresado9)
		dibujarFresado_auxiliar(doc,fresado8,fresado6)
		dibujarFresado_auxiliar(doc,fresado3,fresado2)
		dibujarFresado_auxiliar(doc,fresado4,fresado10)
		dibujarFresado_auxiliar(doc,fresado7,fresado15)
		dibujarFresado_auxiliar(doc,fresado16,fresado13)
		dibujarFresado_auxiliar(doc,fresado14,fresado5)
		
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



function dibujarFresado_auxiliar(doc,punto1,punto2)
		
	if punto1.X==punto2.X and punto1.Y==punto2.Y then
		return
	end 
	
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



function dibujarCorteCH(doc)
	
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
		local corte9 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha+alaInferior,origenY)
		local corte10 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior)
		
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
		local corte15 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY)
		local corte16 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior)
		local corte17 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha+pliegueInferior,origenY+alaInferior)
		local corte18 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior+pliegueInferior)
		
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
		local corte16 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha+alaInferior,origenY)
		local corte17 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior)
		local corte18 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha+alaInferior,origenY+alaInferior*2)
		local corte19 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha+alaInferior,origenY+pliegueInferior)
		local corte20 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+pliegueInferior+alaInferior)
		
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
	
	--Parte botas
	local repeticiones=math.ceil((alturaPlaca-sumaComienzoFin)/500.0)
	local tramoRectoEntreBotaDeCuelgue=(alturaPlaca-sumaComienzoFin-((repeticiones+1)*alturaBotaDeCuelgue)-(repeticiones*anchoBota))/repeticiones
	
	local puntoInicioX=(origenX+alaIzquierda+anchuraPlaca+anchoLateral1)
	local puntoInicioY=(origenY+alaInferior+pliegueInferior+cotaInicioDerecha+alturaLateral1)
	
	
	
	if crearBotas==1 then --Dibujar botas en el ala derecha
		--Parte inicial
		local corte20 = Point2D(origenX+alaIzquierda+anchuraPlaca+cotaInicioDerecha,origenY+alaInferior+pliegueInferior+cotaInicioDerecha)
		local corte21 = Point2D(origenX+alaIzquierda+anchuraPlaca+anchoLateral1,origenY+alaInferior+pliegueInferior+alturaLateral1+cotaInicioDerecha)
		Contour:LineTo(corte20)
		Contour:LineTo(corte21)
	
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
	
	else --Dibujar el ala lateral lisa
		local corte20=Point2D(origenX+alaIzquierda+anchuraPlaca+alaDerecha,origenY+alaInferior+pliegueInferior+alaDerecha)
		local corte21=Point2D(origenX+alaIzquierda+anchuraPlaca+alaDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca-alaDerecha)
		--local corte22=Point2D(origenX+alaIzquierda+anchuraPlaca+alaDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca-alaDerecha)
		Contour:LineTo(corte20)
		Contour:LineTo(corte21)
	
	end
	
	
	
	--PARTE SUPERIOR------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	if modelo==27 or modelo==28 or modelo==29 or modelo==30 or modelo==35 then --Parte Superior [CH][CH1][CH2][CH3][CH8]
		local corte40 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca)
		local corte41 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte42 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte43 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
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
		local corte40 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca)
		local corte41 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha+pliegueSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte42 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte43 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
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
		local corte40 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca)
		local corte41 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha+alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+alaSuperior)
		local corte42 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha+alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior-alaSuperior)
		local corte43 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		local corte44 = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha+alaSuperior,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
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
	if crearBotas==1 then --Dibujar botas en el ala izquierda
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
		
	
	else --Dibujar el ala lateral lisa
		local corte60=Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca-alaIzquierda)
		local corte61=Point2D(origenX,origenY+alaInferior+pliegueInferior+alaIzquierda)
		local corte62=Point2D(origenX+alaIzquierda,origenY+alaInferior+pliegueInferior)

		Contour:LineTo(corte60)
		Contour:LineTo(corte61)
		Contour:LineTo(corte62)
		
	end
	
		
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



function dibujarTaladrosCH(doc)

	local numeroColisos=1
    local numeroTaladros=1

	if modelo==27 then

		numeroColisos=1
		numeroTaladros=1
				
		--Con colisos superiores
    	if crearColiso==1 then
			
		  
		   	for i=0,numeroColisos do

		   			--Coliso lateral izquierda y centro
					local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchuraIzq+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
					local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchuraIzq +(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchuraIzq+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
				    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchuraIzq+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			  		  
			       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

			       
					local origenColiso = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
					local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
				    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

				   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

			   				

		    end

		    --Coliso lateral derecha
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

	       
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)


		 --Sin colisos superiores	  		
   		 else

   		 	for i=0,numeroTaladros do
   		 	
		   		--Taladro lateral izquierda y centro
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(i*(anchuraIzq+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(i*(anchuraCentro)),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        end


	        --Taladro lateral derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(anchuraIzq+anchuraCentro+pliegueSuperior),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(anchuraCentro+anchuraDerecha+pliegueSuperior),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)


        end

    end

    if modelo==28 then

		numeroColisos=1
		numeroTaladros=1
				
		--Con colisos superiores
    	if crearColiso==1 then
			
		  
		   	for i=0,numeroColisos do

		   			--Coliso lateral izquierda y centro
					local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchuraIzq+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
					local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchuraIzq +(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchuraIzq+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
				    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchuraIzq+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			  		  
			       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

			       
					local origenColiso = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
					local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
				    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

				   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

			   				

		    end

		    --Coliso lateral derecha
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

	       
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)


		 --Sin colisos superiores	  		
   		 else

   		 	for i=0,numeroTaladros do
   		 	
		   		--Taladro lateral izquierda y centro
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(i*(anchuraIzq+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(i*(anchuraCentro)),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        end


	        --Taladro lateral derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(anchuraIzq+anchuraCentro+pliegueSuperior),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(anchuraCentro+anchuraDerecha+pliegueSuperior),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)


        end

    end

    if modelo==29 then

		numeroColisos=1
		numeroTaladros=1
				
		--Con colisos superiores
    	if crearColiso==1 then
			
		  
		   	for i=0,numeroColisos do

		   			--Coliso lateral izquierda y centro
					local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchuraIzq+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
					local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchuraIzq +(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchuraIzq+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
				    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchuraIzq+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			  		  
			       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

			       
					local origenColiso = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
					local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
				    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

				   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

			   				

		    end

		    --Coliso lateral derecha
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

	       
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)


		 --Sin colisos superiores	  		
   		 else

   		 	for i=0,numeroTaladros do
   		 	
		   		--Taladro lateral izquierda y centro
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(i*(anchuraIzq+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(i*(anchuraCentro)),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        end


	        --Taladro lateral derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(anchuraIzq+anchuraCentro+pliegueSuperior),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(anchuraCentro+anchuraDerecha+pliegueSuperior),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)


        end

    end

    if modelo==30 then

		numeroColisos=1
		numeroTaladros=1
				
		--Con colisos superiores
    	if crearColiso==1 then
			
		  
		   	for i=0,numeroColisos do

		   			--Coliso lateral izquierda y centro
					local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchuraIzq+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
					local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchuraIzq +(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchuraIzq+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
				    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchuraIzq+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			  		  
			       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

			       
					local origenColiso = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
					local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
				    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

				   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

			   				

		    end

		    --Coliso lateral derecha
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

	       
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)


		 --Sin colisos superiores	  		
   		 else

   		 	for i=0,numeroTaladros do
   		 	
		   		--Taladro lateral izquierda y centro
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(i*(anchuraIzq+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(i*(anchuraCentro)),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        end


	        --Taladro lateral derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(anchuraIzq+anchuraCentro+pliegueSuperior),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(anchuraCentro+anchuraDerecha+pliegueSuperior),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)


        end

    end

    if modelo==31 then

		
				
		--Con colisos superiores
    	if crearColiso==1 then
			
		  
   			--Coliso lateral izquierda 
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

	       --Coliso central Izquierdo
		
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+alaSuperior+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+alaSuperior+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+alaSuperior+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+alaSuperior+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		  
			--Coliso central Derecho
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(alaSuperior+pliegueSuperior)-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(alaSuperior+pliegueSuperior)-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(alaSuperior+pliegueSuperior)-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(alaSuperior+pliegueSuperior)-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)   				


		    --Coliso lateral derecha
			local origenColiso = Point2D(origenX+alaIzquierda-(2*anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda-(anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda-(anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda-(2*anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

	       
			

		 --Sin colisos superiores	  		
   		 else

   		 	 	
		   		--Taladro lateral izquierda 
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+(anchuraIzq+alaSuperior+pliegueSuperior)+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	     
	        --Taladro lateral derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda-anchuraColiso-anchuraColiso/2+(anchuraIzq+anchuraCentro-pliegueSuperior-alaSuperior),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha-anchuraColiso-anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)


        end

    end

    if modelo==32 then

		
				
		--Con colisos superiores
    	if crearColiso==1 then
			
		  
   			--Coliso lateral izquierda 
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

	       --Coliso central Izquierdo
		
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+alaSuperior+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+alaSuperior+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+alaSuperior+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+alaSuperior+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		  
			--Coliso central Derecho
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(alaSuperior+pliegueSuperior)-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(alaSuperior+pliegueSuperior)-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(alaSuperior+pliegueSuperior)-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(alaSuperior+pliegueSuperior)-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)   				


		    --Coliso lateral derecha
			local origenColiso = Point2D(origenX+alaIzquierda-(2*anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda-(anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda-(anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda-(2*anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

	       
			

		 --Sin colisos superiores	  		
   		 else

   		 	 	
		   		--Taladro lateral izquierda 
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+(anchuraIzq+alaSuperior+pliegueSuperior)+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	     
	        --Taladro lateral derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda-anchuraColiso-anchuraColiso/2+(anchuraIzq+anchuraCentro-pliegueSuperior-alaSuperior),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha-anchuraColiso-anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)


        end

    end

   --***************************************
   if modelo==33 then
		
				
		--Con colisos superiores
    	if crearColiso==1 then
			
		  
   			--Coliso lateral izquierda 
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

	       --Coliso central Izquierdo
		
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		  
			--Coliso central Derecho
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(pliegueSuperior)-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(pliegueSuperior)-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(pliegueSuperior)-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(pliegueSuperior)-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)   				


		    --Coliso lateral derecha
			local origenColiso = Point2D(origenX+alaIzquierda-(2*anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda-(anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda-(anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda-(2*anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

	       
			

		 --Sin colisos superiores	  		
   		 else

   		 	 	
		   		--Taladro lateral izquierda 
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+(anchuraIzq+pliegueSuperior)+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	     
	        --Taladro lateral derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda-anchuraColiso-anchuraColiso/2+(anchuraIzq+anchuraCentro-pliegueSuperior),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha-anchuraColiso-anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)


        end

    end

     if modelo==34 then
		
				
		--Con colisos superiores
    	if crearColiso==1 then
			
		  
   			--Coliso lateral izquierda 
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

	       --Coliso central Izquierdo
		
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

		  
			--Coliso central Derecho
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(pliegueSuperior)-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(pliegueSuperior)-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(pliegueSuperior)-(anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro-(pliegueSuperior)-(2*anchuraColiso),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)   				


		    --Coliso lateral derecha
			local origenColiso = Point2D(origenX+alaIzquierda-(2*anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda-(anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda-(anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda-(2*anchuraColiso)+(anchuraIzq+anchuraCentro+anchuraDerecha),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

	       
			

		 --Sin colisos superiores	  		
   		 else

   		 	 	
		   		--Taladro lateral izquierda 
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+(anchuraIzq+pliegueSuperior)+anchuraColiso+anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	     
	        --Taladro lateral derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda-anchuraColiso-anchuraColiso/2+(anchuraIzq+anchuraCentro-pliegueSuperior),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraIzq+anchuraCentro+anchuraDerecha-anchuraColiso-anchuraColiso/2,alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)


        end

    end

    if modelo==35 then

		numeroColisos=1
		numeroTaladros=1
				
		--Con colisos superiores
    	if crearColiso==1 then
			
		  
		   	for i=0,numeroColisos do

		   			--Coliso lateral izquierda y centro
					local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchuraIzq+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
					local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchuraIzq +(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(i*(anchuraIzq+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
				    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(i*(anchuraIzq+(pliegueSuperior))),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
			  		  
			       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

			       
					local origenColiso = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
					local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
				    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
				    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(i*(anchuraCentro)),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

				   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

			   				

		    end

		    --Coliso lateral derecha
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+(2*anchuraColiso)+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraColiso+(anchuraIzq+anchuraCentro+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
	  		  
	       dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)

	       
			local origenColiso = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
			local pt2Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-(2*alturaColiso))
		    local pt3Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)
		    local pt4Coliso=Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(2*anchuraColiso)+(anchuraCentro+anchuraDerecha+pliegueSuperior),origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso)

		   dibujarColiso(origenColiso,pt2Coliso,pt3Coliso,pt4Coliso)


		 --Sin colisos superiores	  		
   		 else

   		 	for i=0,numeroTaladros do
   		 	
		   		--Taladro lateral izquierda y centro
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(i*(anchuraIzq+(pliegueSuperior))),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(i*(anchuraCentro)),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)

	        end


	        --Taladro lateral derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraColiso+anchuraColiso/2+(anchuraIzq+anchuraCentro+pliegueSuperior),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)
		        
		        --Taladro Superior Derecha
		   		local puntoCentro = Point2D(origenX+alaIzquierda+anchuraIzq-(pliegueSuperior)-(anchuraColiso)-anchuraColiso/2+(anchuraCentro+anchuraDerecha+pliegueSuperior),alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior-alturaColiso-alturaColiso/2)
		        local radio = diametroTaladros/2
		        local layer = "Taladros"
		        dibujarTaladro(puntoCentro, radio, layer)


        end

    end

   

end





------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- REFERENCIA DH ----------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


function dibujarFresadoDH(doc)
	
	local Contour = Contour(0.0)
	local fresado1
	local fresado2
	local fresado3
	local fresado4
		
	if modelo==41 then --[DH1]
		fresado1 = Point2D(origenX,origenY+alaInferior)
		fresado2 = Point2D(origenX+anchuraPlaca,origenY+alaInferior)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX,origenY+alaInferior+altura1)
		fresado2 = Point2D(origenX+anchuraPlaca,origenY+alaInferior+altura1)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX,origenY+alaInferior+altura1+altura2)
		fresado2 = Point2D(origenX+anchuraPlaca,origenY+alaInferior+altura1+altura2)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
	
	elseif modelo==42 then --[DH2]
		fresado1 = Point2D(origenX,origenY+alaInferior)
		fresado2 = Point2D(origenX+anchuraPlaca,origenY+alaInferior)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX,origenY+alaInferior+pliegueInferior)
		fresado2 = Point2D(origenX+anchuraPlaca,origenY+alaInferior+pliegueInferior)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
	elseif modelo==43 then --[DH3]
		fresado1 = Point2D(origenX,origenY+alaInferior)
		fresado2 = Point2D(origenX+anchuraPlaca,origenY+alaInferior)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX,origenY+alaInferior+pliegueInferior)
		fresado2 = Point2D(origenX+anchuraPlaca,origenY+alaInferior+pliegueInferior)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca)
		fresado2 = Point2D(origenX+anchuraPlaca,origenY+alaInferior+pliegueInferior+alturaPlaca)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		fresado2 = Point2D(origenX+anchuraPlaca,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
	
	elseif modelo==44 then --[DH4]
		fresado1 = Point2D(origenX+anchura1,origenY)
		fresado2 = Point2D(origenX+anchura1,origenY+alturaPlaca)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
	elseif modelo==45 then --[DH5]
		fresado1 = Point2D(origenX+anchura1,origenY)
		fresado2 = Point2D(origenX+anchura1,origenY+alturaPlaca)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX+anchura1+anchura2,origenY)
		fresado2 = Point2D(origenX+anchura1+anchura2,origenY+alturaPlaca)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX+anchura1+anchura2+anchura3,origenY)
		fresado2 = Point2D(origenX+anchura1+anchura2+anchura3,origenY+alturaPlaca)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)	
		
	elseif modelo==46 then --[DH6]
		fresado1 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
		fresado2 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior)
		fresado3=Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior+alturaPlaca)
		fresado4=Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca)
		
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		dibujarFresado_auxiliar(doc,fresado2,fresado3)
		dibujarFresado_auxiliar(doc,fresado3,fresado4)
		dibujarFresado_auxiliar(doc,fresado4,fresado1)
		
	elseif modelo==47 then --[DH7]
		fresado1 = Point2D(origenX+alaIzquierda+pliegueIzq,origenY+alaInferior)
		fresado2 = Point2D(origenX+alaIzquierda+pliegueIzq+anchuraPlaca,origenY+alaInferior)
		fresado3 = Point2D(origenX+alaIzquierda+pliegueIzq+anchuraPlaca,origenY+alaInferior+alturaPlaca)
		fresado4 = Point2D(origenX+alaIzquierda+pliegueIzq,origenY+alaInferior+alturaPlaca)
		
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		dibujarFresado_auxiliar(doc,fresado2,fresado3)
		dibujarFresado_auxiliar(doc,fresado3,fresado4)
		dibujarFresado_auxiliar(doc,fresado4,fresado1)
		
		fresado1 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
		fresado2 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX+alaIzquierda+pliegueDer+anchuraPlaca+pliegueIzq,origenY+alaInferior)
		fresado2 = Point2D(origenX+alaIzquierda+pliegueDer+anchuraPlaca+pliegueIzq,origenY+alaInferior+alturaPlaca)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
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



function dibujarCorteDH(doc)
	
	local Contour = Contour(0.0)
	
	--Modelo 40 (cuadrado simple)
	if modelo==40 then --[DH]
		local corte1 = Point2D(origenX,origenY)
		local corte2 = Point2D(origenX+anchuraPlaca,origenY)
		local corte3 = Point2D(origenX+anchuraPlaca,origenY+alturaPlaca)
		local corte4 = Point2D(origenX,origenY+alturaPlaca)
		
		Contour:AppendPoint(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
		Contour:LineTo(corte1)
		
	elseif modelo==41 then --[DH1]
		local corte1 = Point2D(origenX,origenY)
		local corte2 = Point2D(origenX+anchuraPlaca,origenY)
		local corte3 = Point2D(origenX+anchuraPlaca,origenY+alaInferior+altura1+altura2+alaSuperior)
		local corte4 = Point2D(origenX,origenY+alaInferior+altura1+altura2+alaSuperior)
		
		Contour:AppendPoint(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
		Contour:LineTo(corte1)
		
	elseif modelo==42 then --[DH2]
		local corte1 = Point2D(origenX,origenY)
		local corte2 = Point2D(origenX+anchuraPlaca,origenY)
		local corte3 = Point2D(origenX+anchuraPlaca,origenY+alaInferior+pliegueInferior+alturaPlaca)
		local corte4 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca)
		
		Contour:AppendPoint(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
		Contour:LineTo(corte1)
	
	elseif modelo==43 then --[DH3] 
		local corte1 = Point2D(origenX,origenY)
		local corte2 = Point2D(origenX+anchuraPlaca,origenY)
		local corte3 = Point2D(origenX+anchuraPlaca,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte4 = Point2D(origenX,origenY+alaInferior+pliegueInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		
		Contour:AppendPoint(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
		Contour:LineTo(corte1)
		
	elseif modelo==44 then --[Dh4]
		local corte1 = Point2D(origenX,origenY)
		local corte2 = Point2D(origenX+anchura1+anchura2,origenY)
		local corte3 = Point2D(origenX+anchura1+anchura2,origenY+alturaPlaca)
		local corte4 = Point2D(origenX,origenY+alturaPlaca)
		
		Contour:AppendPoint(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
		Contour:LineTo(corte1)
		
	elseif modelo==45 then --[DH5]
		local corte1 = Point2D(origenX,origenY)
		local corte2 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY)
		local corte3 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+alturaPlaca)
		local corte4 = Point2D(origenX,origenY+alturaPlaca)
		
		Contour:AppendPoint(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		Contour:LineTo(corte4)
		Contour:LineTo(corte1)
		
	elseif modelo==46 then --[DH6]
		local corte1 = Point2D(origenX+alaIzquierda,origenY+alaInferior)
		local corte2 = Point2D(origenX+alaIzquierda,origenY)
		local corte3 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY)
		local corte4 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior)
		local corte5 = Point2D(origenX+alaIzquierda+anchuraPlaca+alaDerecha,origenY+alaInferior)
		local corte6 = Point2D(origenX+alaIzquierda+anchuraPlaca+alaDerecha,origenY+alaInferior+alturaPlaca)
		local corte7 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior+alturaPlaca)
		local corte8 = Point2D(origenX+alaIzquierda+anchuraPlaca,origenY+alaInferior+alturaPlaca+alaSuperior)
		local corte9 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca+alaSuperior)
		local corte10 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca)
		local corte11 = Point2D(origenX,origenY+alaInferior+alturaPlaca)
		local corte12 = Point2D(origenX,origenY+alaInferior)
		
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
		Contour:LineTo(corte1)
		
	elseif modelo==47 then --[DH7]  
		local corte1 = Point2D(origenX,origenY+alaInferior)
		local corte2 = Point2D(origenX+alaIzquierda+pliegueIzq,origenY+alaInferior)
		local corte3 = Point2D(origenX+alaIzquierda+pliegueIzq,origenY)
		local corte4 = Point2D(origenX+alaIzquierda+pliegueIzq+anchuraPlaca,origenY)
		local corte5 = Point2D(origenX+alaIzquierda+pliegueIzq+anchuraPlaca,origenY+alaInferior)
		local corte6 = Point2D(origenX+alaIzquierda+pliegueIzq+anchuraPlaca+pliegueDer+alaDerecha,origenY+alaInferior)
		local corte7 = Point2D(origenX+alaIzquierda+pliegueIzq+anchuraPlaca+pliegueDer+alaDerecha,origenY+alaInferior+alturaPlaca)
		local corte8 = Point2D(origenX+alaIzquierda+pliegueIzq+anchuraPlaca,origenY+alaInferior+alturaPlaca)
		local corte9 = Point2D(origenX+alaIzquierda+pliegueIzq+anchuraPlaca,origenY+alaInferior+alturaPlaca+alaSuperior)
		local corte10 = Point2D(origenX+alaIzquierda+pliegueIzq,origenY+alaInferior+alturaPlaca+alaSuperior)
		local corte11 = Point2D(origenX+alaIzquierda+pliegueIzq,origenY+alaInferior+alturaPlaca)
		local corte12 = Point2D(origenX,origenY+alaInferior+alturaPlaca)
		
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
		Contour:LineTo(corte1)
		
		
	end
	
	
	
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
----------------------------------------------------------------------------------------------- REFERENCIA E -----------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function OnLuaButton_crearFresado()
	crearFresado=1
	return true
end
function OnLuaButton_noCrearFresado()
	crearFresado=0
	return true
end


function dibujarFresadoE(doc)
	
	
	local Contour = Contour(0.0)
	local fresado1
	local fresado2
	local fresado3
	local fresado4
		
	if modelo==50 then --[E0]
		fresado1 = Point2D(origenX+margenM1,origenY+altura5)
		fresado2 = Point2D(origenX+margenM1+anchuraPlaca,origenY+altura5)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX,origenY+altura5+altura4)
		fresado2 = Point2D(origenX+margenM1+anchuraPlaca,origenY+altura5+altura4)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX,origenY+altura5+altura4+altura3)
		fresado2 = Point2D(origenX+margenM1+margenM2+anchuraPlaca,origenY+altura5+altura4+altura3)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX+margenM1,origenY+altura5+altura4+altura3+altura2)
		fresado2 = Point2D(origenX+margenM1+margenM2+anchuraPlaca,origenY+altura5+altura4+altura3+altura2)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		
	elseif modelo==51 then --[E1]
		fresado1 = Point2D(origenX+margenM1,origenY+altura5)
		fresado2 = Point2D(origenX+margenM1+anchuraPlaca,origenY+altura5)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX+margenM1,origenY+altura5+altura4)
		fresado2 = Point2D(origenX+margenM1+anchuraPlaca+margenM2,origenY+altura5+altura4)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX,origenY+altura5+altura4+altura3)
		fresado2 = Point2D(origenX+margenM1+margenM2+anchuraPlaca,origenY+altura5+altura4+altura3)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX,origenY+altura5+altura4+altura3+altura2)
		fresado2 = Point2D(origenX+margenM1+anchuraPlaca,origenY+altura5+altura4+altura3+altura2)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		
	elseif modelo==52 then --[E2]
		fresado1 = Point2D(origenX,origenY+altura4)
		fresado2 = Point2D(origenX+anchura2,origenY+altura4)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX,origenY+altura4+altura3)
		fresado2 = Point2D(origenX+anchura2+margenM2,origenY+altura4+altura3)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX+margenM1,origenY+altura4+altura3+altura2)
		fresado2 = Point2D(origenX+anchura2+margenM2,origenY+altura4+altura3+altura2)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		
	elseif modelo==53 then --[E3]
		fresado1 = Point2D(origenX+margenM1,origenY+altura4)
		fresado2 = Point2D(origenX+margenM1+anchura2,origenY+altura4)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX,origenY+altura4+altura3)
		fresado2 = Point2D(origenX+margenM1+anchura2,origenY+altura4+altura3)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX,origenY+altura4+altura3+altura2)
		fresado2 = Point2D(origenX+margenM1+anchura2-margenM2,origenY+altura4+altura3+altura2)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		
		
	elseif modelo==54 or modelo==55 then --[E4][E5]
		fresado1 = Point2D(origenX+margenM1,origenY+altura4)
		fresado2 = Point2D(origenX+margenM1+anchura2,origenY+altura4)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX,origenY+altura4+altura3)
		fresado2 = Point2D(origenX+margenM1+anchura2+margenM2,origenY+altura4+altura3)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
		fresado1 = Point2D(origenX,origenY+altura4+altura3+altura2)
		fresado2 = Point2D(origenX+margenM1+anchura2+margenM2,origenY+altura4+altura3+altura2)
		dibujarFresado_auxiliar(doc,fresado1,fresado2)
		
	
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



function dibujarCorteE(doc)
	
	
	local Contour = Contour(0.0)
	
	
	if modelo==50 then --[E0]
		local corte1 = Point2D(origenX+margenM1,origenY)
		local corte2 = Point2D(origenX+margenM1+anchuraPlaca,origenY)
		local corte3 = Point2D(origenX+margenM1+anchuraPlaca,origenY+altura5+altura4)
		local corte4 = Point2D(origenX+margenM1+anchuraPlaca+margenM2,origenY+altura5+altura4+altura3)
		local corte5 = Point2D(origenX+margenM1+anchuraPlaca+margenM2,origenY+altura5+altura4+altura3+altura2)
		local corte6 = Point2D(origenX+margenM1+anchuraPlaca+margenM2-altura1,origenY+altura5+altura4+altura3+altura2+altura1)
		local corte7 = Point2D(origenX+margenM1,origenY+altura5+altura4+altura3+altura2+altura1)
		local corte8 = Point2D(origenX+margenM1,origenY+altura5+altura4+altura3+altura2)
		local corte9 = Point2D(origenX,origenY+altura5+altura4+altura3)
		local corte10 = Point2D(origenX,origenY+altura5+altura4)
		local corte11 = Point2D(origenX+margenM1,origenY+altura5)
		
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
		Contour:LineTo(corte1)
		
	elseif modelo==51 then --[E1]
		local corte1 = Point2D(origenX+margenM1,origenY)
		local corte2 = Point2D(origenX+margenM1+anchuraPlaca,origenY)
		local corte3 = Point2D(origenX+margenM1+anchuraPlaca,origenY+altura5)
		local corte4 = Point2D(origenX+margenM1+anchuraPlaca+margenM2,origenY+altura5+altura4)
		local corte5 = Point2D(origenX+margenM1+anchuraPlaca+margenM2,origenY+altura5+altura4+altura3)
		local corte6 = Point2D(origenX+margenM1+anchuraPlaca,origenY+altura5+altura4+altura3+altura2)
		local corte7 = Point2D(origenX+margenM1+anchuraPlaca,origenY+altura5+altura4+altura3+altura2+altura1)
		local corte8 = Point2D(origenX+altura1,origenY+altura5+altura4+altura3+altura2+altura1)
		local corte9 = Point2D(origenX,origenY+altura5+altura4+altura3+altura2)
		local corte10 = Point2D(origenX,origenY+altura5+altura4+altura3)
		local corte11 = Point2D(origenX+margenM1,origenY+altura5+altura4)
		
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
		Contour:LineTo(corte1)
		
		
	elseif modelo==52 then --[E2]
		local corte1 = Point2D(origenX,origenY+altura4)
		local corte2 = Point2D(origenX+anchura1,origenY)
		local corte3 = Point2D(origenX+anchura2,origenY)
		local corte4 = Point2D(origenX+anchura2,origenY+altura4)
		local corte5 = Point2D(origenX+anchura2+margenM2,origenY+altura4+altura3)
		local corte6 = Point2D(origenX+anchura2+margenM2,origenY+altura4+altura3+altura2)
		local corte7 = Point2D(origenX+anchura2+margenM2-altura1,origenY+altura4+altura3+altura2+altura1)
		local corte8 = Point2D(origenX+margenM1,origenY+altura4+altura3+altura2+altura1)
		local corte9 = Point2D(origenX+margenM1,origenY+altura4+altura3+altura2)
		local corte10 = Point2D(origenX,origenY+altura4+altura3)
		
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
		Contour:LineTo(corte1)

		
	
	elseif modelo==53 then --[E3] 
		local corte1 = Point2D(origenX+margenM1,origenY+altura4)
		local corte2 = Point2D(origenX+margenM1,origenY)
		local corte3 = Point2D(origenX+margenM1+anchura2-anchura1,origenY)
		local corte4 = Point2D(origenX+margenM1+anchura2,origenY+altura4)
		local corte5 = Point2D(origenX+margenM1+anchura2,origenY+altura4+altura3)
		local corte6 = Point2D(origenX+margenM1+anchura2-margenM2,origenY+altura4+altura3+altura2)
		local corte7 = Point2D(origenX+margenM1+anchura2-margenM2,origenY+altura4+altura3+altura2+altura1)
		local corte8 = Point2D(origenX+altura1,origenY+altura4+altura3+altura2+altura1)
		local corte9 = Point2D(origenX,origenY+altura4+altura3+altura2)
		local corte10 = Point2D(origenX,origenY+altura4+altura3)
		
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
		Contour:LineTo(corte1)
		
		
	elseif modelo==54 then --[E4]
		local corte1 = Point2D(origenX+margenM1,origenY+altura4)
		local corte2 = Point2D(origenX+margenM1+anchura1,origenY)
		local corte3 = Point2D(origenX+margenM1+anchura2,origenY)
		local corte4 = Point2D(origenX+margenM1+anchura2,origenY+altura4)
		local corte5 = Point2D(origenX+margenM1+anchura2+margenM2,origenY+altura4+altura3)
		local corte6 = Point2D(origenX+margenM1+anchura2+margenM2,origenY+altura4+altura3+altura2)
		local corte7 = Point2D(origenX+margenM1+anchura2+margenM2-altura1,origenY+altura4+altura3+altura2+altura1)
		local corte8 = Point2D(origenX+altura1,origenY+altura4+altura3+altura2+altura1)
		local corte9 = Point2D(origenX,origenY+altura4+altura3+altura2)
		local corte10 = Point2D(origenX,origenY+altura4+altura3)
		
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
		Contour:LineTo(corte1)
		
		
		
		
	elseif modelo==55 then --[E5]
		local corte1 = Point2D(origenX+margenM1,origenY+altura4)
		local corte2 = Point2D(origenX+margenM1,origenY)
		local corte3 = Point2D(origenX+margenM1+anchura2-anchura1,origenY)
		local corte4 = Point2D(origenX+margenM1+anchura2,origenY+altura4)
		local corte5 = Point2D(origenX+margenM1+anchura2+margenM2,origenY+altura4+altura3)
		local corte6 = Point2D(origenX+margenM1+anchura2+margenM2,origenY+altura4+altura3+altura2)
		local corte7 = Point2D(origenX+margenM1+anchura2+margenM2-altura1,origenY+altura4+altura3+altura2+altura1)
		local corte8 = Point2D(origenX+altura1,origenY+altura4+altura3+altura2+altura1)
		local corte9 = Point2D(origenX,origenY+altura4+altura3+altura2)
		local corte10 = Point2D(origenX,origenY+altura4+altura3)
		
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
		Contour:LineTo(corte1)
		
		
		
	end
	
	
	
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




function dibujarFresadoExteriorE(doc)
	
	--margenFresado=1 --[borrar]
	
	local Contour = Contour(0.0)
	
	
	if modelo==50 then --[E0]
		local corte1 = Point2D(origenX+margenM1-margenFresado,origenY+altura5+altura4+altura3+altura2)
		local corte2 = Point2D(origenX-margenFresado,origenY+altura5+altura4+altura3)
		local corte3 = Point2D(origenX-margenFresado,origenY+altura5+altura4)
		local corte4 = Point2D(origenX+margenM1-margenFresado,origenY+altura5)
		dibujarFresado_auxiliar(doc,corte1,corte2)
		dibujarFresado_auxiliar(doc,corte2,corte3)
		dibujarFresado_auxiliar(doc,corte3,corte4)
		
		local corte5 = Point2D(origenX+margenM1+anchuraPlaca+margenM2-altura1+margenFresado,origenY+altura5+altura4+altura3+altura2+altura1)
		local corte6 = Point2D(origenX+margenM1+anchuraPlaca+margenM2+margenFresado,origenY+altura5+altura4+altura3+altura2)
		local corte7 = Point2D(origenX+margenM1+anchuraPlaca+margenM2+margenFresado,origenY+altura5+altura4+altura3)
		local corte8 = Point2D(origenX+margenM1+anchuraPlaca+margenFresado,origenY+altura5+altura4)
		dibujarFresado_auxiliar(doc,corte5,corte6)
		dibujarFresado_auxiliar(doc,corte6,corte7)
		dibujarFresado_auxiliar(doc,corte7,corte8)
		
		
		
	elseif modelo==51 then --[E1]
		local corte1 = Point2D(origenX+altura1-margenFresado,origenY+altura5+altura4+altura3+altura2+altura1)
		local corte2 = Point2D(origenX-margenFresado,origenY+altura5+altura4+altura3+altura2)
		local corte3 = Point2D(origenX-margenFresado,origenY+altura5+altura4+altura3)
		local corte4 = Point2D(origenX+margenM1-margenFresado,origenY+altura5+altura4)
		dibujarFresado_auxiliar(doc,corte1,corte2)
		dibujarFresado_auxiliar(doc,corte2,corte3)
		dibujarFresado_auxiliar(doc,corte3,corte4)
		
		local corte5 = Point2D(origenX+margenM1+anchuraPlaca+margenFresado,origenY+altura5+altura4+altura3+altura2)
		local corte6 = Point2D(origenX+margenM1+anchuraPlaca+margenM2+margenFresado,origenY+altura5+altura4+altura3)
		local corte7 = Point2D(origenX+margenM1+anchuraPlaca+margenM2+margenFresado,origenY+altura5+altura4)
		local corte8 = Point2D(origenX+margenM1+anchuraPlaca+margenFresado,origenY+altura5)
		dibujarFresado_auxiliar(doc,corte5,corte6)
		dibujarFresado_auxiliar(doc,corte6,corte7)
		dibujarFresado_auxiliar(doc,corte7,corte8)
		
		
	
	elseif modelo==52 then --[E2]
		local corte1 = Point2D(origenX+margenM1-margenFresado,origenY+altura4+altura3+altura2+altura1)
		local corte2 = Point2D(origenX+margenM1-margenFresado,origenY+altura4+altura3+altura2)
		local corte3 = Point2D(origenX-margenFresado,origenY+altura4+altura3)
		local corte4 = Point2D(origenX-margenFresado,origenY+altura4)
		dibujarFresado_auxiliar(doc,corte1,corte2)
		dibujarFresado_auxiliar(doc,corte2,corte3)
		dibujarFresado_auxiliar(doc,corte3,corte4)
		
		local corte5 = Point2D(origenX+anchura2-altura1+margenFresado+margenM2,origenY+altura4+altura3+altura2+altura1)
		local corte6 = Point2D(origenX+anchura2+margenFresado+margenM2,origenY+altura4+altura3+altura2)
		local corte7 = Point2D(origenX+anchura2+margenFresado+margenM2,origenY+altura4+altura3)
		local corte8 = Point2D(origenX+anchura2+margenFresado,origenY+altura4)
		dibujarFresado_auxiliar(doc,corte5,corte6)
		dibujarFresado_auxiliar(doc,corte6,corte7)
		dibujarFresado_auxiliar(doc,corte7,corte8)
	
	
	elseif modelo==53 then --[E3]
		local corte1 = Point2D(origenX+altura1-margenFresado,origenY+altura4+altura3+altura2+altura1)
		local corte2 = Point2D(origenX-margenFresado,origenY+altura4+altura3+altura2)
		local corte3 = Point2D(origenX-margenFresado,origenY+altura4+altura3)
		local corte4 = Point2D(origenX-margenFresado+margenM1,origenY+altura4)
		dibujarFresado_auxiliar(doc,corte1,corte2)
		dibujarFresado_auxiliar(doc,corte2,corte3)
		dibujarFresado_auxiliar(doc,corte3,corte4)
		
		local corte5 = Point2D(origenX+margenM1+anchura2-margenM2+margenFresado,origenY+altura4+altura3+altura2+altura1)
		local corte6 = Point2D(origenX+margenM1+anchura2-margenM2+margenFresado,origenY+altura4+altura3+altura2)
		local corte7 = Point2D(origenX+margenM1+anchura2+margenFresado,origenY+altura4+altura3)
		local corte8 = Point2D(origenX+margenM1+anchura2+margenFresado,origenY+altura4)
		dibujarFresado_auxiliar(doc,corte5,corte6)
		dibujarFresado_auxiliar(doc,corte6,corte7)
		dibujarFresado_auxiliar(doc,corte7,corte8)
		
		
		
	elseif modelo==54 then --[E4]
		local corte1 = Point2D(origenX+altura1-margenFresado,origenY+altura4+altura3+altura2+altura1)
		local corte2 = Point2D(origenX-margenFresado,origenY+altura4+altura3+altura2)
		local corte3 = Point2D(origenX-margenFresado,origenY+altura4+altura3)
		local corte4 = Point2D(origenX-margenFresado+margenM1,origenY+altura4)
		dibujarFresado_auxiliar(doc,corte1,corte2)
		dibujarFresado_auxiliar(doc,corte2,corte3)
		dibujarFresado_auxiliar(doc,corte3,corte4)
		
		local corte5 = Point2D(origenX+margenM1+anchura2+margenM2-altura1+margenFresado,origenY+altura4+altura3+altura2+altura1)
		local corte6 = Point2D(origenX+margenM1+anchura2+margenM2+margenFresado,origenY+altura4+altura3+altura2)
		local corte7 = Point2D(origenX+margenM1+anchura2+margenM2+margenFresado,origenY+altura4+altura3)
		local corte8 = Point2D(origenX+margenM1+anchura2+margenFresado,origenY+altura4)
		dibujarFresado_auxiliar(doc,corte5,corte6)
		dibujarFresado_auxiliar(doc,corte6,corte7)
		dibujarFresado_auxiliar(doc,corte7,corte8)
		
	elseif modelo==55 then --[E5]
		local corte1 = Point2D(origenX+altura1-margenFresado,origenY+altura4+altura3+altura2+altura1)
		local corte2 = Point2D(origenX-margenFresado,origenY+altura4+altura3+altura2)
		local corte3 = Point2D(origenX-margenFresado,origenY+altura4+altura3)
		local corte4 = Point2D(origenX-margenFresado+margenM1,origenY+altura4)
		dibujarFresado_auxiliar(doc,corte1,corte2)
		dibujarFresado_auxiliar(doc,corte2,corte3)
		dibujarFresado_auxiliar(doc,corte3,corte4)
		
		local corte5 = Point2D(origenX+margenM1+anchura2+margenM2-altura1+margenFresado,origenY+altura4+altura3+altura2+altura1)
		local corte6 = Point2D(origenX+margenM1+anchura2+margenM2+margenFresado,origenY+altura4+altura3+altura2)
		local corte7 = Point2D(origenX+margenM1+anchura2+margenM2+margenFresado,origenY+altura4+altura3)
		local corte8 = Point2D(origenX+margenM1+anchura2+margenFresado,origenY+altura4)
		dibujarFresado_auxiliar(doc,corte5,corte6)
		dibujarFresado_auxiliar(doc,corte6,corte7)
		dibujarFresado_auxiliar(doc,corte7,corte8)
		
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

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------ DIBUJAR BANDEJAS CLIENTES PERSONALIZADAS ------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- [REFERENCIA 001] -------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


function dibujarFresado001(doc)
	
	
	--Puntos trayectoria 
	local Contour = Contour(0.0)
	
	local fresado1 = Point2D(origenX,origenY+alaInferior)
	local fresado2 = Point2D(origenX+anchura1,origenY+alaInferior)
	local fresado3 = Point2D(origenX+anchura1+anchura2,origenY+alaInferior)
	local fresado4 = Point2D(origenX+anchura1+anchura2+anchura3,origenY+alaInferior)
	local fresado5 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior)
	local fresado6 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5,origenY+alaInferior)
	local fresado7 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6,origenY+alaInferior)
	local fresado8 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+anchura7,origenY+alaInferior)
	local fresado9 = Point2D(origenX,origenY+alaInferior+alturaPlaca)
	local fresado10 = Point2D(origenX+anchura1,origenY+alaInferior+alturaPlaca)
	local fresado11 = Point2D(origenX+anchura1+anchura2,origenY+alaInferior+alturaPlaca)
	local fresado12 = Point2D(origenX+anchura1+anchura2+anchura3,origenY+alaInferior+alturaPlaca)
	local fresado13 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4,origenY+alaInferior+alturaPlaca)
	local fresado14 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5,origenY+alaInferior+alturaPlaca)
	local fresado15 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6,origenY+alaInferior+alturaPlaca)
	local fresado16 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+anchura7,origenY+alaInferior+alturaPlaca)
	dibujarFresado_auxiliar(doc,fresado1,fresado8)
	dibujarFresado_auxiliar(doc,fresado9,fresado16)
	dibujarFresado_auxiliar(doc,fresado2,fresado10)
	dibujarFresado_auxiliar(doc,fresado3,fresado11)
	dibujarFresado_auxiliar(doc,fresado4,fresado12)
	dibujarFresado_auxiliar(doc,fresado5,fresado13)
	dibujarFresado_auxiliar(doc,fresado6,fresado14)
	dibujarFresado_auxiliar(doc,fresado7,fresado15)
	
	
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
		local fresado42 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado41,fresado42)
		local fresado43 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado44 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		dibujarFresado_auxiliar(doc,fresado43,fresado44)	
	end
	
	
	--anchura6
	if anchura6>pliegueSuperior*2 then
		local fresado46 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado45 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		dibujarFresado_auxiliar(doc,fresado45,fresado46)
		local fresado47 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado48 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6-pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado47,fresado48)
		local fresado49 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado50 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6-pliegueSuperior+margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		dibujarFresado_auxiliar(doc,fresado49,fresado50)	
	end
	
	
	--anchura7
	if anchura7>pliegueSuperior then
		local fresado52 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado51 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+pliegueSuperior-margenFresado,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		dibujarFresado_auxiliar(doc,fresado51,fresado52)
		local fresado53 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+pliegueSuperior,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		local fresado54 = Point2D(origenX+anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+anchura7,origenY+alaInferior+alturaPlaca+pliegueSuperior)
		dibujarFresado_auxiliar(doc,fresado53,fresado54)
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





--[[function dibujarFresado001_auxiliar(doc,punto1,punto2)

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





function dibujarCorte001(doc)
	
	
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
	local anchuras={anchura1,anchura2,anchura3,anchura4,anchura5,anchura6,anchura7}
	local repeticiones=5 --math.length(anchuras -2)
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
	if anchura7>alaInferior then
		local corte1 = Point2D(origenX+anchoA,origenY+alaInferior)
		local corte2 = Point2D(origenX+anchoA+alaInferior,origenY)
		local corte3 = Point2D(origenX+anchoA+anchura7,origenY)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
		
	else
		local corte1 = Point2D(origenX+anchoA,origenY+alaInferior)
		local corte2 = Point2D(origenX+anchoA+anchura7,origenY+alaInferior-anchura7)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
	end
	local corte4 = Point2D(origenX+anchoA+anchura7,origenY+alaInferior)
	Contour:LineTo(corte4)
	
	
	
	
	--PARTE SUPERIOR------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	anchoA=anchura1+anchura2+anchura3+anchura4+anchura5+anchura6+anchura7
	
	--Anchura primera
	if anchura7>pliegueSuperior then
		local corte1 = Point2D(origenX+anchoA,origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte2 = Point2D(origenX+anchoA-(anchura7-pliegueSuperior),origenY+alaInferior+alturaPlaca+pliegueSuperior+alaSuperior)
		local corte3 = Point2D(origenX+anchoA-(anchura7-pliegueSuperior),origenY+alaInferior+alturaPlaca+pliegueSuperior)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
		Contour:LineTo(corte3)
	else
		local corte1 = Point2D(origenX+anchoA,origenY+alaInferior+alturaPlaca+anchura7)
		local corte2 = Point2D(origenX+anchoA-anchura7,origenY+alaInferior+alturaPlaca)
		Contour:LineTo(corte1)
		Contour:LineTo(corte2)
	end
	
	
	anchoA=anchoA-anchura7
	local m=6
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






------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------ DIBUJAR BANDEJAS CLIENTES PERSONALIZADAS ------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- [REFERENCIA 002] -------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


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





------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------ DIBUJAR BANDEJAS CLIENTES PERSONALIZADAS ------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- [REFERENCIA 003] -------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Pliegues Izquierda
function OnLuaButton_pliegueIzq1()
	pliegueIzq1=1
	return true
end
function OnLuaButton_pliegueIzq2()
	pliegueIzq2=1
	return true
end
function OnLuaButton_pliegueIzq3()
	pliegueIzq3=1
	return true
end
function OnLuaButton_pliegueIzq4()
	pliegueIzq4=1
	return true
end
function OnLuaButton_pliegueIzq5()
	pliegueIzq5=1
	return true
end
function OnLuaButton_pliegueIzq6()
	pliegueIzq6=1
	return true
end
function OnLuaButton_pliegueIzq7()
	pliegueIzq7=1
	return true
end
function OnLuaButton_pliegueIzq8()
	pliegueIzq8=1
	return true
end
function OnLuaButton_pliegueIzq9()
	pliegueIzq9=1
	return true
end
function OnLuaButton_pliegueIzq10()
	pliegueIzq10=1
	return true
end

--Pliegues Derecha
function OnLuaButton_pliegueDer1()
	pliegueDer1=1
	return true
end
function OnLuaButton_pliegueDer2()
	pliegueDer2=1
	return true
end
function OnLuaButton_pliegueDer3()
	pliegueDer3=1
	return true
end
function OnLuaButton_pliegueDer4()
	pliegueDer4=1
	return true
end
function OnLuaButton_pliegueDer5()
	pliegueDer5=1
	return true
end
function OnLuaButton_pliegueDer6()
	pliegueDer6=1
	return true
end
function OnLuaButton_pliegueDer7()
	pliegueDer7=1
	return true
end
function OnLuaButton_pliegueDer8()
	pliegueDer8=1
	return true
end
function OnLuaButton_pliegueDer9()
	pliegueDer9=1
	return true
end
function OnLuaButton_pliegueDer10()
	pliegueDer10=1
	return true
end


function OnLuaButton_dibujoHorizontal()
	dibujoHorizontal=1
	return true
end
function OnLuaButton_dibujoVertical()
	dibujoVertical=1
	return true
end




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



------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------ DIBUJAR BANDEJAS CLIENTES PERSONALIZADAS ------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- [REFERENCIA 004] -------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


function dibujarFresado004(doc)
	
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



function dibujarCorte004(doc)
	
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
	local corte15
	local corte16
	
	if margenM>=alaIzquierda then
		corte15 = Point2D(origenX,origenY+alaInferior+alturaPlaca-alaIzquierda)
		corte16 = Point2D(origenX,origenY+alaInferior+alturaPlaca-margenM-alaIzquierda)
	else
		corte15 = Point2D(origenX+alaIzquierda-margenM,origenY+alaInferior+alturaPlaca-margenM)
		corte16 = Point2D(origenX+alaInferior-margenM,origenY+alaInferior+alturaPlaca-margenM*2)
	end
	
	local corte17 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca-margenM)
	
	
	--Angulo de abajo
	local alfa2=math.atan((anchuraPlaca-margenL)/(alturaPlaca-margenM))
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
	
	local corte18 = Point2D(origenX+alaIzquierda-distanciaY2,origenY+alaInferior+alturaPlaca-margenM-distanciaX2)
	
	
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




------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------ DIBUJAR BANDEJAS CLIENTES PERSONALIZADAS ------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- [REFERENCIA 005] -------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


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





------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------ DIBUJAR BANDEJAS CLIENTES PERSONALIZADAS ------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- [REFERENCIA 006] -------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


function dibujarFresado006(doc)
	alturaPlaca=500 --[A][borrar]
	anchuraPlaca=1000 --[B][borrar]
	
	alaInferior=45 --[C4][borrar]
	alaDerecha=45 --[C2][borrar]
	alaSuperior=45 --[C3][borrar]
	pliegueSuperior=50 --[P][borrar]
	alaIzquierda=45 --[C1][borrar]
	
	margenL=985.9861 --[L][borrar]
	margenS=522.6872 --[S][borrar]
	--MargenM=312.0361 --[M][borrar]
	alfa=45 --[alfa][borrar]
	
	
	
	--Puntos trayectoria 
	local Contour = Contour(0.0)
	
	local fresado1 = Point2D(origenX+alaInferior,origenY)
	local fresado2 = Point2D(origenX+alaInferior+anchuraPlaca,origenY)
	local fresado3 = Point2D(origenX+alaInferior,origenY+alaInferior)
	local fresado4 = Point2D(origenX+alaInferior+anchuraPlaca,origenY+alaInferior)
	local fresado5 = Point2D(origenX+alaInferior+anchuraPlaca,origenY+alaInferior)
	
	
	
	
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



function dibujarCorte006(doc)
	
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
	local corte15
	local corte16
	
	if margenM>=alaIzquierda then
		corte15 = Point2D(origenX,origenY+alaInferior+alturaPlaca-alaIzquierda)
		corte16 = Point2D(origenX,origenY+alaInferior+alturaPlaca-margenM-alaIzquierda)
	else
		corte15 = Point2D(origenX+alaIzquierda-margenM,origenY+alaInferior+alturaPlaca-margenM)
		corte16 = Point2D(origenX+alaInferior-margenM,origenY+alaInferior+alturaPlaca-margenM*2)
	end
	
	local corte17 = Point2D(origenX+alaIzquierda,origenY+alaInferior+alturaPlaca-margenM)
	
	
	--Angulo de abajo
	local alfa2=math.atan((anchuraPlaca-margenL)/(alturaPlaca-margenM))
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
	
	local corte18 = Point2D(origenX+alaIzquierda-distanciaY2,origenY+alaInferior+alturaPlaca-margenM-distanciaX2)
	
	
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

















