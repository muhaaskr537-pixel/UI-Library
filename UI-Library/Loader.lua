local Library = {}

local base = "https://raw.githubusercontent.com/muhaaskr537-pixel/UI-Library/main/UI-Library/Core/"

local function get(name)
    return loadstring(game:HttpGet(base .. name .. ".lua"))()
end

Library.Window  = get("Window")
Library.Tab     = get("Tab")
Library.Section = get("Section")
Library.Button  = get("Button")
Library.Toggle  = get("Toggle")
Library.Slider  = get("Slider")
Library.Theme   = get("Theme")

return Library
