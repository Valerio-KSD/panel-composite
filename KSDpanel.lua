-- VECTRIC LUA SCRIPT
require "strict"

rutaPaqueteArchivosAuxiliares=";C:/Users/Public/Documents/Vectric Files/Gadgets/Cut2D Pro V9.5/Paneles/archivosAuxiliares/?.lua"

package.path = package.path .. rutaPaqueteArchivosAuxiliares

require "FamiliaA"
require "FamiliaB"
require "FamiliaC"
require "FamiliaD"
require "FamiliaE"
require "FamiliaF"
require "FamiliaG"



require "LlamadasHTML"
require "FuncionesAuxiliares"
require "VariablesExternasGlobales"

--Función PRINCIPAL

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

































































































