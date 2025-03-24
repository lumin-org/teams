if not plugin or not game:GetService("Players").LocalPlayer then
	return
end

local Packages = script.Parent.roblox_packages
local Framework = require(Packages.framework)

Framework.Add({ script :: any })
Framework.Start()
