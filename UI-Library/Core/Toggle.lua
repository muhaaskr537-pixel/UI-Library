-- Toggle.lua
local Toggle = {}

function Toggle:Create(parent, name, callback)
    local Btn = Instance.new("TextButton")
    Btn.Size = UDim2.new(1, -10, 0, 30)
    Btn.BackgroundColor3 = Color3.fromRGB(60, 0, 0)
    Btn.TextColor3 = Color3.new(1,1,1)
    Btn.Text = name.." : OFF"
    Btn.Parent = parent

    local state = false
    Btn.MouseButton1Click:Connect(function()
        state = not state
        Btn.Text = name.." : "..(state and "ON" or "OFF")
        callback(state)
    end)
end

return Toggle
