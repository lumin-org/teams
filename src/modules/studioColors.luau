-- Variables
local StudioSettings = settings().Studio
local Theme = StudioSettings.Theme
local Color = Enum.StudioStyleGuideColor

local StudioColors = {
    MainBackground = Theme:GetColor(Color.MainBackground),
	ScrollBar = Theme:GetColor(Color.ScrollBar),
	ScrollBarBackground = Theme:GetColor(Color.ScrollBarBackground),
	Button = Theme:GetColor(Color.Button),
	MainButton = Theme:GetColor(Color.MainButton),
	ButtonText = Theme:GetColor(Color.ButtonText),
	ButtonBorder = Theme:GetColor(Color.ButtonBorder),
	InputFieldBackground = Theme:GetColor(Color.InputFieldBackground),
	InputFieldBorder = Theme:GetColor(Color.InputFieldBorder),
	Border = Theme:GetColor(Color.Border),
	MainText = Theme:GetColor(Color.MainText),
	SubText = Theme:GetColor(Color.SubText),
	TitlebarText = Theme:GetColor(Color.TitlebarText),
	LinkText = Theme:GetColor(Color.LinkText),
	WarningText = Theme:GetColor(Color.WarningText),
	ErrorText = Theme:GetColor(Color.ErrorText),
	Separator = Theme:GetColor(Color.Separator),
	CheckedFieldBackground = Theme:GetColor(Color.CheckedFieldBackground),
	CheckedFieldBorder = Theme:GetColor(Color.CheckedFieldBorder),
	CheckedFieldIndicator = Theme:GetColor(Color.CheckedFieldIndicator),
}

return StudioColors
