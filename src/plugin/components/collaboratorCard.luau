-- Variables
local Packages = script.Parent.Parent.Parent.Parent.roblox_packages
local Modules = script.Parent.Parent.Parent.modules

local PlayerService = game:GetService("Players")
local StudioService = game:GetService("StudioService")

local Vide = require(Packages.vide)
local StudioColors = require(Modules.studioColors)
local create = Vide.create

local CardPadding = UDim.new(0, 16)

local UserId = StudioService:GetUserId()
local FormattedStatus = {
	EditingWorkspace = "Editing objects in %s",
	EditingScript = "Editing script in %s",
	Inactive = "Inactive since last edit",
	NotInstalled = "Collaborator does not have plugin installed",
}

-- Component
return function(props: {
	Name: string,
	UserId: number,
	Status: Vide.Source<string>,
})
    local IsSelf = UserId == props.UserId
	return create "Frame" {
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		Position = UDim2.fromScale(0.5, 0.5),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundColor3 = StudioColors.MainBackground,
		create "ImageLabel" {
			Size = UDim2.fromOffset(64, 64),
			BackgroundColor3 = StudioColors.Border,
			Image = `rbxthumb://type=AvatarBust&id={props.UserId}&w=150&h=150`,
			create "UICorner" {
				CornerRadius = UDim.new(1, 0),
			},
		},
		create "Frame" {
			Size = UDim2.fromScale(1, 0),
			BackgroundTransparency = 1,
			AutomaticSize = Enum.AutomaticSize.Y,
			create "TextLabel" {
				Text = function()
					if IsSelf then
					    return `{props.Name} <font color="#{StudioColors.SubText:ToHex()}"><font size="14">(you)</font></font>`
					else
					    return props.Name
					end
				end,
				BackgroundTransparency = 1,
				TextColor3 = StudioColors.MainText,
				TextXAlignment = Enum.TextXAlignment.Left,
				FontFace = Font.fromEnum(Enum.Font.SourceSansBold),
				TextSize = 24,
				RichText = true,
				Size = UDim2.new(1, 0, 0, 24),
			},
			create "TextLabel" {
				Text = function()
					if props.Status():find("Editing") then
						return FormattedStatus[props.Status()]:format("<b>workspace.Baseplate</b>")
					end
					return FormattedStatus[props.Status()]
				end,
				BackgroundTransparency = 1,
				TextColor3 = function()
					if props.Status() == "NotInstalled" then
						return StudioColors.ErrorText
					else
						return StudioColors.SubText
					end
				end,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextSize = 16,
				RichText = true,
				TextWrapped = true,
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.new(1, 0, 0, 16),
			},
			create "Frame" {
			    Visible = function()
					if IsSelf then
					    return false
					else
					    return true
					end
				end,
				Size = UDim2.new(1, 0, 0, 16),
				BackgroundTransparency = 1,
				create "TextButton" {
					LayoutOrder = 1,
					Text = "Kick",
					BackgroundTransparency = 1,
					TextColor3 = StudioColors.ErrorText,
					TextSize = 16,
					RichText = true,
					AutomaticSize = Enum.AutomaticSize.X,
					Size = UDim2.fromOffset(0, 16),
					Activated = function()
						local PlayerToKick = PlayerService:FindFirstChild(props.Name)
						if PlayerToKick then
							PlayerToKick:Kick()
						end
					end,
				},
				create "TextLabel" {
					LayoutOrder = 2,
					Size = UDim2.fromOffset(0, 16),
					BackgroundTransparency = 1,
					TextSize = 16,
					Text = "•",
					TextColor3 = StudioColors.SubText,
				},
				create "TextButton" {
					LayoutOrder = 3,
					Text = "Spectate",
					BackgroundTransparency = 1,
					TextColor3 = StudioColors.SubText,
					TextSize = 16,
					RichText = true,
					AutomaticSize = Enum.AutomaticSize.X,
					Size = UDim2.fromOffset(0, 16),
					Activated = function() end,
				},
				create "UIListLayout" {
					FillDirection = Enum.FillDirection.Horizontal,
					Padding = UDim.new(0, 8),
				},
			},
			create "UIListLayout" {
				FillDirection = Enum.FillDirection.Vertical,
				Padding = UDim.new(0, 4),
			},
		},

		create "UIPadding" {
			PaddingLeft = CardPadding,
			PaddingRight = CardPadding,
			PaddingTop = CardPadding,
			PaddingBottom = CardPadding,
		},
		create "UIStroke" {
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Color = StudioColors.Border,
			Thickness = 1,
		},
		create "UICorner" {
			CornerRadius = UDim.new(0, 12),
		},
		create "UIListLayout" {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, 12),
		},
	}
end
