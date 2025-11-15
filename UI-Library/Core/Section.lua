-- Section.lua
local Section = {}

function Section:Create(parent, name)
    local Label = Instance.new("TextLabel")
    Label.Size = UDim2.new(1, -10, 0, 25)
    Label.Text = name
    Label.BackgroundColor3 = Color3.fromRGB(40,40,40)
    Label.TextColor3 = Color3.new(1,1,1)
    Label.Parent = parent
end

return Section
