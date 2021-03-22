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
    --local template_path_fresado =script_path .."\\90grados.ToolpathTemplate"
    --local template_path_corte =script_path .."\\corte.ToolpathTemplate"
    --local template_path_taladros =script_path .."\\taladros.ToolpathTemplate"
	
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
    --[[if not toolpath_manager:LoadToolpathTemplate(template_path_fresado) then
       MessageBox("Error: Plantilla NO cargada " .. template_path_fresado)
	   return false
    end

    if not toolpath_manager:LoadToolpathTemplate(template_path_corte) then
       MessageBox("Error: Plantilla NO cargada " .. template_path_corte)
       return false
    end

    if not toolpath_manager:LoadToolpathTemplate(template_path_taladros) then
       MessageBox("Error: Plantilla NO cargada " .. template_path_taladros)
       return false
    end]]--
	
    --MessageBox("Plantilla cargada " .. template_path)
    
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