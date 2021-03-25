-- VECTRIC LUA SCRIPT


require "strict"


--[[  -------------- main ---------------------
|
|  Entry point for script
|
]]

function main(script_path)


    local job = VectricJob()
 
    if not job.Exists then
       DisplayMessageBox("Trabajo NO cargado")
       return false;  
    end
 
    
	
	local file_dialog = FileDialog()
	
	local filtro = "Plantillas de mecanizados (*." .. "ToolpathTemplate" .. ")|" ..
	"*." .. "ToolpathTemplate" .. "||"

	if not file_dialog:FileOpen(".ToolpathTemplate",script_path.."\\*",filtro) then

		MessageBox("Error Abriendo el dialogo de fichero")

		return false
	end
	
	     	
    local toolpath_manager = ToolpathManager()

    if toolpath_manager:DeleteAllToolpaths() then
        MessageBox("Error: Trayectorias NO eliminadas " .. file_dialog.FileName)
    	return false

    end
    
       
    --Carga de la plantilla de mecanizado
    if not toolpath_manager:LoadToolpathTemplate(file_dialog.PathName) then
       MessageBox("Error: Plantilla NO cargada " .. file_dialog.FileName)
       return false
    end


    --Recalcular todas las trayectorias
	local calc_result = toolpath_manager:RecalculateAllToolpaths()
	if calc_result == nil then
	   MessageBox("Error: Fallo en el cálculo de las trayectorias")
	--else
	   --MessageBox("Resultados de recalcular todo\n" .. calc_result)
	end

    MessageBox("Archivo CARGADO correctamente.")   
	
    return true;
end    