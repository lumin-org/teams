-- Variables
local Vide = require("../../../roblox_packages/vide")
local create = Vide.create

return function(props: {
	Parent: Instance,
})
	return create "ScreenGui" {
		Parent = props.Parent,
	}
end
