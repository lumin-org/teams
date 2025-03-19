-- Variables
local Vide = require("../../roblox_packages/vide")
local Theme = require("../modules/theme")
local Widget = require("../modules/widget")

-- Components
local App = require("./components/app")

-- Provider
local function Start()
	local Rendered = App({ Parent = Widget })
end

-- Modules
return {
	Start = Start,
}
