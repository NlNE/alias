
-- // Loading
loadstring(game:HttpGet("https://raw.githubusercontent.com/NlNE/alias/main/loading.lua"))()

-- // Library
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/insanedude59/SplixUiLib/main/Main"))()

-- // Main Window
local window = library:new({
    textsize = 13.5,
    font = Enum.Font.RobotoMono,
    name = ":                          Alias | Demo | build 0.0.5",
    color = Color3.fromRGB(240, 25, 143)
})

-- // Pages
local Aimbot = window:page({name = "Aimbot"})
local Visuals = window:page({name = "Visuals"})
local Executor = window:page({name = "Executor"})
local Misc = window:page({name = "Misc"})
local Settings = window:page({name = "Settings"})

-- // Aimbot Sections
local Aimbotsec1 = Aimbot:section({name = "Main Group", side = "left", size = 300})
local Aimbotsec2 = Aimbot:section({name = "Extra", side = "right", size = 300})

Aimbotsec1:toggle({name = "Enabled", def = false, callback = function(state)
    print("Aimbot Enabled:", state)
end})

Aimbotsec1:toggle({name = "triggerbot", def = false, callback = function(state)
    print("Triggerbot Enabled:", state)
end})

Aimbotsec1:toggle({name = "Prediction", def = false, callback = function(state)
    print("Aimbot Prediction:", state)
end})

Aimbotsec1:toggle({name = "Sticky Aim", def = false, callback = function(state)
    print("Sticky Aim:", state)
end})

Aimbotsec1:toggle({name = "Disable Outside FOV", def = false, callback = function(state)
    print("Disable Outside FOV:", state)
end})

Aimbotsec1:toggle({name = "Teamcheck", def = false, callback = function(state)
    print("Teamcheck:", state)
end})

Aimbotsec1:toggle({name = "Knockcheck", def = false, callback = function(state)
    print("Knockcheck:", state)
end})

Aimbotsec2:dropdown({name = "Aimbot Type", def = "Mouse", options = {"Mouse", "Camera"}, callback = function(selection)
    print("Aimbot Type:", selection)
end})

Aimbotsec2:slider({name = "Smoothing", def = 0, min = 0, max = 100, callback = function(value)
    print("Smoothing:", value)
end})

Aimbotsec2:slider({name = "Sensitivity", def = 0.5, min = 0, max = 1, callback = function(value)
    print("Sensitivity:", value)
end})

Aimbotsec2:slider({name = "FOV", def = 100, min = 0, max = 100, callback = function(value)
    print("FOV:", value)
end})

Aimbotsec2:slider({name = "Deadzone", def = 0, min = 0, max = 100, callback = function(value)
    print("Deadzone:", value)
end})

Aimbotsec2:dropdown({name = "Prediction Type", def = "Default (Division)", options = {"Division", "Multiplication"}, callback = function(selection)
    print("Prediction Type:", selection)
    -- Add logic to display corresponding settings (Division or Multiplication)
end})

Aimbotsec2:slider({name = "X Offset", def = 0, min = -10, max = 10, callback = function(value)
    print("X Offset:", value)
end})

Aimbotsec2:slider({name = "Y Offset", def = 0, min = -10, max = 10, callback = function(value)
    print("Y Offset:", value)
end})

Aimbotsec1:toggle({name = "Shake", callback = function(selection)
    print("Prediction Type:", selection)
    -- Add logic to display corresponding settings (Division or Multiplication)
end})

Aimbotsec1:slider({name = "X Offset", def = 0, min = -10, max = 10, callback = function(value)
    print("X Offset:", value)
end})

Aimbotsec1:slider({name = "Y Offset", def = 0, min = -10, max = 10, callback = function(value)
    print("Y Offset:", value)
end})

-- // Visuals Sections
local Visualsec1 = Visuals:section({name = "Main Group", side = "left", size = 250})
local Visualsec2 = Visuals:section({name = "Modifiers", side = "right", size = 250})
local Visualsec3 = Visuals:section({name = "Team Mates", side = "right", size = 250})

Visualsec1:toggle({name = "Name", def = false, callback = function(state)
    print("ESP Name:", state)
end})

Visualsec1:toggle({name = "Box", def = false, callback = function(state)
    print("ESP Box:", state)
end})

Visualsec1:toggle({name = "Health Bar", def = false, callback = function(state)
    print("ESP Health Bar:", state)
end})

Visualsec1:toggle({name = "Health Value", def = false, callback = function(state)
    print("ESP Health Value:", state)
end})

Visualsec1:toggle({name = "Armor Bar (Da Hood)", def = false, callback = function(state)
    print("ESP Armor Bar:", state)
end})

Visualsec1:toggle({name = "Armor Value (Da Hood)", def = false, callback = function(state)
    print("ESP Armor Value:", state)
end})

Visualsec1:toggle({name = "Tracers", def = false, callback = function(state)
    print("ESP Tracers:", state)
end})

Visualsec1:toggle({name = "Snaplines", def = false, callback = function(state)
    print("ESP Snaplines:", state)
end})

Visualsec1:toggle({name = "Visualize Prediction", def = false, callback = function(state)
    print("Visualize Prediction:", state)
end})

Visualsec1:toggle({name = "Prediction Dot", def = false, callback = function(state)
    print("Prediction Dot:", state)
end})

Visualsec1:toggle({name = "Head Dot", def = false, callback = function(state)
    print("Head Dot:", state)
end})

Visualsec2:dropdown({name = "Tracer Flags", def = "Top", options = {"Top", "Bottom", "Left", "Right"}, callback = function(selection)
    print("Tracer Flags:", selection)
end})

Visualsec2:dropdown({name = "Dot Flags", def = "Always Shown", options = {"Always Shown", "Only on Enemy"}, callback = function(selection)
    print("Dot Flags:", selection)
end})

Visualsec2:dropdown({name = "Box Type", def = "3D", options = {"3D", "2D", "Corners"}, callback = function(selection)
    print("Box Type:", selection)
end})

Visualsec2:toggle({name = "Box Fill", def = false, callback = function(state)
    print("Box Fill:", state)
end})

-- // Executor Sections
local Executorsec1 = Executor:section({name = "Main", side = "left", size = 710})

Executorsec1:toggle({name = "Executor", def = false, callback = function(state)
    print("Executor:", state)
end})

Executorsec1:textbox({name = "Executor Code", def = "", placeholder = "Enter code here...", callback = function(text)
    print("Executor Code:", text)
    -- Execute the provided code
end})

Visualsec3:toggle({name = "Disable on team mates", def = false, callback = function(state)
    print("Head Dot:", state)
end})

Executorsec1:button({name = "Execute", callback = function()
    print("Execute button clicked")
    -- Add logic to execute the code
end})

-- // Misc Sections
local Miscsec1 = Misc:section({name = "Player", side = "left", size = 250})
local Miscsec2 = Misc:section({name = "Scripts", side = "right", size = 250})

Miscsec1:toggle({name = "Player Fly", def = false, callback = function(state)
    print("Player Fly:", state)
end})

Miscsec1:textbox({name = "Fly Speed", def = "1", placeholder = "Enter speed...", callback = function(text)
    print("Fly Speed:", text)
end})

Miscsec1:button({name = "Execute Fly", callback = function()
    print("Execute Fly button clicked")
    -- Add logic to execute fly with the specified speed
end})

Miscsec1:toggle({name = "Player Speed", def = false, callback = function(state)
    print("Player Speed:", state)
end})

Miscsec1:slider({name = "Player Speed Multiplier", def = 1, min = 1, max = 10, callback = function(value)
    print("Player Speed Multiplier:", value)
end})

Miscsec1:button({name = "Execute Speed", callback = function()
    print("Execute Speed button clicked")
    -- Add logic to execute speed with the specified multiplier
end})

Miscsec2:toggle({name = "Script Hub", def = false, callback = function(state)
    print("Script Hub:", state)
end})

Miscsec2:textbox({name = "Script URL", def = "", placeholder = "Enter script URL here...", callback = function(text)
    print("Script URL:", text)
end})

Miscsec2:button({name = "Load Script", callback = function()
    print("Load Script button clicked")
    -- Add logic to load the script from the URL
end})

-- // Settings Sections
local Settingssec1 = Settings:section({name = "Main", side = "left", size = 250})
local Settingssec2 = Settings:section({name = "UI", side = "right", size = 250})

Settingssec1:toggle({name = "Save Settings", def = false, callback = function(state)
    print("Save Settings:", state)
end})

Settingssec1:button({name = "Load Settings", callback = function()
    print("Load Settings button clicked")
    -- Add logic to load the settings
end})

Settingssec2:colorpicker({name = "UI Color", cpname = "ui_color", def = Color3.new(0.941, 0.098, 0.561), callback = function(color)
    print("UI Color:", color)
    window:setcolor(color)
end})

Settingssec2:slider({name = "Text Size", def = 13.5, min = 10, max = 20, callback = function(value)
    print("Text Size:", value)
    window:settextsize(value)
end})

Settingssec2:dropdown({name = "Font", def = "RobotoMono", options = {"RobotoMono", "Gotham", "SourceSans", "Arial"}, callback = function(font)
    print("Font:", font)
    window:setfont(Enum.Font[font])
end})

Settingssec1:keybind({name = "UI Keybind",def = nil,callback = function(key)
    window.key = key
 end})
