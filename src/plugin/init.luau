-- Variables
local Modules = script.Parent.modules
local Packages = script.Parent.Parent.roblox_packages
local Components = script.components

local PlayerService = game:GetService("Players")

local Vide = require(Packages.vide)
local Widget = require(Modules.widget)

local source = Vide.source
local root = Vide.root

-- Components
local App = require(Components.app)

-- Provider
local function Start()
    local Collaborators = source(PlayerService:GetPlayers())
    
    root(function()
        local Rendered = App({ Parent = Widget, Collaborators = Collaborators })
    end)
	
	local function UpdateCollaborators()
        Collaborators(PlayerService:GetPlayers())
	end

	PlayerService.PlayerAdded:Connect(UpdateCollaborators)
	PlayerService.PlayerRemoving:Connect(UpdateCollaborators)
end

-- Modules
return {
	Start = Start,
}
