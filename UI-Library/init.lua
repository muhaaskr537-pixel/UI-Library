local Library = {}
local Loader = loadstring(game:HttpGet("https://raw.githubusercontent.com/muhaaskr537-pixel/UI-Library/main/UI-Library/Loader.lua"))()

function Library:CreateWindow(title, theme)
    return Loader.Window.new(title, theme)
end

return Library
