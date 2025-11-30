-- Anura Hub UI Library - Fixed Complete Version
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

    -- Tạo UI trong CoreGui
    local ButtonScreenGui = Instance.new("ScreenGui")
    local ImageButton = Instance.new("ImageButton")
    local UICorner = Instance.new("UICorner")
    local UIStroke = Instance.new("UIStroke")

    ButtonScreenGui.Name = "AnuraHubButton"
    ButtonScreenGui.Parent = game:GetService("CoreGui")
    ButtonScreenGui.ResetOnSpawn = false
    ButtonScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    ImageButton.Parent = ButtonScreenGui
    ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton.BorderSizePixel = 0
    ImageButton.Position = UDim2.new(0, 10, 0, 10)
    ImageButton.Size = UDim2.new(0, 40, 0, 40)
    ImageButton.Image = "rbxassetid://90710744111534"
    ImageButton.ZIndex = 100

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

    -- Xóa UI cũ nếu tồn tại
    if game.CoreGui:FindFirstChild("RippleHUBLIB") then
        game.CoreGui:FindFirstChild("RippleHUBLIB"):Destroy()
    end

    -- Tạo UI chính
    local UserInputService = game:GetService("UserInputService")
    local RunService = game:GetService("RunService")
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local Mouse = LocalPlayer:GetMouse()

    local function Tween(instance, properties,style,wa)
        if style == nil or "" then
            return
        end
        TweenService:Create(instance,TweenInfo.new(wa,Enum.EasingStyle[style]),properties):Play()
    end
    
    local ActualTypes = {
        RoundFrame = "ImageLabel",
        Shadow = "ImageLabel",
        Circle = "ImageLabel",
        CircleButton = "ImageButton",
        Frame = "Frame",
        Label = "TextLabel",
        Button = "TextButton",
        SmoothButton = "ImageButton",
        Box = "TextBox",
        ScrollingFrame = "ScrollingFrame",
        Menu = "ImageButton",
        NavBar = "ImageButton"
    }
    
    local Properties = {
        RoundFrame = {
            BackgroundTransparency = 1,
            Image = "http://www.roblox.com/asset/?id=5554237731",
            ScaleType = Enum.ScaleType.Slice,
            SliceCenter = Rect.new(3,3,297,297)
        },
        Shadow = {
            Name = "Shadow",
            BackgroundTransparency = 1,
            Image = "http://www.roblox.com/asset/?id=5554236805",
            ScaleType = Enum.ScaleType.Slice,
            SliceCenter = Rect.new(23,23,277,277),
            Size = UDim2.fromScale(1,1) + UDim2.fromOffset(30,30),
            Position = UDim2.fromOffset(-15,-15)
        },
        Circle = {
            BackgroundTransparency = 1,
            Image = "http://www.roblox.com/asset/?id=5554831670"
        },
        Frame = {
            BackgroundTransparency = 1,
            BorderSizePixel = 0,
            Size = UDim2.fromScale(1,1)
        },
        Label = {
            BackgroundTransparency = 1,
            Position = UDim2.fromOffset(5,0),
            Size = UDim2.fromScale(1,1) - UDim2.fromOffset(5,0),
            TextSize = 14,
            TextXAlignment = Enum.TextXAlignment.Left
        }
    }
    
    local Types = {
        "RoundFrame",
        "Shadow",
        "Circle",
        "Frame",
        "Label"
    }
    
    function FindType(String)
        for _, Type in next, Types do
            if Type:sub(1, #String):lower() == String:lower() then
                return Type
            end
        end
        return false
    end
    
    local Objects = {}
    
    function Objects.new(Type)
        local TargetType = FindType(Type)
        if TargetType then
            local NewImage = Instance.new(ActualTypes[TargetType])
            if Properties[TargetType] then
                for Property, Value in next, Properties[TargetType] do
                    NewImage[Property] = Value
                end
            end
            return NewImage
        else
            return Instance.new(Type)
        end
    end
    
    local function GetXY(GuiObject)
        local Max, May = GuiObject.AbsoluteSize.X, GuiObject.AbsoluteSize.Y
        local Px, Py = math.clamp(Mouse.X - GuiObject.AbsolutePosition.X, 0, Max), math.clamp(Mouse.Y - GuiObject.AbsolutePosition.Y, 0, May)
        return Px/Max, Py/May
    end
    
    local function CircleAnim(GuiObject, EndColour, StartColour)
        local PX, PY = GetXY(GuiObject)
        local Circle = Objects.new("Circle")
        Circle.Size = UDim2.fromScale(0,0)
        Circle.Position = UDim2.fromScale(PX,PY)
        Circle.ImageColor3 = StartColour or GuiObject.ImageColor3
        Circle.ZIndex = 200
        Circle.Parent = GuiObject
        local Size = GuiObject.AbsoluteSize.X
        TweenService:Create(Circle, TweenInfo.new(0.5), {Position = UDim2.fromScale(PX,PY) - UDim2.fromOffset(Size/2,Size/2), ImageTransparency = 1, ImageColor3 = EndColour, Size = UDim2.fromOffset(Size,Size)}):Play()
        spawn(function()
            wait(0.5)
            Circle:Destroy()
        end)
    end
    
    local function MakeDraggable(topbarobject, object)
        local Dragging = nil
        local DragInput = nil
        local DragStart = nil
        local StartPosition = nil
    
        local function Update(input)
            local Delta = input.Position - DragStart
            local pos =
                UDim2.new(
                    StartPosition.X.Scale,
                    StartPosition.X.Offset + Delta.X,
                    StartPosition.Y.Scale,
                    StartPosition.Y.Offset + Delta.Y
                )
            local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
            Tween:Play()
        end
    
        topbarobject.InputBegan:Connect(
            function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    Dragging = true
                    DragStart = input.Position
                    StartPosition = object.Position
    
                    input.Changed:Connect(
                        function()
                            if input.UserInputState == Enum.UserInputState.End then
                                Dragging = false
                            end
                        end
                    )
                end
            end
        )
    
        topbarobject.InputChanged:Connect(
            function(input)
                if
                    input.UserInputType == Enum.UserInputType.MouseMovement or
                    input.UserInputType == Enum.UserInputType.Touch
                then
                    DragInput = input
                end
            end
        )
    
        UserInputService.InputChanged:Connect(
            function(input)
                if input == DragInput and Dragging then
                    Update(input)
                end
            end
        )
    end
    
    local library = {}
    
    function library:Window(text,text2,text3,logo,keybind)
        local uihide = false
        local abc = false
        local logo = logo or 0
        local currentpage = ""
        local keybind = keybind or Enum.KeyCode.RightControl
        local yoo = string.gsub(tostring(keybind),"Enum.KeyCode.","")
        
        local RippleHUBLIB = Instance.new("ScreenGui")
        RippleHUBLIB.Name = "RippleHUBLIB"
        RippleHUBLIB.Parent = game.CoreGui
        RippleHUBLIB.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        RippleHUBLIB.ResetOnSpawn = false

        local Main = Instance.new("Frame")
        Main.Name = "Main"
        Main.Parent = RippleHUBLIB
        Main.ClipsDescendants = true
        Main.AnchorPoint = Vector2.new(0.5,0.5)
        Main.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        Main.Position = UDim2.new(0.5, 0, 0.5, 0)
        Main.Size = UDim2.new(0, 656, 0, 400)
        Main.Visible = _G.AnuraHubUIEnabled

        local MCNR = Instance.new("UICorner")
        MCNR.Name = "MCNR"
        MCNR.CornerRadius = UDim.new(0, 8)
        MCNR.Parent = Main

        local Top = Instance.new("Frame")
        Top.Name = "Top"
        Top.Parent = Main
        Top.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        Top.Size = UDim2.new(0, 656, 0, 27)

        local TCNR = Instance.new("UICorner")
        TCNR.Name = "TCNR"
        TCNR.CornerRadius = UDim.new(0, 8)
        TCNR.Parent = Top

        local Logo = Instance.new("ImageLabel")
        Logo.Name = "Logo"
        Logo.Parent = Top
        Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Logo.BackgroundTransparency = 1.000
        Logo.Position = UDim2.new(0, 14, 0, 2)
        Logo.Size = UDim2.new(0, 23, 0, 23)
        Logo.Image = "rbxassetid://"..tostring(logo)

        local Name = Instance.new("TextLabel")
        Name.Name = "Name"
        Name.Parent = Top
        Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Name.BackgroundTransparency = 1.000
        Name.Position = UDim2.new(0.0609756112, 5, 0, 0)
        Name.Size = UDim2.new(0, 61, 0, 27)
        Name.Font = Enum.Font.GothamSemibold
        Name.Text = text
        Name.TextColor3 = Color3.fromRGB(225, 225, 225)
        Name.TextSize = 16.000

        local Hub = Instance.new("TextLabel")
        Hub.Name = "Hub"
        Hub.Parent = Top
        Hub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Hub.BackgroundTransparency = 1.000
        Hub.Position = UDim2.new(0, 105, 0, 0)
        Hub.Size = UDim2.new(0, 81, 0, 27)
        Hub.Font = Enum.Font.GothamSemibold
        Hub.Text = text2
        Hub.TextColor3 = _G.Color
        Hub.TextSize = 16.000
        Hub.TextXAlignment = Enum.TextXAlignment.Left

        local Ver = Instance.new("TextLabel")
        Ver.Name = "Ver"
        Ver.Parent = Top
        Ver.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Ver.BackgroundTransparency = 1.000
        Ver.Position = UDim2.new(0.847561002, 0, 0, 0)
        Ver.Size = UDim2.new(0, 100, 0, 27)
        Ver.Font = Enum.Font.GothamSemibold
        Ver.Text = text3
        Ver.TextColor3 = _G.Color
        Ver.TextSize = 14.000

        local BindButton = Instance.new("TextButton")
        BindButton.Name = "BindButton"
        BindButton.Parent = Top
        BindButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        BindButton.BackgroundTransparency = 1.000
        BindButton.Position = UDim2.new(0.227561002, 0, 0, 0)
        BindButton.Size = UDim2.new(0, 100, 0, 27)
        BindButton.Font = Enum.Font.GothamSemibold
        BindButton.Text = "[ "..yoo.." ]"
        BindButton.TextColor3 = Color3.fromRGB(100, 100, 100)
        BindButton.TextSize = 11.000
        
        BindButton.MouseButton1Click:Connect(function ()
            BindButton.Text = "[ ... ]"
            local inputwait = game:GetService("UserInputService").InputBegan:wait()
            local shiba = inputwait.KeyCode == Enum.KeyCode.Unknown and inputwait.UserInputType or inputwait.KeyCode
    
            if shiba.Name ~= "Focus" and shiba.Name ~= "MouseMovement" then
                BindButton.Text = "[ "..shiba.Name.." ]"
                yoo = shiba.Name
            end
        end)

        UserInputService.InputBegan:Connect(function(input)
            if input.KeyCode == keybind then
                _G.AnuraHubUIEnabled = not _G.AnuraHubUIEnabled
                Main.Visible = _G.AnuraHubUIEnabled
            end
        end)

        local Tab = Instance.new("Frame")
        Tab.Name = "Tab"
        Tab.Parent = Main
        Tab.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        Tab.Position = UDim2.new(0, 5, 0, 30)
        Tab.Size = UDim2.new(0, 150, 0, 365)

        local TCNR2 = Instance.new("UICorner")
        TCNR2.Name = "TCNR2"
        TCNR2.CornerRadius = UDim.new(0, 8)
        TCNR2.Parent = Tab

        local ScrollTab = Instance.new("ScrollingFrame")
        ScrollTab.Name = "ScrollTab"
        ScrollTab.Parent = Tab
        ScrollTab.Active = true
        ScrollTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ScrollTab.BackgroundTransparency = 1.000
        ScrollTab.Size = UDim2.new(0, 150, 0, 365)
        ScrollTab.CanvasSize = UDim2.new(0, 0, 0, 0)
        ScrollTab.ScrollBarThickness = 0

        local PLL = Instance.new("UIListLayout")
        PLL.Name = "PLL"
        PLL.Parent = ScrollTab
        PLL.SortOrder = Enum.SortOrder.LayoutOrder
        PLL.Padding = UDim.new(0, 15)

        local PPD = Instance.new("UIPadding")
        PPD.Name = "PPD"
        PPD.Parent = ScrollTab
        PPD.PaddingLeft = UDim.new(0, 10)
        PPD.PaddingTop = UDim.new(0, 10)

        local Page = Instance.new("Frame")
        Page.Name = "Page"
        Page.Parent = Main
        Page.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        Page.Position = UDim2.new(0.245426834, 0, 0, 30)
        Page.Size = UDim2.new(0, 490, 0, 365)

        local PCNR = Instance.new("UICorner")
        PCNR.Name = "PCNR"
        PCNR.CornerRadius = UDim.new(0, 8)
        PCNR.Parent = Page

        local MainPage = Instance.new("Frame")
        MainPage.Name = "MainPage"
        MainPage.Parent = Page
        MainPage.ClipsDescendants = true
        MainPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        MainPage.BackgroundTransparency = 1.000
        MainPage.Size = UDim2.new(0, 490, 0, 365)

        local PageList = Instance.new("Folder")
        PageList.Name = "PageList"
        PageList.Parent = MainPage

        local UIPageLayout = Instance.new("UIPageLayout")
        UIPageLayout.Parent = PageList
        UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIPageLayout.EasingDirection = Enum.EasingDirection.InOut
        UIPageLayout.EasingStyle = Enum.EasingStyle.Quad
        UIPageLayout.FillDirection = Enum.FillDirection.Vertical
        UIPageLayout.Padding = UDim.new(0, 15)
        UIPageLayout.TweenTime = 0.400
        UIPageLayout.GamepadInputEnabled = false
        UIPageLayout.ScrollWheelInputEnabled = false
        UIPageLayout.TouchInputEnabled = false
        
        MakeDraggable(Top,Main)

        local uitab = {}
        
        function uitab:AddTab(text,logo1)
            local TabButton = Instance.new("TextButton")
            TabButton.Parent = ScrollTab
            TabButton.Name = text.."Server"
            TabButton.Text = text
            TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TabButton.BackgroundTransparency = 1.000
            TabButton.Size = UDim2.new(0, 130, 0, 23)
            TabButton.Font = Enum.Font.GothamSemibold
            TabButton.TextColor3 = Color3.fromRGB(225, 225, 225)
            TabButton.TextSize = 15.000
            TabButton.TextTransparency = 0.500

            local IDK = Instance.new("ImageLabel")
            IDK.Name = "LogoIDK"
            IDK.Parent = TabButton
            IDK.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            IDK.BackgroundTransparency = 1.000
            IDK.Position = UDim2.new(0, 0, 0, 1)
            IDK.Size = UDim2.new(0, 20, 0, 20)
            IDK.Image = "rbxassetid://"..tostring(logo1)

            local MainFramePage = Instance.new("ScrollingFrame")
            MainFramePage.Name = text.."_Page"
            MainFramePage.Parent = PageList
            MainFramePage.Active = true
            MainFramePage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            MainFramePage.BackgroundTransparency = 1.000
            MainFramePage.BorderSizePixel = 0
            MainFramePage.Size = UDim2.new(0, 490, 0, 365)
            MainFramePage.CanvasSize = UDim2.new(0, 0, 0, 0)
            MainFramePage.ScrollBarThickness = 0
            
            local UIPadding = Instance.new("UIPadding")
            local UIListLayout = Instance.new("UIListLayout")
            
            UIPadding.Parent = MainFramePage
            UIPadding.PaddingLeft = UDim.new(0, 10)
            UIPadding.PaddingTop = UDim.new(0, 10)

            UIListLayout.Padding = UDim.new(0,15)
            UIListLayout.Parent = MainFramePage
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            
            TabButton.MouseButton1Click:Connect(function()
                for i,v in next, ScrollTab:GetChildren() do
                    if v:IsA("TextButton") then
                        TweenService:Create(
                            v,
                            TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {TextTransparency = 0.5}
                        ):Play()
                    end
                    TweenService:Create(
                        TabButton,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                end
                for i,v in next, PageList:GetChildren() do
                    currentpage = string.gsub(TabButton.Name,"Server","").."_Page"
                    if v.Name == currentpage then
                        UIPageLayout:JumpTo(v)
                    end
                end
            end)

            if abc == false then
                for i,v in next, ScrollTab:GetChildren() do
                    if v:IsA("TextButton") then
                        TweenService:Create(
                            v,
                            TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {TextTransparency = 0.5}
                        ):Play()
                    end
                    TweenService:Create(
                        TabButton,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                end
                UIPageLayout:JumpToIndex(1)
                abc = true
            end
            
            game:GetService("RunService").Stepped:Connect(function()
                pcall(function()
                    MainFramePage.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 20)
                    ScrollTab.CanvasSize = UDim2.new(0,0,0,PLL.AbsoluteContentSize.Y + 20)
                end)
            end)

            local main = {}
            function main:Button(text,callback)
                local Button = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local TextBtn = Instance.new("TextButton")
                local UICorner_2 = Instance.new("UICorner")
                
                Button.Name = "Button"
                Button.Parent = MainFramePage
                Button.BackgroundColor3 = _G.Color
                Button.Size = UDim2.new(0, 470, 0, 31)
                
                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Parent = Button
                
                TextBtn.Name = "TextBtn"
                TextBtn.Parent = Button
                TextBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                TextBtn.Position = UDim2.new(0, 1, 0, 1)
                TextBtn.Size = UDim2.new(0, 468, 0, 29)
                TextBtn.AutoButtonColor = false
                TextBtn.Font = Enum.Font.GothamSemibold
                TextBtn.Text = text
                TextBtn.TextColor3 = Color3.fromRGB(225, 225, 225)
                TextBtn.TextSize = 15.000
                TextBtn.ClipsDescendants = true

                UICorner_2.CornerRadius = UDim.new(0, 5)
                UICorner_2.Parent = TextBtn

                TextBtn.MouseButton1Click:Connect(function()
                    CircleAnim(TextBtn, Color3.fromRGB(255,255,255), Color3.fromRGB(255,255,255))
                    TextBtn.TextSize = 0
                    TweenService:Create(
                        TextBtn,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextSize = 15}
                    ):Play()
                    callback()
                end)
            end

            function main:Toggle(text,config,callback)
                config = config or false
                local toggled = config
                local Toggle = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local Button = Instance.new("TextButton")
                local UICorner_2 = Instance.new("UICorner")
                local Label = Instance.new("TextLabel")
                local ToggleImage = Instance.new("Frame")
                local UICorner_3 = Instance.new("UICorner")
                local Circle = Instance.new("Frame")
                local UICorner_4 = Instance.new("UICorner")

                Toggle.Name = "Toggle"
                Toggle.Parent = MainFramePage
                Toggle.BackgroundColor3 = Color3.fromRGB(30, 144, 255)
                Toggle.Size = UDim2.new(0, 470, 0, 31)

                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Parent = Toggle

                Button.Name = "Button"
                Button.Parent = Toggle
                Button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                Button.Position = UDim2.new(0, 1, 0, 1)
                Button.Size = UDim2.new(0, 468, 0, 29)
                Button.AutoButtonColor = false
                Button.Font = Enum.Font.SourceSans
                Button.Text = ""
                Button.TextColor3 = Color3.fromRGB(0, 0, 0)
                Button.TextSize = 11.000

                UICorner_2.CornerRadius = UDim.new(0, 5)
                UICorner_2.Parent = Button

                Label.Name = "Label"
                Label.Parent = Toggle
                Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Label.BackgroundTransparency = 1.000
                Label.Position = UDim2.new(0, 1, 0, 1)
                Label.Size = UDim2.new(0, 468, 0, 29)
                Label.Font = Enum.Font.GothamSemibold
                Label.Text = text
                Label.TextColor3 = Color3.fromRGB(225, 225, 225)
                Label.TextSize = 15.000

                ToggleImage.Name = "ToggleImage"
                ToggleImage.Parent = Toggle
                ToggleImage.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
                ToggleImage.Position = UDim2.new(0, 415, 0, 5)
                ToggleImage.Size = UDim2.new(0, 45, 0, 20)

                UICorner_3.CornerRadius = UDim.new(0, 10)
                UICorner_3.Parent = ToggleImage

                Circle.Name = "Circle"
                Circle.Parent = ToggleImage
                Circle.BackgroundColor3 = Color3.fromRGB(30, 144, 255)
                Circle.Position = UDim2.new(0, 2, 0, 2)
                Circle.Size = UDim2.new(0, 16, 0, 16)

                UICorner_4.CornerRadius = UDim.new(0, 10)
                UICorner_4.Parent = Circle

                Button.MouseButton1Click:Connect(function()
                    if toggled == false then
                        toggled = true
                        Circle:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.2,true)
                        TweenService:Create(
                            Toggle,
                            TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {BackgroundColor3 = _G.Color}
                        ):Play()
                        TweenService:Create(
                            Circle,
                            TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {BackgroundColor3 = _G.Color}
                        ):Play()
                    else
                        toggled = false
                        Circle:TweenPosition(UDim2.new(0,2,0,2),"Out","Sine",0.2,true)
                        TweenService:Create(
                            Toggle,
                            TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {BackgroundColor3 = Color3.fromRGB(30, 144, 255)}
                        ):Play()
                        TweenService:Create(
                            Circle,
                            TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {BackgroundColor3 = Color3.fromRGB(30, 144, 255)}
                        ):Play()
                    end
                    pcall(callback,toggled)
                end)

                if config == true then
                    toggled = true
                    Circle:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.2,true)
                    TweenService:Create(
                        Toggle,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundColor3 = _G.Color}
                    ):Play()
                    TweenService:Create(
                        Circle,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundColor3 = _G.Color}
                    ):Play()
                    pcall(callback,toggled)
                end
            end

            function main:Slider(text,min,max,set,callback)
                local Slider = Instance.new("Frame")
                local slidercorner = Instance.new("UICorner")
                local sliderr = Instance.new("Frame")
                local sliderrcorner = Instance.new("UICorner")
                local SliderLabel = Instance.new("TextLabel")
                local bar = Instance.new("Frame")
                local bar1 = Instance.new("Frame")
                local bar1corner = Instance.new("UICorner")
                local barcorner = Instance.new("UICorner")
                local circlebar = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")

                Slider.Name = "Slider"
                Slider.Parent = MainFramePage
                Slider.BackgroundColor3 = _G.Color
                Slider.Size = UDim2.new(0, 470, 0, 51)

                slidercorner.CornerRadius = UDim.new(0, 5)
                slidercorner.Parent = Slider

                sliderr.Name = "sliderr"
                sliderr.Parent = Slider
                sliderr.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                sliderr.Position = UDim2.new(0, 1, 0, 1)
                sliderr.Size = UDim2.new(0, 468, 0, 49)

                sliderrcorner.CornerRadius = UDim.new(0, 5)
                sliderrcorner.Parent = sliderr

                SliderLabel.Name = "SliderLabel"
                SliderLabel.Parent = sliderr
                SliderLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SliderLabel.BackgroundTransparency = 1.000
                SliderLabel.Position = UDim2.new(0, 15, 0, 0)
                SliderLabel.Size = UDim2.new(0, 180, 0, 26)
                SliderLabel.Font = Enum.Font.GothamSemibold
                SliderLabel.Text = text
                SliderLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
                SliderLabel.TextSize = 16.000

                bar.Name = "bar"
                bar.Parent = sliderr
                bar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                bar.Position = UDim2.new(0, 10, 0, 35)
                bar.Size = UDim2.new(0, 448, 0, 5)

                bar1.Name = "bar1"
                bar1.Parent = bar
                bar1.BackgroundColor3 = _G.Color
                bar1.Size = UDim2.new(set/max, 0, 0, 5)

                bar1corner.CornerRadius = UDim.new(0, 5)
                bar1corner.Parent = bar1

                barcorner.CornerRadius = UDim.new(0, 5)
                barcorner.Parent = bar

                circlebar.Name = "circlebar"
                circlebar.Parent = bar1
                circlebar.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
                circlebar.Position = UDim2.new(1, -2, 0, -3)
                circlebar.Size = UDim2.new(0, 10, 0, 10)

                UICorner.CornerRadius = UDim.new(0, 100)
                UICorner.Parent = circlebar

                local mouse = game.Players.LocalPlayer:GetMouse()
                local uis = game:GetService("UserInputService")

                bar.MouseButton1Down:Connect(function()
                    local Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min)) or 0
                    pcall(function()
                        callback(Value)
                    end)
                    bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
                    circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
                    moveconnection = mouse.Move:Connect(function()
                        local Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
                        pcall(function()
                            callback(Value)
                        end)
                        bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
                        circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
                    end)
                    releaseconnection = uis.InputEnded:Connect(function(Mouse)
                        if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                            local Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
                            pcall(function()
                                callback(Value)
                            end)
                            bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
                            circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
                            moveconnection:Disconnect()
                            releaseconnection:Disconnect()
                        end
                    end)
                end)
            end

            function main:Label(text)
                local Label = Instance.new("TextLabel")
                local PaddingLabel = Instance.new("UIPadding")
                local labell = {}
        
                Label.Name = "Label"
                Label.Parent = MainFramePage
                Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Label.BackgroundTransparency = 1.000
                Label.Size = UDim2.new(0, 470, 0, 20)
                Label.Font = Enum.Font.GothamSemibold
                Label.TextColor3 = Color3.fromRGB(225, 225, 225)
                Label.TextSize = 16.000
                Label.Text = text
                Label.TextXAlignment = Enum.TextXAlignment.Left

                PaddingLabel.PaddingLeft = UDim.new(0,0)
                PaddingLabel.Parent = Label
                PaddingLabel.Name = "PaddingLabel"
        
                function labell:Set(newtext)
                    Label.Text = newtext
                end

                return labell
            end

            function main:Seperator(text)
                local Seperator = Instance.new("Frame")
                local Sep1 = Instance.new("Frame")
                local Sep2 = Instance.new("TextLabel")
                local Sep3 = Instance.new("Frame")
                
                Seperator.Name = "Seperator"
                Seperator.Parent = MainFramePage
                Seperator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Seperator.BackgroundTransparency = 1.000
                Seperator.Size = UDim2.new(0, 470, 0, 20)
                
                Sep1.Name = "Sep1"
                Sep1.Parent = Seperator
                Sep1.BackgroundColor3 = _G.Color
                Sep1.BorderSizePixel = 0
                Sep1.Position = UDim2.new(0, 0, 0, 10)
                Sep1.Size = UDim2.new(0, 80, 0, 1)
                
                Sep2.Name = "Sep2"
                Sep2.Parent = Seperator
                Sep2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Sep2.BackgroundTransparency = 1.000
                Sep2.Position = UDim2.new(0, 185, 0, 0)
                Sep2.Size = UDim2.new(0, 100, 0, 20)
                Sep2.Font = Enum.Font.GothamSemibold
                Sep2.Text = text
                Sep2.TextColor3 = Color3.fromRGB(255, 255, 255)
                Sep2.TextSize = 14.000
                
                Sep3.Name = "Sep3"
                Sep3.Parent = Seperator
                Sep3.BackgroundColor3 = _G.Color
                Sep3.BorderSizePixel = 0
                Sep3.Position = UDim2.new(0, 390, 0, 10)
                Sep3.Size = UDim2.new(0, 80, 0, 1)
            end

            return main
        end
        return uitab
    end

    local Window = library:Window(Title, SubTitle, "Version 1.0", "95689726591891", Enum.KeyCode.RightControl)
    
    -- Kết nối nút logo với UI
    ImageButton.MouseButton1Click:Connect(function()
        _G.AnuraHubUIEnabled = not _G.AnuraHubUIEnabled
        if game.CoreGui:FindFirstChild("RippleHUBLIB") then
            game.CoreGui:FindFirstChild("RippleHUBLIB").Main.Visible = _G.AnuraHubUIEnabled
        end
    end)
    
    local Tabs = {}
    
    function Tabs:MakeTab(tabConfig)
        local tabName = tabConfig[1] or "Tab"
        local tabIcon = tabConfig[2] or "7040391851"
        return Window:AddTab(tabName, tabIcon)
    end
    
    return Tabs
end

return AnuraHub
