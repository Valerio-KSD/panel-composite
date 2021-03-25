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

	if not file_dialog:FileSave("ToolpathTemplate",script_path.."\\*",filtro) then

		MessageBox("Error Abriendo el dialogo de fichero")

		return false
	end
	
	     
	
    local toolpath_manager = ToolpathManager()
    

    --Recalcular todas las trayectorias
    local calc_result = toolpath_manager:RecalculateAllToolpaths()
    if calc_result == nil then

       MessageBox("Error: Fallo en el cálculo de las trayectorias")
    
    end

    --Guardar la plantilla con todas las rutas de mecanizado
    toolpath_manager:SetAllToolpathsVisibility(true)
    local result = toolpath_manager:SaveVisibleToolpathsAsTemplate(file_dialog.PathName)
    if result == nil then
       MessageBox("Error: Fallo en el almacenamiento de la plantilla de mecanizado")
    
    end
	
    
   --[[local pos = toolpath_manager:GetHeadPosition()
    local toolpath
    
    while pos ~= nil do
    	
    	toolpath, pos = toolpath_manager:GetNext(pos)
        toolpath_manager:ToolpathModified(toolpath)
        local result = toolpath_manager:SaveToolpathAsTemplate(toolpath,file_dialog.PathName)

        if result == nil then
       		MessageBox("Error: Fallo en el almacenamiento de la plantilla de mecanizado")
    
    	end
          
    end]]--

           
    MessageBox("Archivo GUARDADO correctamente.")   
	
    return true;
end    