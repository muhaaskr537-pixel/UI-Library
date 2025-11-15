local Library = {}

function Library:CreateWindow(title)
    return require(script.Core.Window).new(title)
end

return Library
