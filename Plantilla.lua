-- VECTRIC LUA SCRIPT
require "strict"

--[[  ----------- Crear plantilla mecanizado por capas--------------------------------------------------  ]]--

--Seleccionar vectores de la capa
function SelectVectorsOnLayer(layer, selection, select_closed, select_open, select_groups)
    
   local objects_selected = false
   local warning_displayed = false
   
   local pos = layer:GetHeadPosition()
      while pos ~= nil do
	     local object
         object, pos = layer:GetNext(pos)
         local contour = object:GetContour()
         if contour == nil then
            if (object.ClassName == "vcCadObjectGroup") and select_groups then
               selection:Add(object, true, true)
               objects_selected = true
            else 
               if not warning_displayed then
                  local message = "Objectos NO encontrados en la capa"
                  if not select_groups then
                     message = message .. 
                               "\r\n\r\n" .. 
                               "Si la capa contiene vectores agrupados, deben ser desagrupados"
                  end
                  DisplayMessageBox(message)
                  warning_displayed = true
               end   
            end
         else  -- contour was NOT nil, test if Open or Closed
            if contour.IsOpen and select_open then
               selection:Add(object, true, true)
               objects_selected = true
            end
            if select_closed then
               selection:Add(object, true, true)
               objects_selected = true
            end            
         end
         
      end  
   -- to avoid excessive redrawing etc  we added vectors to the selection in 'batch' mode
   -- tell selection we have now finished updating
   if objects_selected then
     selection:GroupSelectionFinished()
   end   
   return objects_selected   
end


function CrearPlantillaMecanizadoPorCapas (job,nombreCapa,nombrePlantilla,profundidadInicial,profundidadCorte,nombreHerramienta,diametroHerramienta,pasadaHerramienta,trabajarEnMM, velocidadAvance, velocidadBajada,velocidadSpindle,numeroHerramienta, alturaZSegura)

 -- Limpiar selección actual
local selection = job.Selection
selection:Clear()

-- Obtener capa solicitada
local layer = job.LayerManager:FindLayerWithName(nombreCapa)
if layer == nil then
	DisplayMessageBox("Ninguna capa encontrada con nombre = " .. nombreCapa)
	return false
end

-- Seleccionar todos los vectores cerrados de la capa (llamada a la función)

if not SelectVectorsOnLayer(layer, selection, true, true, true) then
	DisplayMessageBox("Ningún vector cerrado encontrado en la capa " .. nombreCapa)
	return false
end


-- Crear una herramienta en función de la capa
	local tool = Tool(
	nombreHerramienta,
	Tool.END_MILL -- BALL_NOSE, END_MILL, VBIT
	)
	tool.InMM = trabajarEnMM
	tool.ToolDia = diametroHerramienta
	tool.Stepdown = pasadaHerramienta
	tool.Stepover = diametroHerramienta * 0.5
	tool.RateUnits = Tool.MM_MIN -- MM_SEC, MM_MIN, METRES_MIN, INCHES_SEC ...
	tool.FeedRate = velocidadAvance
	tool.PlungeRate = velocidadBajada
	tool.SpindleSpeed = velocidadSpindle
	tool.ToolNumber = numeroHerramienta
	--tool.VBitAngle = 90.0 -- used for vbit only
	--tool.ClearStepover = diametroHerramienta * 0.5 -- used for vbit only


local mtl_block = MaterialBlock() 
local mtl_box = mtl_block.MaterialBox
local mtl_box_blc = mtl_box.BLC

--Crear un objeto para configurar la posición de referencia y la Z segura sobre el material
local pos_data = ToolpathPosData()
pos_data:SetHomePosition(mtl_box_blc.x, mtl_box_blc.y, alturaZSegura)
pos_data.SafeZGap = alturaZSegura

--Crear objeto para generar las opciones de perfil
local profile_data = ProfileParameterData()

-- Profundidad inicial
profile_data.StartDepth = profundidadInicial

-- Profundidad corte por debajo de la profundidad inicial 
profile_data.CutDepth = profundidadCorte

-- Dirección de corte
-- CLIMB_DIRECTION o CONVENTIONAL_DIRECTION
profile_data.CutDirection = ProfileParameterData.CLIMB_DIRECTION

-- Por donde mecanizamos o cortamos (por fuera, dentro o sobre la línea)
-- PROFILE_OUTSIDE, PROFILE_INSIDE o PROFILE_ON
profile_data.ProfileSide = ProfileParameterData.PROFILE_OUTSIDE

--Tolerancia en el mecanizado
profile_data.Allowance = 0.0

-- true para preservar el punto de inicio, false para reordenar el punto de inicio y minimizar la ruta
profile_data.KeepStartPoints = false

-- true si deseamos crear esquinas externas 'cuadradas' en la trayectoria 
profile_data.CreateSquareCorners = false

-- true para realizar el afilado de esquinas en esquinas internas (solo con v-bits) 
profile_data.CornerSharpen = false

-- true to use tabs
profile_data.UseTabs = false

-- Longitud para tabs
profile_data.TabLength = 5.0

--Grosor para tabs
profile_data.TabThickness = 1.0

-- True cuando se crea tabs en 3D
profile_data.Use3dTabs = true

--si es true en Aspire, proyecta la trayectoria en el modelo compuesto 
profile_data.ProjectToolpath = false


-- Crear objeto para el control de rampa
local ramping_data = RampingData()

-- Si true realizamos el proceso de rampa
ramping_data.DoRamping = false

-- RAMP_LINEAR , RAMP_ZIG_ZAG, RAMP_SPIRAL
ramping_data.RampType = RampingData.RAMP_ZIG_ZAG

-- Restricción de la rampa - bien por ángulo o distancia CONSTRAIN_DISTANCE CONSTRAIN_ANGLE
ramping_data.RampConstraint = RampingData.CONSTRAIN_ANGLE

-- Distancia en rampa
ramping_data.RampDistance = 100.0

-- Ángulo en rampa en grados
ramping_data.RampAngle = 25.0

-- Máxima distancia a desplazar antes rampa en ángulo
ramping_data.RampMaxAngleDist = 15

-- Restringimos nuestra rampa para liderar en la sección de la trayectoria 
ramping_data.RampOnLeadIn = false


-- Create object used to control lead in/out
local lead_in_out_data = LeadInOutData()
-- if true we create lead ins on profiles (not for profile on)
lead_in_out_data.DoLeadIn = false
-- if true we create lead outs on profiles (not for profile on)
lead_in_out_data.DoLeadOut = false

-- type of leads to create LeadInOutData.LINEAR_LEAD or LeadInOutData.CIRCULAR_LEAD
lead_in_out_data.LeadType = LeadInOutData.CIRCULAR_LEAD
-- length of lead to create
lead_in_out_data.LeadLength = 10.0
-- Angle for linear leads
lead_in_out_data.LinearLeadAngle = 45
-- Radius for circular arc leads
lead_in_out_data.CirularLeadRadius = 5.0
-- distance to 'overcut' (travel past start point) when profiling
lead_in_out_data.OvercutDistance = 0.0


-- Create object which can be used to automatically select geometry
local geometry_selector = GeometrySelector()

-- Si true previsualizar plantillas de mecanizado 2D
local create_2d_previews = true

-- Si es true mostrar errores o advertencias a los usuarios
local display_warnings = false

-- Crear la plantilla de mecanizado
local toolpath_manager = ToolpathManager()
local toolpath_id = toolpath_manager:CreateProfilingToolpath(
nombrePlantilla,
tool,
profile_data,
ramping_data,
lead_in_out_data,
pos_data,
geometry_selector,
create_2d_previews,
display_warnings
)

if toolpath_id == nil then
	DisplayMessageBox("Error creando la plantilla de mecanizado")
	return false
end

return true

end


--[[Función MAIN ]]--
function main()

    local job = VectricJob() 

 	if not job.Exists then
       DisplayMessageBox("Trabajo NO cargado")
       return false;  
    end

    local mtl_block = MaterialBlock()
    
    --CrearPlantillaMecanizadoPorCapas (job,nombreCapa,nombrePlantilla,profundidadInicial,profundidadCorte,nombreHerramienta,diametroHerramienta,pasadaHerramienta,trabajarEnMM, velocidadAvance, velocidadBajada,velocidadSpindle,numeroHerramienta, alturaZSegura)
    --Crear plantilla para Corte
     local resultado = CrearPlantillaMecanizadoPorCapas (job,"Corte","Plantilla Corte",0,mtl_block.Thickness,"Herramienta Corte",5.0,4,true, 3000, 5000,13000,1, 30)
    --Crear plantilla para Fresado
     local resultado = CrearPlantillaMecanizadoPorCapas (job,"Fresado","Plantilla Fresado",0,mtl_block.Thickness/2,"Herramienta Fresado",5.0,4,true, 3000, 5000,13000,2, 30)
    --Crear plantilla para Taladros
     local resultado = CrearPlantillaMecanizadoPorCapas (job,"Taladros","Plantilla Taladros",0,mtl_block.Thickness,"Herramienta Taladros",5.0,4,true, 3000, 5000,13000,3, 30)
    
    return resultado;
    
end    