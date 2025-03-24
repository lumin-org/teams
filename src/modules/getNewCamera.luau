-- Variables
local Camera = workspace.CurrentCamera

return function(part: BasePart)
    Camera.Focus = CFrame.new(part.Position)
    return CFrame.new(part.Position + (vector.create(0, 10, 15) :: any), part.Position)
end