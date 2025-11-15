-- Button.lua
local Button = {}

function Button:Create(parent, name, callback)
    local Btn = Instance.new("TextButton")
    Btn.Size = UDim2.new(1, -10, 0, 30)
    Btn.BackgroundColor3 = Color3.fromRGB(80, 0, 0)
    Btn.Text = name
    Btn.TextColor3 = Color3.new(1,1,1)
    Btn.Parent = parent

    Btn.MouseButton1Click:Connect(function()
        callback()
    end)
end

return Button
