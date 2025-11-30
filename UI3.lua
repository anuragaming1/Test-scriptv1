-- Anura Hub UI Library - Fixed Version
local AnuraHub = {}

function AnuraHub:MakeWindow(config)
    local Title = config.Title or "Anura Hub"
    local SubTitle = config.SubTitle or "Premium Hub"
    local SaveFolder = config.SaveFolder or "AnuraHub"
    
    -- Đổi màu viền xanh lá thành màu hồng
    _G.Color = Color3.fromRGB(255, 105, 180)  -- Màu hồng
    _G.ColorButton = Color3.fromRGB(25, 25, 25)

    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local SoundService = game:GetService("SoundService")
    local TweenService = game:GetService("TweenService")

    local soundId = "rbxassetid://130785805" 
    local sound = Instance.new("Sound")
    sound.Name = "ButtonClickSound"
    sound.SoundId = soundId
    sound.Parent = ReplicatedStorage

    -- Tạo UI trong CoreGui thay vì PlayerGui để không bị mất khi reset
    local MainScreenGui = Instance.new("ScreenGui")
    local ButtonScreenGui = Instance.new("ScreenGui")
    local ImageButton = Instance.new("ImageButton")
    local UICorner = Instance.new("UICorner")
    local UIStroke = Instance.new("UIStroke")

    MainScreenGui.Name = "MainScreenGui"
    MainScreenGui.Parent = game:GetService("CoreGui") -- Sửa thành CoreGui
    MainScreenGui.ResetOnSpawn = false -- Quan trọng: Không reset khi spawn

    ButtonScreenGui.Name = "ButtonScreenGui"
    ButtonScreenGui.Parent = game:GetService("CoreGui") -- Sửa thành CoreGui
    ButtonScreenGui.ResetOnSpawn = false -- Quan trọng: Không reset khi spawn

    ImageButton.Parent = ButtonScreenGui
    ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton.BorderSizePixel = 0
    ImageButton.Position = UDim2.new(0, 10, 0, 10)
    ImageButton.Size = UDim2.new(0, 40, 0, 40)
    ImageButton.Image = "rbxassetid://90710744111534"

    UICorner.CornerRadius = UDim.new(1, 0) 
    UICorner.Parent = ImageButton

    UIStroke.Color = Color3.fromRGB(255, 105, 180)
    UIStroke.Parent = ImageButton

    -- Biến để theo dõi trạng thái kéo
    local dragging = false
    local dragInput, dragStart, startPos

    -- Hàm cập nhật vị trí khi kéo
    local function update(input)
        local delta = input.Position - dragStart
        ImageButton.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    -- Kết nối sự kiện kéo
    ImageButton.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = ImageButton.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    ImageButton.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = input
        end
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)

    -- Biến toàn cục để lưu trạng thái UI
    _G.AnuraHubUIEnabled = true

    ImageButton.MouseButton1Click:Connect(function()
        _G.AnuraHubUIEnabled = not _G.AnuraHubUIEnabled
        if game.CoreGui:FindFirstChild("RippleHUBLIB") then
            game.CoreGui:FindFirstChild("RippleHUBLIB").Enabled = _G.AnuraHubUIEnabled
        end
    end)

    -- ... (phần code library cũ giữ nguyên) ...
    -- Do code dài, mình chỉ show phần sửa lỗi quan trọng

    IKAI = true
    if IKAI then
        do
            local ui = game.CoreGui:FindFirstChild("RippleHUBLIB")
            if ui then
                ui:Destroy()
            end
        end
        
        local UserInputService = game:GetService("UserInputService")
        local TweenService = game:GetService("TweenService")
        local RunService = game:GetService("RunService")
        local LocalPlayer = game:GetService("Players").LocalPlayer
        local Mouse = LocalPlayer:GetMouse()
        local tween = game:GetService("TweenService")
        local Red = {RainbowColorValue = 0, HueSelectionPosition = 0}
        local LogoButton = [[7040391851]]
        
        -- ... (các hàm và objects giữ nguyên) ...
        
        library = {}
        
        function library:Window(text,text2,text3,logo,keybind)
            local uihide = false
            local abc = false
            local logo = logo or 0
            local currentpage = ""
            local keybind = keybind or Enum.KeyCode.RightControl
            local yoo = string.gsub(tostring(keybind),"Enum.KeyCode.","")
            
            local RippleHUBLIB = Instance.new("ScreenGui")
            RippleHUBLIB.Name = "RippleHUBLIB"
            RippleHUBLIB.Parent = game.CoreGui -- Sửa thành CoreGui
            RippleHUBLIB.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            RippleHUBLIB.ResetOnSpawn = false -- Quan trọng: Không reset khi spawn
            RippleHUBLIB.Enabled = _G.AnuraHubUIEnabled

            -- ... (phần tạo UI giữ nguyên) ...

        end
    end

    local Window = library:Window(Title, SubTitle, "Version 1.0", "95689726591891", Enum.KeyCode.RightControl)
    
    local Tabs = {}
    
    function Tabs:MakeTab(tabConfig)
        local tabName = tabConfig[1] or "Tab"
        local tabIcon = tabConfig[2] or "7040391851"
        return Window:AddTab(tabName, tabIcon)
    end
    
    return Tabs
end

return AnuraHub
