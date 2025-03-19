-- Variables
local Vide = require("../../roblox_packages/vide")
local StudioSettings = settings().Studio
local Theme = Vide.source(StudioSettings.Theme.Name)

StudioSettings.ThemeChanged:Connect(function()
    -- Update the state when the theme changes
	Theme(StudioSettings.Theme.Name)
end)

-- Module
return Theme
