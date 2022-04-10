-- Gui to Lua
-- Version: 3.2

-- Instances:

local CoordinateGui = Instance.new("ScreenGui")
local coordgui = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local UICorner = Instance.new("UICorner")
local grab = Instance.new("TextButton")
local copy = Instance.new("TextButton")
local title = Instance.new("TextLabel")
local credit = Instance.new("TextLabel")
local cords = Instance.new("TextLabel")

--Properties:

CoordinateGui.Name = "CoordinateGui"
CoordinateGui.Parent = game.CoreGui
CoordinateGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

coordgui.Name = "coordgui"
coordgui.Parent = CoordinateGui
coordgui.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
coordgui.BorderColor3 = Color3.fromRGB(27, 42, 53)
coordgui.BorderSizePixel = 0
coordgui.Position = UDim2.new(0.0138803348, 0, 0.731901824, 0)
coordgui.Size = UDim2.new(0, 312, 0, 160)
coordgui.Draggable = true
coordgui.Active = true

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(57, 104, 252)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(51, 68, 175))}
UIGradient.Parent = coordgui

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = coordgui

grab.Name = "grab"
grab.Parent = coordgui
grab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
grab.BackgroundTransparency = 1.000
grab.BorderSizePixel = 0
grab.Position = UDim2.new(0.0448717996, 0, 0.612500012, 0)
grab.Size = UDim2.new(0, 126, 0, 30)
grab.Font = Enum.Font.Gotham
grab.Text = "Grab Coordinates"
grab.TextColor3 = Color3.fromRGB(255, 255, 255)
grab.TextSize = 14.000

copy.Name = "copy"
copy.Parent = coordgui
copy.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
copy.BackgroundTransparency = 1.000
copy.BorderSizePixel = 0
copy.Position = UDim2.new(0.528846264, 0, 0.612500012, 0)
copy.Size = UDim2.new(0, 134, 0, 30)
copy.Font = Enum.Font.Gotham
copy.Text = "Copy Coordinates"
copy.TextColor3 = Color3.fromRGB(255, 255, 255)
copy.TextSize = 14.000

title.Name = "title"
title.Parent = coordgui
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.BorderSizePixel = 0
title.Size = UDim2.new(0, 312, 0, 37)
title.Font = Enum.Font.Gotham
title.Text = "Coordinate Grabber Gui"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 14.000

credit.Name = "credit"
credit.Parent = coordgui
credit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
credit.BackgroundTransparency = 1.000
credit.BorderSizePixel = 0
credit.Position = UDim2.new(0, 0, 0.800000012, 0)
credit.Size = UDim2.new(0, 312, 0, 32)
credit.Font = Enum.Font.Gotham
credit.Text = "Mady by lanc#0001"
credit.TextColor3 = Color3.fromRGB(255, 255, 255)
credit.TextSize = 14.000

cords.Name = "cords"
cords.Parent = coordgui
cords.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
cords.BackgroundTransparency = 1.000
cords.BorderSizePixel = 0
cords.Position = UDim2.new(0, 0, 0.231250003, 0)
cords.Size = UDim2.new(0, 312, 0, 61)
cords.Font = Enum.Font.Gotham
cords.Text = ""
cords.TextColor3 = Color3.fromRGB(255, 255, 255)
cords.TextSize = 14.000
cords.TextWrapped = true


-- Scripts:

game:GetService("UserInputService").InputBegan:connect(onKeyPress)

grab.MouseButton1Down:Connect(function()
	cords.Text = tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
	wait(0.25)
	print(''..tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position))
end)

copy.MouseButton1Down:Connect(function()
	setclipboard(""..cords.Text)
end)