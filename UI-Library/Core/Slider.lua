-- Slider.lua
local Slider = {}

function Slider:Create(parent, name, min, max, callback)
    local Label = Instance.new("TextLabel")
    Label.Size = UDim2.new(1, -10, 0, 25)
    Label.Text = name..": "..min
    Label.BackgroundTransparency = 1
    Label.TextColor3 = Color3.new(1,1,1)
    Label.Parent = parent

    local Bar = Instance.new("TextButton")
    Bar.Size = UDim2.new(1, -10, 0, 25)
    Bar.Text = "Drag"
    Bar.BackgroundColor3 = Color3.fromRGB(120, 0, 0)
    Bar.TextColor3 = Color3.new(1,1,1)
    Bar.Parent = parent

    local UIS = game:GetService("UserInputService")

    Bar.MouseButton1Down:Connect(function()
        local conn
        conn = UIS.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement then
                local percent = math.clamp((input.Position.X - Bar.AbsolutePosition.X) / Bar.AbsoluteSize.X, 0, 1)
                local value = math.floor(min + (max - min) * percent)
                Label.Text = name..": "..value
                callback(value)
            end
        end)
        UIS.InputEnded:Connect(function(key)
            if key.UserInputType == Enum.UserInputType.MouseButton1 then
                conn:Disconnect()
            end
        end)
    end)
end

return Slider
