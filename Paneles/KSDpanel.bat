cls
@ECHO OFF
title Folder KSDpanel
if EXIST "KSDpanelProtegido" goto UNLOCK
if NOT EXIST KSDpanel goto MDLOCKER

:CONFIRM
echo Quiere ocultar la carpeta KSDpanel? (SI/NO)
set/p "respuesta="
if %respuesta%==SI goto LOCK
if %respuesta%==si goto LOCK
if %respuesta%==no goto END
if %respuesta%==NO goto END
echo Respuesta incorrecta
goto CONFIRM

:LOCK
ren KSDpanel "KSDpanelProtegido"
attrib +h +s "KSDpanelProtegido"
echo Carpeta bloqueada y ocultada
goto End

:UNLOCK
echo Introduzca la clave para mostrar la carpeta KSDpanel
set/p "pass="
if NOT %pass%== KSD1234	 goto FAIL
attrib -h -s "KSDpanelProtegido"
ren "KSDpanelProtegido" KSDpanel
echo Carpeta desbloqueada satisfactoriamente
goto End

:FAIL
echo Clave incorrecta
goto end

:MDLOCKER
md KSDpanel
echo KSDpanel creada correctamente
goto End
:End

