-- Variable
local Packages = script.Parent.Parent.Parent.Parent.roblox_packages
local Components = script.Parent.Parent.components

local Vide = require(Packages.vide)
local Component = require(Components.collaboratorCard)
local UILabs = require(Packages.ui_labs)

local Controls = {
	Status = UILabs.Choose({
		"EditingScript",
		"EditingWorkspace",
		"Inactive",
		"NotInstalled",
	}),
}

-- Story
return UILabs.CreateVideStory({
	vide = Vide,
	controls = Controls,
}, function(props)
	return Component({
	    UserId = 1,
		Name = "OnlyTwentyCharacters",
		Status = props.controls.Status,
	}) :: any
end)
