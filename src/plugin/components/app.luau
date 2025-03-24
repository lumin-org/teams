-- Variables
local Packages = script.Parent.Parent.Parent.Parent.roblox_packages
local Modules = script.Parent.Parent.Parent.modules

local Vide = require(Packages.vide)
local StudioColors = require(Modules.studioColors)
local create = Vide.create
local source = Vide.source
local indexes = Vide.indexes

local AppPadding = UDim.new(0, 12)

-- Components
local CollaboratorCard = require("./collaboratorCard")

-- Component
return function(props: {
	Parent: Instance?,
	Collaborators: Vide.Source<{ Player }>
})
	return create "ScrollingFrame" {
		Parent = props.Parent,
		Size = UDim2.fromScale(1, 1),
		BackgroundColor3 = StudioColors.MainBackground,
		ScrollBarThickness = 0,

		indexes(props.Collaborators, function(player, index)
		    local CollaboratorStatus = source("Inactive")
			return CollaboratorCard({
			    UserId = player().UserId,
	            Name = player().Name,
	            Status = CollaboratorStatus,
			} :: any)
		end),

		create "UIPadding" {
		    PaddingLeft = AppPadding,
			PaddingRight = AppPadding,
			PaddingTop = AppPadding,
			PaddingBottom = AppPadding,
		},

		create "UIListLayout" {
		    Padding = UDim.new(0, 14)
		},
	}
end
