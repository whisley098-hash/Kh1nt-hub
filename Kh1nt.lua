
-- KH1NT HUB - Starter UI
-- Buttons are visual placeholders.

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local gui = Instance.new("ScreenGui")
gui.Name = "KH1NTHub"
gui.ResetOnSpawn = false
gui.Parent = playerGui

local panel = Instance.new("Frame")
panel.Size = UDim2.new(0, 280, 0, 300)
panel.Position = UDim2.new(0.5, -140, 0.5, -150)
panel.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
panel.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = panel

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(255, 30, 55)
stroke.Thickness = 2
stroke.Parent = panel

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 50)
title.BackgroundTransparency = 1
title.Text = "KH1NT HUB"
title.TextColor3 = Color3.fromRGB(255, 35, 55)
title.TextSize = 24
title.Font = Enum.Font.GothamBold
title.Parent = panel

local options = {
    "Eggs ESP",
    "Player ESP",
    "Auto Farm",
    "Auto Steal",
    "Anti-Guard"
}

for i, name in ipairs(options) do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -24, 0, 36)
    button.Position = UDim2.new(0, 12, 0, 55 + (i - 1) * 44)
    button.BackgroundColor3 = Color3.fromRGB(85, 20, 32)
    button.TextColor3 = Color3.new(1, 1, 1)
    button.Text = name .. " (UI only)"
    button.TextSize = 13
    button.Font = Enum.Font.GothamBold
    button.Parent = panel

    local buttonCorner = Instance.new("UICorner")
    buttonCorner.CornerRadius = UDim.new(0, 7)
    buttonCorner.Parent = button
end
