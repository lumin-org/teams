-- Variables
local Plugin = script:FindFirstAncestorOfClass("Plugin")
local WidgetInfo = DockWidgetPluginGuiInfo.new(
    Enum.InitialDockState.Left,
    false,
    false,
    320,
    400,
    300,
    200
)

-- Shared plugin suite toolbar
if not _G.__LuminToolbar then
	_G.__LuminToolbar = Plugin:CreateToolbar("Lumin Suite")
end

local Toolbar: PluginToolbar = _G.__LuminToolbar
local Button: PluginToolbarButton = Toolbar:CreateButton("Teams", "Open Lumin Teams", "")
local Widget: DockWidgetPluginGui = Plugin:CreateDockWidgetPluginGui("LuminSuiteTeams", WidgetInfo)

Widget.Title = "Teams"
Button.Click:Connect(function()
    Widget.Enabled = not Widget.Enabled
end)

-- Module
return Widget