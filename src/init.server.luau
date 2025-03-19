if not plugin then
	return
end

local Framework = require("../roblox_packages/framework")
local Modules = script.modules
local Plugin = script.plugin

Framework.Add({ Modules, Plugin })
Framework.Start()
