-- Variables
local Vide = require("../../../roblox_packages/vide")
local Colors = require("../../../roblox_packages/colors")
local create = Vide.create

return function(props: {
	Theme: Vide.Source<string>,
})
	return create "Frame" {
	   Size = UDim2.fromOffset(600, 600),
       Color = Colors.fuchsia["500"],
	}
end
