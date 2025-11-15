-- Loader.lua
-- Connects all modules together and returns library

local Library = {}
local Core = script:WaitForChild("Core")

Library.Window = require(Core:WaitForChild("Window"))
Library.Tab = require(Core:WaitForChild("Tab"))
Library.Section = require(Core:WaitForChild("Section"))
Library.Button = require(Core:WaitForChild("Button"))
Library.Toggle = require(Core:WaitForChild("Toggle"))
Library.Slider = require(Core:WaitForChild("Slider"))
Library.Theme = require(Core:WaitForChild("Theme"))

return Library
