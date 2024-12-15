	warn("Loading MAIN Module IRIS")
	local IRIS_MAIN_MODULE_INSTANCE = Instance.new("ModuleScript",workspace)
	IRIS_MAIN_MODULE_INSTANCE.Name="Iris_SPECIAL_LOAD"
	IRIS_MAIN_MODULE_INSTANCE.Source=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/init.lua")
	warn("Loading API Module IRIS")
	local API_MODULE_INSTANCE = Instance.new("ModuleScript",IRIS_MAIN_MODULE_INSTANCE)
	API_MODULE_INSTANCE.Name="API"
	API_MODULE_INSTANCE.Source=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/API.lua")
	warn("Loading Internal Module IRIS")
	local Internal_MODULE_INSTANCE = Instance.new("ModuleScript",IRIS_MAIN_MODULE_INSTANCE)
	Internal_MODULE_INSTANCE.Name="Internal"
	Internal_MODULE_INSTANCE.Source=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/Internal.lua")
	warn("Loading Types Module IRIS")
	local Types_MODULE_INSTANCE = Instance.new("ModuleScript",IRIS_MAIN_MODULE_INSTANCE)
	Types_MODULE_INSTANCE.Name="Types"
	Types_MODULE_INSTANCE.Source=game:HttpGet("https://raw.githubusercontent.com/t10underscorekol/JustAutoLoads/refs/heads/main/Types.lua")
	warn("Loading config Module IRIS")
	local config_MODULE_INSTANCE = Instance.new("ModuleScript",IRIS_MAIN_MODULE_INSTANCE)
	config_MODULE_INSTANCE.Name="config"
	config_MODULE_INSTANCE.Source=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/config.lua")
	warn("Loading demoWindow Module IRIS")
	local demoWindow_MODULE_INSTANCE = Instance.new("ModuleScript",IRIS_MAIN_MODULE_INSTANCE)
	demoWindow_MODULE_INSTANCE.Name="demoWindow"
	demoWindow_MODULE_INSTANCE.Source=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/demoWindow.lua")
	warn("Loading Widgets Module IRIS")
	local widgets_MODULE_INSTANCE = Instance.new("ModuleScript",IRIS_MAIN_MODULE_INSTANCE)
	widgets_MODULE_INSTANCE.Name="widgets"
	widgets_MODULE_INSTANCE.Source=game:HttpGet("https://raw.githubusercontent.com/t10underscorekol/JustAutoLoads/refs/heads/main/widgetsmain.lua")
	warn("Loading Button Module IRIS, Widgets")
	local Button_MODULE_INSTANCE = Instance.new("ModuleScript",widgets_MODULE_INSTANCE)
	Button_MODULE_INSTANCE.Name="Button"
	Button_MODULE_INSTANCE.Source=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/widgets/Button.lua")
	warn("Loading CheckBox Module IRIS, Widgets")
	local Checkbox_MODULE_INSTANCE = Instance.new("ModuleScript",widgets_MODULE_INSTANCE)
	Checkbox_MODULE_INSTANCE.Name="Checkbox"
	Checkbox_MODULE_INSTANCE.Source=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/widgets/Checkbox.lua")
	warn("Loading Combo Module IRIS, Widgets")
	local Combo_MODULE_INSTANCE = Instance.new("ModuleScript",widgets_MODULE_INSTANCE)
	Combo_MODULE_INSTANCE.Name="Combo"
	Combo_MODULE_INSTANCE.Source=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/widgets/Combo.lua")
	warn("Loading Format Module IRIS, Widgets")
	local Format_MODULE_INSTANCE = Instance.new("ModuleScript",widgets_MODULE_INSTANCE)
	Format_MODULE_INSTANCE.Name="Format"
	Format_MODULE_INSTANCE.Source=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/widgets/Format.lua")
	warn("Loading Image Module IRIS, Widgets")
	local Image_MODULE_INSTANCE = Instance.new("ModuleScript",widgets_MODULE_INSTANCE)
	Image_MODULE_INSTANCE.Name="Image"
	Image_MODULE_INSTANCE.Source=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/widgets/Image.lua")
	warn("Loading Input Module IRIS, Widgets")
	local Input_MODULE_INSTANCE = Instance.new("ModuleScript",widgets_MODULE_INSTANCE)
	Input_MODULE_INSTANCE.Name="Input"
	Input_MODULE_INSTANCE.Source=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/widgets/Input.lua")
	warn("Loading Menu Module IRIS, Widgets")
	local Menu_MODULE_INSTANCE = Instance.new("ModuleScript",widgets_MODULE_INSTANCE)
	Menu_MODULE_INSTANCE.Name="Menu"
	Menu_MODULE_INSTANCE.Source=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/widgets/Menu.lua")
	warn("Loading Plot Module IRIS, Widgets")
	local Plot_MODULE_INSTANCE = Instance.new("ModuleScript",widgets_MODULE_INSTANCE)
	Plot_MODULE_INSTANCE.Name="Plot"
	Plot_MODULE_INSTANCE.Source=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/widgets/Plot.lua")
	warn("Loading RadioButton Module IRIS, Widgets")
	local RadioButton_MODULE_INSTANCE = Instance.new("ModuleScript",widgets_MODULE_INSTANCE)
	RadioButton_MODULE_INSTANCE.Name="RadioButton"
	RadioButton_MODULE_INSTANCE.Source=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/widgets/RadioButton.lua")
	warn("Loading Root Module IRIS, Widgets")
	local Root_MODULE_INSTANCE = Instance.new("ModuleScript",widgets_MODULE_INSTANCE)
	Root_MODULE_INSTANCE.Name="Root"
	Root_MODULE_INSTANCE.Source=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/widgets/Root.lua")
	warn("Loading Table Module IRIS, Widgets")
	local Table_MODULE_INSTANCE = Instance.new("ModuleScript",widgets_MODULE_INSTANCE)
	Table_MODULE_INSTANCE.Name="Table"
	Table_MODULE_INSTANCE.Source=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/widgets/Table.lua")
	warn("Loading Text Module IRIS, Widgets")
	local Text_MODULE_INSTANCE = Instance.new("ModuleScript",widgets_MODULE_INSTANCE)
	Text_MODULE_INSTANCE.Name="Text"
	Text_MODULE_INSTANCE.Source=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/widgets/Text.lua")
	warn("Loading Tree Module IRIS, Widgets")
	local Tree_MODULE_INSTANCE = Instance.new("ModuleScript",widgets_MODULE_INSTANCE)
	Tree_MODULE_INSTANCE.Name="Tree"
	Tree_MODULE_INSTANCE.Source=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/widgets/Tree.lua")
	warn("Loading Window Module IRIS, Widgets")
	local Window_MODULE_INSTANCE = Instance.new("ModuleScript",widgets_MODULE_INSTANCE)
	Window_MODULE_INSTANCE.Name="Window"
	Window_MODULE_INSTANCE.Source=game:HttpGet("https://raw.githubusercontent.com/SirMallard/Iris/refs/heads/main/lib/widgets/Window.lua")
	IRIS_MAIN_MODULE_INSTANCE.Parent = game.Players
	return IRIS_MAIN_MODULE_INSTANCE
