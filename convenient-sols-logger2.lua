-- Auto Boost - Spider Field (OVERNIGHT SAFE - Tokens + Fast Tool Swing)
-- • Tokens only (workspace "C" inside field)
-- • Auto toolClick every 0.015s (fast honey boost, safer overnight)
-- • Auto respawn + return to field on death
-- • Insert key = toggle on/off (easy AFK control)
-- • Uptime log every 10 mins in console
-- • Lag optimized: token cache 0.2s, stats 0.6s
-- • Extra crash protection (pcall everywhere)

local Players = game:GetService("Players")
local RS = game:GetService("ReplicatedStorage")
local WS = workspace
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local LP = Players.LocalPlayer
local PlayerGui = LP:WaitForChild("PlayerGui")

-- Kill old UI
for _, gui in ipairs(PlayerGui:GetChildren()) do
    if gui.Name == "BoostUI" then gui:Destroy() end
end

getgenv().AutoBoostEnabled = false
getgenv().StingerInterval   = 30
getgenv().ToolSwingDelay    = 0.015   -- fast but safer than 0.01

getgenv().StartHoney = 0
getgenv().StartTime  = 0
getgenv().CurrentHoney = 0

-- Remotes
local RF = RS:WaitForChild("remoteFunctions")
local PlayerActives = RF:WaitForChild("PlayerActivesCommand")
local ToolClickRemote = RF:WaitForChild("toolClick")

-- Field
local Fields = WS:WaitForChild("fields")
local SpiderField = Fields:WaitForChild("Spider Field")

local function formatNum(n)
    return tostring(math.floor(n)):reverse():gsub("(%d%d%d)","%1,"):reverse():gsub("^,","")
end

local function InFieldBounds(pos)
    local hx, hz = SpiderField.Size.X/2, SpiderField.Size.Z/2
    return math.abs(pos.X - SpiderField.Position.X) <= hx and
           math.abs(pos.Z - SpiderField.Position.Z) <= hz
end

local function UseStinger()
    pcall(function()
        for _ = 1, 3 do
            PlayerActives:InvokeServer({Name = "Stinger"})
        end
    end)
end

local function SwingTool()
    pcall(function()
        ToolClickRemote:InvokeServer()
    end)
end

local function GetHRP()
    local char = LP.Character
    return char and char:FindFirstChild("HumanoidRootPart")
end

local function TeleTo(pos)
    pcall(function()
        local hrp = GetHRP()
        if hrp then hrp.CFrame = CFrame.new(pos + Vector3.new(0, 6, 0)) end
    end)
end

local function WalkTo(pos)
    pcall(function()
        local char = LP.Character
        if char then
            local hum = char:FindFirstChild("Humanoid")
            if hum then hum:MoveTo(pos) end
        end
    end)
end

local function IsInField()
    local hrp = GetHRP()
    return hrp and InFieldBounds(hrp.Position)
end

local function RandomInField()
    local s = SpiderField.Size
    local c = SpiderField.Position
    local offset = Vector3.new(math.random(-20,20), 0, math.random(-20,20))  -- small jitter anti-AFK
    return c + Vector3.new(
        math.random(-s.X*0.5, s.X*0.5),
        6,
        math.random(-s.Z*0.5, s.Z*0.5)
    ) + offset
end

-- Token cache
local cachedTokenPos = nil
local lastTokenScan = 0

local function UpdateCachedToken()
    local now = tick()
    if now - lastTokenScan < 0.2 then return end
    lastTokenScan = now

    local hrp = GetHRP()
    if not hrp then 
        cachedTokenPos = nil
        return 
    end
    local pos = hrp.Position
    local closest, minDist = nil, math.huge

    for _, obj in ipairs(WS:GetChildren()) do
        if obj.Name == "C" and obj:IsA("Part") and obj:FindFirstChild("FrontDecal") and obj.Orientation.Z == 0 and InFieldBounds(obj.Position) then
            local dist = (pos - obj.Position).Magnitude
            if dist < minDist then
                minDist = dist
                closest = obj.Position
            end
        end
    end

    cachedTokenPos = closest
end

-- Movement
RunService.Heartbeat:Connect(function()
    if not getgenv().AutoBoostEnabled then return end

    local hrp = GetHRP()
    if not hrp then return end

    if not IsInField() then
        TeleTo(RandomInField())
        return
    end

    UpdateCachedToken()

    if cachedTokenPos then
        WalkTo(cachedTokenPos)
    else
        WalkTo(RandomInField())
    end
end)

-- Fast tool swing
task.spawn(function()
    while true do
        task.wait(getgenv().ToolSwingDelay)
        if getgenv().AutoBoostEnabled then
            SwingTool()
        end
    end
end)

-- Stinger
task.spawn(function()
    while true do
        task.wait(getgenv().StingerInterval)
        if getgenv().AutoBoostEnabled then
            UseStinger()
        end
    end
end)

-- Auto respawn
LP.CharacterAdded:Connect(function(char)
    task.wait(3)  -- wait for load
    if getgenv().AutoBoostEnabled then
        TeleTo(RandomInField())
    end
end)

-- Insert key toggle
UserInputService.InputBegan:Connect(function(input, gp)
    if gp then return end
    if input.KeyCode == Enum.KeyCode.Insert then
        getgenv().AutoBoostEnabled = not getgenv().AutoBoostEnabled
        print("BOOST TOGGLED: " .. (getgenv().AutoBoostEnabled and "ON" or "OFF"))
        if getgenv().AutoBoostEnabled then
            getgenv().StartHoney = getgenv().CurrentHoney
            getgenv().StartTime = tick()
        end
    end
end)

-- Uptime log every 10 mins
task.spawn(function()
    local start = tick()
    while true do
        task.wait(600)  -- 10 minutes
        local uptimeMin = math.floor((tick() - start) / 60)
        print(string.format("[BOOST ALIVE] Uptime: %d minutes | Enabled: %s", uptimeMin, tostring(getgenv().AutoBoostEnabled)))
    end
end)

-- Honey stats (0.6s - smooth & light)
task.spawn(function()
    while true do
        task.wait(0.6)
        local ls = LP:FindFirstChild("leaderstats")
        if ls then
            local honey = ls:FindFirstChild("Honey")
            if honey then
                getgenv().CurrentHoney = honey.Value
                if HoneyLabel then
                    HoneyLabel.Text = "Current: " .. formatNum(getgenv().CurrentHoney)
                end
            end
        end

        if getgenv().AutoBoostEnabled and getgenv().StartTime > 0 then
            local made = getgenv().CurrentHoney - getgenv().StartHoney
            if MadeLabel then MadeLabel.Text = "Made: " .. formatNum(made) end

            local elapsed = tick() - getgenv().StartTime
            local hph = elapsed > 30 and math.floor((made / elapsed) * 3600) or 0
            if HPHLabel then HPHLabel.Text = "HPH: " .. formatNum(hph) end
        end
    end
end)

-- UI
local SG = Instance.new("ScreenGui")
SG.Name = "BoostUI"
SG.ResetOnSpawn = false
SG.Parent = PlayerGui

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 260, 0, 190)
Frame.Position = UDim2.new(0.5, -130, 0.5, -95)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 42)
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true
Frame.Parent = SG

Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 12)

local Title = Instance.new("TextLabel", Frame)
Title.Size = UDim2.new(1, 0, 0, 35)
Title.BackgroundTransparency = 1
Title.Text = "Spider Field Overnight"
Title.TextColor3 = Color3.fromRGB(220, 220, 255)
Title.TextSize = 18
Title.Font = Enum.Font.GothamBold

local Toggle = Instance.new("TextButton", Frame)
Toggle.Size = UDim2.new(0.85, 0, 0, 45)
Toggle.Position = UDim2.new(0.075, 0, 0.22, 0)
Toggle.BackgroundColor3 = Color3.fromRGB(80, 200, 255)
Toggle.Text = "START (or Insert key)"
Toggle.TextColor3 = Color3.new(1,1,1)
Toggle.TextSize = 16
Toggle.Font = Enum.Font.GothamBold
Instance.new("UICorner", Toggle).CornerRadius = UDim.new(0, 10)

Toggle.MouseButton1Click:Connect(function()
    getgenv().AutoBoostEnabled = not getgenv().AutoBoostEnabled
    Toggle.Text = getgenv().AutoBoostEnabled and "STOP (or Insert)" or "START (or Insert)"
    Toggle.BackgroundColor3 = getgenv().AutoBoostEnabled and Color3.fromRGB(255, 100, 100) or Color3.fromRGB(80, 200, 255)
    if getgenv().AutoBoostEnabled then
        getgenv().StartHoney = getgenv().CurrentHoney
        getgenv().StartTime = tick()
    end
end)

HoneyLabel = Instance.new("TextLabel", Frame)
HoneyLabel.Size = UDim2.new(0.85, 0, 0, 28)
HoneyLabel.Position = UDim2.new(0.075, 0, 0.5, 0)
HoneyLabel.BackgroundTransparency = 1
HoneyLabel.Text = "Current: 0"
HoneyLabel.TextColor3 = Color3.new(1,1,1)
HoneyLabel.TextSize = 15
HoneyLabel.Font = Enum.Font.Gotham

MadeLabel = Instance.new("TextLabel", Frame)
MadeLabel.Size = UDim2.new(0.85, 0, 0, 28)
MadeLabel.Position = UDim2.new(0.075, 0, 0.65, 0)
MadeLabel.BackgroundTransparency = 1
MadeLabel.Text = "Made: 0"
MadeLabel.TextColor3 = Color3.fromRGB(160, 255, 160)
MadeLabel.TextSize = 15
MadeLabel.Font = Enum.Font.Gotham

HPHLabel = Instance.new("TextLabel", Frame)
HPHLabel.Size = UDim2.new(0.85, 0, 0, 28)
HPHLabel.Position = UDim2.new(0.075, 0, 0.8, 0)
HPHLabel.BackgroundTransparency = 1
HPHLabel.Text = "HPH: 0"
HPHLabel.TextColor3 = Color3.fromRGB(120, 220, 255)
HPHLabel.TextSize = 15
HPHLabel.Font = Enum.Font.Gotham

print("Overnight Spider Field Boost loaded")
print("Toggle: START button OR press INSERT key")
print("Tool swing: every 0.015s")
print("Auto respawn + uptime logs enabled")
print("Safe for overnight - good luck!")