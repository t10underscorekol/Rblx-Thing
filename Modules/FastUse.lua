local function MakeModule(HTTPLINK,Name,Parent)
    local module = Instance.new("ModuleScript",Parent)
    module.Name=Name
    module.Source=game:HttpGet(HTTPLINK)
end
warn("Loading MAIN Module IRIS")
local IRIS_MAIN_MODULE_INSTANCE = MakeModule("https://raw.githubusercontent.com/t10underscorekol/JustAutoLoads/refs/heads/main/Main.lua","Iris_SPECIAL_LOAD",game.Players)
warn("Loading API Module IRIS")
local API_MODULE_INSTANCE = MakeModule("https://raw.githubusercontent.com/t10underscorekol/JustAutoLoads/refs/heads/main/API.lua","API",IRIS_MAIN_MODULE_INSTANCE)
warn("Loading Internal Module IRIS")
local Internal_MODULE_INSTANCE = MakeModule("https://raw.githubusercontent.com/t10underscorekol/JustAutoLoads/refs/heads/main/Internal.lua","Internal",IRIS_MAIN_MODULE_INSTANCE)
warn("Loading Types Module IRIS")
local Types_MODULE_INSTANCE = MakeModule("https://raw.githubusercontent.com/t10underscorekol/JustAutoLoads/refs/heads/main/Types.lua","Types",IRIS_MAIN_MODULE_INSTANCE)
warn("Loading config Module IRIS")
local config_MODULE_INSTANCE = MakeModule("https://raw.githubusercontent.com/t10underscorekol/JustAutoLoads/refs/heads/main/config.lua","config",IRIS_MAIN_MODULE_INSTANCE)
warn("Loading demoWindow Module IRIS")
local demoWindow_MODULE_INSTANCE = MakeModule("https://raw.githubusercontent.com/t10underscorekol/JustAutoLoads/refs/heads/main/demoWindow.lua",IRIS_MAIN_MODULE_INSTANCE)
warn("Loading Widgets Module IRIS")
local widgets_MODULE_INSTANCE = MakeModule("https://raw.githubusercontent.com/t10underscorekol/JustAutoLoads/refs/heads/main/widgetsmain.lua","widgetsmain",IRIS_MAIN_MODULE_INSTANCE)
warn("Loading Button Module IRIS, Widgets")
local Button_MODULE_INSTANCE = MakeModule("https://raw.githubusercontent.com/t10underscorekol/JustAutoLoads/refs/heads/main/Widgets/Button.lua","Button",widgets_MODULE_INSTANCE)
warn("Loading CheckBox Module IRIS, Widgets")
local Checkbox_MODULE_INSTANCE = MakeModule("https://raw.githubusercontent.com/t10underscorekol/JustAutoLoads/refs/heads/main/Widgets/CheckBox.lua","CheckBox",widgets_MODULE_INSTANCE)
warn("Loading Combo Module IRIS, Widgets")
local Combo_MODULE_INSTANCE = MakeModule("https://raw.githubusercontent.com/t10underscorekol/JustAutoLoads/refs/heads/main/Widgets/Combo.lua","Combo",widgets_MODULE_INSTANCE)
warn("Loading Format Module IRIS, Widgets")
local Format_MODULE_INSTANCE = MakeModule("https://raw.githubusercontent.com/t10underscorekol/JustAutoLoads/refs/heads/main/Widgets/Format.lua","Format",widgets_MODULE_INSTANCE)
warn("Loading Image Module IRIS, Widgets")
local Image_MODULE_INSTANCE = MakeModule("https://raw.githubusercontent.com/t10underscorekol/JustAutoLoads/refs/heads/main/Widgets/Image.lua","Image",widgets_MODULE_INSTANCE)
warn("Loading Input Module IRIS, Widgets")
local Input_MODULE_INSTANCE = MakeModule("https://raw.githubusercontent.com/t10underscorekol/JustAutoLoads/refs/heads/main/Widgets/Input.lua","Input",widgets_MODULE_INSTANCE)
warn("Loading Menu Module IRIS, Widgets")
local Menu_MODULE_INSTANCE = MakeModule("https://raw.githubusercontent.com/t10underscorekol/JustAutoLoads/refs/heads/main/Widgets/Menu.lua","Menu",widgets_MODULE_INSTANCE)
warn("Loading Plot Module IRIS, Widgets")
local Plot_MODULE_INSTANCE = MakeModule("https://raw.githubusercontent.com/t10underscorekol/JustAutoLoads/refs/heads/main/Widgets/Plot.lua","Plot",widgets_MODULE_INSTANCE)
warn("Loading RadioButton Module IRIS, Widgets")
local RadioButton_MODULE_INSTANCE = MakeModule("https://raw.githubusercontent.com/t10underscorekol/JustAutoLoads/refs/heads/main/Widgets/RadioButton.lua","RadioButton",widgets_MODULE_INSTANCE)
warn("Loading Root Module IRIS, Widgets")
local Root_MODULE_INSTANCE = MakeModule("https://raw.githubusercontent.com/t10underscorekol/JustAutoLoads/refs/heads/main/Widgets/Root.lua","Root",widgets_MODULE_INSTANCE)
warn("Loading Table Module IRIS, Widgets")
local Table_MODULE_INSTANCE = MakeModule("https://raw.githubusercontent.com/t10underscorekol/JustAutoLoads/refs/heads/main/Widgets/Table.lua","Table",widgets_MODULE_INSTANCE)
warn("Loading Text Module IRIS, Widgets")
local Text_MODULE_INSTANCE = MakeModule("https://raw.githubusercontent.com/t10underscorekol/JustAutoLoads/refs/heads/main/Widgets/Text.lua","Text",widgets_MODULE_INSTANCE)
warn("Loading Tree Module IRIS, Widgets")
local Tree_MODULE_INSTANCE = MakeModule("https://raw.githubusercontent.com/t10underscorekol/JustAutoLoads/refs/heads/main/Widgets/Tree.lua","Tree",widgets_MODULE_INSTANCE)
warn("Loading Window Module IRIS, Widgets")
local Window_MODULE_INSTANCE = MakeModule("https://raw.githubusercontent.com/t10underscorekol/JustAutoLoads/refs/heads/main/Widgets/Window.lua","Window",widgets_MODULE_INSTANCE)
warn("Loading complete")
return IRIS_MAIN_MODULE_INSTANCE
