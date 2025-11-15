local Library = {}
local Core = {}

Core.Window = loadstring(game:HttpGet("https://raw.githubusercontent.com/muhaaskr537-pixel/UI-Library/main/UI-Library/Core/Window.lua"))()
Core.Tab = loadstring(game:HttpGet("https://raw.githubusercontent.com/muhaaskr537-pixel/UI-Library/main/UI-Library/Core/Tab.lua"))()
Core.Section = loadstring(game:HttpGet("https://raw.githubusercontent.com/muhaaskr537-pixel/UI-Library/main/UI-Library/Core/Section.lua"))()
Core.Button = loadstring(game:HttpGet("https://raw.githubusercontent.com/muhaaskr537-pixel/UI-Library/main/UI-Library/Core/Button.lua"))()
Core.Toggle = loadstring(game:HttpGet("https://raw.githubusercontent.com/muhaaskr537-pixel/UI-Library/main/UI-Library/Core/Toggle.lua"))()
Core.Slider = loadstring(game:HttpGet("https://raw.githubusercontent.com/muhaaskr537-pixel/UI-Library/main/UI-Library/Core/Slider.lua"))()
Core.Theme = loadstring(game:HttpGet("https://raw.githubusercontent.com/muhaaskr537-pixel/UI-Library/main/UI-Library/Core/Theme.lua"))()

Library.Window = Core.Window
Library.Tab = Core.Tab
Library.Section = Core.Section
Library.Button = Core.Button
Library.Toggle = Core.Toggle
Library.Slider = Core.Slider
Library.Theme = Core.Theme

return Library
