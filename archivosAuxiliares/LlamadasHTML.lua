-- VECTRIC LUA SCRIPT
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------- Funciones llamadas HTML ---------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function OnLuaButton_crearBotas()
	crearBotas=1
	return true
end
function OnLuaButton_noCrearBotas()
	crearBotas=0
	return true
end




--[[function OnLuaButton_crearColiso()
	crearColiso=1
	return true
end
function OnLuaButton_noCrearColiso()
	crearColiso=0
	return true
end--]]




function OnLuaButton_parametroBotas()
	parametroBotas=0 --Distancia maxima entre botas
	return true
end
function OnLuaButton_parametroBotasNumero()
	parametroBotas=1 --Numero de botas
	return true
end




function OnLuaButton_dibujarTaladros()
	crearTaladros=1
	return true
end
function OnLuaButton_dibujarColisos()
	crearColiso=1
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

function OnLuaButton_crearFresado()
	crearFresado=1
	return true
end
function OnLuaButton_noCrearFresado()
	crearFresado=0
	return true
end


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


function OnLuaButton_crearFresado()
	crearFresado=1
	return true
end
function OnLuaButton_noCrearFresado()
	crearFresado=0
	return true
end
