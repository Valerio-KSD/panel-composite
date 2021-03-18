-- VECTRIC LUA SCRIPT


require "strict"


--[[  -------------- main ---------------------
|
|  Entry point for script
|
]]

function main(script_path)

    -- Check we have a job loaded
    local job = VectricJob()
 
    if not job.Exists then
       DisplayMessageBox("Trabajo NO cargado")
       return false;  
    end
 
    
    local template_path =script_path .."\\plantilla_4mm_90grados+taladros+corte.ToolpathTemplate"
	
    local toolpath_manager = ToolpathManager()

    if toolpath_manager:DeleteAllToolpaths() then
        MessageBox("Error: Trayectorias NO eliminadas " .. template_path)
    	return false

    end
    
       
    --Carga de la plantilla de mecanizado
    if not toolpath_manager:LoadToolpathTemplate(template_path) then
       MessageBox("Error: Plantilla NO cargada " .. template_path)
	   return false
    end
	
    --MessageBox("Plantilla cargada " .. template_path)
    
    --Recalcular todas las trayectorias
	local calc_result = toolpath_manager:RecalculateAllToolpaths()
	if calc_result == nil then
	   MessageBox("Error: Fallo en el cálculo de las trayectorias")
	--else
	   --MessageBox("Resultados de recalcular todo\n" .. calc_result)
	end


	
    return true;
end    