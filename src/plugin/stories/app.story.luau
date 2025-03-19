-- Variable
local Vide = require("../../../roblox_packages/vide")
local Component = require("../components/app")

local UILabs = require("../../../roblox_packages/ui_labs")
local Controls = {
    Theme = UILabs.String("Dark")
}

-- Story
return UILabs.CreateVideStory({
    vide = Vide,
    controls = Controls,
}, Component :: any)
