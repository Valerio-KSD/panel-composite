-- VECTRIC LUA SCRIPT
require "strict"

rutaPaqueteArchivosAuxiliares=";C:/Users/Public/Documents/Vectric Files/Gadgets/Cut2D Pro V9.5/PanelesComposite/archivosAuxiliares/?.lua"

package.path = package.path .. rutaPaqueteArchivosAuxiliares

require "FamiliaA"
require "FamiliaB"
require "FamiliaC"
require "FamiliaD"
require "FamiliaE"
require "Referencia001"
require "Referencia002"
require "Referencia003"
require "Referencia004"
require "Referencia005"
require "Referencia006"
require "Referencia007_008"
require "Referencia009"

require "LlamadasHTML"
require "FuncionesAuxiliares"
require "VariablesExternasGlobales"

--Función PRINCIPAL

function main(script_path)

    local html_path
    ruta=script_path
	
	if not doc.Exists then
	   DisplayMessageBox("Trabajo NO Cargado")
		return false;
	end	

	--Comprobación LICENCIA

	
	if remoto==1 then
		html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/licencia.html"
	else
		html_path = "file:" .. script_path .. "\\Paneles\\licencia.html"
	end

	local licencia = HTML_Dialog(false, html_path, 300,190, "KSDpanel")


	--licencia:AddTextField("contrasenaUsuario", contrasenaUsuario)
    licencia:AddTextField("contrasenaProducto", contrasenaProducto)

    licencia:ShowDialog() 

    
	--Llamada al panel principal SI las contraseñas coinciden

	--contrasenaProducto==contrasenaUsuario

	if contrasenaProducto=="1" then
	
		if remoto==1 then
			html_path = "" .. ruta_carpeta .. "" .. carpeta .. "/Paneles.html"
		else
			html_path = "file:" .. script_path .. "\\Paneles\\Paneles.html"
		end

		
		
		local framePrincipal = HTML_Dialog(false, html_path, tamX, tamY, "KSD Motion Control S.L.U.") --14.7" (proporción 4:3)
		
		
		
		if  not framePrincipal:ShowDialog() then
		
			return false;
			
		end

		return true;

	else
		--Mensaje de licencia caducada
		DisplayMessageBox("LICENCIA CADUCADA. Contacte con la empresa proveedora.")
		return true;

	end
		
	return true; 
end 


function OnLuaButton_aceptarLicencia(licencia)

	--contrasenaUsuario=licencia:GetTextField("contrasenaUsuario")
	contrasenaProducto=licencia:GetTextField("contrasenaProducto")

	return true;

end



