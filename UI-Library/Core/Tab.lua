-- Tab.lua
local Tab = {}

function Tab:Create(parent, name)
    local Button = Instance.new("TextButton")
    Button.Size = UDim2.new(0, 100, 0, 25)
    Button.BackgroundColor3 = Color3.fromRGB(50, 0, 0)
    Button.Text = name
    Button.TextColor3 = Color3.new(1,1,1)
    Button.Parent = parent

    return Button
end

return Tab
