-- Variables
local Vide = require("../../roblox_packages/vide")
local Theme = require(script.Parent.modules.theme)
local Widget = require(script.Parent.modules.widget)

-- Components
local App = require("./components/app")

-- Provider
local function Start()
	local Rendered = App({ Parent = Widget, Theme = Theme })
end

-- Modules
return {
	Start = Start,
}
