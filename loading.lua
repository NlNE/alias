-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")

-- Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageLabel.Parent = ScreenGui
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)  -- Centered position
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)  -- Center the anchor point
ImageLabel.Size = UDim2.new(0, 100, 0, 100)  -- Size in pixels
ImageLabel.Image = "http://www.roblox.com/asset/?id=18741670709"

-- Scripts:

local function HMVMP_fake_script() -- ImageLabel.Script 
    local script = Instance.new('Script', ImageLabel)

    local logo = script.Parent
    local Lighting = game:GetService("Lighting")
    local blur = Lighting:FindFirstChild("Blur")
    
    if not blur then
        blur = Instance.new("BlurEffect")
        blur.Name = "Blur"
        blur.Parent = Lighting
    end
    
    task.wait(5)
    
    -- Gradually reduce blur size and increase logo transparency
    local blurSizes = {15, 14, 12, 10, 9, 7, 6, 5, 2, 0}
    local transparencyValues = {0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1}
    
    for i = 1, #blurSizes do
        blur.Size = blurSizes[i]
        logo.ImageTransparency = transparencyValues[i]
        task.wait(0.1)
    end
    
    logo.Visible = false
    
end
coroutine.wrap(HMVMP_fake_script)()
