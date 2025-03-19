if not plugin then
	return
end

local Framework = require("../roblox_packages/framework")
local Plugin = script.plugin

Framework.Add({ Plugin })
Framework.Start()
