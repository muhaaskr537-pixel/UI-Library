-- Window.lua
local Theme = require(script.Parent.Theme)
local Window = {}

function Window:Create(title)
    local PlayerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = PlayerGui
    ScreenGui.ResetOnSpawn = false

    local Main = Instance.new("Frame")
    Main.Size = UDim2.new(0, 420, 0, 330)
    Main.Position = UDim2.new(0.5, -210, 0.5, -165)
    Main.BackgroundColor3 = Theme.Background
    Main.Parent = ScreenGui

    local Title = Instance.new("TextLabel")
    Title.Size = UDim2.new(1, 0, 0, 30)
    Title.BackgroundColor3 = Theme.Accent
    Title.Text = title
    Title.TextColor3 = Theme.Text
    Title.Parent = Main

    Instance.new("UICorner", Main).CornerRadius = Theme.Corner

    -- Dragging
    local dragging = false
    local dragPos
    Title.InputBegan:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragPos = i.Position
        end
    end)
    game:GetService("UserInputService").InputChanged:Connect(function(i)
        if dragging and i.UserInputType == Enum.UserInputType.MouseMovement then
            local diff = i.Position - dragPos
            Main.Position = UDim2.new(Main.Position.X.Scale, Main.Position.X.Offset + diff.X, Main.Position.Y.Scale, Main.Position.Y.Offset + diff.Y)
            dragPos = i.Position
        end
    end)
    game:GetService("UserInputService").InputEnded:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end
    end)

    return Main
end

return Window
