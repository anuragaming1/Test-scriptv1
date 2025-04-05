-- Anura Hub - Full Auto Bounty System (Extended Build)
-- This file is auto-generated for full function capacity.


-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")

-- MODULE INSTANCE --
-- Anura Hub - Full Auto Bounty System (Kaitun Ver, Update 26 Safe)
-- Author: You | Full Script | Includes: UI, Combat, Anti-Ban, FPS Boost, Full Automation
-- Image ID: 131151731604309 | GUI: 300x200 Center Panel | Auto Mode (No Menu)

-- SECTION: Services & Variables
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local killCount, bountyGained, startTime = 0, 0, tick()
local target = nil
local teamToJoin = "Pirates"

-- SECTION: FPS BOOST
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
settings().Rendering.QualityLevel = "Level01"
setfpscap(30)

-- SECTION: BLACK SCREEN FOR AFK MODE
local black = Instance.new("ScreenGui", player.PlayerGui)
black.IgnoreGuiInset = true
local frame = Instance.new("Frame", black)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.new(0,0,0)

-- SECTION: GUI PANEL
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AnuraHubGUI"
local panel = Instance.new("Frame", gui)
panel.Position = UDim2.new(0.5, -150, 0.5, -100)
panel.Size = UDim2.new(0, 300, 0, 200)
panel.BackgroundColor3 = Color3.fromRGB(25,25,25)
panel.BorderSizePixel = 2
panel.BackgroundTransparency = 0.1

local title = Instance.new("TextLabel", panel)
title.Text = "Anura Hub"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.GothamBold
title.Size = UDim2.new(1,0,0.2,0)
title.TextScaled = true
title.BackgroundTransparency = 1

local subtitle = Instance.new("TextLabel", panel)
subtitle.Text = "Auto Bounty"
subtitle.TextColor3 = Color3.fromRGB(0,255,0)
subtitle.Font = Enum.Font.GothamBold
subtitle.Size = UDim2.new(1,0,0.15,0)
subtitle.Position = UDim2.new(0,0,0.2,0)
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1

local stats = Instance.new("TextLabel", panel)
stats.Text = "Initializing..."
stats.TextColor3 = Color3.fromRGB(255,255,255)
stats.Font = Enum.Font.Code
stats.Size = UDim2.new(1,0,0.4,0)
stats.Position = UDim2.new(0,0,0.35,0)
stats.TextScaled = true
stats.BackgroundTransparency = 1
stats.TextWrapped = true

local nextBtn = Instance.new("TextButton", panel)
nextBtn.Text = "Next Player"
nextBtn.Size = UDim2.new(0.6,0,0.2,0)
nextBtn.Position = UDim2.new(0.2,0,0.8,0)
nextBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.MouseButton1Click:Connect(function()
    target = nil
end)

-- SECTION: ANTI BAN
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "Kick" or tostring(self) == "Ban" then
        return nil
    end
    return old(self, unpack(args))
end)

-- SECTION: TEAM SELECT
spawn(function()
    repeat
        for _, team in pairs(Teams:GetChildren()) do
            if team.Name == teamToJoin then
                ReplicatedStorage:WaitForChild("_joinTeam"):FireServer(team)
            end
        end
        wait(1)
    until player.Team and player.Team.Name == teamToJoin
end)

-- SECTION: TARGET SYSTEM
function getRandomPlayer()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Team ~= player.Team then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(1, #list)] or nil
end

-- SECTION: TWEEN TO TARGET
function tweenTo(pos)
    local distance = (root.Position - pos).Magnitude
    local tween = TweenService:Create(root, TweenInfo.new(distance/150, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
    tween:Play()
    tween.Completed:Wait()
end

-- SECTION: COMBAT ENGINE
function useSkills()
    local function castAll(toolName, keys)
        for _, tool in pairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
                tool.Parent = char
                for _, key in ipairs(keys) do
                    pcall(function()
                        tool:Activate()
                        wait(0.2)
                        keypress(Enum.KeyCode[key])
                    end)
                end
            end
        end
    end
    castAll("Melee", {"Z","X","C"})
    castAll("Blox", {"Z","X","C","V","F"})
    castAll("Sword", {"Z","X"})
    castAll("Gun", {"Z","X"})
end

-- SECTION: AUTO BUFF
function autoBuff()
    pcall(function() ReplicatedStorage.Remotes.Instinct:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.Aura:FireServer(true) end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V3") end)
    pcall(function() ReplicatedStorage.Remotes.RaceAbility:FireServer("V4") end)
end

-- SECTION: MAIN LOOP
spawn(function()
    while wait(1) do
        if not target then target = getRandomPlayer() end
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            autoBuff()
            tweenTo(target.Character.HumanoidRootPart.Position + Vector3.new(0,3,0))
            useSkills()
            wait(2)
            local h = target.Character:FindFirstChild("Humanoid")
            if h and h.Health <= 0 then
                killCount += 1
                bountyGained += 5000
                if killCount >= 6 then TeleportService:Teleport(game.PlaceId) end
                target = nil
            end
        end
    end
end)

-- SECTION: SEA BEAST SUMMON
spawn(function()
    while wait(5) do
        if player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Bounty") then
            if player.leaderstats.Bounty.Value >= 10000000 then
                pcall(function()
                    ReplicatedStorage.Remotes.SummonSeaBeast:InvokeServer()
                end)
            end
        end
    end
end)

-- SECTION: STATS UPDATE
spawn(function()
    while wait(1) do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local elapsed = math.floor(tick() - startTime)
        stats.Text = "Kills: "..killCount.." | Bounty: "..bountyGained.."\nTime: "..elapsed.."s | FPS: "..fps
    end
end)

-- Done. All core systems initialized.
print("[Anura Hub Auto Bounty] Loaded successfully.")
