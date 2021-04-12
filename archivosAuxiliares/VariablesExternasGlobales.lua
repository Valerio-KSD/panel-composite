
-- VECTRIC LUA SCRIPT
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------ VARIABLES EXTERNAS GLOBALES ----------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------  -----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------




---------------------------------------------------------------
------------------- GESTION DE ARCHIVOS -----------------------
---------------------------------------------------------------

contrasenaUsuario=""
contrasenaProducto=""



ruta_carpeta="https://cuttool.es/prueba/"
carpeta="Paneles"

--DisplayMessageBox("La ruta es: " .. ruta_carpeta.. "" .. carpeta .. "")

remoto=0 --Esto es para que los archivos html se lean en remoto (https://...) o en local (file:/...)
--1=remoto
--0=local

---------------------------------------------------------------
---------------------------------------------------------------
---------------------------------------------------------------




--Margen mecanizado
margenMecanizado=4

--Variable texto
textoDescriptivo=""

--Variables Taladros/Coliso
crearColiso=0
crearTaladros=0

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
crearBotas=1 --Crear o no botas
parametroBotas=0 --Poner las botas en funcion del numero o de la distancia
distanciaEntreBotas=500 --Distancia maxima entre botas 
numeroBotas=3 --Numero de botas en cada lateral

alaSuperior=40
alaInferior=40
alaDerecha=40
alaIzquierda=alaDerecha

pliegueSuperior=36
pliegueInferior=36

margenA=57--74
margenB=108--132

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


--PIEZA ESPECIAL 006
margenS=522.6872
alfa=45

--PIEZA ESPECIAL 012
pliegueSup1=10
pliegueSup2=25
pliegueSup3=50

pliegueIzq1=10
PliegueIzq2=25
pliegueIzq3=50

pliegueDer1=10
pliegueDer2=25
pliegueDer3=50

pliegueInf1=10
pliegueInf2=25
pliegueInf3=50

anchuraInf=900
anchuraSup=900
anchuraDer=400
anchuraIzq=400




--Documento
ruta=""
doc = VectricJob()





--Tamaño de la ventana [en pixeles]
tamanoVentana=1

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







