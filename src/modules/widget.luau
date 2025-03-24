-- Variables
local Packages = script.Parent.Parent.Parent.roblox_packages
local CreateToolbar = require(Packages.toolbar)

local Plugin = script:FindFirstAncestorOfClass("Plugin") :: Plugin
local WidgetInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Left, false, false, 400, 400, 250, 250)

-- Shared plugin suite toolbar
local Widget = Plugin:CreateDockWidgetPluginGui("LuminSuiteTeams", WidgetInfo)
Widget.Name = "LuminSuiteTeams"
Widget.Title = "Teams"

CreateToolbar(Plugin, {
	CombinerName = "LuminSuiteToolbar",
	ToolbarName = "Lumin Suite",
	ButtonName = "Teams",
	ButtonIcon = "",
	ButtonTooltip = "Manage your team with peace of mind",
	ClickedFn = function()
		Widget.Enabled = not Widget.Enabled
	end,
})

-- Module
return Widget
