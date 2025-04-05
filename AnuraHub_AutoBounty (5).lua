--[[
    Anura Hub - Auto Bounty [Fluxus Android Optimized]
    - Không cần menu, tự động chạy (Kaitun UI)
    - Tối ưu cho Fluxus Android: hạn chế lag, chống clone nil, tránh bị kick
    - FPS Boost, Auto Skill, Tween TP, Race V3/V4, Aura, Instinct, Sea Beast, v.v.
]]

-- Kiểm tra Executor
local Executor = identifyexecutor and identifyexecutor() or "Unknown"
if Executor ~= "Fluxus" then
    warn("Script này chỉ tối ưu cho Fluxus Android.")
end

-- Chống kick + anti-banwave
pcall(function()
    if setfflag then
        setfflag("AbuseReportScreenshotPercentage", "0")
        setfflag("DFFlagAbuseReportScreenshot", "False")
    end
    if setreadonly then
        setreadonly(getrawmetatable(game), false)
    end
end)

-- FPS Boost
for _,v in pairs(game:GetDescendants()) do
    if v:IsA("BasePart") then
        v.Material = Enum.Material.SmoothPlastic
        v.Reflectance = 0
    elseif v:IsA("Decal") then
        v.Transparency = 1
    end
end

-- Tắt hiệu ứng + khói
game:GetService("Lighting").GlobalShadows = false
game:GetService("Lighting").FogEnd = 100000
settings().Rendering.QualityLevel = "Level01"
collectgarbage("count")


-- UI Bảng Điều Khiển
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
ScreenGui.Name = "AnuraHub_UI"

local Frame = Instance.new("ImageLabel", ScreenGui)
Frame.Size = UDim2.new(0, 300, 0, 200)
Frame.Position = UDim2.new(0.5, -150, 0.5, -100)
Frame.BackgroundTransparency = 1
Frame.Image = "rbxassetid://131151731604309"

local Title = Instance.new("TextLabel", Frame)
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Text = "Anura Hub"
Title.TextColor3 = Color3.fromRGB(255, 0, 0)
Title.TextStrokeTransparency = 0
Title.TextSize = 20
Title.BackgroundTransparency = 1

local Sub = Instance.new("TextLabel", Frame)
Sub.Position = UDim2.new(0, 0, 0, 30)
Sub.Size = UDim2.new(1, 0, 0, 20)
Sub.Text = "Auto Bounty"
Sub.TextColor3 = Color3.fromRGB(0, 255, 0)
Sub.TextSize = 16
Sub.BackgroundTransparency = 1

-- Thông tin Kill và Bounty
local BountyLabel = Instance.new("TextLabel", Frame)
BountyLabel.Position = UDim2.new(0, 10, 0, 60)
BountyLabel.Size = UDim2.new(1, -20, 0, 20)
BountyLabel.Text = "Bounty: 0"
BountyLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
BountyLabel.BackgroundTransparency = 1
BountyLabel.TextScaled = true

local KillLabel = Instance.new("TextLabel", Frame)
KillLabel.Position = UDim2.new(0, 10, 0, 85)
KillLabel.Size = UDim2.new(1, -20, 0, 20)
KillLabel.Text = "Kills: 0"
KillLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
KillLabel.BackgroundTransparency = 1
KillLabel.TextScaled = true

local FPSText = Instance.new("TextLabel", Frame)
FPSText.Position = UDim2.new(0, 10, 0, 110)
FPSText.Size = UDim2.new(1, -20, 0, 20)
FPSText.Text = "FPS: 60"
FPSText.TextColor3 = Color3.fromRGB(255, 255, 255)
FPSText.BackgroundTransparency = 1
FPSText.TextScaled = true

-- Cập nhật FPS theo thời gian
spawn(function()
    while true do
        local start = tick()
        task.wait()
        local fps = math.floor(1 / (tick() - start))
        FPSText.Text = "FPS: " .. fps
        task.wait(1)
    end
end)


-- Auto bật Aura, Instinct, Race
spawn(function()
    while true do
        pcall(function()
            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
            end
            if not game.Players.LocalPlayer.Character:FindFirstChild("Instinct") then
                game:GetService("ReplicatedStorage").Remotes.CommE:InvokeServer("Ken", true)
            end
            if game:GetService("ReplicatedStorage").Remotes:FindFirstChild("ActivateRaceV4") then
                game:GetService("ReplicatedStorage").Remotes.ActivateRaceV4:FireServer()
            end
        end)
        task.wait(5)
    end
end)

-- Tự động tìm player khác và Tween TP
local function getRandomEnemy()
    local players = {}
    for _, plr in pairs(game.Players:GetPlayers()) do
        if plr ~= game.Players.LocalPlayer and plr.Team ~= game.Players.LocalPlayer.Team then
            table.insert(players, plr)
        end
    end
    return #players > 0 and players[math.random(1, #players)] or nil
end

local TweenService = game:GetService("TweenService")

local function tweenToTarget(target)
    local char = game.Players.LocalPlayer.Character
    if not char or not target or not target.Character then return end
    local root = char:FindFirstChild("HumanoidRootPart")
    local targetRoot = target.Character:FindFirstChild("HumanoidRootPart")
    if root and targetRoot then
        local dist = (root.Position - targetRoot.Position).magnitude
        local time = dist / 300
        local tween = TweenService:Create(root, TweenInfo.new(time, Enum.EasingStyle.Linear), {CFrame = targetRoot.CFrame + Vector3.new(0, 3, 0)})
        tween:Play()
        tween.Completed:Wait()
    end
end

-- Tự động combo chiêu Z/X/C/V/F và đánh thường nếu hết chiêu
local function attackTarget(target)
    local VirtualInputManager = game:GetService("VirtualInputManager")
    local keys = {"Z", "X", "C", "V", "F"}
    for _, key in pairs(keys) do
        VirtualInputManager:SendKeyEvent(true, key, false, game)
        task.wait(0.5)
        VirtualInputManager:SendKeyEvent(false, key, false, game)
    end
    task.wait(1)
    -- đánh thường
    for i = 1, 5 do
        VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, game, 1)
        task.wait(0.2)
    end
end

-- Vòng lặp Auto Kill
spawn(function()
    while true do
        local target = getRandomEnemy()
        if target then
            tweenToTarget(target)
            attackTarget(target)
        end
        task.wait(3)
    end
end)


-- Auto chọn team theo config
local teamConfig = "Pirates" -- chỉnh thành "Marines" nếu muốn
pcall(function()
    if game.Players.LocalPlayer.Team == nil then
        for _, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()) do
            if v:FindFirstChild("ChooseTeam") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", teamConfig)
            end
        end
    end
end)

-- Theo dõi số kill và auto server hop sau 6 kill
local hopKillCount = 0
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local placeId = game.PlaceId

local function hopServer()
    local servers = {}
    local req = game:HttpGet("https://games.roblox.com/v1/games/" .. placeId .. "/servers/Public?sortOrder=Asc&limit=100")
    for _, server in pairs(HttpService:JSONDecode(req).data) do
        if server.playing < server.maxPlayers then
            table.insert(servers, server.id)
        end
    end
    if #servers > 0 then
        TeleportService:TeleportToPlaceInstance(placeId, servers[math.random(1, #servers)], game.Players.LocalPlayer)
    end
end

-- Summon Sea Beast khi đủ 10m bounty
spawn(function()
    while true do
        local bounty = game.Players.LocalPlayer.leaderstats and game.Players.LocalPlayer.leaderstats.Bounty
        if bounty and bounty.Value >= 10000000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SeaBeast")
        end
        task.wait(30)
    end
end)

-- Next Player button
local nextBtn = Instance.new("TextButton", Frame)
nextBtn.Position = UDim2.new(0.5, -60, 1, -40)
nextBtn.Size = UDim2.new(0, 120, 0, 25)
nextBtn.Text = "Next Player"
nextBtn.TextScaled = true
nextBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
nextBtn.TextColor3 = Color3.fromRGB(255, 255, 255)

local skipTarget = false
nextBtn.MouseButton1Click:Connect(function()
    skipTarget = true
end)

-- Đo thời gian chạy script
local startTime = os.time()
spawn(function()
    while true do
        local used = os.time() - startTime
        local min = math.floor(used / 60)
        local sec = used % 60
        Title.Text = "Anura Hub ("..min.."m "..sec.."s)"
        task.wait(1)
    end
end)

-- Kết hợp skipTarget trong loop kill
spawn(function()
    while true do
        local target = getRandomEnemy()
        if target then
            tweenToTarget(target)
            attackTarget(target)
            hopKillCount = hopKillCount + 1
            KillLabel.Text = "Kills: "..hopKillCount
            if hopKillCount >= 6 then
                hopServer()
            end
        end
        if skipTarget then
            skipTarget = false
        end
        task.wait(3)
    end
end)


-- FPS Boost + Fix Lag + Tối ưu Treo Máy
settings().Rendering.QualityLevel = "Level01"
game:GetService("Lighting").GlobalShadows = false
game:GetService("Lighting").FogEnd = 9e9
game:GetService("Lighting").Brightness = 0
for _, v in pairs(game:GetDescendants()) do
    if v:IsA("BasePart") and not v:IsA("MeshPart") then
        v.Material = Enum.Material.Plastic
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") then
        v:Destroy()
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    end
end
game:GetService("StarterGui"):SetCore("ResetButtonCallback", false)
game:GetService("RunService"):Set3dRenderingEnabled(false)

-- Anti Kick, giữ kết nối
local VirtualUser = game:service('VirtualUser')
game:service('Players').LocalPlayer.Idled:connect(function()
    VirtualUser:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    task.wait(1)
    VirtualUser:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

-- Anti BanWave Update 26
local function protectRemotes()
    local Blocked = {"Ban", "Kick", "Shutdown", "SetBan", "SetKick"}
    for _, conn in pairs(getgc(true)) do
        if type(conn) == "function" and getfenv(conn).script then
            local name = getfenv(conn).script.Name
            for _, word in ipairs(Blocked) do
                if string.find(name:lower(), word:lower()) then
                    hookfunction(conn, function(...) return nil end)
                end
            end
        end
    end
end
pcall(protectRemotes)

-- Tắt các core scripts không cần thiết
for _, v in pairs(game:GetService("StarterGui"):GetChildren()) do
    if v:IsA("Script") or v:IsA("LocalScript") then
        v.Disabled = true
    end
end

print("Anura Hub - AntiBan + FPSBoost Loaded.")

