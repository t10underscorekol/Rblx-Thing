local IRIS_MAIN_MODULE_INSTANCE = Instance.new("ModuleScript")
IRIS_MAIN_MODULE_INSTANCE.Name="Iris_SPECIAL_LOAD"
IRIS_MAIN_MODULE_INSTANCE.LinkedSource=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/init.lua")

local API_MODULE_INSTANCE = Instance.new("ModuleScript",IRIS_MAIN_MODULE_INSTANCE)
API_MODULE_INSTANCE.Name="API"
API_MODULE_INSTANCE.LinkedSource=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/API.lua")

local Internal_MODULE_INSTANCE = Instance.new("ModuleScript",IRIS_MAIN_MODULE_INSTANCE)
Internal_MODULE_INSTANCE.Name="Internal"
Internal_MODULE_INSTANCE.LinkedSource=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/Internal.lua")

local Types_MODULE_INSTANCE = Instance.new("ModuleScript",IRIS_MAIN_MODULE_INSTANCE)
Types_MODULE_INSTANCE.Name="Types"
Types_MODULE_INSTANCE.LinkedSource=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/Types.lua")

local config_MODULE_INSTANCE = Instance.new("ModuleScript",IRIS_MAIN_MODULE_INSTANCE)
config_MODULE_INSTANCE.Name="config"
config_MODULE_INSTANCE.LinkedSource=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/config.lua")

local demoWindow_MODULE_INSTANCE = Instance.new("ModuleScript",IRIS_MAIN_MODULE_INSTANCE)
demoWindow_MODULE_INSTANCE.Name="demoWindow"
demoWindow_MODULE_INSTANCE.LinkedSource=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/demoWindow.lua")

local widgets_MODULE_INSTANCE = Instance.new("ModuleScript",IRIS_MAIN_MODULE_INSTANCE)
widgets_MODULE_INSTANCE.Name="widgets"
widgets_MODULE_INSTANCE.LinkedSource=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/widgets/init.lua")

local Button_MODULE_INSTANCE = Instance.new("ModuleScript",widgets_MODULE_INSTANCE)
Button_MODULE_INSTANCE.Name="Button"
Button_MODULE_INSTANCE.LinkedSource=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/widgets/Button.lua")

local Checkbox_MODULE_INSTANCE = Instance.new("ModuleScript",widgets_MODULE_INSTANCE)
Checkbox_MODULE_INSTANCE.Name="Checkbox"
Checkbox_MODULE_INSTANCE.LinkedSource=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/widgets/Checkbox.lua")

local Combo_MODULE_INSTANCE = Instance.new("ModuleScript",widgets_MODULE_INSTANCE)
Combo_MODULE_INSTANCE.Name="Combo"
Combo_MODULE_INSTANCE.LinkedSource=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/widgets/Combo.lua")

local Format_MODULE_INSTANCE = Instance.new("ModuleScript",widgets_MODULE_INSTANCE)
Format_MODULE_INSTANCE.Name="Format"
Format_MODULE_INSTANCE.LinkedSource=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/widgets/Format.lua")

local Image_MODULE_INSTANCE = Instance.new("ModuleScript",widgets_MODULE_INSTANCE)
Image_MODULE_INSTANCE.Name="Image"
Image_MODULE_INSTANCE.LinkedSource=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/widgets/Image.lua")

local Input_MODULE_INSTANCE = Instance.new("ModuleScript",widgets_MODULE_INSTANCE)
Input_MODULE_INSTANCE.Name="Input"
Input_MODULE_INSTANCE.LinkedSource=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/widgets/Input.lua")

local Menu_MODULE_INSTANCE = Instance.new("ModuleScript",widgets_MODULE_INSTANCE)
Menu_MODULE_INSTANCE.Name="Menu"
Menu_MODULE_INSTANCE.LinkedSource=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/widgets/Menu.lua")

local Plot_MODULE_INSTANCE = Instance.new("ModuleScript",widgets_MODULE_INSTANCE)
Plot_MODULE_INSTANCE.Name="Plot"
Plot_MODULE_INSTANCE.LinkedSource=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/widgets/Plot.lua")

local RadioButton_MODULE_INSTANCE = Instance.new("ModuleScript",widgets_MODULE_INSTANCE)
RadioButton_MODULE_INSTANCE.Name="RadioButton"
RadioButton_MODULE_INSTANCE.LinkedSource=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/widgets/RadioButton.lua")

local Root_MODULE_INSTANCE = Instance.new("ModuleScript",widgets_MODULE_INSTANCE)
Root_MODULE_INSTANCE.Name="Root"
Root_MODULE_INSTANCE.LinkedSource=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/widgets/Root.lua")

local Table_MODULE_INSTANCE = Instance.new("ModuleScript",widgets_MODULE_INSTANCE)
Table_MODULE_INSTANCE.Name="Table"
Table_MODULE_INSTANCE.LinkedSource=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/widgets/Table.lua")

local Text_MODULE_INSTANCE = Instance.new("ModuleScript",widgets_MODULE_INSTANCE)
Text_MODULE_INSTANCE.Name="Text"
Text_MODULE_INSTANCE.LinkedSource=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/widgets/Text.lua")

local Tree_MODULE_INSTANCE = Instance.new("ModuleScript",widgets_MODULE_INSTANCE)
Tree_MODULE_INSTANCE.Name="Tree"
Tree_MODULE_INSTANCE.LinkedSource=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/widgets/Tree.lua")

local Window_MODULE_INSTANCE = Instance.new("ModuleScript",widgets_MODULE_INSTANCE)
Window_MODULE_INSTANCE.Name="Tree"
Window_MODULE_INSTANCE.LinkedSource=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/widgets/Window.lua")
return IRIS_MAIN_MODULE_INSTANCE
