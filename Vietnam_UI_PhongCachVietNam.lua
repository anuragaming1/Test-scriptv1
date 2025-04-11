print("Break");
local v0 = require(game:GetService("ReplicatedStorage").Notification);
v0.new("<Color=Cyan>30/4 – Tự hào quá khứ, vững bước tương lai!<Color=/>"):Display();
wait(0.5);
v0.new("<Color=Yellow>Everyone Goes to  to Communicate<Color=/>"):Display();
wait(1);
repeat
	wait();
until game.Players.LocalPlayer
if  not game:IsLoaded() then
	game.Loaded:Wait();
end
local v1 = task;
if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
	repeat
		task.wait();
		if (game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true) then
			if (getgenv().Team == "Marines") then
				for v1932, v1933 in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container['Marines'].Frame.TextButton.Activated)) do
					for v2129, v2130 in pairs(getconnections(game:GetService("UserInputService").TouchTapInWorld)) do
						v2130:Fire();
					end
					v1933.Function();
				end
			else
				for v1934, v1935 in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container['Pirates'].Frame.TextButton.Activated)) do
					for v2131, v2132 in pairs(getconnections(game:GetService("UserInputService").TouchTapInWorld)) do
						v2132:Fire();
					end
					v1935.Function();
				end
			end
		end
	until (game.Players.LocalPlayer.Team ~= nil) and game:IsLoaded()
end
if  not LPH_OBFUSCATED then
	function LPH_JIT_MAX(...)
		return ...;
	end
	function LPH_NO_VIRTUALIZE(...)
		return ...;
	end
	function LPH_NO_UPVALUES(...)
		return ...;
	end
end
spawn(function()
	for v621, v622 in pairs(game:GetService("ReplicatedStorage").Effect.Container:GetChildren()) do
		if ((v622.Name == "Death") or (v622.Name == "Spawn")) then
			v622:Destroy();
		end
	end
end);
spawn(function()
	for v623, v624 in pairs(game:GetDescendants()) do
		if (v624:IsA("ParticleEmitter") or v624:IsA("Trail")) then
			v624.Lifetime = NumberRange.new(0);
		elseif v624:IsA("Explosion") then
			v624.BlastPressure = 1;
			v624.BlastRadius = 1;
		elseif (v624:IsA("Fire") or v624:IsA("SpotLight") or v624:IsA("Smoke")) then
			v624.Enabled = false;
		end
	end
end);
spawn(function()
	for v625, v626 in pairs(game:GetDescendants()) do
		if v626:IsA("Texture") then
			v626.Texture = "";
		elseif (v626:IsA("BasePart") and (v626.Material == Enum.Material.Water)) then
			v626.Material = Enum.Material.SmoothPlastic;
		end
	end
	for v627, v628 in pairs(game.Players.LocalPlayer.PlayerScripts:GetDescendants()) do
		local v629 = {
			"WaterBlur",
			"WaterEffect",
			"WaterColorCorrection",
			"WaterCFrame",
			"MirageFog"
		};
		if table.find(v629, v628.Name) then
			v628:Destroy();
		end
	end
end);
local v2 = game:GetService("UserInputService");
local v3 = game:GetService("TweenService");
local function v4(v127, v128)
	local v129 = nil;
	local v130 = nil;
	local v131 = nil;
	local v132 = nil;
	local function v133(v630)
		local v631 = v630.Position - v131 ;
		local v632 = UDim2.new(v132.X.Scale, v132.X.Offset + v631.X , v132.Y.Scale, v132.Y.Offset + v631.Y );
		local v633 = v3:Create(v128, TweenInfo.new(0.1), {
			Position = v632
		});
		v633:Play();
	end
	v127.InputBegan:Connect(function(v634)
		if ((v634.UserInputType == Enum.UserInputType.MouseButton1) or (v634.UserInputType == Enum.UserInputType.Touch)) then
			v129 = true;
			v131 = v634.Position;
			v132 = v128.Position;
			v634.Changed:Connect(function()
				if (v634.UserInputState == Enum.UserInputState.End) then
					v129 = false;
				end
			end);
		end
	end);
	v127.InputChanged:Connect(function(v635)
		if ((v635.UserInputType == Enum.UserInputType.MouseMovement) or (v635.UserInputType == Enum.UserInputType.Touch)) then
			v130 = v635;
		end
	end);
	v2.InputChanged:Connect(function(v636)
		if ((v636 == v130) and v129) then
			v133(v636);
		end
	end);
end
local v5 = {};
v5.Window = function(v134, v135)
	local v136 = {};
	local v137 = false;
	local v138 = false;
	local v139 = "";
	local v135 = v135 or Enum.KeyCode.RightControl ;
	local v140 = string.gsub(tostring(v135), "Enum.KeyCode.", "");
	local v141 = Instance.new("ScreenGui");
	v141.Name = "Anchor";
	v141.Parent = game.CoreGui;
	v141.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	local v147 = Instance.new("Frame");
	v147.Name = "Main";
	v147.Parent = v141;
	v147.ClipsDescendants = true;
	v147.AnchorPoint = Vector2.new(0.5, 0.5);
	v147.BackgroundColor3 = Color3.fromRGB(210, 0, 0);
	v147.BackgroundTransparency = 0.3;
	v147.Position = UDim2.new(0.5, 0, 0.5, 0);
	v147.Size = UDim2.new(0, 0, 0, 0);
	v147:TweenSize(UDim2.new(0, 656, 0, 400), "Out", "Quad", 0, true);
	v147:TweenSize(UDim2.new(0, 656, 0, 350), "Out", "Quad", 0, true);
	v147:TweenSize(UDim2.new(0, 555, 0, 352), "Out", "Quad", 0, true);
	local v156 = Instance.new("UIStroke");
	v156.Name = "BtnStroke";
	v156.Parent = v147;
	v156.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	v156.Color = Color3.fromRGB(255, 223, 0);
	v156.LineJoinMode = Enum.LineJoinMode.Round;
	v156.Thickness = 1.5;
	v156.Transparency = 0;
	v156.Enabled = true;
	v156.Archivable = true;
	local v168 = Instance.new("UICorner");
	v168.Parent = Page;
	local v170 = Instance.new("ImageLabel");
	v170.Name = "Page";
	v170.Parent = v147;
	v170.BackgroundColor3 = Color3.fromRGB(210, 0, 0);
	v170.BackgroundTransparency = 1.1;
	v170.Position = UDim2.new(0.405426834, 0, 0.075000003, 0);
	v170.Size = UDim2.new(0, 263, 0, 325);
	v170.Image = "http://www.roblox.com/asset/?id="   .. tostring(83190276951914) ;
	local v178 = Instance.new("UICorner");
	v178.Name = "MCNR";
	v178.Parent = v147;
	local v181 = Instance.new("UICorner");
	v181.Name = "MCNR";
	v181.Parent = BackgroundImage;
	local v184 = Instance.new("UICorner");
	v184.Name = "Tự hào";
	v184.Parent = Dark;
	local v187 = Instance.new("Frame");
	v187.Name = "Top";
	v187.Parent = v147;
	v187.BackgroundColor3 = Color3.fromRGB(210, 0, 0);
	v187.Size = UDim2.new(0, 556, 0, 30);
	v187.BackgroundTransparency = 1;
	local v193 = Instance.new("UICorner");
	v193.Name = "TCNR";
	v193.Parent = v187;
	v193.CornerRadius = UDim.new(0, 5);
	local v197 = Instance.new("TextLabel");
	v197.Name = "ttittles";
	v197.Parent = v187;
	v197.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	v197.BackgroundTransparency = 1;
	v197.Position = UDim2.new(0, 30, 0.05, 0);
	v197.Size = UDim2.new(0, 255, 0.05, 25);
	v197.Font = Enum.Font.SourceSansBold;
	v197.Text = "Tự Hào Việt Nam";
	v197.TextSize = 17;
	v197.TextColor3 = Color3.fromRGB(255, 223, 0);
	v197.TextXAlignment = Enum.TextXAlignment.Left;
	local v211 = Instance.new("TextLabel");
	v211.Name = "patch";
	v211.Parent = v187;
	v211.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	v211.BackgroundTransparency = 1;
	v211.Position = UDim2.new(0, 200, 0.05, 0);
	v211.Size = UDim2.new(0, 255, 0.05, 25);
	v211.Font = Enum.Font.SourceSansBold;
	v211.Text = " ";
	v211.TextSize = 17;
	v211.TextColor3 = Color3.fromRGB(43, 43, 43);
	v211.TextXAlignment = Enum.TextXAlignment.Left;
	local v223 = Instance.new("Frame");
	v223.Name = "Tab";
	v223.Parent = v147;
	v223.BackgroundColor3 = Color3.fromRGB(210, 0, 0);
	v223.Position = UDim2.new(0, 14, 0, 33);
	v223.BackgroundTransparency = 1;
	v223.Size = UDim2.new(0, 138, 0, 307);
	local v156 = Instance.new("UIStroke");
	local v230 = Instance.new("ScrollingFrame");
	v230.Name = "ScrollTab";
	v230.Parent = v223;
	v230.Active = true;
	v230.BackgroundColor3 = Color3.fromRGB(210, 0, 0);
	v230.Position = UDim2.new(0, 0, 0, 0);
	v230.BackgroundTransparency = 1;
	v230.Size = UDim2.new(0, 138, 0, 307);
	v230.ScrollBarThickness = 0;
	local v239 = Instance.new("UICorner");
	v239.Parent = v223;
	v239.CornerRadius = UDim.new(0, 5);
	local v242 = Instance.new("UIListLayout");
	v242.Name = "PLL";
	v242.Parent = v230;
	v242.SortOrder = Enum.SortOrder.LayoutOrder;
	v242.Padding = UDim.new(0, 2);
	local v248 = Instance.new("UIPadding");
	v248.Name = "PPD";
	v248.Parent = v230;
	local v156 = Instance.new("UIStroke");
	local v170 = Instance.new("Frame");
	v170.Name = "Page";
	v170.Parent = v147;
	v170.BackgroundColor3 = Color3.fromRGB(210, 0, 0);
	v170.Position = UDim2.new(0, 162, 0, 33);
	v170.Size = UDim2.new(0, 380, 0, 308);
	v170.BackgroundTransparency = 1;
	local v251 = Instance.new("UICorner");
	v251.Parent = v170;
	v251.CornerRadius = UDim.new(0, 3);
	local v254 = Instance.new("Frame");
	v254.Name = "MainPage";
	v254.Parent = v170;
	v254.ClipsDescendants = true;
	v254.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	v254.BackgroundTransparency = 1;
	v254.Size = UDim2.new(0, 380, 0, 307);
	local v261 = Instance.new("Folder");
	v261.Name = "PageList";
	v261.Parent = v254;
	local v264 = Instance.new("UIPageLayout");
	v264.Parent = v261;
	v264.SortOrder = Enum.SortOrder.LayoutOrder;
	v264.EasingDirection = Enum.EasingDirection.InOut;
	v264.EasingStyle = Enum.EasingStyle.Quad;
	v264.FillDirection = Enum.FillDirection.Vertical;
	v264.Padding = UDim.new(0, 10);
	v264.TweenTime = 0;
	v264.GamepadInputEnabled = false;
	v264.ScrollWheelInputEnabled = false;
	v264.TouchInputEnabled = false;
	v4(v187, v147);
	v2.InputBegan:Connect(function(v637)
		if (v637.KeyCode == Enum.KeyCode.RightControl) then
			if (v137 == false) then
				v137 = true;
				v147:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Quad", 0, true);
			else
				v137 = false;
				v147:TweenSize(UDim2.new(0, 556, 0, 350), "Out", "Quad", 0, true);
			end
		end
	end);
	local v278 = {};
	v278.T = function(v638, v639, v640)
		local v641 = Instance.new("UIStroke");
		local v642 = Instance.new("UICorner");
		local v643 = Instance.new("TextButton");
		local v644 = Instance.new("TextLabel");
		local v645 = Instance.new("UICorner");
		local v646 = Instance.new("TextLabel");
		v643.Parent = v230;
		v643.Name = v639   .. "Server" ;
		v643.Text = "";
		v643.BackgroundColor3 = Color3.fromRGB(210, 0, 0);
		v643.BackgroundTransparency = 1;
		v643.Size = UDim2.new(0, 136, 0, 30);
		v643.Font = Enum.Font.SourceSansBold;
		v643.TextColor3 = Color3.fromRGB(255, 255, 255);
		v643.TextSize = 12;
		v643.TextTransparency = 0.9;
		v646.Parent = v643;
		v646.BackgroundColor3 = Color3.fromRGB(210, 0, 0);
		v646.BackgroundTransparency = 1;
		v646.Position = UDim2.new(0, 30, 0, 2);
		v646.Size = UDim2.new(0, 100, 0, 25);
		v646.Font = Enum.Font.SourceSansBold;
		v646.Text = v639;
		v646.TextColor3 = Color3.fromRGB(255, 255, 255);
		v646.TextSize = 14.5;
		v646.TextXAlignment = Enum.TextXAlignment.Left;
		local v669 = Instance.new("ImageLabel");
		v669.Name = "LogoIDK";
		v669.Parent = v643;
		v669.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		v669.BackgroundTransparency = 1;
		v669.Position = UDim2.new(0, 6, 0, 4.5);
		v669.Size = UDim2.new(0, 20, 0, 20);
		v669.Image = v640;
		v645.CornerRadius = UDim.new(0, 5);
		v645.Parent = v643;
		v642.CornerRadius = UDim.new(0, 5);
		v642.Parent = v643;
		local v681 = Instance.new("ScrollingFrame");
		v681.Name = v639   .. "_Page" ;
		v681.Parent = v261;
		v681.Active = true;
		v681.BackgroundColor3 = Color3.fromRGB(0, 10, 250);
		v681.Position = UDim2.new(0, 0, 0, 0);
		v681.BackgroundTransparency = 1;
		v681.Size = UDim2.new(0, 400, 0, 307);
		v681.ScrollBarThickness = 0;
		local v690 = Instance.new("UICorner");
		v690.Parent = v254;
		v690.CornerRadius = UDim.new(0, 5);
		local v693 = Instance.new("UIPadding");
		local v694 = Instance.new("UIListLayout");
		v693.Parent = v681;
		v694.Padding = UDim.new(0, 3);
		v694.Parent = v681;
		v694.SortOrder = Enum.SortOrder.LayoutOrder;
		local v700 = {};
		function ActivateTab(v910)
			if activeTab then
				activeTab.BackgroundTransparency = 1;
			end
			activeTab = v910;
			activeTab.BackgroundTransparency = 0.8;
			local v912 = string.gsub(v910.Name, "Server", "")   .. "_Page" ;
			for v1573, v1574 in pairs(v261:GetChildren()) do
				if (v1574.Name == v912) then
					v264:JumpTo(v1574);
				end
			end
		end
		for v913, v914 in pairs(v230:GetChildren()) do
			if v914:IsA("TextButton") then
				table.insert(v700, v914);
				v914.MouseButton1Click:Connect(function()
					ActivateTab(v914);
				end);
			end
		end
		if (v138 == false) then
			for v1680, v1681 in ipairs(v700) do
				v3:Create(v1681, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundTransparency = 1
				}):Play();
			end
			ActivateTab(v700[1]);
			v138 = true;
		end
		game:GetService("RunService").Stepped:Connect(function()
			pcall(function()
				v681.CanvasSize = UDim2.new(0, 0, 0, v694.AbsoluteContentSize.Y + 20 );
				v230.CanvasSize = UDim2.new(0, 0, 0, v242.AbsoluteContentSize.Y + 20 );
			end);
		end);
		local v701 = {};
		v701.Button = function(v915, v916, v917)
			local v918 = Instance.new("Frame");
			local v919 = Instance.new("UICorner");
			local v920 = Instance.new("TextButton");
			local v921 = Instance.new("UICorner");
			local v922 = Instance.new("Frame");
			local v923 = Instance.new("UICorner");
			v918.Name = "Button";
			v918.Parent = v681;
			v918.BackgroundColor3 = Color3.new(0, 0, 0);
			v918.BackgroundTransparency = 1;
			v918.Size = UDim2.new(0, 358, 0, 33);
			v919.CornerRadius = UDim.new(0, 5);
			v919.Parent = v918;
			v920.Name = "TextBtn";
			v920.Parent = v918;
			v920.BackgroundColor3 = Color3.fromRGB(210, 0, 0);
			v920.BackgroundTransparency = 0.8;
			v920.Position = UDim2.new(0, 0, 0, 0);
			v920.Size = UDim2.new(0, 379, 0, 33);
			v920.AutoButtonColor = false;
			v920.Font = Enum.Font.SourceSansBold;
			v920.Text = "[ "   .. v916   .. " ]" ;
			v920.TextColor3 = Color3.fromRGB(255, 255, 255);
			v920.TextSize = 15;
			v921.CornerRadius = UDim.new(0, 5);
			v921.Parent = v920;
			v922.Name = "Black";
			v922.Parent = v918;
			v922.BackgroundColor3 = Color3.fromRGB(210, 0, 0);
			v922.BackgroundTransparency = 1;
			v922.BorderSizePixel = 0;
			v922.Position = UDim2.new(0, 0, 0, 0);
			v922.Size = UDim2.new(0, 379, 0, 33);
			v923.CornerRadius = UDim.new(0, 5);
			v923.Parent = v922;
			v920.MouseEnter:Connect(function()
				v3:Create(v922, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundTransparency = 0.7
				}):Play();
			end);
			v920.MouseLeave:Connect(function()
				v3:Create(v922, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundTransparency = 1
				}):Play();
			end);
			v920.MouseButton1Click:Connect(function()
				v920.TextSize = 0;
				v3:Create(v920, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					TextSize = 15
				}):Play();
				v917();
			end);
		end;
		v701.Toggle = function(v954, v955, v956, v957)
			v956 = v956 or false ;
			local v958 = v956;
			_G.Color = Color3.fromRGB(240, 10, 10);
			_G.TrueColor = Color3.fromRGB(210, 0, 0);
			local v959 = Instance.new("UICorner");
			local v960 = Instance.new("UIPadding");
			local v961 = Instance.new("UIStroke");
			local v962 = Instance.new("TextButton");
			local v963 = Instance.new("UICorner");
			local v964 = Instance.new("TextLabel");
			local v965 = Instance.new("TextButton");
			local v966 = Instance.new("UICorner");
			local v967 = Instance.new("Frame");
			local v968 = Instance.new("UICorner");
			local v969 = Instance.new("ImageLabel");
			v962.Name = "Button";
			v962.Parent = v681;
			v962.BackgroundColor3 = Color3.fromRGB(210, 0, 0);
			v962.BackgroundTransparency = 0.8;
			v962.Size = UDim2.new(0, 379, 0, 46);
			v962.AutoButtonColor = false;
			v962.Font = Enum.Font.SourceSans;
			v962.Text = "";
			v962.TextColor3 = Color3.fromRGB(210, 0, 0);
			v962.TextSize = 11;
			v963.CornerRadius = UDim.new(0, 5);
			v963.Parent = v962;
			v969.Name = "Icon";
			v969.Parent = v962;
			v969.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v969.BackgroundTransparency = 1;
			v969.Position = UDim2.new(0, 5, 0, 8);
			v969.Size = UDim2.new(0, 30, 0, 30);
			v964.Parent = v962;
			v964.BackgroundColor3 = Color3.fromRGB(150, 150, 150);
			v964.BackgroundTransparency = 1;
			v964.Position = UDim2.new(0, 40, 0, 0);
			v964.Size = UDim2.new(0, 280, 0, 46);
			v964.Font = Enum.Font.SourceSansBold;
			v964.Text = v955;
			v964.TextColor3 = Color3.fromRGB(255, 255, 255);
			v964.TextSize = 15;
			v964.TextXAlignment = Enum.TextXAlignment.Left;
			v965.Name = "ToggleImage";
			v965.Parent = v962;
			v965.BackgroundColor3 = Color3.fromRGB(46, 56, 56);
			v965.BackgroundTransparency = 0.1;
			v965.Position = UDim2.new(0, 320, 0, 13);
			v965.Size = UDim2.new(0, 45, 0, 20);
			v965.Text = "";
			v966.CornerRadius = UDim.new(0, 10);
			v966.Parent = v965;
			v967.Name = "Circle";
			v967.Parent = v965;
			v967.BackgroundColor3 = Color3.fromRGB(210, 0, 0);
			v967.Position = UDim2.new(0, 2, 0, 2);
			v967.Size = UDim2.new(0, 16, 0, 16);
			v968.CornerRadius = UDim.new(0, 10);
			v968.Parent = v967;
			v965.MouseButton1Click:Connect(function()
				if (v958 == false) then
					v958 = true;
					v961.Color = _G.TrueColor;
					v967:TweenPosition(UDim2.new(0, 27, 0, 2), "Out", "Sine", 0.1, true);
					v3:Create(v967, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						BackgroundColor3 = _G.TrueColor
					}):Play();
				else
					v958 = false;
					v961.Color = _G.Color;
					v967:TweenPosition(UDim2.new(0, 2, 0, 2), "Out", "Sine", 0.1, true);
					v3:Create(v967, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(210, 0, 0)
					}):Play();
				end
				pcall(v957, v958);
			end);
			if (v956 == true) then
				v958 = true;
				v961.Color = _G.TrueColor;
				v967:TweenPosition(UDim2.new(0, 27, 0, 2), "Out", "Sine", 0, true);
				v3:Create(v967, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundColor3 = _G.TrueColor
				}):Play();
				pcall(v957, v958);
			end
		end;
		v701.Dropdown = function(v1017, v1018, v1019, v1020)
			local v1021 = false;
			local v1022 = Instance.new("Frame");
			local v1023 = Instance.new("UICorner");
			local v1024 = Instance.new("UICorner");
			local v1025 = Instance.new("UICorner");
			local v1026 = Instance.new("TextLabel");
			local v1027 = Instance.new("ScrollingFrame");
			local v1028 = Instance.new("UIListLayout");
			local v1029 = Instance.new("UIPadding");
			local v1030 = Instance.new("TextButton");
			local v1031 = Instance.new("TextButton");
			local v1032 = Instance.new("ImageLabel");
			local v1033 = Instance.new("UIStroke");
			v1022.Name = "Dropdown";
			v1022.Parent = v681;
			v1022.BackgroundColor3 = Color3.fromRGB(210, 0, 0);
			v1022.BackgroundTransparency = 0.8;
			v1022.ClipsDescendants = true;
			v1022.Size = UDim2.new(0, 379, 0, 38);
			v1023.CornerRadius = UDim.new(0, 3);
			v1023.Parent = v1022;
			local v1042 = Instance.new("ImageLabel");
			v1042.Name = "Icon";
			v1042.Parent = v1022;
			v1042.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1042.BackgroundTransparency = 1;
			v1042.Position = UDim2.new(0, 5, 0, 3);
			v1042.Size = UDim2.new(0, 30, 0, 30);
			v1026.Name = "DropTitle";
			v1026.Parent = v1022;
			v1026.BackgroundColor3 = Color3.fromRGB(210, 0, 0);
			v1026.BackgroundTransparency = 1;
			v1026.Size = UDim2.new(0, 379, 0, 38);
			v1026.Font = Enum.Font.SourceSansBold;
			v1026.Text = v1018;
			v1026.TextColor3 = Color3.fromRGB(255, 255, 255);
			v1026.TextSize = 15;
			v1026.TextXAlignment = Enum.TextXAlignment.Left;
			v1026.Position = UDim2.new(0, 40, 0, 0);
			v1031.Name = "SelectItems";
			v1031.Parent = v1022;
			v1031.BackgroundColor3 = Color3.fromRGB(46, 56, 56);
			v1031.TextColor3 = Color3.fromRGB(255, 255, 255);
			v1031.BackgroundTransparency = 0.1;
			v1031.Position = UDim2.new(0, 220, 0, 34);
			v1031.Size = UDim2.new(0, 155, 0, 30);
			v1031.Font = Enum.Font.SourceSansBold;
			v1031.TextSize = 12;
			v1031.Text = "Select..";
			v1031.ClipsDescendants = true;
			v1031.TextXAlignment = Enum.TextXAlignment.Left;
			local v1074 = Instance.new("UIPadding");
			v1074.Parent = v1031;
			v1074.PaddingLeft = UDim.new(0, 15);
			v1074.PaddingRight = UDim.new(0, 15);
			v1031.AnchorPoint = Vector2.new(0, 3);
			v1024.Parent = v1031;
			v1024.CornerRadius = UDim.new(0, 5);
			v1025.Parent = v1027;
			v1025.CornerRadius = UDim.new(0, 5);
			v1027.Name = "DropScroll";
			v1027.Parent = v1022;
			v1027.Active = true;
			v1027.BackgroundColor3 = Color3.fromRGB(46, 56, 56);
			v1027.BackgroundTransparency = 0.1;
			v1027.BorderSizePixel = 0;
			v1027.Position = UDim2.new(0, 2, 0, 40);
			v1027.Size = UDim2.new(0, 375, 0, 100);
			v1027.ScrollBarThickness = 3;
			v1028.Parent = v1027;
			v1028.SortOrder = Enum.SortOrder.LayoutOrder;
			v1028.Padding = UDim.new(0, 5);
			v1029.Parent = v1027;
			v1029.PaddingLeft = UDim.new(0, 5);
			v1029.PaddingTop = UDim.new(0, 10);
			for v1578, v1579 in next, v1019 do
				local v1580 = Instance.new("TextButton");
				v1580.Name = "Item";
				v1580.Parent = v1027;
				v1580.BackgroundColor3 = Color3.fromRGB(46, 56, 56);
				v1580.BackgroundTransparency = 1;
				v1580.Size = UDim2.new(0, 379, 0, 26);
				v1580.Font = Enum.Font.SourceSansBold;
				v1580.Text = tostring(v1579);
				v1580.TextColor3 = Color3.fromRGB(255, 255, 255);
				v1580.TextSize = 12;
				v1580.TextTransparency = 0.5;
				v1580.TextXAlignment = Enum.TextXAlignment.Center;
				v1580.MouseEnter:Connect(function()
					v3:Create(v1580, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextTransparency = 0
					}):Play();
				end);
				v1580.MouseLeave:Connect(function()
					v3:Create(v1580, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextTransparency = 0.5
					}):Play();
				end);
				v1580.MouseButton1Click:Connect(function()
					v1021 = false;
					v1022:TweenSize(UDim2.new(0, 379, 0, 38), "Out", "Quad", 0.1, true);
					v3:Create(v1032, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = 180
					}):Play();
					v1020(v1580.Text);
					v1031.Text = v1580.Text;
				end);
			end
			v1027.CanvasSize = UDim2.new(0, 0, 0, v1028.AbsoluteContentSize.Y + 10 );
			v1031.MouseButton1Click:Connect(function()
				if (v1021 == false) then
					v1021 = true;
					v1022:TweenSize(UDim2.new(0, 379, 0, 142), "Out", "Quad", 0.1, true);
					v3:Create(v1032, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = 0
					}):Play();
				else
					v1021 = false;
					v1022:TweenSize(UDim2.new(0, 379, 0, 38), "Out", "Quad", 0.1, true);
					v3:Create(v1032, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = 180
					}):Play();
				end
			end);
			local v1100 = {};
			v1100.Add = function(v1594, v1595)
				local v1596 = Instance.new("TextButton");
				v1596.Name = "Item";
				v1596.Parent = v1027;
				v1596.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
				v1596.BackgroundTransparency = 1;
				v1596.Size = UDim2.new(0, 379, 0, 26);
				v1596.Font = Enum.Font.SourceSansBold;
				v1596.Text = tostring(v1595);
				v1596.TextColor3 = Color3.fromRGB(255, 255, 255);
				v1596.TextSize = 13;
				v1596.TextTransparency = 0.5;
				v1596.MouseEnter:Connect(function()
					v3:Create(v1596, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextTransparency = 0
					}):Play();
				end);
				v1596.MouseLeave:Connect(function()
					v3:Create(v1596, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextTransparency = 0.5
					}):Play();
				end);
				v1596.MouseButton1Click:Connect(function()
					v1021 = false;
					v1022:TweenSize(UDim2.new(0, 379, 0, 38), "Out", "Quad", 0.1, true);
					v3:Create(v1032, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = 180
					}):Play();
					v1020(v1596.Text);
					v1026.Text = v1018   .. ": "   .. v1596.Text ;
				end);
			end;
			v1100.Clear = function(v1608)
				v1026.Text = tostring(v1018)   .. ": " ;
				v1021 = false;
				v1022:TweenSize(UDim2.new(0, 379, 0, 38), "Out", "Quad", 0.1, true);
				v3:Create(v1032, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					Rotation = 180
				}):Play();
				for v1686, v1687 in next, v1027:GetChildren() do
					if v1687:IsA("TextButton") then
						v1687:Destroy();
					end
				end
			end;
			return v1100;
		end;
		v701.Textbox = function(v1103, v1104, v1105, v1106)
			local v1107 = Instance.new("Frame");
			local v1108 = Instance.new("UICorner");
			local v1109 = Instance.new("Frame");
			local v1110 = Instance.new("UICorner");
			local v1111 = Instance.new("TextLabel");
			local v1112 = Instance.new("TextButton");
			local v1113 = Instance.new("TextBox");
			local v1114 = Instance.new("UICorner");
			v1107.Name = "Textbox";
			v1107.Parent = v681;
			v1107.BackgroundColor3 = Color3.new(0, 134, 139);
			v1107.BackgroundTransparency = 0.5;
			v1107.Size = UDim2.new(0, 379, 0, 31);
			v1108.CornerRadius = UDim.new(0, 5);
			v1108.Name = "TextboxCorner";
			v1108.Parent = v1107;
			v1109.Name = "Textboxx";
			v1109.Parent = v1107;
			v1109.BackgroundColor3 = Color3.fromRGB(45, 45, 45);
			v1109.Position = UDim2.new(0, 1, 0, 1);
			v1109.Size = UDim2.new(0, 385, 0, 29);
			v1110.CornerRadius = UDim.new(0, 5);
			v1110.Name = "TextboxxCorner";
			v1110.Parent = v1109;
			v1111.Name = "TextboxLabel";
			v1111.Parent = v1107;
			v1111.BackgroundColor3 = Color3.fromRGB(240, 10, 10);
			v1111.BackgroundTransparency = 1;
			v1111.Position = UDim2.new(0, 15, 0, 0);
			v1111.Text = v1104;
			v1111.Size = UDim2.new(0, 145, 0, 31);
			v1111.Font = Enum.Font.SourceSansBold;
			v1111.TextColor3 = Color3.fromRGB(255, 255, 255);
			v1111.TextSize = 16;
			v1111.TextTransparency = 0;
			v1111.TextXAlignment = Enum.TextXAlignment.Left;
			v1112.Name = "txtbtn";
			v1112.Parent = v1107;
			v1112.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1112.BackgroundTransparency = 1;
			v1112.Position = UDim2.new(0, 1, 0, 1);
			v1112.Size = UDim2.new(0, 379, 0, 29);
			v1112.Font = Enum.Font.SourceSans;
			v1112.Text = "";
			v1112.TextColor3 = Color3.fromRGB(210, 0, 0);
			v1112.TextSize = 14;
			v1113.Name = "RealTextbox";
			v1113.Parent = v1107;
			v1113.BackgroundColor3 = Color3.fromRGB(210, 0, 0);
			v1113.BackgroundTransparency = 0;
			v1113.Position = UDim2.new(0, 275, 0, 4);
			v1113.Size = UDim2.new(0, 100, 0, 24);
			v1113.Font = Enum.Font.SourceSansBold;
			v1113.Text = "";
			v1113.TextColor3 = Color3.fromRGB(225, 225, 225);
			v1113.TextSize = 11;
			v1113.TextTransparency = 0;
			v1113.FocusLost:Connect(function()
				v1106(v1113.Text);
				if v1105 then
					v1113.Text = "";
				end
			end);
			v1114.CornerRadius = UDim.new(0, 5);
			v1114.Parent = v1113;
		end;
		v701.Label = function(v1169, v1170)
			local v1171 = Instance.new("TextLabel");
			local v1172 = Instance.new("UIPadding");
			local v1173 = {};
			v1171.Name = "Label";
			v1171.Parent = v681;
			v1171.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1171.BackgroundTransparency = 1;
			v1171.Size = UDim2.new(0, 410, 0, 20);
			v1171.Font = Enum.Font.SourceSansBold;
			v1171.TextColor3 = Color3.fromRGB(225, 225, 225);
			v1171.TextSize = 16;
			v1171.Text = v1170;
			v1171.TextXAlignment = Enum.TextXAlignment.Left;
			v1172.PaddingLeft = UDim.new(0, 15);
			v1172.Parent = v1171;
			v1172.Name = "PaddingLabel";
			v1173.Set = function(v1610, v1611)
				v1171.Text = v1611;
			end;
			return v1173;
		end;
		v701.Label1 = function(v1190, v1191)
			local v1192 = Instance.new("TextLabel");
			local v1193 = Instance.new("UIPadding");
			local v1194 = {};
			v1192.Name = "Label1";
			v1192.Parent = v681;
			v1192.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1192.BackgroundTransparency = 1;
			v1192.Size = UDim2.new(0, 410, 0, 20);
			v1192.Font = Enum.Font.SourceSansBold;
			v1192.TextColor3 = Color3.fromRGB(255, 255, 255);
			v1192.TextSize = 15;
			v1192.Text = v1191;
			v1192.TextXAlignment = Enum.TextXAlignment.Left;
			v1193.PaddingLeft = UDim.new(0, 15);
			v1193.Parent = v1192;
			v1193.Name = "PaddingLabel1";
			v1194.Refresh = function(v1613, v1614)
				v1192.Text = v1614;
			end;
			return v1194;
		end;
		v701.Textbox = function(v1211, v1212, v1213, v1214)
			local v1215 = Instance.new("Frame");
			local v1216 = Instance.new("UICorner");
			local v1217 = Instance.new("Frame");
			local v1218 = Instance.new("UICorner");
			local v1219 = Instance.new("TextLabel");
			local v1220 = Instance.new("TextButton");
			local v1221 = Instance.new("TextBox");
			local v1222 = Instance.new("UICorner");
			v1215.Name = "Textbox";
			v1215.Parent = v681;
			v1215.BackgroundColor3 = Color3.new(0, 134, 139);
			v1215.BackgroundTransparency = 0.4;
			v1215.Size = UDim2.new(0, 379, 0, 31);
			v1216.CornerRadius = UDim.new(0, 5);
			v1216.Name = "TextboxCorner";
			v1216.Parent = v1215;
			v1217.Name = "Textboxx";
			v1217.Parent = v1215;
			v1217.BackgroundColor3 = Color3.fromRGB(45, 45, 45);
			v1217.Position = UDim2.new(0, 1, 0, 1);
			v1217.Size = UDim2.new(0, 385, 0, 29);
			v1218.CornerRadius = UDim.new(0, 3);
			v1218.Name = "TextboxxCorner";
			v1218.Parent = v1217;
			v1219.Name = "TextboxLabel";
			v1219.Parent = v1215;
			v1219.BackgroundColor3 = Color3.fromRGB(240, 10, 10);
			v1219.BackgroundTransparency = 1;
			v1219.Position = UDim2.new(0, 15, 0, 0);
			v1219.Text = v1212;
			v1219.Size = UDim2.new(0, 145, 0, 31);
			v1219.Font = Enum.Font.SourceSansBold;
			v1219.TextColor3 = Color3.fromRGB(225, 225, 225);
			v1219.TextSize = 16;
			v1219.TextTransparency = 0;
			v1219.TextXAlignment = Enum.TextXAlignment.Left;
			v1220.Name = "txtbtn";
			v1220.Parent = v1215;
			v1220.BackgroundColor3 = Color3.fromRGB(240, 10, 10);
			v1220.BackgroundTransparency = 1;
			v1220.Position = UDim2.new(0, 1, 0, 1);
			v1220.Size = UDim2.new(0, 379, 0, 29);
			v1220.Font = Enum.Font.SourceSans;
			v1220.Text = "";
			v1220.TextColor3 = Color3.fromRGB(210, 0, 0);
			v1220.TextSize = 14;
			v1221.Name = "RealTextbox";
			v1221.Parent = v1215;
			v1221.BackgroundColor3 = Color3.fromRGB(210, 0, 0);
			v1221.BackgroundTransparency = 0;
			v1221.Position = UDim2.new(0, 275, 0, 4);
			v1221.Size = UDim2.new(0, 100, 0, 24);
			v1221.Font = Enum.Font.SourceSansBold;
			v1221.Text = "";
			v1221.TextColor3 = Color3.fromRGB(225, 225, 225);
			v1221.TextSize = 11;
			v1221.TextTransparency = 0;
			v1221.FocusLost:Connect(function()
				v1214(v1221.Text);
				if v1213 then
					v1221.Text = "";
				end
			end);
			v1222.CornerRadius = UDim.new(0, 3);
			v1222.Parent = v1221;
		end;
		v701.Label = function(v1277, v1278)
			local v1279 = Instance.new("TextLabel");
			local v1280 = Instance.new("UIPadding");
			local v1281 = {};
			v1279.Name = "Label";
			v1279.Parent = v681;
			v1279.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1279.BackgroundTransparency = 1;
			v1279.Size = UDim2.new(0, 410, 0, 30);
			v1279.Font = Enum.Font.SourceSansBold;
			v1279.TextColor3 = Color3.fromRGB(225, 225, 225);
			v1279.TextSize = 14;
			v1279.Text = v1278;
			v1279.TextXAlignment = Enum.TextXAlignment.Left;
			v1280.PaddingLeft = UDim.new(0, 15);
			v1280.Parent = v1279;
			v1280.Name = "PaddingLabel";
			v1281.Set = function(v1616, v1617)
				v1279.Text = v1617;
			end;
			return v1281;
		end;
		v701.Label1 = function(v1298, v1299)
			local v1300 = Instance.new("TextLabel");
			local v1301 = Instance.new("UIPadding");
			local v1302 = {};
			v1300.Name = "Label1";
			v1300.Parent = v681;
			v1300.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1300.BackgroundTransparency = 1;
			v1300.Size = UDim2.new(0, 410, 0, 20);
			v1300.Font = Enum.Font.SourceSansBold;
			v1300.TextColor3 = Color3.fromRGB(255, 255, 255);
			v1300.TextSize = 15;
			v1300.Text = v1299;
			v1300.RichText = true;
			v1300.TextXAlignment = Enum.TextXAlignment.Left;
			v1301.PaddingLeft = UDim.new(0, 15);
			v1301.Parent = v1300;
			v1301.Name = "PaddingLabel1";
			v1302.Refresh = function(v1619, v1620)
				v1300.Text = v1620;
			end;
			return v1302;
		end;
		v701.Dis = function(v1320, v1321, v1322)
			local v1323 = Instance.new("TextLabel");
			local v1324 = Instance.new("UIPadding");
			local v1325 = {};
			v1323.Name = "Label1";
			v1323.Parent = v681;
			v1323.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1323.BackgroundTransparency = 1;
			v1323.Size = UDim2.new(0, 410, 0, 20);
			v1323.Font = Enum.Font.SourceSansBold;
			v1323.TextColor3 = Color3.fromRGB(255, 255, 255);
			v1323.TextSize = 15;
			v1323.Text = v1321;
			v1323.TextXAlignment = Enum.TextXAlignment.Left;
			Labeld.Name = "Labeld";
			Labeld.Parent = v681;
			Labeld.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Labeld.BackgroundTransparency = 1;
			Labeld.Size = UDim2.new(0, 410, 0, 20);
			Labeld.Font = Enum.Font.SourceSansBold;
			Labeld.TextColor3 = Color3.fromRGB(240, 10, 10);
			Labeld.TextSize = 15;
			Labeld.Text = v1322 or "" ;
			Labeld.TextXAlignment = Enum.TextXAlignment.Left;
			v1324.PaddingLeft = UDim.new(0, 15);
			v1324.Parent = v1323;
			v1324.Name = "PaddingLabel1";
			v1325.Refresh = function(v1622, v1623)
				v1323.Text = v1623;
			end;
			return v1325;
		end;
		v701.Seperator = function(v1352, v1353)
			local v1354 = Instance.new("Frame");
			local v1355 = Instance.new("Frame");
			local v1356 = Instance.new("TextLabel");
			local v1357 = Instance.new("Frame");
			v1354.Name = "Seperator";
			v1354.Parent = v681;
			v1354.BackgroundColor3 = Color3.fromRGB(43, 43, 43);
			v1354.BackgroundTransparency = 0.8;
			v1354.Size = UDim2.new(0, 379, 0, 30);
			v1356.Name = "Sep2";
			v1356.Parent = v1354;
			v1356.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1356.BackgroundTransparency = 1;
			v1356.Position = UDim2.new(0, 0, 0, 0);
			v1356.Size = UDim2.new(0, 379, 0, 30);
			v1356.Font = Enum.Font.SourceSansBold;
			v1356.Text = " "   .. v1353   .. " " ;
			v1356.TextColor3 = Color3.fromRGB(255, 255, 255);
			v1356.TextSize = 14;
		end;
		v701.UserAnchor = function(v1374)
		end;
		return v701;
	end;
	return v278;
end;
local v7 = Instance.new("ScreenGui");
local v8 = Instance.new("ImageButton");
local v9 = Instance.new("UICorner");
v7.Name = "ToggleUI";
v7.Parent = game.CoreGui;
v7.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
v8.Name = "ToggleButton";
v8.Parent = v7;
v8.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v8.BorderSizePixel = 0;
v8.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0);
v8.Size = UDim2.new(0, 53.5, 0, 53.5);
v8.BackgroundTransparency = 1;
v8.Image = "rbxassetid://131151731604309";
v8.Draggable = true;
v8.MouseButton1Click:Connect(function()
	game.CoreGui:FindFirstChild("Anchor").Enabled = not game.CoreGui:FindFirstChild("Anchor").Enabled;
end);
v9.CornerRadius = UDim.new(0, 15);
v9.Parent = v8;
if (game.PlaceId == 2753915549) then
	World1 = true;
elseif (game.PlaceId == 4442272183) then
	World2 = true;
elseif (game.PlaceId == 7449423635) then
	World3 = true;
end
function CheckQuest()
	MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value;
	if World1 then
		if ((MyLevel == 1) or (MyLevel <= 9)) then
			Mon = "Bandit";
			LevelQuest = 1;
			NameQuest = "BanditQuest1";
			NameMon = "Bandit";
			CFrameQuest = CFrame.new(1059, 17, 1546);
			CFrameMon = CFrame.new(943, 45, 1562);
		elseif ((MyLevel == 10) or (MyLevel <= 14)) then
			Mon = "Monkey";
			LevelQuest = 1;
			NameQuest = "JungleQuest";
			NameMon = "Monkey";
			CFrameQuest = CFrame.new( -1598, 37, 153);
			CFrameMon = CFrame.new( -1524, 50, 37);
		elseif ((MyLevel == 15) or (MyLevel <= 29)) then
			Mon = "Gorilla";
			LevelQuest = 2;
			NameQuest = "JungleQuest";
			NameMon = "Gorilla";
			CFrameQuest = CFrame.new( -1598, 37, 153);
			CFrameMon = CFrame.new( -1128, 40, -451);
		elseif ((MyLevel == 30) or (MyLevel <= 39)) then
			Mon = "Pirate";
			LevelQuest = 1;
			NameQuest = "BuggyQuest1";
			NameMon = "Pirate";
			CFrameQuest = CFrame.new( -1140, 4, 3829);
			CFrameMon = CFrame.new( -1262, 40, 3905);
		elseif ((MyLevel == 40) or (MyLevel <= 59)) then
			Mon = "Brute";
			LevelQuest = 2;
			NameQuest = "BuggyQuest1";
			NameMon = "Brute";
			CFrameQuest = CFrame.new( -1140, 4, 3829);
			CFrameMon = CFrame.new( -976, 55, 4304);
		elseif ((MyLevel == 60) or (MyLevel <= 74)) then
			Mon = "Desert Bandit";
			LevelQuest = 1;
			NameQuest = "DesertQuest";
			NameMon = "Desert Bandit";
			CFrameQuest = CFrame.new(897, 6, 4389);
			CFrameMon = CFrame.new(924, 7, 4482);
		elseif ((MyLevel == 75) or (MyLevel <= 89)) then
			Mon = "Desert Officer";
			LevelQuest = 2;
			NameQuest = "DesertQuest";
			NameMon = "Desert Officer";
			CFrameQuest = CFrame.new(897, 6, 4389);
			CFrameMon = CFrame.new(1608, 9, 4371);
		elseif ((MyLevel == 90) or (MyLevel <= 99)) then
			Mon = "Snow Bandit";
			LevelQuest = 1;
			NameQuest = "SnowQuest";
			NameMon = "Snow Bandit";
			CFrameQuest = CFrame.new(1385, 87, -1298);
			CFrameMon = CFrame.new(1362, 120, -1531);
		elseif ((MyLevel == 100) or (MyLevel <= 119)) then
			Mon = "Snowman";
			LevelQuest = 2;
			NameQuest = "SnowQuest";
			NameMon = "Snowman";
			CFrameQuest = CFrame.new(1385, 87, -1298);
			CFrameMon = CFrame.new(1243, 140, -1437);
		elseif ((MyLevel == 120) or (MyLevel <= 149)) then
			Mon = "Chief Petty Officer";
			LevelQuest = 1;
			NameQuest = "MarineQuest2";
			NameMon = "Chief Petty Officer";
			CFrameQuest = CFrame.new( -5035, 29, 4326);
			CFrameMon = CFrame.new( -4881, 23, 4274);
		elseif ((MyLevel == 150) or (MyLevel <= 174)) then
			Mon = "Sky Bandit";
			LevelQuest = 1;
			NameQuest = "SkyQuest";
			NameMon = "Sky Bandit";
			CFrameQuest = CFrame.new( -4844, 718, -2621);
			CFrameMon = CFrame.new( -4953, 296, -2899);
		elseif ((MyLevel == 175) or (MyLevel <= 189)) then
			Mon = "Dark Master";
			LevelQuest = 2;
			NameQuest = "SkyQuest";
			NameMon = "Dark Master";
			CFrameQuest = CFrame.new( -4844, 718, -2621);
			CFrameMon = CFrame.new( -5260, 391, -2229);
		elseif ((MyLevel == 190) or (MyLevel <= 209)) then
			Mon = "Prisoner";
			LevelQuest = 1;
			NameQuest = "PrisonerQuest";
			NameMon = "Prisoner";
			CFrameQuest = CFrame.new(5306, 2, 477);
			CFrameMon = CFrame.new(5099, "-0", 474);
		elseif ((MyLevel == 210) or (MyLevel <= 249)) then
			Mon = "Dangerous Prisoner";
			LevelQuest = 2;
			NameQuest = "PrisonerQuest";
			NameMon = "Dangerous Prisoner";
			CFrameQuest = CFrame.new(5306, 2, 477);
			CFrameMon = CFrame.new(5655, 16, 866);
		elseif ((MyLevel == 250) or (MyLevel <= 274)) then
			Mon = "Toga Warrior";
			LevelQuest = 1;
			NameQuest = "ColosseumQuest";
			NameMon = "Toga Warrior";
			CFrameQuest = CFrame.new( -1581, 7, -2982);
			CFrameMon = CFrame.new( -1820, 51, -2741);
		elseif ((MyLevel == 275) or (MyLevel <= 299)) then
			Mon = "Gladiator";
			LevelQuest = 2;
			NameQuest = "ColosseumQuest";
			NameMon = "Gladiator";
			CFrameQuest = CFrame.new( -1581, 7, -2982);
			CFrameMon = CFrame.new( -1268, 30, -2996);
		elseif ((MyLevel == 300) or (MyLevel <= 324)) then
			Mon = "Military Soldier";
			LevelQuest = 1;
			NameQuest = "MagmaQuest";
			NameMon = "Military Soldier";
			CFrameQuest = CFrame.new( -5319, 12, 8515);
			CFrameMon = CFrame.new( -5335, 46, 8638);
		elseif ((MyLevel == 325) or (MyLevel <= 374)) then
			Mon = "Military Spy";
			LevelQuest = 2;
			NameQuest = "MagmaQuest";
			NameMon = "Military Spy";
			CFrameQuest = CFrame.new( -5319, 12, 8515);
			CFrameMon = CFrame.new( -5803, 86, 8829);
		elseif ((MyLevel == 375) or (MyLevel <= 399)) then
			Mon = "Fishman Warrior";
			LevelQuest = 1;
			NameQuest = "FishmanQuest";
			NameMon = "Fishman Warrior";
			CFrameQuest = CFrame.new(61122, 18, 1567);
			CFrameMon = CFrame.new(60998, 50, 1534);
		elseif ((MyLevel == 400) or (MyLevel <= 449)) then
			Mon = "Fishman Commando";
			LevelQuest = 2;
			NameQuest = "FishmanQuest";
			NameMon = "Fishman Commando";
			CFrameQuest = CFrame.new(61122, 18, 1567);
			CFrameMon = CFrame.new(61866, 55, 1655);
		elseif ((MyLevel == 450) or (MyLevel <= 474)) then
			Mon = "God's Guard";
			LevelQuest = 1;
			NameQuest = "SkyExp1Quest";
			NameMon = "God's Guard";
			CFrameQuest = CFrame.new( -4720, 846, -1951);
			CFrameMon = CFrame.new( -4720, 846, -1951);
		elseif ((MyLevel == 475) or (MyLevel <= 524)) then
			Mon = "Shanda";
			LevelQuest = 2;
			NameQuest = "SkyExp1Quest";
			NameMon = "Shanda";
			CFrameQuest = CFrame.new( -7861, 5545, -381);
			CFrameMon = CFrame.new( -7741, 5580, -395);
		elseif ((MyLevel == 525) or (MyLevel <= 549)) then
			Mon = "Royal Squad";
			LevelQuest = 1;
			NameQuest = "SkyExp2Quest";
			NameMon = "Royal Squad";
			CFrameQuest = CFrame.new( -7903, 5636, -1412);
			CFrameMon = CFrame.new( -7727, 5650, -1410);
		elseif ((MyLevel == 550) or (MyLevel <= 624)) then
			Mon = "Royal Soldier";
			LevelQuest = 2;
			NameQuest = "SkyExp2Quest";
			NameMon = "Royal Soldier";
			CFrameQuest = CFrame.new( -7903, 5636, -1412);
			CFrameMon = CFrame.new( -7894, 5640, -1629);
		elseif ((MyLevel == 625) or (MyLevel <= 649)) then
			Mon = "Galley Pirate";
			LevelQuest = 1;
			NameQuest = "FountainQuest";
			NameMon = "Galley Pirate";
			CFrameQuest = CFrame.new(5258, 39, 4052);
			CFrameMon = CFrame.new(5391, 70, 4023);
		elseif (MyLevel >= 650) then
			Mon = "Galley Captain";
			LevelQuest = 2;
			NameQuest = "FountainQuest";
			NameMon = "Galley Captain";
			CFrameQuest = CFrame.new(5258, 39, 4052);
			CFrameMon = CFrame.new(5985, 70, 4790);
		end
	elseif World2 then
		if ((MyLevel == 700) or (MyLevel <= 724)) then
			Mon = "Raider";
			LevelQuest = 1;
			NameQuest = "Area1Quest";
			NameMon = "Raider";
			CFrameQuest = CFrame.new( -427, 73, 1835);
			CFrameMon = CFrame.new( -614, 90, 2240);
		elseif ((MyLevel == 725) or (MyLevel <= 774)) then
			Mon = "Mercenary";
			LevelQuest = 2;
			NameQuest = "Area1Quest";
			NameMon = "Mercenary";
			CFrameQuest = CFrame.new( -427, 73, 1835);
			CFrameMon = CFrame.new( -867, 110, 1621);
		elseif ((MyLevel == 775) or (MyLevel <= 874)) then
			Mon = "Swan Pirate";
			LevelQuest = 1;
			NameQuest = "Area2Quest";
			NameMon = "Swan Pirate";
			CFrameQuest = CFrame.new(635, 73, 919);
			CFrameMon = CFrame.new(635, 73, 919);
		elseif ((MyLevel == 875) or (MyLevel <= 899)) then
			Mon = "Marine Lieutenant";
			LevelQuest = 1;
			NameQuest = "MarineQuest3";
			NameMon = "Marine Lieutenant";
			CFrameQuest = CFrame.new( -2441, 73, -3219);
			CFrameMon = CFrame.new( -2552, 110, -3050);
		elseif ((MyLevel == 900) or (MyLevel <= 949)) then
			Mon = "Marine Captain";
			LevelQuest = 2;
			NameQuest = "MarineQuest3";
			NameMon = "Marine Captain";
			CFrameQuest = CFrame.new( -2441, 73, -3219);
			CFrameMon = CFrame.new( -1695, 110, -3299);
		elseif ((MyLevel == 950) or (MyLevel <= 974)) then
			Mon = "Zombie";
			LevelQuest = 1;
			NameQuest = "ZombieQuest";
			NameMon = "Zombie";
			CFrameQuest = CFrame.new( -5495, 48, -794);
			CFrameMon = CFrame.new( -5715, 90, -917);
		elseif ((MyLevel == 975) or (MyLevel <= 999)) then
			Mon = "Vampire";
			LevelQuest = 2;
			NameQuest = "ZombieQuest";
			NameMon = "Vampire";
			CFrameQuest = CFrame.new( -5495, 48, -794);
			CFrameMon = CFrame.new( -6027, 50, -1130);
		elseif ((MyLevel == 1000) or (MyLevel <= 1049)) then
			Mon = "Snow Trooper";
			LevelQuest = 1;
			NameQuest = "SnowMountainQuest";
			NameMon = "Snow Trooper";
			CFrameQuest = CFrame.new(607, 401, -5371);
			CFrameMon = CFrame.new(445, 440, -5175);
		elseif ((MyLevel == 1050) or (MyLevel <= 1099)) then
			Mon = "Winter Warrior";
			LevelQuest = 2;
			NameQuest = "SnowMountainQuest";
			NameMon = "Winter Warrior";
			CFrameQuest = CFrame.new(607, 401, -5371);
			CFrameMon = CFrame.new(1224, 460, -5332);
		elseif ((MyLevel == 1100) or (MyLevel <= 1124)) then
			Mon = "Lab Subordinate";
			LevelQuest = 1;
			NameQuest = "IceSideQuest";
			NameMon = "Lab Subordinate";
			CFrameQuest = CFrame.new( -6061, 16, -4904);
			CFrameMon = CFrame.new( -5941, 50, -4322);
		elseif ((MyLevel == 1125) or (MyLevel <= 1174)) then
			Mon = "Horned Warrior";
			LevelQuest = 2;
			NameQuest = "IceSideQuest";
			NameMon = "Horned Warrior";
			CFrameQuest = CFrame.new( -6061, 16, -4904);
			CFrameMon = CFrame.new( -6306, 50, -5752);
		elseif ((MyLevel == 1175) or (MyLevel <= 1199)) then
			Mon = "Magma Ninja";
			LevelQuest = 1;
			NameQuest = "FireSideQuest";
			NameMon = "Magma Ninja";
			CFrameQuest = CFrame.new( -5430, 16, -5298);
			CFrameMon = CFrame.new( -5233, 60, -6227);
		elseif ((MyLevel == 1200) or (MyLevel <= 1249)) then
			Mon = "Lava Pirate";
			LevelQuest = 2;
			NameQuest = "FireSideQuest";
			NameMon = "Lava Pirate";
			CFrameQuest = CFrame.new( -5430, 16, -5298);
			CFrameMon = CFrame.new( -4955, 60, -4836);
		elseif ((MyLevel == 1250) or (MyLevel <= 1274)) then
			Mon = "Ship Deckhand";
			LevelQuest = 1;
			NameQuest = "ShipQuest1";
			NameMon = "Ship Deckhand";
			CFrameQuest = CFrame.new(1033, 125, 32909);
			CFrameMon = CFrame.new(1033, 125, 32909);
		elseif ((MyLevel == 1275) or (MyLevel <= 1299)) then
			Mon = "Ship Engineer";
			LevelQuest = 2;
			NameQuest = "ShipQuest1";
			NameMon = "Ship Engineer";
			CFrameQuest = CFrame.new(1033, 125, 32909);
			CFrameMon = CFrame.new(809, 80, 33090);
		elseif ((MyLevel == 1300) or (MyLevel <= 1324)) then
			Mon = "Ship Steward";
			LevelQuest = 1;
			NameQuest = "ShipQuest2";
			NameMon = "Ship Steward";
			CFrameQuest = CFrame.new(973, 125, 33245);
			CFrameMon = CFrame.new(838, 160, 33408);
		elseif ((MyLevel == 1325) or (MyLevel <= 1349)) then
			Mon = "Ship Officer";
			LevelQuest = 2;
			NameQuest = "ShipQuest2";
			NameMon = "Ship Officer";
			CFrameQuest = CFrame.new(973, 125, 33245);
			CFrameMon = CFrame.new(1238, 220, 33148);
		elseif ((MyLevel == 1350) or (MyLevel <= 1374)) then
			Mon = "Arctic Warrior";
			LevelQuest = 1;
			NameQuest = "FrostQuest";
			NameMon = "Arctic Warrior";
			CFrameQuest = CFrame.new(5668, 28, -6484);
			CFrameMon = CFrame.new(5836, 80, -6257);
		elseif ((MyLevel == 1375) or (MyLevel <= 1424)) then
			Mon = "Snow Lurker";
			LevelQuest = 2;
			NameQuest = "FrostQuest";
			NameMon = "Snow Lurker";
			CFrameQuest = CFrame.new(5668, 28, -6484);
			CFrameMon = CFrame.new(5700, 80, -6724);
		elseif ((MyLevel == 1425) or (MyLevel <= 1449)) then
			Mon = "Sea Soldier";
			LevelQuest = 1;
			NameQuest = "ForgottenQuest";
			NameMon = "Sea Soldier";
			CFrameQuest = CFrame.new( -3056, 240, -10145);
			CFrameMon = CFrame.new( -2583, 80, -9821);
		elseif (MyLevel >= 1450) then
			Mon = "Water Fighter";
			LevelQuest = 2;
			NameQuest = "ForgottenQuest";
			NameMon = "Water Fighter";
			CFrameQuest = CFrame.new( -3056, 240, -10145);
			CFrameMon = CFrame.new( -3339, 290, -10412);
		end
	elseif World3 then
		if ((MyLevel == 1500) or (MyLevel <= 1524)) then
			Mon = "Pirate Millionaire";
			LevelQuest = 1;
			NameQuest = "PiratePortQuest";
			NameMon = "Pirate Millionaire";
			CFrameQuest = CFrame.new( -291, 44, 5580);
			CFrameMon = CFrame.new( -44, 70, 5623);
		elseif ((MyLevel == 1525) or (MyLevel <= 1574)) then
			Mon = "Pistol Billionaire";
			LevelQuest = 2;
			NameQuest = "PiratePortQuest";
			NameMon = "Pistol Billionaire";
			CFrameQuest = CFrame.new( -291, 44, 5580);
			CFrameMon = CFrame.new(219, 105, 6018);
		elseif ((MyLevel == 1575) or (MyLevel <= 1599)) then
			Mon = "Dragon Crew Warrior";
			LevelQuest = 1;
			NameQuest = "AmazonQuest";
			NameMon = "Dragon Crew Warrior";
			CFrameQuest = CFrame.new(5834, 51, -1103);
			CFrameMon = CFrame.new(5992, 90, -1581);
		elseif ((MyLevel == 1600) or (MyLevel <= 1624)) then
			Mon = "Dragon Crew Archer";
			NameQuest = "AmazonQuest";
			LevelQuest = 2;
			NameMon = "Dragon Crew Archer";
			CFrameQuest = CFrame.new(5834, 51, -1103);
			CFrameMon = CFrame.new(6472, 370, -151);
		elseif ((MyLevel == 1625) or (MyLevel <= 1649)) then
			Mon = "Female Islander";
			NameQuest = "AmazonQuest2";
			LevelQuest = 1;
			NameMon = "Female Islander";
			CFrameQuest = CFrame.new(5448, 602, 748);
			CFrameMon = CFrame.new(4836, 740, 928);
		elseif ((MyLevel == 1650) or (MyLevel <= 1699)) then
			Mon = "Giant Islander";
			NameQuest = "AmazonQuest2";
			LevelQuest = 2;
			NameMon = "Giant Islander";
			CFrameQuest = CFrame.new(5448, 602, 748);
			CFrameMon = CFrame.new(4784, 660, 155);
		elseif ((MyLevel == 1700) or (MyLevel <= 1724)) then
			Mon = "Marine Commodore";
			LevelQuest = 1;
			NameQuest = "MarineTreeIsland";
			NameMon = "Marine Commodore";
			CFrameQuest = CFrame.new(2180, 29, -6738);
			CFrameMon = CFrame.new(3156, 120, -7837);
		elseif ((MyLevel == 1725) or (MyLevel <= 1774)) then
			Mon = "Marine Rear Admiral";
			NameMon = "Marine Rear Admiral";
			NameQuest = "MarineTreeIsland";
			LevelQuest = 2;
			CFrameQuest = CFrame.new(2180, 29, -6738);
			CFrameMon = CFrame.new(3205, 120, -6742);
		elseif ((MyLevel == 1775) or (MyLevel <= 1799)) then
			Mon = "Fishman Raider";
			LevelQuest = 1;
			NameQuest = "DeepForestIsland3";
			NameMon = "Fishman Raider";
			CFrameQuest = CFrame.new( -10581, 332, -8758);
			CFrameMon = CFrame.new( -10550, 380, -8574);
		elseif ((MyLevel == 1800) or (MyLevel <= 1824)) then
			Mon = "Fishman Captain";
			LevelQuest = 2;
			NameQuest = "DeepForestIsland3";
			NameMon = "Fishman Captain";
			CFrameQuest = CFrame.new( -10581, 332, -8758);
			CFrameMon = CFrame.new( -10764, 380, -8799);
		elseif ((MyLevel == 1825) or (MyLevel <= 1849)) then
			Mon = "Forest Pirate";
			LevelQuest = 1;
			NameQuest = "DeepForestIsland";
			NameMon = "Forest Pirate";
			CFrameQuest = CFrame.new( -13233, 332, -7626);
			CFrameMon = CFrame.new( -13335, 380, -7660);
		elseif ((MyLevel == 1850) or (MyLevel <= 1899)) then
			Mon = "Mythological Pirate";
			LevelQuest = 2;
			NameQuest = "DeepForestIsland";
			NameMon = "Mythological Pirate";
			CFrameQuest = CFrame.new( -13233, 332, -7626);
			CFrameMon = CFrame.new( -13844, 520, -7016);
		elseif ((MyLevel == 1900) or (MyLevel <= 1924)) then
			Mon = "Jungle Pirate";
			LevelQuest = 1;
			NameQuest = "DeepForestIsland2";
			NameMon = "Jungle Pirate";
			CFrameQuest = CFrame.new( -12682, 391, -9901);
			CFrameMon = CFrame.new( -12166, 380, -10375);
		elseif ((MyLevel == 1925) or (MyLevel <= 1974)) then
			Mon = "Musketeer Pirate";
			LevelQuest = 2;
			NameQuest = "DeepForestIsland2";
			NameMon = "Musketeer Pirate";
			CFrameQuest = CFrame.new( -12682, 391, -9901);
			CFrameMon = CFrame.new( -13098, 450, -9831);
		elseif ((MyLevel == 1975) or (MyLevel <= 1999)) then
			Mon = "Reborn Skeleton";
			LevelQuest = 1;
			NameQuest = "HauntedQuest1";
			NameMon = "Reborn Skeleton";
			CFrameQuest = CFrame.new( -9481, 142, 5565);
			CFrameMon = CFrame.new( -8680, 190, 5852);
		elseif ((MyLevel == 2000) or (MyLevel <= 2024)) then
			Mon = "Living Zombie";
			LevelQuest = 2;
			NameQuest = "HauntedQuest1";
			NameMon = "Living Zombie";
			CFrameQuest = CFrame.new( -9481, 142, 5565);
			CFrameMon = CFrame.new( -10144, 140, 5932);
		elseif ((MyLevel == 2025) or (MyLevel <= 2049)) then
			Mon = "Demonic Soul";
			LevelQuest = 1;
			NameQuest = "HauntedQuest2";
			NameMon = "Demonic Soul";
			CFrameQuest = CFrame.new( -9515, 172, 607);
			CFrameMon = CFrame.new( -9275, 210, 6166);
		elseif ((MyLevel == 2050) or (MyLevel <= 2074)) then
			Mon = "Posessed Mummy";
			LevelQuest = 2;
			NameQuest = "HauntedQuest2";
			NameMon = "Posessed Mummy";
			CFrameQuest = CFrame.new( -9515, 172, 607);
			CFrameMon = CFrame.new( -9442, 60, 6304);
		elseif ((MyLevel == 2075) or (MyLevel <= 2099)) then
			Mon = "Peanut Scout";
			LevelQuest = 1;
			NameQuest = "NutsIslandQuest";
			NameMon = "Peanut Scout";
			CFrameQuest = CFrame.new( -2104, 38, -10194);
			CFrameMon = CFrame.new( -1870, 100, -10225);
		elseif ((MyLevel == 2100) or (MyLevel <= 2124)) then
			Mon = "Peanut President";
			LevelQuest = 2;
			NameQuest = "NutsIslandQuest";
			NameMon = "Peanut President";
			CFrameQuest = CFrame.new( -2104, 38, -10194);
			CFrameMon = CFrame.new( -2005, 100, -10585);
		elseif ((MyLevel == 2125) or (MyLevel <= 2149)) then
			Mon = "Ice Cream Chef";
			LevelQuest = 1;
			NameQuest = "IceCreamIslandQuest";
			NameMon = "Ice Cream Chef";
			CFrameQuest = CFrame.new( -818, 66, -10964);
			CFrameMon = CFrame.new( -501, 100, -10883);
		elseif ((MyLevel == 2150) or (MyLevel <= 2199)) then
			Mon = "Ice Cream Commander";
			LevelQuest = 2;
			NameQuest = "IceCreamIslandQuest";
			NameMon = "Ice Cream Commander";
			CFrameQuest = CFrame.new( -818, 66, -10964);
			CFrameMon = CFrame.new( -690, 100, -11350);
		elseif ((MyLevel == 2200) or (MyLevel <= 2224)) then
			Mon = "Cookie Crafter";
			LevelQuest = 1;
			NameQuest = "CakeQuest1";
			NameMon = "Cookie Crafter";
			CFrameQuest = CFrame.new( -2023, 38, -12028);
			CFrameMon = CFrame.new( -2332, 90, -12049);
		elseif ((MyLevel == 2225) or (MyLevel <= 2249)) then
			Mon = "Cake Guard";
			LevelQuest = 2;
			NameQuest = "CakeQuest1";
			NameMon = "Cake Guard";
			CFrameQuest = CFrame.new( -2023, 38, -12028);
			CFrameMon = CFrame.new( -1514, 90, -12422);
		elseif ((MyLevel == 2250) or (MyLevel <= 2274)) then
			Mon = "Baking Staff";
			LevelQuest = 1;
			NameQuest = "CakeQuest2";
			NameMon = "Baking Staff";
			CFrameQuest = CFrame.new( -1931, 38, -12840);
			CFrameMon = CFrame.new( -1930, 90, -12963);
		elseif ((MyLevel == 2275) or (MyLevel <= 2299)) then
			Mon = "Head Baker";
			LevelQuest = 2;
			NameQuest = "CakeQuest2";
			NameMon = "Head Baker";
			CFrameQuest = CFrame.new( -1931, 38, -12840);
			CFrameMon = CFrame.new( -2123, 110, -12777);
		elseif ((MyLevel == 2300) or (MyLevel <= 2324)) then
			Mon = "Cocoa Warrior";
			LevelQuest = 1;
			NameQuest = "ChocQuest1";
			NameMon = "Cocoa Warrior";
			CFrameQuest = CFrame.new(235, 25, -12199);
			CFrameMon = CFrame.new(110, 80, -12245);
		elseif ((MyLevel == 2325) or (MyLevel <= 2349)) then
			Mon = "Chocolate Bar Battler";
			LevelQuest = 2;
			NameQuest = "ChocQuest1";
			NameMon = "Chocolate Bar Battler";
			CFrameQuest = CFrame.new(235, 25, -12199);
			CFrameMon = CFrame.new(579, 80, -12413);
		elseif ((MyLevel == 2350) or (MyLevel <= 2374)) then
			Mon = "Sweet Thief";
			LevelQuest = 1;
			NameQuest = "ChocQuest2";
			NameMon = "Sweet Thief";
			CFrameQuest = CFrame.new(150, 25, -12777);
			CFrameMon = CFrame.new( -68, 80, -12692);
		elseif ((MyLevel == 2375) or (MyLevel <= 2399)) then
			Mon = "Candy Rebel";
			LevelQuest = 2;
			NameQuest = "ChocQuest2";
			NameMon = "Candy Rebel";
			CFrameQuest = CFrame.new(150, 25, -12777);
			CFrameMon = CFrame.new(17, 80, -12962);
		elseif ((MyLevel == 2400) or (MyLevel <= 2424)) then
			Mon = "Candy Pirate";
			LevelQuest = 1;
			NameQuest = "CandyQuest1";
			NameMon = "Candy Pirate";
			CFrameQuest = CFrame.new( -1148, 14, -14446);
			CFrameMon = CFrame.new( -1371, 70, -14405);
		elseif ((MyLevel == 2425) or (MyLevel <= 2449)) then
			Mon = "Snow Demon";
			LevelQuest = 2;
			NameQuest = "CandyQuest1";
			NameMon = "Snow Demon";
			CFrameQuest = CFrame.new( -1148, 14, -14446);
			CFrameMon = CFrame.new( -836, 70, -14326);
		elseif ((MyLevel == 2450) or (MyLevel <= 2474)) then
			Mon = "Isle Outlaw";
			LevelQuest = 1;
			NameQuest = "TikiQuest1";
			NameMon = "Isle Outlaw";
			CFrameQuest = CFrame.new( -16547, 56, -172);
			CFrameMon = CFrame.new( -16431, 90, -223);
		elseif ((MyLevel == 2475) or (MyLevel <= 2499)) then
			Mon = "Island Boy";
			LevelQuest = 2;
			NameQuest = "TikiQuest1";
			NameMon = "Island Boy";
			CFrameQuest = CFrame.new( -16547, 56, -172);
			CFrameMon = CFrame.new( -16668, 70, -243);
		elseif ((MyLevel == 2500) or (MyLevel <= 2524)) then
			Mon = "Sun-kissed Warrior";
			LevelQuest = 1;
			NameQuest = "TikiQuest2";
			NameMon = "kissed";
			CFrameQuest = CFrame.new( -16540, 56, 1051);
			CFrameMon = CFrame.new( -16345, 80, 1004);
		elseif ((MyLevel == 2525) or (MyLevel <= 2550)) then
			Mon = "Isle Champion";
			LevelQuest = 2;
			NameQuest = "TikiQuest2";
			NameMon = "Isle Champion";
			CFrameQuest = CFrame.new( -16540, 56, 1051);
			CFrameMon = CFrame.new( -16634, 85, 1106);
		end
	end
end
function Hop()
	local v282 = game.PlaceId;
	local v283 = {};
	local v284 = "";
	local v285 = os.date("!*t").hour;
	local v286 = false;
	function TPReturner()
		local v711;
		if (v284 == "") then
			v711 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"   .. v282   .. "/servers/Public?sortOrder=Asc&limit=100" ));
		else
			v711 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"   .. v282   .. "/servers/Public?sortOrder=Asc&limit=100&cursor="   .. v284 ));
		end
		local v712 = "";
		if (v711.nextPageCursor and (v711.nextPageCursor ~= "null") and (v711.nextPageCursor ~= nil)) then
			v284 = v711.nextPageCursor;
		end
		local v713 = 0;
		for v1375, v1376 in pairs(v711.data) do
			local v1377 = true;
			v712 = tostring(v1376.id);
			if (tonumber(v1376.maxPlayers) > tonumber(v1376.playing)) then
				for v1786, v1787 in pairs(v283) do
					if (v713 ~= 0) then
						if (v712 == tostring(v1787)) then
							v1377 = false;
						end
					elseif (tonumber(v285) ~= tonumber(v1787)) then
						local v2347 = pcall(function()
							v283 = {};
							table.insert(v283, v285);
						end);
					end
					v713 = v713 + 1 ;
				end
				if (v1377 == true) then
					table.insert(v283, v712);
					wait();
					pcall(function()
						wait();
						game:GetService("TeleportService"):TeleportToPlaceInstance(v282, v712, game.Players.LocalPlayer);
					end);
					wait(4);
				end
			end
		end
	end
	function Teleport()
		while wait() do
			pcall(function()
				TPReturner();
				if (v284 ~= "") then
					TPReturner();
				end
			end);
		end
	end
	Teleport();
end
function UpdateIslandESP()
	for v714, v715 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
		pcall(function()
			if IslandESP then
				if (v715.Name ~= "Sea") then
					if  not v715:FindFirstChild("NameEsp") then
						local v2133 = Instance.new("BillboardGui", v715);
						v2133.Name = "NameEsp";
						v2133.ExtentsOffset = Vector3.new(0, 1, 0);
						v2133.Size = UDim2.new(1, 200, 1, 30);
						v2133.Adornee = v715;
						v2133.AlwaysOnTop = true;
						local v2139 = Instance.new("TextLabel", v2133);
						v2139.Font = "GothamBold";
						v2139.FontSize = "Size14";
						v2139.TextWrapped = true;
						v2139.Size = UDim2.new(1, 0, 1, 0);
						v2139.TextYAlignment = "Top";
						v2139.BackgroundTransparency = 1;
						v2139.TextStrokeTransparency = 0.5;
						v2139.TextColor3 = Color3.fromRGB(255, 255, 255);
					else
						v715['NameEsp'].TextLabel.Text = v715.Name   .. "   \n"   .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v715.Position).Magnitude / 3 )   .. " Distance" ;
					end
				end
			elseif v715:FindFirstChild("NameEsp") then
				v715:FindFirstChild("NameEsp"):Destroy();
			end
		end);
	end
end
function isnil(v287)
	return v287 == nil ;
end
local function v26(v288)
	return math.floor(tonumber(v288) + 0.5 );
end
Number = math.random(1, 1000000);
function UpdatePlayerChams()
	for v716, v717 in pairs(game:GetService("Players"):GetChildren()) do
		pcall(function()
			if  not isnil(v717.Character) then
				if ESPPlayer then
					if ( not isnil(v717.Character.Head) and  not v717.Character.Head:FindFirstChild("NameEsp"   .. Number )) then
						local v2149 = Instance.new("BillboardGui", v717.Character.Head);
						v2149.Name = "NameEsp"   .. Number ;
						v2149.ExtentsOffset = Vector3.new(0, 1, 0);
						v2149.Size = UDim2.new(1, 200, 1, 30);
						v2149.Adornee = v717.Character.Head;
						v2149.AlwaysOnTop = true;
						local v2156 = Instance.new("TextLabel", v2149);
						v2156.Font = Enum.Font.GothamSemibold;
						v2156.FontSize = "Size14";
						v2156.TextWrapped = true;
						v2156.Text = v717.Name   .. " \n"   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v717.Character.Head.Position).Magnitude / 3 )   .. " Distance" ;
						v2156.Size = UDim2.new(1, 0, 1, 0);
						v2156.TextYAlignment = "Top";
						v2156.BackgroundTransparency = 1;
						v2156.TextStrokeTransparency = 0.5;
						if (v717.Team == game.Players.LocalPlayer.Team) then
							v2156.TextColor3 = Color3.new(0, 134, 139);
						else
							v2156.TextColor3 = Color3.new(0, 134, 139);
						end
					else
						v717.Character.Head["NameEsp"   .. Number ].TextLabel.Text = v717.Name   .. " | "   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v717.Character.Head.Position).Magnitude / 3 )   .. " Distance\nHealth: "   .. v26((v717.Character.Humanoid.Health * 100) / v717.Character.Humanoid.MaxHealth )   .. "%" ;
					end
				elseif v717.Character.Head:FindFirstChild("NameEsp"   .. Number ) then
					v717.Character.Head:FindFirstChild("NameEsp"   .. Number ):Destroy();
				end
			end
		end);
	end
end
function UpdateChestChams()
	for v718, v719 in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v719.Name, "Chest") then
				if ChestESP then
					if string.find(v719.Name, "Chest") then
						if  not v719:FindFirstChild("NameEsp"   .. Number ) then
							local v2523 = Instance.new("BillboardGui", v719);
							v2523.Name = "NameEsp"   .. Number ;
							v2523.ExtentsOffset = Vector3.new(0, 1, 0);
							v2523.Size = UDim2.new(1, 200, 1, 30);
							v2523.Adornee = v719;
							v2523.AlwaysOnTop = true;
							local v2529 = Instance.new("TextLabel", v2523);
							v2529.Font = Enum.Font.GothamSemibold;
							v2529.FontSize = "Size14";
							v2529.TextWrapped = true;
							v2529.Size = UDim2.new(1, 0, 1, 0);
							v2529.TextYAlignment = "Top";
							v2529.BackgroundTransparency = 1;
							v2529.TextStrokeTransparency = 0.5;
							if (v719.Name == "Chest1") then
								v2529.TextColor3 = Color3.fromRGB(109, 109, 109);
								v2529.Text = "Chest 1"   .. " \n"   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v719.Position).Magnitude / 3 )   .. " Distance" ;
							end
							if (v719.Name == "Chest2") then
								v2529.TextColor3 = Color3.fromRGB(173, 158, 21);
								v2529.Text = "Chest 2"   .. " \n"   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v719.Position).Magnitude / 3 )   .. " Distance" ;
							end
							if (v719.Name == "Chest3") then
								v2529.TextColor3 = Color3.fromRGB(85, 255, 255);
								v2529.Text = "Chest 3"   .. " \n"   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v719.Position).Magnitude / 3 )   .. " Distance" ;
							end
						else
							v719["NameEsp"   .. Number ].TextLabel.Text = v719.Name   .. "   \n"   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v719.Position).Magnitude / 3 )   .. " Distance" ;
						end
					end
				elseif v719:FindFirstChild("NameEsp"   .. Number ) then
					v719:FindFirstChild("NameEsp"   .. Number ):Destroy();
				end
			end
		end);
	end
end
function UpdateDevilChams()
	for v720, v721 in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v721.Name, "Fruit") then
					if  not v721.Handle:FindFirstChild("NameEsp"   .. Number ) then
						local v2167 = Instance.new("BillboardGui", v721.Handle);
						v2167.Name = "NameEsp"   .. Number ;
						v2167.ExtentsOffset = Vector3.new(0, 1, 0);
						v2167.Size = UDim2.new(1, 200, 1, 30);
						v2167.Adornee = v721.Handle;
						v2167.AlwaysOnTop = true;
						local v2174 = Instance.new("TextLabel", v2167);
						v2174.Font = Enum.Font.GothamSemibold;
						v2174.FontSize = "Size14";
						v2174.TextWrapped = true;
						v2174.Size = UDim2.new(1, 0, 1, 0);
						v2174.TextYAlignment = "Top";
						v2174.BackgroundTransparency = 1;
						v2174.TextStrokeTransparency = 0.5;
						v2174.TextColor3 = Color3.fromRGB(255, 255, 255);
						v2174.Text = v721.Name   .. " \n"   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v721.Handle.Position).Magnitude / 3 )   .. " Distance" ;
					else
						v721.Handle["NameEsp"   .. Number ].TextLabel.Text = v721.Name   .. "   \n"   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v721.Handle.Position).Magnitude / 3 )   .. " Distance" ;
					end
				end
			elseif v721.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v721.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end);
	end
end
function UpdateFlowerChams()
	for v722, v723 in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if ((v723.Name == "Flower2") or (v723.Name == "Flower1")) then
				if FlowerESP then
					if  not v723:FindFirstChild("NameEsp"   .. Number ) then
						local v2186 = Instance.new("BillboardGui", v723);
						v2186.Name = "NameEsp"   .. Number ;
						v2186.ExtentsOffset = Vector3.new(0, 1, 0);
						v2186.Size = UDim2.new(1, 200, 1, 30);
						v2186.Adornee = v723;
						v2186.AlwaysOnTop = true;
						local v2192 = Instance.new("TextLabel", v2186);
						v2192.Font = Enum.Font.GothamSemibold;
						v2192.FontSize = "Size14";
						v2192.TextWrapped = true;
						v2192.Size = UDim2.new(1, 0, 1, 0);
						v2192.TextYAlignment = "Top";
						v2192.BackgroundTransparency = 1;
						v2192.TextStrokeTransparency = 0.5;
						v2192.TextColor3 = Color3.fromRGB(255, 0, 0);
						if (v723.Name == "Flower1") then
							v2192.Text = "Blue Flower"   .. " \n"   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v723.Position).Magnitude / 3 )   .. " Distance" ;
							v2192.TextColor3 = Color3.fromRGB(0, 0, 255);
						end
						if (v723.Name == "Flower2") then
							v2192.Text = "Red Flower"   .. " \n"   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v723.Position).Magnitude / 3 )   .. " Distance" ;
							v2192.TextColor3 = Color3.fromRGB(255, 0, 0);
						end
					else
						v723["NameEsp"   .. Number ].TextLabel.Text = v723.Name   .. "   \n"   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v723.Position).Magnitude / 3 )   .. " Distance" ;
					end
				elseif v723:FindFirstChild("NameEsp"   .. Number ) then
					v723:FindFirstChild("NameEsp"   .. Number ):Destroy();
				end
			end
		end);
	end
end
function UpdateRealFruitChams()
	for v724, v725 in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v725:IsA("Tool") then
			if RealFruitESP then
				if  not v725.Handle:FindFirstChild("NameEsp"   .. Number ) then
					local v1937 = Instance.new("BillboardGui", v725.Handle);
					v1937.Name = "NameEsp"   .. Number ;
					v1937.ExtentsOffset = Vector3.new(0, 1, 0);
					v1937.Size = UDim2.new(1, 200, 1, 30);
					v1937.Adornee = v725.Handle;
					v1937.AlwaysOnTop = true;
					local v1944 = Instance.new("TextLabel", v1937);
					v1944.Font = Enum.Font.GothamSemibold;
					v1944.FontSize = "Size14";
					v1944.TextWrapped = true;
					v1944.Size = UDim2.new(1, 0, 1, 0);
					v1944.TextYAlignment = "Top";
					v1944.BackgroundTransparency = 1;
					v1944.TextStrokeTransparency = 0.5;
					v1944.TextColor3 = Color3.fromRGB(255, 0, 0);
					v1944.Text = v725.Name   .. " \n"   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v725.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				else
					v725.Handle["NameEsp"   .. Number ].TextLabel.Text = v725.Name   .. " "   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v725.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				end
			elseif v725.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v725.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end
	end
	for v726, v727 in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v727:IsA("Tool") then
			if RealFruitESP then
				if  not v727.Handle:FindFirstChild("NameEsp"   .. Number ) then
					local v1956 = Instance.new("BillboardGui", v727.Handle);
					v1956.Name = "NameEsp"   .. Number ;
					v1956.ExtentsOffset = Vector3.new(0, 1, 0);
					v1956.Size = UDim2.new(1, 200, 1, 30);
					v1956.Adornee = v727.Handle;
					v1956.AlwaysOnTop = true;
					local v1963 = Instance.new("TextLabel", v1956);
					v1963.Font = Enum.Font.GothamSemibold;
					v1963.FontSize = "Size14";
					v1963.TextWrapped = true;
					v1963.Size = UDim2.new(1, 0, 1, 0);
					v1963.TextYAlignment = "Top";
					v1963.BackgroundTransparency = 1;
					v1963.TextStrokeTransparency = 0.5;
					v1963.TextColor3 = Color3.fromRGB(255, 174, 0);
					v1963.Text = v727.Name   .. " \n"   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v727.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				else
					v727.Handle["NameEsp"   .. Number ].TextLabel.Text = v727.Name   .. " "   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v727.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				end
			elseif v727.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v727.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end
	end
	for v728, v729 in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v729:IsA("Tool") then
			if RealFruitESP then
				if  not v729.Handle:FindFirstChild("NameEsp"   .. Number ) then
					local v1975 = Instance.new("BillboardGui", v729.Handle);
					v1975.Name = "NameEsp"   .. Number ;
					v1975.ExtentsOffset = Vector3.new(0, 1, 0);
					v1975.Size = UDim2.new(1, 200, 1, 30);
					v1975.Adornee = v729.Handle;
					v1975.AlwaysOnTop = true;
					local v1982 = Instance.new("TextLabel", v1975);
					v1982.Font = Enum.Font.GothamSemibold;
					v1982.FontSize = "Size14";
					v1982.TextWrapped = true;
					v1982.Size = UDim2.new(1, 0, 1, 0);
					v1982.TextYAlignment = "Top";
					v1982.BackgroundTransparency = 1;
					v1982.TextStrokeTransparency = 0.5;
					v1982.TextColor3 = Color3.fromRGB(251, 255, 0);
					v1982.Text = v729.Name   .. " \n"   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v729.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				else
					v729.Handle["NameEsp"   .. Number ].TextLabel.Text = v729.Name   .. " "   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v729.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				end
			elseif v729.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v729.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end
	end
end
function UpdateIslandESP()
	for v730, v731 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
		pcall(function()
			if IslandESP then
				if (v731.Name ~= "Sea") then
					if  not v731:FindFirstChild("NameEsp") then
						local v2203 = Instance.new("BillboardGui", v731);
						v2203.Name = "NameEsp";
						v2203.ExtentsOffset = Vector3.new(0, 1, 0);
						v2203.Size = UDim2.new(1, 200, 1, 30);
						v2203.Adornee = v731;
						v2203.AlwaysOnTop = true;
						local v2209 = Instance.new("TextLabel", v2203);
						v2209.Font = "GothamBold";
						v2209.FontSize = "Size14";
						v2209.TextWrapped = true;
						v2209.Size = UDim2.new(1, 0, 1, 0);
						v2209.TextYAlignment = "Top";
						v2209.BackgroundTransparency = 1;
						v2209.TextStrokeTransparency = 0.5;
						v2209.TextColor3 = Color3.fromRGB(255, 255, 255);
					else
						v731['NameEsp'].TextLabel.Text = v731.Name   .. "   \n"   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v731.Position).Magnitude / 3 )   .. " Distance" ;
					end
				end
			elseif v731:FindFirstChild("NameEsp") then
				v731:FindFirstChild("NameEsp"):Destroy();
			end
		end);
	end
end
function isnil(v289)
	return v289 == nil ;
end
local function v26(v290)
	return math.floor(tonumber(v290) + 0.5 );
end
Number = math.random(1, 1000000);
function UpdatePlayerChams()
	for v732, v733 in pairs(game:GetService("Players"):GetChildren()) do
		pcall(function()
			if  not isnil(v733.Character) then
				if ESPPlayer then
					if ( not isnil(v733.Character.Head) and  not v733.Character.Head:FindFirstChild("NameEsp"   .. Number )) then
						local v2219 = Instance.new("BillboardGui", v733.Character.Head);
						v2219.Name = "NameEsp"   .. Number ;
						v2219.ExtentsOffset = Vector3.new(0, 1, 0);
						v2219.Size = UDim2.new(1, 200, 1, 30);
						v2219.Adornee = v733.Character.Head;
						v2219.AlwaysOnTop = true;
						local v2226 = Instance.new("TextLabel", v2219);
						v2226.Font = Enum.Font.GothamSemibold;
						v2226.FontSize = "Size14";
						v2226.TextWrapped = true;
						v2226.Text = v733.Name   .. " \n"   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v733.Character.Head.Position).Magnitude / 3 )   .. " Distance" ;
						v2226.Size = UDim2.new(1, 0, 1, 0);
						v2226.TextYAlignment = "Top";
						v2226.BackgroundTransparency = 1;
						v2226.TextStrokeTransparency = 0.5;
						if (v733.Team == game.Players.LocalPlayer.Team) then
							v2226.TextColor3 = Color3.new(0, 134, 139);
						else
							v2226.TextColor3 = Color3.new(0, 134, 139);
						end
					else
						v733.Character.Head["NameEsp"   .. Number ].TextLabel.Text = v733.Name   .. " | "   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v733.Character.Head.Position).Magnitude / 3 )   .. " Distance\nHealth: "   .. v26((v733.Character.Humanoid.Health * 100) / v733.Character.Humanoid.MaxHealth )   .. "%" ;
					end
				elseif v733.Character.Head:FindFirstChild("NameEsp"   .. Number ) then
					v733.Character.Head:FindFirstChild("NameEsp"   .. Number ):Destroy();
				end
			end
		end);
	end
end
function UpdateChestChams()
	for v734, v735 in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v735.Name, "Chest") then
				if ChestESP then
					if string.find(v735.Name, "Chest") then
						if  not v735:FindFirstChild("NameEsp"   .. Number ) then
							local v2545 = Instance.new("BillboardGui", v735);
							v2545.Name = "NameEsp"   .. Number ;
							v2545.ExtentsOffset = Vector3.new(0, 1, 0);
							v2545.Size = UDim2.new(1, 200, 1, 30);
							v2545.Adornee = v735;
							v2545.AlwaysOnTop = true;
							local v2551 = Instance.new("TextLabel", v2545);
							v2551.Font = Enum.Font.GothamSemibold;
							v2551.FontSize = "Size14";
							v2551.TextWrapped = true;
							v2551.Size = UDim2.new(1, 0, 1, 0);
							v2551.TextYAlignment = "Top";
							v2551.BackgroundTransparency = 1;
							v2551.TextStrokeTransparency = 0.5;
							if (v735.Name == "Chest1") then
								v2551.TextColor3 = Color3.fromRGB(109, 109, 109);
								v2551.Text = "Chest 1"   .. " \n"   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v735.Position).Magnitude / 3 )   .. " Distance" ;
							end
							if (v735.Name == "Chest2") then
								v2551.TextColor3 = Color3.fromRGB(173, 158, 21);
								v2551.Text = "Chest 2"   .. " \n"   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v735.Position).Magnitude / 3 )   .. " Distance" ;
							end
							if (v735.Name == "Chest3") then
								v2551.TextColor3 = Color3.fromRGB(85, 255, 255);
								v2551.Text = "Chest 3"   .. " \n"   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v735.Position).Magnitude / 3 )   .. " Distance" ;
							end
						else
							v735["NameEsp"   .. Number ].TextLabel.Text = v735.Name   .. "   \n"   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v735.Position).Magnitude / 3 )   .. " Distance" ;
						end
					end
				elseif v735:FindFirstChild("NameEsp"   .. Number ) then
					v735:FindFirstChild("NameEsp"   .. Number ):Destroy();
				end
			end
		end);
	end
end
function UpdateDevilChams()
	for v736, v737 in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v737.Name, "Fruit") then
					if  not v737.Handle:FindFirstChild("NameEsp"   .. Number ) then
						local v2237 = Instance.new("BillboardGui", v737.Handle);
						v2237.Name = "NameEsp"   .. Number ;
						v2237.ExtentsOffset = Vector3.new(0, 1, 0);
						v2237.Size = UDim2.new(1, 200, 1, 30);
						v2237.Adornee = v737.Handle;
						v2237.AlwaysOnTop = true;
						local v2244 = Instance.new("TextLabel", v2237);
						v2244.Font = Enum.Font.GothamSemibold;
						v2244.FontSize = "Size14";
						v2244.TextWrapped = true;
						v2244.Size = UDim2.new(1, 0, 1, 0);
						v2244.TextYAlignment = "Top";
						v2244.BackgroundTransparency = 1;
						v2244.TextStrokeTransparency = 0.5;
						v2244.TextColor3 = Color3.fromRGB(255, 255, 255);
						v2244.Text = v737.Name   .. " \n"   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v737.Handle.Position).Magnitude / 3 )   .. " Distance" ;
					else
						v737.Handle["NameEsp"   .. Number ].TextLabel.Text = v737.Name   .. "   \n"   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v737.Handle.Position).Magnitude / 3 )   .. " Distance" ;
					end
				end
			elseif v737.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v737.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end);
	end
end
function UpdateFlowerChams()
	for v738, v739 in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if ((v739.Name == "Flower2") or (v739.Name == "Flower1")) then
				if FlowerESP then
					if  not v739:FindFirstChild("NameEsp"   .. Number ) then
						local v2256 = Instance.new("BillboardGui", v739);
						v2256.Name = "NameEsp"   .. Number ;
						v2256.ExtentsOffset = Vector3.new(0, 1, 0);
						v2256.Size = UDim2.new(1, 200, 1, 30);
						v2256.Adornee = v739;
						v2256.AlwaysOnTop = true;
						local v2262 = Instance.new("TextLabel", v2256);
						v2262.Font = Enum.Font.GothamSemibold;
						v2262.FontSize = "Size14";
						v2262.TextWrapped = true;
						v2262.Size = UDim2.new(1, 0, 1, 0);
						v2262.TextYAlignment = "Top";
						v2262.BackgroundTransparency = 1;
						v2262.TextStrokeTransparency = 0.5;
						v2262.TextColor3 = Color3.fromRGB(255, 0, 0);
						if (v739.Name == "Flower1") then
							v2262.Text = "Blue Flower"   .. " \n"   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v739.Position).Magnitude / 3 )   .. " Distance" ;
							v2262.TextColor3 = Color3.fromRGB(0, 0, 255);
						end
						if (v739.Name == "Flower2") then
							v2262.Text = "Red Flower"   .. " \n"   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v739.Position).Magnitude / 3 )   .. " Distance" ;
							v2262.TextColor3 = Color3.fromRGB(255, 0, 0);
						end
					else
						v739["NameEsp"   .. Number ].TextLabel.Text = v739.Name   .. "   \n"   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v739.Position).Magnitude / 3 )   .. " Distance" ;
					end
				elseif v739:FindFirstChild("NameEsp"   .. Number ) then
					v739:FindFirstChild("NameEsp"   .. Number ):Destroy();
				end
			end
		end);
	end
end
function UpdateRealFruitChams()
	for v740, v741 in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v741:IsA("Tool") then
			if RealFruitESP then
				if  not v741.Handle:FindFirstChild("NameEsp"   .. Number ) then
					local v1994 = Instance.new("BillboardGui", v741.Handle);
					v1994.Name = "NameEsp"   .. Number ;
					v1994.ExtentsOffset = Vector3.new(0, 1, 0);
					v1994.Size = UDim2.new(1, 200, 1, 30);
					v1994.Adornee = v741.Handle;
					v1994.AlwaysOnTop = true;
					local v2001 = Instance.new("TextLabel", v1994);
					v2001.Font = Enum.Font.GothamSemibold;
					v2001.FontSize = "Size14";
					v2001.TextWrapped = true;
					v2001.Size = UDim2.new(1, 0, 1, 0);
					v2001.TextYAlignment = "Top";
					v2001.BackgroundTransparency = 1;
					v2001.TextStrokeTransparency = 0.5;
					v2001.TextColor3 = Color3.fromRGB(255, 0, 0);
					v2001.Text = v741.Name   .. " \n"   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v741.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				else
					v741.Handle["NameEsp"   .. Number ].TextLabel.Text = v741.Name   .. " "   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v741.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				end
			elseif v741.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v741.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end
	end
	for v742, v743 in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v743:IsA("Tool") then
			if RealFruitESP then
				if  not v743.Handle:FindFirstChild("NameEsp"   .. Number ) then
					local v2013 = Instance.new("BillboardGui", v743.Handle);
					v2013.Name = "NameEsp"   .. Number ;
					v2013.ExtentsOffset = Vector3.new(0, 1, 0);
					v2013.Size = UDim2.new(1, 200, 1, 30);
					v2013.Adornee = v743.Handle;
					v2013.AlwaysOnTop = true;
					local v2020 = Instance.new("TextLabel", v2013);
					v2020.Font = Enum.Font.GothamSemibold;
					v2020.FontSize = "Size14";
					v2020.TextWrapped = true;
					v2020.Size = UDim2.new(1, 0, 1, 0);
					v2020.TextYAlignment = "Top";
					v2020.BackgroundTransparency = 1;
					v2020.TextStrokeTransparency = 0.5;
					v2020.TextColor3 = Color3.fromRGB(255, 174, 0);
					v2020.Text = v743.Name   .. " \n"   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v743.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				else
					v743.Handle["NameEsp"   .. Number ].TextLabel.Text = v743.Name   .. " "   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v743.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				end
			elseif v743.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v743.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end
	end
	for v744, v745 in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v745:IsA("Tool") then
			if RealFruitESP then
				if  not v745.Handle:FindFirstChild("NameEsp"   .. Number ) then
					local v2032 = Instance.new("BillboardGui", v745.Handle);
					v2032.Name = "NameEsp"   .. Number ;
					v2032.ExtentsOffset = Vector3.new(0, 1, 0);
					v2032.Size = UDim2.new(1, 200, 1, 30);
					v2032.Adornee = v745.Handle;
					v2032.AlwaysOnTop = true;
					local v2039 = Instance.new("TextLabel", v2032);
					v2039.Font = Enum.Font.GothamSemibold;
					v2039.FontSize = "Size14";
					v2039.TextWrapped = true;
					v2039.Size = UDim2.new(1, 0, 1, 0);
					v2039.TextYAlignment = "Top";
					v2039.BackgroundTransparency = 1;
					v2039.TextStrokeTransparency = 0.5;
					v2039.TextColor3 = Color3.fromRGB(251, 255, 0);
					v2039.Text = v745.Name   .. " \n"   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v745.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				else
					v745.Handle["NameEsp"   .. Number ].TextLabel.Text = v745.Name   .. " "   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v745.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				end
			elseif v745.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v745.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end
	end
end
function UpdateIslandMirageESP()
	for v746, v747 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
		pcall(function()
			if MirageIslandESP then
				if (v747.Name == "Mirage Island") then
					if  not v747:FindFirstChild("NameEsp") then
						local v2273 = Instance.new("BillboardGui", v747);
						v2273.Name = "NameEsp";
						v2273.ExtentsOffset = Vector3.new(0, 1, 0);
						v2273.Size = UDim2.new(1, 200, 1, 30);
						v2273.Adornee = v747;
						v2273.AlwaysOnTop = true;
						local v2279 = Instance.new("TextLabel", v2273);
						v2279.Font = "Code";
						v2279.FontSize = "Size14";
						v2279.TextWrapped = true;
						v2279.Size = UDim2.new(1, 0, 1, 0);
						v2279.TextYAlignment = "Top";
						v2279.BackgroundTransparency = 1;
						v2279.TextStrokeTransparency = 0.5;
						v2279.TextColor3 = Color3.fromRGB(255, 255, 255);
					else
						v747['NameEsp'].TextLabel.Text = v747.Name   .. "   \n"   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v747.Position).Magnitude / 3 )   .. " M" ;
					end
				end
			elseif v747:FindFirstChild("NameEsp") then
				v747:FindFirstChild("NameEsp"):Destroy();
			end
		end);
	end
end
function UpdateLSDESP()
	for v748, v749 in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
		pcall(function()
			if LADESP then
				if (v749.Name == "Legendary Sword Dealer") then
					if  not v749:FindFirstChild("NameEsp") then
						local v2289 = Instance.new("BillboardGui", v749);
						v2289.Name = "NameEsp";
						v2289.ExtentsOffset = Vector3.new(0, 1, 0);
						v2289.Size = UDim2.new(1, 200, 1, 30);
						v2289.Adornee = v749;
						v2289.AlwaysOnTop = true;
						local v2295 = Instance.new("TextLabel", v2289);
						v2295.Font = "Code";
						v2295.FontSize = "Size14";
						v2295.TextWrapped = true;
						v2295.Size = UDim2.new(1, 0, 1, 0);
						v2295.TextYAlignment = "Top";
						v2295.BackgroundTransparency = 1;
						v2295.TextStrokeTransparency = 0.5;
						v2295.TextColor3 = Color3.fromRGB(255, 255, 255);
					else
						v749['NameEsp'].TextLabel.Text = v749.Name   .. "   \n"   .. v26((game:GetService("Players").LocalPlayer.Character.Head.Position - v749.Position).Magnitude / 3 )   .. " M" ;
					end
				end
			elseif v749:FindFirstChild("NameEsp") then
				v749:FindFirstChild("NameEsp"):Destroy();
			end
		end);
	end
end
function InfAb()
	if InfAbility then
		if  not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
			local v1688 = Instance.new("ParticleEmitter");
			v1688.Acceleration = Vector3.new(0, 0, 0);
			v1688.Archivable = true;
			v1688.Drag = 20;
			v1688.EmissionDirection = Enum.NormalId.Top;
			v1688.Enabled = true;
			v1688.Lifetime = NumberRange.new(0, 0);
			v1688.LightInfluence = 0;
			v1688.LockedToPart = true;
			v1688.Name = "Agility";
			v1688.Rate = 500;
			local v1700 = {
				NumberSequenceKeypoint.new(0, 0),
				NumberSequenceKeypoint.new(1, 4)
			};
			v1688.Size = NumberSequence.new(v1700);
			v1688.RotSpeed = NumberRange.new(9999, 99999);
			v1688.Rotation = NumberRange.new(0, 0);
			v1688.Speed = NumberRange.new(30, 30);
			v1688.SpreadAngle = Vector2.new(0, 0, 0, 0);
			v1688.Texture = "";
			v1688.VelocityInheritance = 0;
			v1688.ZOffset = 2;
			v1688.Transparency = NumberSequence.new(0);
			v1688.Color = ColorSequence.new(Color3.fromRGB(210, 0, 0), Color3.fromRGB(210, 0, 0));
			v1688.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
		end
	elseif game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy();
	end
end
local v27 = game:GetService("Players").LocalPlayer;
local v28 = v27.Character.Energy.Value;
function infinitestam()
	v27.Character.Energy.Changed:connect(function()
		if InfiniteEnergy then
			v27.Character.Energy.Value = v28;
		end
	end);
end
spawn(function()
	pcall(function()
		while wait(0.1) do
			if InfiniteEnergy then
				wait(0.1);
				v28 = v27.Character.Energy.Value;
				infinitestam();
			end
		end
	end);
end);
function NoDodgeCool()
	if nododgecool then
		for v1627, v1628 in next, getgc() do
			if game:GetService("Players").LocalPlayer.Character.Dodge then
				if ((typeof(v1628) == "function") and (getfenv(v1628).script == game:GetService("Players").LocalPlayer.Character.Dodge)) then
					for v2305, v2306 in next, getupvalues(v1628) do
						if (tostring(v2306) == "0.1") then
							repeat
								wait(0.1);
								setupvalue(v1628, v2305, 0);
							until  not nododgecool
						end
					end
				end
			end
		end
	end
end
local v29 = "indq9pdnq0";
local v30 = "Fpjq90pdfhipqdm";
local v31;
local v32;
RunService = game:GetService("RunService");
speaker = game.Players.LocalPlayer;
vehicleflyspeed = 5;
function getRoot(v291)
	local v292 = v291:FindFirstChild("HumanoidRootPart") or v291:FindFirstChild("Torso") or v291:FindFirstChild("UpperTorso") ;
	return v292;
end
local v34 = function(v293)
	pcall(function()
		FLYING = false;
		local v750 = getRoot(v293.Character);
		v750:FindFirstChild(v29):Destroy();
		v750:FindFirstChild(v30):Destroy();
		v293.Character:FindFirstChildWhichIsA("Humanoid").PlatformStand = false;
		v31:Disconnect();
		v32:Disconnect();
	end);
end;
local v35 = function(v294, v295)
	v34(v294);
	FLYING = true;
	local v296 = getRoot(v294.Character);
	local v297 = workspace.CurrentCamera;
	local v298 = Vector3.new();
	local v299 = Vector3.new(0, 0, 0);
	local v300 = Vector3.new(8999999488, 8999999488, 8999999488);
	local v301 = require(v294.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule"));
	local v302 = Instance.new("BodyVelocity");
	v302.Name = v29;
	v302.Parent = v296;
	v302.MaxForce = v299;
	v302.Velocity = v299;
	local v307 = Instance.new("BodyGyro");
	v307.Name = v30;
	v307.Parent = v296;
	v307.MaxTorque = v300;
	v307.P = 1000;
	v307.D = 50;
	v31 = v294.CharacterAdded:Connect(function()
		local v752 = Instance.new("BodyVelocity");
		v752.Name = v29;
		v752.Parent = v296;
		v752.MaxForce = v299;
		v752.Velocity = v299;
		local v757 = Instance.new("BodyGyro");
		v757.Name = v30;
		v757.Parent = v296;
		v757.MaxTorque = v300;
		v757.P = 1000;
		v757.D = 50;
	end);
	v32 = RunService.RenderStepped:Connect(function()
		v296 = getRoot(v294.Character);
		v297 = workspace.CurrentCamera;
		if (v294.Character:FindFirstChildWhichIsA("Humanoid") and v296 and v296:FindFirstChild(v29) and v296:FindFirstChild(v30)) then
			local v1629 = v294.Character:FindFirstChildWhichIsA("Humanoid");
			local v1630 = v296:FindFirstChild(v29);
			local v1631 = v296:FindFirstChild(v30);
			v1630.MaxForce = v300;
			v1631.MaxTorque = v300;
			if  not v295 then
				v1629.PlatformStand = true;
			end
			v1631.CFrame = v297.CoordinateFrame;
			v1630.Velocity = v298;
			local v1637 = v301:GetMoveVector();
			if (v1637.X > 0) then
				v1630.Velocity = v1630.Velocity + (v297.CFrame.RightVector * v1637.X * ((v295 and vehicleflyspeed) or iyflyspeed) * 50) ;
			end
			if (v1637.X < 0) then
				v1630.Velocity = v1630.Velocity + (v297.CFrame.RightVector * v1637.X * ((v295 and vehicleflyspeed) or iyflyspeed) * 50) ;
			end
			if (v1637.Z > 0) then
				v1630.Velocity = v1630.Velocity - (v297.CFrame.LookVector * v1637.Z * ((v295 and vehicleflyspeed) or iyflyspeed) * 50) ;
			end
			if (v1637.Z < 0) then
				v1630.Velocity = v1630.Velocity - (v297.CFrame.LookVector * v1637.Z * ((v295 and vehicleflyspeed) or iyflyspeed) * 50) ;
			end
		end
	end);
end;
function AutoHaki()
	if  not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso");
	end
end
function EquipWeapon(v313)
	if  not Nill then
		if game.Players.LocalPlayer.Backpack:FindFirstChild(v313) then
			Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(v313);
			wait(0.1);
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool);
		end
	end
end
if World3 then
	distbyp = 5000;
	island = {
		["Port Town"] = CFrame.new( -290.7376708984375, 6.729952812194824, 5343.5537109375),
		["Hydra Island"] = CFrame.new(5749.7861328125 + 50 , 611.9736938476562, -276.2497863769531),
		Mansion = CFrame.new( -12471.169921875 + 50 , 374.94024658203, -7551.677734375),
		["Castle On The Sea"] = CFrame.new( -5085.23681640625 + 50 , 316.5072021484375, -3156.202880859375),
		["Haunted Island"] = CFrame.new( -9547.5703125, 141.0137481689453, 5535.16162109375),
		["Great Tree"] = CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625),
		["Candy Island"] = CFrame.new( -1106.076416015625, 13.016114234924316, -14231.9990234375),
		["Cake Island"] = CFrame.new( -1903.6856689453125, 36.70722579956055, -11857.265625),
		["Loaf Island"] = CFrame.new( -889.8325805664062, 64.72842407226562, -10895.8876953125),
		["Peanut Island"] = CFrame.new( -1943.59716796875, 37.012996673583984, -10288.01171875),
		["Cocoa Island"] = CFrame.new(147.35205078125, 23.642955780029297, -12030.5498046875),
		["Tiki Outpost"] = CFrame.new( -16234, 9, 416)
	};
elseif World2 then
	distbyp = 3500;
	island = {
		A = CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938),
		B = CFrame.new( -5622.033203125, 492.19604492188, -781.78552246094),
		C = CFrame.new( -11.311455726624, 29.276733398438, 2771.5224609375),
		D = CFrame.new( -2448.5300292969, 73.016105651855, -3210.6306152344),
		E = CFrame.new( -380.47927856445, 77.220390319824, 255.82550048828),
		F = CFrame.new( -3032.7641601563, 317.89672851563, -10075.373046875),
		G = CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188),
		H = CFrame.new(923.40197753906, 125.05712890625, 32885.875),
		I = CFrame.new( -6127.654296875, 15.951762199402, -5040.2861328125)
	};
elseif World1 then
	distbyp = 1500;
	island = {
		A = CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594),
		B = CFrame.new( -2566.4296875, 6.8556680679321, 2045.2561035156),
		C = CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688),
		D = CFrame.new( -1181.3093261719, 4.7514905929565, 3803.5456542969),
		E = CFrame.new( -1612.7957763672, 36.852081298828, 149.12843322754),
		F = CFrame.new( -690.33081054688, 15.09425163269, 1582.2380371094),
		G = CFrame.new( -4607.82275, 872.54248, -1667.55688),
		H = CFrame.new( -7952.31006, 5545.52832, -320.704956),
		I = CFrame.new( -4914.8212890625, 50.963626861572, 4281.0278320313),
		J = CFrame.new( -1427.6203613281, 7.2881078720093, -2792.7722167969),
		K = CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469),
		l = CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813),
		M = CFrame.new(61163.8515625, 11.6796875, 1819.7841796875),
		N = CFrame.new( -5247.7163085938, 12.883934020996, 8504.96875),
		O = CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656),
		P = CFrame.new( -4813.0249, 903.708557, -1912.69055),
		Q = CFrame.new( -4970.21875, 717.707275, -2622.35449)
	};
end
local v36 = game.Players;
local v37 = v36.LocalPlayer;
local v38 = game:GetService("RunService");
local v39 = v38.Heartbeat;
local v40 = v38.RenderStepped;
local v41 = {};
getgenv().weapon = nil;
getgenv().targ = nil;
getgenv().lasttarrget = nil;
getgenv().checked = {};
getgenv().pl = v36:GetPlayers();
wait(1);
function bypass(v314)
	if (v37.Character:FindFirstChild("Head") and v37.Character:FindFirstChild("HumanoidRootPart") and v37.Character:FindFirstChild("Humanoid")) then
		dist = math.huge;
		is = nil;
		for v1638, v1639 in pairs(island) do
			if ((v314.Position - v1639.Position).magnitude < dist) then
				is = v1639;
				dist = (v314.Position - v1639.Position).magnitude;
			end
		end
		if (is == nil) then
			return;
		end
		if (v37:DistanceFromCharacter(v314.Position) > distbyp) then
			if ((v37.Character.Head.Position - v314.Position).magnitude > (is.Position - v314.Position).magnitude) then
				if tween then
					tween:Destroy();
				end
				if (((is.X == 61163.8515625) and (is.Y == 11.6796875) and (is.Z == 1819.7841796875)) or (is == CFrame.new( -12471.169921875 + 50 , 374.94024658203, -7551.677734375)) or (is == CFrame.new( -5085.23681640625 + 50 , 316.5072021484375, -3156.202880859375)) or (is == CFrame.new(5749.7861328125 + 50 , 611.9736938476562, -276.2497863769531))) then
					if tween then
						tween:Cancel();
					end
					repeat
						task.wait();
						v37.Character.HumanoidRootPart.CFrame = is;
					until v37.Character.PrimaryPart.CFrame == is
					task.wait(0.1);
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint");
				elseif  not stopbypass then
					if tween then
						tween:Cancel();
					end
					repeat
						task.wait();
						v37.Character.HumanoidRootPart.CFrame = is;
					until v37.Character.PrimaryPart.CFrame == is
					game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15);
					v37.Character:SetPrimaryPartCFrame(is);
					wait(0.1);
					v37.Character.Head:Destroy();
					wait(0.5);
					repeat
						task.wait();
						v37.Character.PrimaryPart.CFrame = is;
					until v37.Character:FindFirstChild("Humanoid").Health > 0
					task.wait(0.5);
				end
			end
		end
	end
end
local v47 = false;
function WaitHRP(v315)
	if  not v315 then
		return;
	end
	return v315.Character:WaitForChild("HumanoidRootPart", 9);
end
function CheckNearestTeleporter(v316)
	local v317 = v316.Position;
	local v318 = math.huge;
	local v319 = nil;
	local v320 = game.PlaceId;
	local v321 = {};
	if (v320 == 2753915549) then
		v321 = {
			Sky3 = Vector3.new( -7894, 5547, -380),
			Sky3Exit = Vector3.new( -4607, 874, -1667),
			UnderWater = Vector3.new(61163, 11, 1819),
			UnderwaterExit = Vector3.new(4050, -1, -1814)
		};
	elseif (v320 == 4442272183) then
		v321 = {
			["Swan Mansion"] = Vector3.new( -390, 332, 673),
			["Swan Room"] = Vector3.new(2285, 15, 905),
			["Cursed Ship"] = Vector3.new(923, 126, 32852),
			["Zombie Island"] = Vector3.new( -6509, 83, -133)
		};
	elseif (v320 == 7449423635) then
		v321 = {
			["Floating Turtle"] = Vector3.new( -12462, 375, -7552),
			["Hydra Island"] = Vector3.new(5745, 610, -267),
			Mansion = Vector3.new( -12462, 375, -7552),
			Castle = Vector3.new( -5036, 315, -3179),
			["Beautiful Pirate"] = Vector3.new(5319, 23, -93),
			["Beautiful Room"] = Vector3.new(5314.58203, 22.5364361, -125.942276, 1, 2.1476277e-8, -1.9911115e-13, -2.1476277e-8, 1, -3.0510602e-8, 1.984559e-13, 3.0510602e-8, 1),
			["Temple of Time"] = Vector3.new(28286, 14897, 103)
		};
	end
	for v764, v765 in pairs(v321) do
		local v766 = (v765 - v317).Magnitude;
		if (v766 < v318) then
			v318 = v766;
			v319 = v765;
		end
	end
	local v322 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
	if (v318 <= (v317 - v322).Magnitude) then
		return v319;
	end
end
function requestEntrance(v323)
	game.ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", v323);
	local v324 = game.Players.LocalPlayer.Character.HumanoidRootPart;
	v324.CFrame = v324.CFrame + Vector3.new(0, 50, 0) ;
	task.wait(0.5);
end
local v48 = false;
function topos(v326)
	local v327 = game.Players.LocalPlayer;
	if (v327.Character and (v327.Character.Humanoid.Health > 0) and v327.Character:FindFirstChild("HumanoidRootPart")) then
		if  not v326 then
			return;
		end
		local v1379 = (v326.Position - v327.Character.HumanoidRootPart.Position).Magnitude;
		local v1380 = CheckNearestTeleporter(v326);
		if v1380 then
			requestEntrance(v1380);
		end
		if  not v327.Character:FindFirstChild("PartTele") then
			local v1714 = Instance.new("Part", v327.Character);
			v1714.Size = Vector3.new(10, 1, 10);
			v1714.Name = "PartTele";
			v1714.Anchored = true;
			v1714.Transparency = 1;
			v1714.CanCollide = true;
			v1714.CFrame = WaitHRP(v327).CFrame;
			v1714:GetPropertyChangedSignal("CFrame"):Connect(function()
				if  not v47 then
					return;
				end
				task.wait();
				if (v327.Character and v327.Character:FindFirstChild("HumanoidRootPart")) then
					local v2051 = v1714.CFrame;
					WaitHRP(v327).CFrame = CFrame.new(v2051.Position.X, v326.Position.Y, v2051.Position.Z);
				end
			end);
		end
		if (v48 and (v1379 > distbyp)) then
			bypass(v326);
		end
		v47 = true;
		local v1381 = CFrame.new(v326.Position.X, v326.Position.Y, v326.Position.Z);
		local v1382 = game:GetService("TweenService"):Create(v327.Character.PartTele, TweenInfo.new(v1379 / getgenv().TweenSpeed , Enum.EasingStyle.Linear), {
			CFrame = v326
		});
		v1382:Play();
		v1382.Completed:Connect(function(v1640)
			if (v1640 == Enum.PlaybackState.Completed) then
				if v327.Character:FindFirstChild("PartTele") then
					v327.Character.PartTele:Destroy();
				end
				v47 = false;
			end
		end);
	end
end
function TP1(v328)
	topos(v328);
end
function TP2(v329)
	local v330 = game.Players.LocalPlayer;
	if (v330.Character and (v330.Character.Humanoid.Health > 0) and v330.Character:FindFirstChild("HumanoidRootPart")) then
		local v1383 = (v329.Position - v330.Character.HumanoidRootPart.Position).Magnitude;
		if  not v329 then
			return;
		end
		local v1384 = CheckNearestTeleporter(v329);
		if v1384 then
			requestEntrance(v1384);
		end
		if  not v330.Character:FindFirstChild("PartTele") then
			local v1722 = Instance.new("Part", v330.Character);
			v1722.Size = Vector3.new(10, 1, 10);
			v1722.Name = "PartTele";
			v1722.Anchored = true;
			v1722.Transparency = 1;
			v1722.CanCollide = true;
			v1722.CFrame = WaitHRP(v330).CFrame;
			v1722:GetPropertyChangedSignal("CFrame"):Connect(function()
				if  not v47 then
					return;
				end
				task.wait();
				if (v330.Character and v330.Character:FindFirstChild("HumanoidRootPart")) then
					WaitHRP(v330).CFrame = v1722.CFrame;
				end
			end);
		end
		v47 = true;
		local v1385 = game:GetService("TweenService"):Create(v330.Character.PartTele, TweenInfo.new(v1383 / getgenv().TweenSpeed , Enum.EasingStyle.Linear), {
			CFrame = v329
		});
		v1385:Play();
		v1385.Completed:Connect(function(v1641)
			if (v1641 == Enum.PlaybackState.Completed) then
				if v330.Character:FindFirstChild("PartTele") then
					v330.Character.PartTele:Destroy();
				end
				v47 = false;
			end
		end);
	end
end
function stopTeleport()
	v47 = false;
	local v331 = game.Players.LocalPlayer;
	if v331.Character:FindFirstChild("PartTele") then
		v331.Character.PartTele:Destroy();
	end
end
spawn(function()
	while task.wait() do
		if  not v47 then
			stopTeleport();
		end
	end
end);
spawn(function()
	local v332 = game.Players.LocalPlayer;
	while task.wait() do
		pcall(function()
			if v332.Character:FindFirstChild("PartTele") then
				if ((v332.Character.HumanoidRootPart.Position - v332.Character.PartTele.Position).Magnitude >= 100) then
					stopTeleport();
				end
			end
		end);
	end
end);
local v49 = game.Players.LocalPlayer;
local function v50(v333)
	local v334 = v333:WaitForChild("Humanoid");
	v334.Died:Connect(function()
		stopTeleport();
	end);
end
v49.CharacterAdded:Connect(v50);
if v49.Character then
	v50(v49.Character);
end
function TPB(v335, v336)
	local v337 = game:GetService("TweenService");
	local v338 = TweenInfo.new((v336.CFrame.Position - v335.Position).Magnitude / getgenv().SpeedBoat , Enum.EasingStyle.Linear);
	local v339 = v337:Create(v336, v338, {
		CFrame = v335
	});
	local v340 = {};
	v340.Stop = function(v767)
		v339:Cancel();
	end;
	if ((v336.CFrame.Position - v335.Position).Magnitude <= 25) then
		v340:Stop();
	else
		v339:Play();
	end
	return v340;
end
Type = 1;
spawn(function()
	while wait() do
		if (Type == 1) then
			Pos = CFrame.new(0, PosY, -19);
		elseif (Type == 2) then
			Pos = CFrame.new(19, PosY, 0);
		elseif (Type == 3) then
			Pos = CFrame.new(0, PosY, 19);
		elseif (Type == 4) then
			Pos = CFrame.new( -19, PosY, 0);
		end
	end
end);
spawn(function()
	while wait(0.1) do
		Type = 1;
		wait(0.2);
		Type = 2;
		wait(0.2);
		Type = 3;
		wait(0.2);
		Type = 4;
		wait(0.2);
	end
end);
spawn(function()
	pcall(function()
		while wait() do
			if (_G.AdvanceDungeon or _G.DoughtBoss or _G.DungeonMobAura or _G.FarmChest or _G.Factory or _G.FarmBossHallow or _G.FarmSwanGlasses or _G.LongSword or _G.BlackSpikeycoat or _G.ElectricClaw or _G.FarmGunMastery or _G.HolyTorch or _G.LawRaid or _G.FarmBoss or _G.TwinHooks or _G.OpenSwanDoor or _G.Dragon_Trident or _G.Saber or _G.FarmFruitMastery or _G.FarmGunMastery or _G.TeleportIsland or _G.EvoRace or _G.FarmAllMsBypassType or _G.Observationv2 or _G.MusketeerHat or _G.Ectoplasm or _G.Rengoku or _G.Rainbow_Haki or _G.Observation or _G.DarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.BudySword or _G.OderSword or _G.AllBoss or _G.Sharkman or _G.Mastery_Fruit or _G.Mastery_Gun or _G.Dungeon or _G.Cavender or _G.Pole or _G.Kill_Ply or _G.Factory or _G.SecondSea or _G.TeleportPly or _G.Bartilo or _G.DarkBoss or _G.GrabChest or _G.Holy_Torch or _G.Level or _G.KillAfterTrials or _G.Clip or FarmBoss or _G.Elitehunter or _G.ThirdSea or _G.Bone or _G.heart or _G.doughking or _G.FarmMaterial or _G.Guitar or _G.Dragon_Trident or _G.tushita or _G.d or _G.waden or _G.gay or _G.pole or _G.saw or _G.ObservationHakiV2 or _G.FarmNearest or AutoFarmChest or _G.Carvender or _G.TwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.Leather or _G.Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.FarmSeabaest or _G.CDK or _G.FarmMob or _G.MysticIsland or _G.FarmDungeon or _G.RaidPirate or _G.QuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.PlayerHunter or _G.Factory or Grab_Chest or _G.Seabest or _G.SeaBest or _G.KillTial or _G.Saber or _G.Position_Spawn or _G.Farmfast or _G.Race or _G.RaidPirate or Open_Color_Haki or _G.Terrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.AppleAutoDriveBoat or _G.bjirFishBoat or _G.KillGhostShip or _G.KillLeviathan or _G.AutoLeviathan or _G.FrozenDimension or _G.FKitsune) then
				if  not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
					local v1867 = Instance.new("BodyVelocity");
					v1867.Name = "BodyClip";
					v1867.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
					v1867.MaxForce = Vector3.new(100000, 100000, 100000);
					v1867.Velocity = Vector3.new(0, 0, 0);
				end
			end
		end
	end);
end);
spawn(function()
	pcall(function()
		while wait() do
			if (_G.AdvanceDungeon or _G.DoughtBoss or _G.DungeonMobAura or _G.FarmChest or _G.Factory or _G.FarmBossHallow or _G.FarmSwanGlasses or _G.LongSword or _G.BlackSpikeycoat or _G.ElectricClaw or _G.FarmGunMastery or _G.HolyTorch or _G.LawRaid or _G.FarmBoss or _G.TwinHooks or _G.OpenSwanDoor or _G.Dragon_Trident or _G.Saber or _G.FarmFruitMastery or _G.FarmGunMastery or _G.TeleportIsland or _G.EvoRace or _G.FarmAllMsBypassType or _G.Observationv2 or _G.MusketeerHat or _G.Ectoplasm or _G.Rengoku or _G.Rainbow_Haki or _G.Observation or _G.DarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.BudySword or _G.OderSword or _G.AllBoss or _G.Sharkman or _G.Mastery_Fruit or _G.Mastery_Gun or _G.Dungeon or _G.Cavender or _G.Pole or _G.Kill_Ply or _G.Factory or _G.SecondSea or _G.TeleportPly or _G.Bartilo or _G.DarkBoss or _G.GrabChest or _G.Holy_Torch or _G.Level or _G.KillAfterTrials or _G.Clip or FarmBoss or _G.Elitehunter or _G.ThirdSea or _G.Bone or _G.heart or _G.doughking or _G.FarmMaterial or _G.Guitar or _G.Dragon_Trident or _G.tushita or _G.d or _G.waden or _G.gay or _G.pole or _G.saw or _G.ObservationHakiV2 or _G.FarmNearest or AutoFarmChest or _G.Carvender or _G.TwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.Leather or _G.Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.FarmSeabaest or _G.CDK or _G.FarmMob or _G.MysticIsland or _G.FarmDungeon or _G.RaidPirate or _G.QuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.PlayerHunter or _G.Factory or Grab_Chest or _G.Seabest or _G.SeaBest or _G.KillTial or _G.Saber or _G.Position_Spawn or _G.Farmfast or _G.Race or _G.RaidPirate or _G.TushitaSword or Open_Color_Haki or _G.Terrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.AppleAutoDriveBoat or _G.bjirFishBoat or _G.KillGhostShip or _G.KillLeviathan or _G.AutoLeviathan) then
				local v1730 = game:GetService("Players").LocalPlayer;
				local v1731 = v1730.Character and v1730.Character:FindFirstChildOfClass("Humanoid") ;
				if v1731 then
					local v1873 = v1731:GetState();
					if ((v1873 ~= Enum.HumanoidStateType.Seated) and (v1873 ~= Enum.HumanoidStateType.Running) and (v1873 ~= Enum.HumanoidStateType.Landed)) then
						v1731:ChangeState(5);
					end
				end
			end
		end
	end);
end);
spawn(function()
	pcall(function()
		game:GetService("RunService").Stepped:Connect(function()
			if (_G.AdvanceDungeon or _G.DoughtBoss or _G.DungeonMobAura or _G.FarmChest or _G.Factory or _G.FarmBossHallow or _G.FarmSwanGlasses or _G.LongSword or _G.BlackSpikeycoat or _G.ElectricClaw or _G.FarmGunMastery or _G.HolyTorch or _G.LawRaid or _G.FarmBoss or _G.TwinHooks or _G.OpenSwanDoor or _G.Dragon_Trident or _G.Saber or _G.NoClip or _G.FarmFruitMastery or _G.FarmGunMastery or _G.TeleportIsland or _G.EvoRace or _G.FarmAllMsBypassType or _G.Observationv2 or _G.MusketeerHat or _G.Ectoplasm or _G.Rengoku or _G.Rainbow_Haki or _G.Observation or _G.DarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.BudySword or _G.OderSword or _G.AllBoss or _G.Sharkman or _G.Mastery_Fruit or _G.Mastery_Gun or _G.Dungeon or _G.Cavender or _G.Pole or _G.Kill_Ply or _G.Factory or _G.SecondSea or _G.TeleportPly or _G.Bartilo or _G.DarkBoss or _G.GrabChest or _G.Holy_Torch or _G.Level or _G.KillAfterTrials or _G.Clip or _G.Elitehunter or _G.ThirdSea or _G.Bone or _G.heart or _G.doughking or _G.FarmMaterial or _G.Guitar or _G.Dragon_Trident or _G.tushita or _G.waden or _G.pole or _G.saw or _G.ObservationHakiV2 or _G.FarmNearest or _G.Carvender or _G.TwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.Kai or _G.Leather or _G.Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.FarmSeabaest or _G.CDK or _G.FarmMob or _G.MysticIsland or _G.FarmDungeon or _G.RaidPirate or _G.QuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.PlayerHunter or _G.Factory or _G.Seabest or _G.SeaBest or _G.KillTial or _G.Saber or _G.Position_Spawn or _G.TPB or _G.Farmfast or _G.Race or _G.RaidPirate or Open_Color_Haki or _G.Terrorshark or _G.KillLeviathan or _G.AutoLeviathan or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.AppleAutoDriveBoat or _G.FrozenDimension or _G.FKitsune) then
				for v1794, v1795 in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
					if v1795:IsA("BasePart") then
						v1795.CanCollide = false;
					end
				end
			end
		end);
	end);
end);
function InstancePos(v342)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v342;
end
function TP3(v344)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v344;
end
spawn(function()
	while wait() do
		if (_G.DoughtBoss or _G.DungeonMobAura or _G.FarmChest or _G.FarmBossHallow or _G.Factory or _G.FarmSwanGlasses or _G.LongSword or _G.BlackSpikeycoat or _G.ElectricClaw or _G.FarmGunMastery or _G.HolyTorch or _G.LawRaid or _G.FarmBoss or _G.TwinHooks or _G.OpenSwanDoor or _G.Dragon_Trident or _G.Saber or _G.NoClip or _G.FarmFruitMastery or _G.FarmGunMastery or _G.TeleportIsland or _G.EvoRace or _G.FarmAllMsBypassType or _G.Observationv2 or _G.MusketeerHat or _G.Ectoplasm or _G.Rengoku or _G.Rainbow_Haki or _G.Observation or _G.DarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.BudySword or _G.OderSword or _G.AllBoss or _G.Sharkman or _G.Mastery_Fruit or _G.Mastery_Gun or _G.Dungeon or _G.Cavender or _G.Pole or _G.Factory or _G.SecondSea or _G.TeleportPly or _G.Bartilo or _G.DarkBoss or _G.Level or _G.KillAfterTrials or _G.Clip or _G.Elitehunter or _G.ThirdSea or _G.Bone or _G.heart or _G.doughking or _G.d or _G.waden or _G.gay or _G.ObservationHakiV2 or _G.FarmMaterial or _G.FarmNearest or _G.Carvender or _G.TwinHook or AutoMobAura or _G.Leather or _G.Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.FarmSeabaest or _G.CDK or _G.RaidPirate or getgenv().AutoFarm or _G.PlayerHunter or _G.Factory or _G.AttackDummy or _G.Seabest or _G.SeaBest or _G.KillTial or _G.Saber or _G.Farmfast or _G.RaidPirate or _G.Terrorshark or _G.KillLeviathan or _G.AutoLeviathan or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.bjirFishBoat or (_G.KillGhostShip == true)) then
			pcall(function()
				game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken", true);
			end);
		end
	end
end);
spawn(function()
	game:GetService("RunService").RenderStepped:Connect(function()
		if (_G.Click or Fastattack) then
			pcall(function()
				game:GetService("VirtualUser"):CaptureController();
				game:GetService("VirtualUser"):Button1Down(Vector2.new(0, 1, 0, 1));
			end);
		end
	end);
end);
function StopTween(v346)
	if  not v346 then
		_G.StopTween = true;
		wait();
		topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
		wait();
		if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy();
		end
		_G.StopTween = false;
		_G.Clip = false;
	end
	if game.Players.LocalPlayer.Character:FindFirstChild("Highlight") then
		game.Players.LocalPlayer.Character:FindFirstChild("Highlight"):Destroy();
	end
end
spawn(function()
	pcall(function()
		while wait() do
			for v1642, v1643 in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
				if v1643:IsA("Tool") then
					if v1643:FindFirstChild("RemoteFunctionShoot") then
						SelectWeaponGun = v1643.Name;
					end
				end
			end
		end
	end);
end);
local module = {
  NextAttack = 0,
  Distance = 55,
  attackMobs = true,
  attackPlayers = true
}

local Player = game:GetService("Players")

function module:GetBladeHits()
  local BladeHits = {}
  
  for _, Enemy in game:GetService("Workspace").Enemies:GetChildren() do
    if Enemy:FindFirstChild("HumanoidRootPart") then
      table.insert(BladeHits, Enemy.HumanoidRootPart)
    end
  end
  
  return BladeHits
end

function module:attack()
  local BladeHits = self:GetBladeHits()
  
  game:GetService("ReplicatedStorage").Modules.Net:WaitForChild("RE/RegisterAttack"):FireServer(0)
  
  for _, Hit in BladeHits do
    game:GetService("ReplicatedStorage").Modules.Net:WaitForChild("RE/RegisterHit"):FireServer(Hit)
  end
end

spawn(function()
  while wait(0,000001) do -- Tăng tốc độ tấn công bằng cách giảm thời gian chờ
    module:attack()
  end
		end)
function CheckStun()
	if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Stun") then
		return game:GetService("Players").LocalPlayer.Character.Stun.Value ~= 0 ;
	end
	return false;
end
LPH_JIT_MAX(function()
	spawn(function()
		while game:GetService("RunService").Stepped:Wait() do
			local v1387 = v57.activeController;
			if (v1387 and v1387.equipped and  not CheckStun()) then
				if (NeedAttacking and Fast_Attack) then
					v1.spawn(function()
						pcall(v1.spawn, AttackFunction, 1);
					end);
				elseif DamageAura then
					v1.spawn(function()
						pcall(v1.spawn, AttackFunction, 3);
					end);
				elseif (UsefastattackPlayers and Fast_Attack) then
					v1.spawn(function()
						pcall(v1.spawn, AttackFunction, 2);
					end);
				elseif (NeedAttacking and (Fast_Attack == false)) then
					if (v1387.hitboxMagnitude ~= 55) then
						v1387.hitboxMagnitude = 55;
					end
					pcall(v1.spawn, v1387.attack, v1387);
				end
			end
		end
	end);
end)();
game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
	wait(1);
	game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
end);
inmyselfss = LPH_JIT_MAX(function(v367)
	local v368 = game:GetService("Players").LocalPlayer;
	local v369 = v368.Backpack:FindFirstChild(v367) or v368.Character:FindFirstChild(v367) ;
	if v369 then
		return v369;
	end
	for v780, v781 in pairs(v368.Character:GetChildren()) do
		if (v781:IsA("Tool") and (v781.Name == v367)) then
			return v781;
		end
	end
	return nil;
end);
v1.spawn(function()
	if (hookfunction and  not islclosure(hookfunction)) then
		workspace:WaitForChild("_WorldOrigin").ChildAdded:Connect(function(v1644)
			if (v1644.Name == "DamageCounter") then
				v1644.Enabled = false;
			end
		end);
		hookfunction(require(game:GetService("ReplicatedStorage"):WaitForChild("GuideModule")).ChangeDisplayedNPC, function()
		end);
		task.spawn(function()
			local v1645, v1646;
			repeat
				v1645, v1646 = pcall(function()
					for v1876, v1877 in pairs(getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))[2].activeController.data) do
						if (typeof(v1877) == "function") then
							hookfunction(v1877, function()
							end);
						end
					end
				end);
				task.wait(1.5);
			until v1645
		end);
		abc = true;
		task.spawn(function()
			local v1647 = game.Players.LocalPlayer;
			local v1648 = require(v1647.PlayerScripts.CombatFramework.Particle);
			local v1649 = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib);
			shared.orl = shared.orl or v1649.wrapAttackAnimationAsync ;
			shared.cpc = shared.cpc or v1648.play ;
			if abc then
				pcall(function()
					v1649.wrapAttackAnimationAsync = function(v2061, v2062, v2063, v2064, v2065)
						local v2066 = v1649.getBladeHits(v2062, v2063, v2064);
						if v2066 then
							v1648.play = function()
							end;
							v2061:Play(0.1, 0.1, 0.1);
							v2065(v2066);
							v1648.play = shared.cpc;
							wait(0.5);
							v2061:Stop();
						end
					end;
				end);
			end
		end);
	end
end);
local v66 = v5:Window(Enum.KeyCode.RightControl);
local v67 = v66:T("Tab Status", "rbxassetid://131220073739500");
local v68 = v66:T("Tab General", "rbxassetid://131220073739500");
local v69 = v66:T("Tab Setting Other", "rbxassetid://131220073739500");
local v70 = v66:T("Tab Item", "rbxassetid://131220073739500");
local v71 = v66:T("Tab Race & Mirage", "rbxassetid://131220073739500");
local v72 = v66:T("Tab Sea Event", "rbxassetid://131220073739500");
local v73 = v66:T("Tab Local Player", "rbxassetid://131220073739500");
local v74 = v66:T("Tab Visual", "rbxassetid://131220073739500");
local v75 = v66:T("Tab Raid", "rbxassetid://131220073739500");
local v76 = v66:T("Tab Teleport", "rbxassetid://131220073739500");
local v77 = v66:T("Tab Shop", "rbxassetid://131220073739500");
local v78 = v66:T("Tab Devil Fruit", "rbxassetid://131220073739500");
local v79 = v66:T("Tab Miscellaneous", "rbxassetid://131220073739500");
v67:Seperator("YTB: Anura Gaming");
v67:Label("Đăng kí ngay đi nào");
v67:Button("Đăng kí đi", function()
	setclipboard("https://www.youtube.com/@Anura-gaming-real");
end);
v67:Seperator("Time");
Time = v67:Label("Executer Time");
function UpdateTime()
	local v370 = math.floor(workspace.DistributedGameTime + 0.5 );
	local v371 = math.floor(v370 / (60 ^ 2) ) % 24 ;
	local v372 = math.floor(v370 / (60 ^ 1) ) % 60 ;
	local v373 = math.floor(v370 / (60 ^ 0) ) % 60 ;
	Time:Set("[Server Time]: Hours: "   .. v371   .. " Min: "   .. v372   .. " Sec: "   .. v373 );
end
spawn(function()
	while task.wait() do
		pcall(function()
			UpdateTime();
		end);
	end
end);
Client = v67:Label("Fps");
function UpdateClient()
	local v374 = workspace:GetRealPhysicsFPS();
	Client:Set("[FPS]: "   .. v374 );
end
spawn(function()
	while true do
		wait(0.1);
		UpdateClient();
	end
end);
Client1 = v67:Label("Ping");
function UpdateClient1()
	local v375 = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString();
	Client1:Set("[PING]: "   .. v375 );
end
spawn(function()
	while true do
		wait(0.1);
		UpdateClient1();
	end
end);
v67:Seperator("Status Player");
local v80 = v67:Label("Race");
spawn(function()
	while wait() do
		pcall(function()
			v80:Set("Race: "   .. game:GetService("Players").LocalPlayer.Data.Race.Value );
		end);
	end
end);
local v81 = v67:Label("Beli");
spawn(function()
	while wait() do
		pcall(function()
			v81:Set("Beli: "   .. game:GetService("Players").LocalPlayer.Data.Beli.Value );
		end);
	end
end);
local v82 = v67:Label("Fragment");
spawn(function()
	while wait() do
		pcall(function()
			v82:Set("Fragments: "   .. game:GetService("Players").LocalPlayer.Data.Fragments.Value );
		end);
	end
end);
local v83 = v67:Label("Bounty");
spawn(function()
	while wait() do
		pcall(function()
			v83:Set("Bounty / Honor: "   .. game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value );
		end);
	end
end);
local v84 = v67:Label("Devil Fruit");
spawn(function()
	while wait() do
		pcall(function()
			if (game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)) then
				v84:Set("Devil Fruit: "   .. game:GetService("Players").LocalPlayer.Data.DevilFruit.Value );
			else
				v84:Set("Not Have Devil Fruit");
			end
		end);
	end
end);
v68:Seperator("Farm Mode");
local v85 = {
	"Melee",
	"Sword",
	"Fruit",
	"Gun"
};
_G.SelectWeapon = "Melee";
v68:Dropdown("Select Weapon", v85, function(v376)
	_G.SelectWeapon = v376;
end);
task.spawn(function()
	while wait() do
		pcall(function()
			if (_G.SelectWeapon == "Melee") then
				for v1797, v1798 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v1798.ToolTip == "Melee") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v1798.Name)) then
							_G.SelectWeapon = v1798.Name;
						end
					end
				end
			elseif (_G.SelectWeapon == "Sword") then
				for v2067, v2068 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v2068.ToolTip == "Sword") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v2068.Name)) then
							_G.SelectWeapon = v2068.Name;
						end
					end
				end
			elseif (_G.SelectWeapon == "Gun") then
				for v2352, v2353 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v2353.ToolTip == "Gun") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v2353.Name)) then
							_G.SelectWeapon = v2353.Name;
						end
					end
				end
			elseif (_G.SelectWeapon == "Fruit") then
				for v2594, v2595 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v2595.ToolTip == "Blox Fruit") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v2595.Name)) then
							_G.SelectWeapon = v2595.Name;
						end
					end
				end
			end
		end);
	end
end);
local v86 = {
	"Normal Attack",
	"Fast Attack",
	"Super Attack",
	"Xeter Attack"
};
v63 = "Xeter Attack";
v68:Dropdown("Fast Attack Delay", v86, function(v377)
	v63 = v377;
end);
spawn(function()
	while wait() do
		if v63 then
			pcall(function()
				if (v63 == "Normal Attack") then
					v63 = 0.1;
				elseif (v63 == "Fast Attack") then
					v63 = 0.07;
				elseif (v63 == "Super Attack") then
					v63 = 0.04;
				elseif (v63 == "Xeter Attack") then
					v63 = 0.02;
				end
			end);
		end
	end
end);
v68:Seperator("Farming");
v68:Toggle("Auto Farm Level", _G.Farm, function(v378)
	_G.Level = v378;
	StopTween(_G.Farm);
end);
spawn(function()
	while wait() do
		if _G.Level then
			pcall(function()
				local v1737 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if  not string.find(v1737, NameMon) then
					StartMagnet = false;
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
				end
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
					StartMagnet = false;
					CheckQuest();
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 3500) then
							BTP(CFrameQuest);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 3500) then
							TP1(CFrameQuest);
						end
					else
						TP1(CFrameQuest);
					end
					if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 5) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest);
					end
				elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
					CheckQuest();
					if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
						for v2596, v2597 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2597:FindFirstChild("HumanoidRootPart") and v2597:FindFirstChild("Humanoid") and (v2597.Humanoid.Health > 0)) then
								if (v2597.Name == Mon) then
									if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
										repeat
											task.wait();
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();
											PosMon = v2597.HumanoidRootPart.CFrame;
											TP1(v2597.HumanoidRootPart.CFrame * Pos );
											v2597.HumanoidRootPart.CanCollide = false;
											v2597.Humanoid.WalkSpeed = 0;
											v2597.Head.CanCollide = false;
											v2597.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											StartMagnet = true;
										until  not _G.Level or (v2597.Humanoid.Health <= 0) or  not v2597.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
									else
										StartMagnet = false;
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
									end
								end
							end
						end
					else
						TP1(CFrameMon);
						UnEquipWeapon(_G.SelectWeapon);
						StartMagnet = false;
						if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
							TP1(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(15, 10, 2) );
						end
					end
				end
			end);
		end
	end
end);
if World1 then
	v68:Toggle("Auto Farm Fast (Farm Lv.1-300)", _G.FarmFast, function(v1388)
		_G.Farmfast = v1388;
		_G.Stats_Kaitun = v1388;
		StopTween(_G.Farmfast);
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if (_G.Farmfast and World1) then
					local v1879 = game.Players.LocalPlayer.Data.Level.Value;
					if (v1879 >= 1) then
						_G.Level = false;
						_G.Farmfast = true;
					end
					if (v1879 >= 75) then
						_G.Farmfast = false;
						_G.PlayerHunter = true;
					end
					if (v1879 >= 200) then
						_G.Level = true;
						_G.PlayerHunter = false;
					end
					if (v1879 >= 1) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -7894.6176757813, 5547.1416015625, -380.29119873047));
						for v2354, v2355 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if ((v2355.Name == "Shanda") and v2355:FindFirstChild("Humanoid") and v2355:FindFirstChild("HumanoidRootPart") and (v2355.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2355.HumanoidRootPart.CanCollide = false;
									v2355.Humanoid.WalkSpeed = 0;
									StardMag = true;
									FastMon = v2355.HumanoidRootPart.CFrame;
									v2355.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
									TP1(v2355.HumanoidRootPart.CFrame * Pos );
								until  not _G.Farmfast or  not v2355.Parent or (v2355.Humanoid.Health <= 0)
								StardMag = false;
								TP1(CFrame.new( -7678.48974609375, 5566.40380859375, -497.2156066894531));
								UnEquipWeapon(_G.SelectWeapon);
							end
						end
					elseif game:GetService("ReplicatedStorage"):FindFirstChild("Shanda") then
						TP1(game:GetService("ReplicatedStorage"):FindFirstChild("Shanda").HumanoidRootPart.CFrame * CFrame.new(5, 10, 2) );
					end
				end
			end
		end);
	end);
end
v68:Toggle("Auto Kaitun", false, function(v379)
	_G.Level = v379;
	_G.SelectWeapon = "Combat";
	_G.Stats_Kaitun = v379;
	_G.Superhuman = v379;
	_G.SecondSea = v379;
	_G.ThirdSea = v379;
	_G.BuyLegendarySword = v379;
	_G.StoreFruit = v379;
	_G.Random_Auto = v379;
	_G.BuyAllAib = v379;
	_G.BuyAllSword = v379;
	StopTween(_G.Farm);
end);
spawn(function()
	while wait() do
		if _G.BuyAllSword then
			pcall(function()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cutlass");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Katana");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Duel Katana");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Pipe");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Bisento");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane");
				if _G.BuyHop then
					wait(10);
					Hop();
				end
			end);
		end
		if _G.BuyAllAib then
			pcall(function()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru");
				if _G.HopBuy then
					wait(10);
					Hop();
				end
			end);
		end
	end
end);
v68:Toggle("Auto Farm Nearest", _G.FarmNearest, function(v380)
	_G.FarmNearest = v380;
	StopTween(_G.FarmNearest);
end);
spawn(function()
	while wait() do
		if _G.FarmNearest then
			for v1738, v1739 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if (v1739.Name and v1739:FindFirstChild("Humanoid")) then
					if (v1739.Humanoid.Health > 0) then
						repeat
							wait();
							EquipWeapon(_G.SelectWeapon);
							if  not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								local v2598 = {
									[1] = "Buso"
								};
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2598));
							end
							topos(v1739.HumanoidRootPart.CFrame * Pos );
							v1739.HumanoidRootPart.CanCollide = false;
							Fastattack = true;
							v1739.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							AutoFarmNearestMagnet = true;
							PosMon = v1739.HumanoidRootPart.CFrame;
						until  not _G.FarmNearest or  not v1739.Parent or (v1739.Humanoid.Health <= 0)
						AutoFarmNearestMagnet = false;
						Fastattack = false;
					end
				end
			end
		end
	end
end);
v68:Seperator("Misc Elite");
local v87 = v68:Label("Elite Hunter");
spawn(function()
	while wait() do
		v87:Set("Total Elite Hunter : "   .. game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress") );
	end
end);
local v88 = v68:Label("N/A");
spawn(function()
	while wait() do
		pcall(function()
			if (game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban")) then
				v88:Set("Status: Elite Spawn!");
			else
				v88:Set("Status: Elite Not Spawn");
			end
		end);
	end
end);
v68:Toggle("Auto Elite Hunter", _G.Elitehunter, function(v381)
	_G.Elitehunter = v381;
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
	StopTween(_G.Elitehunter);
end);
spawn(function()
	while wait() do
		if (_G.Elitehunter and World3) then
			pcall(function()
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
					if (string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban")) then
						if (game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban")) then
							for v2599, v2600 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if ((v2600.Name == "Diablo") or (v2600.Name == "Deandre") or (v2600.Name == "Urban")) then
									if (v2600:FindFirstChild("Humanoid") and v2600:FindFirstChild("HumanoidRootPart") and (v2600.Humanoid.Health > 0)) then
										repeat
											wait();
											AutoHaki();
											EquipWeapon(_G.SelectWeapon);
											v2600.HumanoidRootPart.CanCollide = false;
											v2600.Humanoid.WalkSpeed = 0;
											v2600.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											topos(v2600.HumanoidRootPart.CFrame * CFrame.new(PosX, PosY, PosZ) );
											game:GetService("VirtualUser"):CaptureController();
											game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
											sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
										until (_G.Elitehunter == false) or (v2600.Humanoid.Health <= 0) or  not v2600.Parent
									end
								end
							end
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						end
					end
				elseif (_G.EliteHunterHop and (game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later.")) then
					hop();
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter");
				end
			end);
		end
	end
end);
v68:Toggle("Auto Elite Hunter Hop", _G.EliteHunterHop, function(v382)
	_G.EliteHunterHop = v382;
end);
v68:Seperator("Chest Farm");
v68:Toggle("Auto Farm Chest", false, function(v383)
	AutoFarmChest = v383;
	StopTween(AutoFarmChest);
end);
_G.MagnitudeAdd = 0;
local function v89()
	local v384 = {};
	for v782, v783 in pairs(game:GetService("Workspace"):GetChildren()) do
		if (v783.Name:find("Chest") and v783:IsA("BasePart")) then
			table.insert(v384, v783);
		end
	end
	return v384;
end
local function v90(v385)
	table.sort(v385, function(v784, v785)
		local v786 = (v784.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
		local v787 = (v785.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
		return v786 < v787 ;
	end);
end
spawn(function()
	while wait() do
		if AutoFarmChest then
			local v1652 = v89();
			v90(v1652);
			for v1740, v1741 in ipairs(v1652) do
				if ((v1741.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= (5000 + _G.MagnitudeAdd)) then
					repeat
						wait();
						if game:GetService("Workspace"):FindFirstChild(v1741.Name) then
							topos(v1741.CFrame);
						end
					until (AutoFarmChest == false) or  not v1741.Parent
					topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
					_G.MagnitudeAdd = _G.MagnitudeAdd + 1500 ;
					break;
				end
			end
		end
	end
end);
v68:Toggle("Auto Stop Items", function(v386)
	_G.StopItemsChest = v386;
end);
spawn(function()
	while wait() do
		pcall(function()
			if _G.StopItemsChest then
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fist of Darkness")) then
					_G.ChestBypass = false;
					topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
				end
			end
		end);
	end
end);
v68:Toggle("Auto Farm Chest Mirage island", false, function(v387)
	_G.ChestMirage = v387;
	StopTween(_G.ChestMirage);
end);
_G.MagnitudeAdd = 0;
spawn(function()
	while wait() do
		if _G.ChestMirage then
			for v1742, v1743 in pairs(game:GetService("Workspace"):GetChildren()) do
				if v1743.Name:find("FragChest") then
					if game:GetService("Workspace"):FindFirstChild(v1743.Name) then
						if ((v1743.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= (5000 + _G.MagnitudeAdd)) then
							repeat
								wait();
								if game:GetService("Workspace"):FindFirstChild(v1743.Name) then
									topos(v1743.CFrame);
								end
							until (_G.ChestMirage == false) or  not v1743.Parent
							TP(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
							_G.MagnitudeAdd = _G.MagnitudeAdd + 1500 ;
							break;
						end
					end
				end
			end
		end
	end
end);
v68:Seperator("Pirates Raid");
v68:Toggle("Auto Pirates Raid", _G.Carvender, function(v388)
	_G.RaidPirate = v388;
	StopTween(_G.RaidPirate);
end);
spawn(function()
	while wait() do
		if _G.RaidPirate then
			pcall(function()
				local v1744 = CFrame.new( -5496.17432, 363.768921, -2841.53027);
				if ((CFrame.new( -5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500) then
					for v2069, v2070 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (_G.RaidPirate and v2070:FindFirstChild("HumanoidRootPart") and v2070:FindFirstChild("Humanoid") and (v2070.Humanoid.Health > 0)) then
							if ((v2070.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2070.HumanoidRootPart.CanCollide = false;
									TP2(v2070.HumanoidRootPart.CFrame * Pos );
								until (v2070.Humanoid.Health <= 0) or  not v2070.Parent or  not _G.RaidPirate
							end
						end
					end
				else
					topos(v1744);
				end
				topos(CFrame.new( -5496.17432, 313.768921, -2841.53027));
			end);
		end
	end
end);
v68:Seperator("Misc Bone");
local v91 = {
	["Reborn Skeleton"] = CFrame.new( -8769.58984, 142.13063, 6055.27637),
	["Living Zombie"] = CFrame.new( -10156.4531, 138.652481, 5964.5752),
	["Demonic Soul"] = CFrame.new( -9525.17188, 172.13063, 6152.30566),
	["Posessed Mummy"] = CFrame.new( -9570.88281, 5.81831884, 6187.86279)
};
spawn(function()
	spawn(function()
		while task.wait(0.1) do
			if BonesBring then
				pcall(function()
					for v1880, v1881 in pairs(game.Workspace.Enemies:GetChildren()) do
						if ((v1881.Name == "Reborn Skeleton") or (v1881.Name == "Living Zombie") or (v1881.Name == "Demonic Soul") or (v1881.Name == "Posessed Mummy")) then
							local v2307 = v91[v1881.Name];
							if v2307 then
								v1881.HumanoidRootPart.CFrame = v2307;
							end
							v1881.Head.CanCollide = false;
							v1881.Humanoid.Sit = false;
							v1881.Humanoid:ChangeState(14);
							v1881.HumanoidRootPart.CanCollide = false;
							v1881.Humanoid.JumpPower = 0;
							v1881.Humanoid.WalkSpeed = 0;
							if v1881.Humanoid:FindFirstChild("Animator") then
								v1881.Humanoid:FindFirstChild("Animator"):Destroy();
							end
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
						end
					end
				end);
			end
		end
	end);
end);
BoneCheck = v68:Label("Total Bone: N/A");
spawn(function()
	while wait() do
		pcall(function()
			BoneCheck:Set("Total Bone: "   .. (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Check")) );
		end);
	end
end);
v68:Toggle("Auto Farm Bone", _G.Bone, function(v389)
	_G.Bone = v389;
	StopTween(_G.Bone);
end);
v68:Toggle("Accept Quest Bone", true, function(v390)
	_G.QuestBone = v390;
end);
local v92 = CFrame.new( -9506.234375, 172.130615234375, 6117.0771484375);
spawn(function()
	while wait() do
		if (_G.Bone and  not _G.QuestBone and World3) then
			pcall(function()
				if (game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy")) then
					for v2071, v2072 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v2072.Name == "Reborn Skeleton") or (v2072.Name == "Living Zombie") or (v2072.Name == "Demonic Soul") or (v2072.Name == "Posessed Mummy")) then
							if (v2072:FindFirstChild("Humanoid") and v2072:FindFirstChild("HumanoidRootPart") and (v2072.Humanoid.Health > 0)) then
								repeat
									wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2072.HumanoidRootPart.CanCollide = false;
									v2072.Humanoid.WalkSpeed = 0;
									v2072.Head.CanCollide = false;
									BonesBring = true;
									PosMonBone = v2072.HumanoidRootPart.CFrame;
									topos(v2072.HumanoidRootPart.CFrame * Pos );
								until  not _G.Bone or  not v2072.Parent or (v2072.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v92.Position).Magnitude > 3500) then
							BTP(v92);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v92.Position).Magnitude < 3500) then
							topos(v92);
						end
					else
						topos(v92);
					end
					UnEquipWeapon(_G.SelectWeapon);
					BonesBring = false;
					topos(CFrame.new( -9506.234375, 172.130615234375, 6117.0771484375));
					for v2073, v2074 in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
						if (v2074.Name == "Reborn Skeleton") then
							topos(v2074.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif (v2074.Name == "Living Zombie") then
							topos(v2074.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif (v2074.Name == "Demonic Soul") then
							topos(v2074.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif (v2074.Name == "Posessed Mummy") then
							topos(v2074.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						end
					end
				end
			end);
		end
	end
end);
local v93 = CFrame.new( -9515.75, 174.8521728515625, 6079.40625);
spawn(function()
	while wait() do
		if (_G.Bone and _G.QuestBone and World3) then
			pcall(function()
				local v1745 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if  not string.find(v1745, "Demonic Soul") then
					BonesBring = false;
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
				end
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
					BonesBring = false;
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v93.Position).Magnitude > 3500) then
							BTP(v93);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v93.Position).Magnitude < 3500) then
							topos(v93);
						end
					else
						topos(v93);
					end
					if ((v93.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "HauntedQuest2", 1);
					end
				elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
					if (game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy")) then
						for v2601, v2602 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2602:FindFirstChild("HumanoidRootPart") and v2602:FindFirstChild("Humanoid") and (v2602.Humanoid.Health > 0)) then
								if ((v2602.Name == "Reborn Skeleton") or (v2602.Name == "Living Zombie") or (v2602.Name == "Demonic Soul") or (v2602.Name == "Posessed Mummy")) then
									if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Demonic Soul") then
										repeat
											task.wait();
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();
											PosMonBone = v2602.HumanoidRootPart.CFrame;
											topos(v2602.HumanoidRootPart.CFrame * Pos );
											v2602.HumanoidRootPart.CanCollide = false;
											v2602.Humanoid.WalkSpeed = 0;
											v2602.Head.CanCollide = false;
											BonesBring = true;
										until  not _G.Bone or (v2602.Humanoid.Health <= 0) or  not v2602.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
									else
										BonesBring = false;
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
									end
								end
							end
						end
					else
						BonesBring = false;
						if game:GetService("ReplicatedStorage"):FindFirstChild("Demonic Soul [Lv. 2025]") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Demonic Soul [Lv. 2025]").HumanoidRootPart.CFrame * CFrame.new(15, 10, 2) );
						end
					end
				end
			end);
		end
	end
end);
v68:Toggle("Auto Random Surprise", _G.Random_Bone, function(v391)
	_G.Random_Bone = v391;
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Random_Bone then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1);
			end
		end
	end);
end);
v68:Toggle("Auto Pray", pry, function(v392)
	_G.Pray = v392;
	StopTween(_G.Pray);
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.Pray then
				TP1(CFrame.new( -8652.99707, 143.450119, 6170.50879, -0.983064115, -2.4800553e-10, 0.18326205, -1.7891039e-9, 1, -8.243923e-9, -0.18326205, -8.43218e-9, -0.983064115));
				wait();
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 1);
			end
		end
	end);
end);
v68:Toggle("Auto Try Luck", Trylux, function(v393)
	_G.Trylux = v393;
	StopTween(_G.Trylux);
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.Trylux then
				TP1(CFrame.new( -8652.99707, 143.450119, 6170.50879, -0.983064115, -2.4800553e-10, 0.18326205, -1.7891039e-9, 1, -8.243923e-9, -0.18326205, -8.43218e-9, -0.983064115));
				wait();
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2);
			end
		end
	end);
end);
v68:Seperator("Dought Boss");
local v94 = {
	["Cookie Crafter"] = CFrame.new( -2333.28052, 37.8239059, -12093.2861),
	["Cake Guard"] = CFrame.new( -1575.56433, 37.8238907, -12416.2529),
	["Baking Staff"] = CFrame.new( -1872.35742, 37.8239517, -12899.4248),
	["Head Baker"] = CFrame.new( -2223.1416, 53.5283203, -12854.752)
};
spawn(function()
	spawn(function()
		while task.wait(0.1) do
			if CakeBring then
				pcall(function()
					for v1882, v1883 in pairs(game.Workspace.Enemies:GetChildren()) do
						if ((v1883.Name == "Cookie Crafter") or (v1883.Name == "Cake Guard") or (v1883.Name == "Baking Staff") or (v1883.Name == "Head Baker")) then
							local v2313 = v94[v1883.Name];
							if v2313 then
								v1883.HumanoidRootPart.CFrame = v2313;
							end
							v1883.Head.CanCollide = false;
							v1883.Humanoid.Sit = false;
							v1883.Humanoid:ChangeState(14);
							v1883.HumanoidRootPart.CanCollide = false;
							v1883.Humanoid.JumpPower = 0;
							v1883.Humanoid.WalkSpeed = 0;
							if v1883.Humanoid:FindFirstChild("Animator") then
								v1883.Humanoid:FindFirstChild("Animator"):Destroy();
							end
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
						end
					end
				end);
			end
		end
	end);
end);
local v95 = v68:Label("Killed");
spawn(function()
	while wait() do
		pcall(function()
			if (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88) then
				v95:Set("Defeat: "   .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 41) );
			elseif (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87) then
				v95:Set("Defeat: "   .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 40) );
			elseif (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86) then
				v95:Set("Defeat: "   .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 39) );
			else
				v95:Set("Boss Is Spawning");
			end
		end);
	end
end);
v68:Toggle("Auto Farm Cake Prince", _G.DoughtBoss, function(v394)
	_G.DoughtBoss = v394;
	StopTween(_G.DoughtBoss);
end);
v68:Toggle("Accept Quest Cake Prince", true, function(v395)
	_G.QuestCake = v395;
end);
spawn(function()
	while wait() do
		if (_G.DoughtBoss and  not _G.QuestCake) then
			pcall(function()
				local v1746 = CFrame.new( -2091.911865234375, 70.00884246826172, -12142.8359375);
				if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
					for v2075, v2076 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v2076.Name == "Cake Prince") or (v2076.Name == "Dough King")) then
							if (v2076:FindFirstChild("Humanoid") and v2076:FindFirstChild("HumanoidRootPart") and (v2076.Humanoid.Health > 0)) then
								repeat
									wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2076.HumanoidRootPart.CanCollide = false;
									v2076.Humanoid.WalkSpeed = 0;
									v2076.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2076.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.DoughtBoss or  not v2076.Parent or (v2076.Humanoid.Health <= 0)
							end
						end
					end
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
					topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
				else
					if (KillMob == 0) then
					end
					if ((game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0) and ((CFrame.new( -1990.672607421875, 4532.99951171875, -14973.6748046875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 500)) then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new( -2151.82153, 149.315704, -12404.9053);
					elseif (game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1) then
						if (game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker")) then
							for v2870, v2871 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if ((v2871.Name == "Cookie Crafter") or (v2871.Name == "Cake Guard") or (v2871.Name == "Baking Staff") or (v2871.Name == "Head Baker")) then
									if (v2871:FindFirstChild("Humanoid") and v2871:FindFirstChild("HumanoidRootPart") and (v2871.Humanoid.Health > 0)) then
										repeat
											task.wait();
											AutoHaki();
											EquipWeapon(_G.SelectWeapon);
											v2871.HumanoidRootPart.CanCollide = false;
											v2871.Humanoid.WalkSpeed = 0;
											v2871.Head.CanCollide = false;
											v2871.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											CakeBring = true;
											PosMonDoughtOpenDoor = v2871.HumanoidRootPart.CFrame;
											topos(v2871.HumanoidRootPart.CFrame * Pos );
										until  not _G.DoughtBoss or  not v2871.Parent or (v2871.Humanoid.Health <= 0) or (game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0) or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or (KillMob == 0)
									end
								end
							end
						else
							if BypassTP then
								if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1746.Position).Magnitude > 3500) then
									BTP(v1746);
								elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1746.Position).Magnitude < 3500) then
									topos(v1746);
								end
							else
								topos(v1746);
							end
							CakeBring = false;
							UnEquipWeapon(_G.SelectWeapon);
							topos(CFrame.new( -2091.911865234375, 70.00884246826172, -12142.8359375));
							if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") then
								topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
							elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard") then
								topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
							elseif game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff") then
								topos(game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
							elseif game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker") then
								topos(game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
							end
						end
					elseif game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
						topos(game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					end
				end
			end);
		end
	end
end);
spawn(function()
	while wait() do
		if (_G.DoughtBoss and _G.QuestCake and World3) then
			pcall(function()
				local v1747 = CFrame.new( -2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.8030205e-8, 0.288177818, 6.930119e-8, 1, 7.519312e-8, -0.288177818, -5.2032135e-8, 0.957576931);
				if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
					for v2077, v2078 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v2078.Name == "Cake Prince") or (v2078.Name == "Dough King")) then
							if (v2078:FindFirstChild("Humanoid") and v2078:FindFirstChild("HumanoidRootPart") and (v2078.Humanoid.Health > 0)) then
								repeat
									wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2078.HumanoidRootPart.CanCollide = false;
									v2078.Humanoid.WalkSpeed = 0;
									v2078.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2078.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.DoughtBoss or  not v2078.Parent or (v2078.Humanoid.Health <= 0)
							end
						end
					end
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
					topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
				else
					if (KillMob == 0) then
					end
					if ((game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0) and ((CFrame.new( -1990.672607421875, 4532.99951171875, -14973.6748046875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 500)) then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new( -2151.82153, 149.315704, -12404.9053);
					elseif (game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1) then
						local v2664 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
						if  not string.find(v2664, "Cookie Crafter") then
							CakeBring = false;
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
						end
						if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
							CakeBring = false;
							if BypassTP then
								if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1747.Position).Magnitude > 3500) then
									BTP(v1747);
								else
									topos(v1747);
								end
							else
								topos(v1747);
							end
							if ((v1747.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "CakeQuest1", 1);
							end
						elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
							if (game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker")) then
								for v2979, v2980 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if (v2980:FindFirstChild("HumanoidRootPart") and v2980:FindFirstChild("Humanoid") and (v2980.Humanoid.Health > 0)) then
										if ((v2980.Name == "Cookie Crafter") or (v2980.Name == "Cake Guard") or (v2980.Name == "Baking Staff") or (v2980.Name == "Head Baker")) then
											if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Cookie Crafter") then
												repeat
													wait();
													EquipWeapon(_G.SelectWeapon);
													AutoHaki();
													PosMonCake = v2980.HumanoidRootPart.CFrame;
													topos(v2980.HumanoidRootPart.CFrame * Pos );
													v2980.HumanoidRootPart.CanCollide = false;
													v2980.Humanoid.WalkSpeed = 0;
													v2980.Head.CanCollide = false;
													v2980.HumanoidRootPart.Size = Vector3.new(70, 70, 70);
													CakeBring = true;
													PosMonDoughtOpenDoor = v2980.HumanoidRootPart.CFrame;
												until  not _G.DoughtBoss or  not v2980.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) or (v2980.Humanoid.Health <= 0) or (game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0) or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or (KillMob == 0)
											else
												CakeBring = false;
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
											end
										end
									end
								end
							else
								CakeBring = false;
								if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") then
									topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame * CFrame.new(15, 10, 2) );
								end
							end
						end
					end
				end
			end);
		end
	end
end);
v68:Toggle("Auto Spawn Cake Prince", false, function(v396)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner", value);
end);
v68:Toggle("Auto Dough King", _G.doughking, function(v397)
	_G.doughking = v397;
	StopTween(_G.doughking);
end);
v68:Toggle("Auto Dough King Hop", _G.doughkingHop, function(v398)
	_G.doughkingHop = v398;
end);
spawn(function()
	while wait() do
		if (_G.doughking and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
					for v2079, v2080 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2080.Name == "Dough King") then
							if (v2080:FindFirstChild("Humanoid") and v2080:FindFirstChild("HumanoidRootPart") and (v2080.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2080.HumanoidRootPart.CanCollide = false;
									v2080.Humanoid.WalkSpeed = 0;
									v2080.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2080.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.doughking or  not v2080.Parent or (v2080.Humanoid.Health <= 0)
							end
						end
					end
				else
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new( -2662.818603515625, 1062.3480224609375, -11853.6953125));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Dough King").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif _G.doughkingHop then
						Hop();
					end
				end
			end);
		end
	end
end);
v68:Seperator("Misc Mastery");
v68:Toggle("Auto Mastery Fruit", _G.FarmFruitMastery, function(v399)
	_G.FarmFruitMastery = v399;
	StopTween(_G.FarmFruitMastery);
	if (_G.FarmFruitMastery == false) then
		UseSkill = false;
	end
end);
spawn(function()
	while wait() do
		if _G.FarmFruitMastery then
			pcall(function()
				local v1748 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if  not string.find(v1748, NameMon) then
					Magnet = false;
					UseSkill = false;
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
				end
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
					StartMasteryFruitMagnet = false;
					UseSkill = false;
					CheckQuest();
					repeat
						wait();
						TP1(CFrameQuest);
					until ((CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or  not _G.FarmFruitMastery
					if ((CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5) then
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest);
						wait(0.1);
					end
				elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
					CheckQuest();
					if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
						for v2603, v2604 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2604:FindFirstChild("HumanoidRootPart") and v2604:FindFirstChild("Humanoid") and (v2604.Humanoid.Health > 0)) then
								if (v2604.Name == Mon) then
									if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
										HealthMs = (v2604.Humanoid.MaxHealth * Kill_At) / 100 ;
										repeat
											task.wait();
											if (v2604.Humanoid.Health <= HealthMs) then
												AutoHaki();
												EquipWeapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value);
												TP1(v2604.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0) );
												v2604.HumanoidRootPart.CanCollide = false;
												PosMonMasteryFruit = v2604.HumanoidRootPart.CFrame;
												v2604.Humanoid.WalkSpeed = 0;
												v2604.Head.CanCollide = false;
												UseSkill = true;
											else
												UseSkill = false;
												AutoHaki();
												EquipWeapon(_G.SelectWeapon);
												TP1(v2604.HumanoidRootPart.CFrame * Pos );
												v2604.HumanoidRootPart.CanCollide = false;
												v2604.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
												PosMonMasteryFruit = v2604.HumanoidRootPart.CFrame;
												v2604.Humanoid.WalkSpeed = 0;
												v2604.Head.CanCollide = false;
											end
											StartMasteryFruitMagnet = true;
										until  not _G.FarmFruitMastery or (v2604.Humanoid.Health <= 0) or  not v2604.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
									else
										UseSkill = false;
										StartMasteryFruitMagnet = false;
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
									end
								end
							end
						end
					else
						TP1(CFrameMon);
						UnEquipWeapon(_G.SelectWeapon);
						StartMasteryFruitMagnet = false;
						UseSkill = false;
						local v2569 = game:GetService("ReplicatedStorage"):FindFirstChild(Mon);
						if v2569 then
							TP1(v2569.HumanoidRootPart.CFrame * CFrame.new(0, 0, 10) );
						elseif (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1) then
							game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true;
							task.wait();
							game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false;
						end
					end
				end
			end);
		end
	end
end);
spawn(function()
	while wait() do
		if UseSkill then
			pcall(function()
				CheckQuest();
				for v1799, v1800 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
						MasBF = game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value;
					elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
						MasBF = game:GetService("Players").LocalPlayer.Backpack[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value;
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
						if _G.SkillZ then
							local v2360 = {
								[1] = PosMonMasteryFruit.Position
							};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(v2360));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
						end
						if _G.SkillX then
							local v2361 = {
								[1] = PosMonMasteryFruit.Position
							};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(v2361));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
						end
						if _G.SkillC then
							local v2362 = {
								[1] = PosMonMasteryFruit.Position
							};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(v2362));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
							wait(2);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
						end
					elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom-Venom") then
						if _G.SkillZ then
							local v2605 = {
								[1] = PosMonMasteryFruit.Position
							};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(v2605));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
						end
						if _G.SkillX then
							local v2606 = {
								[1] = PosMonMasteryFruit.Position
							};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(v2606));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
						end
						if _G.SkillC then
							local v2607 = {
								[1] = PosMonMasteryFruit.Position
							};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(v2607));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
							wait(2);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
						end
					elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
						if (_G.SkillZ and (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(2, 2.0199999809265, 1))) then
							local v2700 = {
								[1] = PosMonMasteryFruit.Position
							};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(v2700));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
						end
						if _G.SkillX then
							local v2701 = {
								[1] = PosMonMasteryFruit.Position
							};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(v2701));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
						end
						if _G.SkillC then
							local v2702 = {
								[1] = PosMonMasteryFruit.Position
							};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(v2702));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
						end
						if _G.SkillV then
							local v2703 = {
								[1] = PosMonMasteryFruit.Position
							};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(v2703));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "V", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "V", false, game);
						end
					elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
						if _G.SkillZ then
							local v2872 = {
								[1] = PosMonMasteryFruit.Position
							};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(v2872));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
						end
						if _G.SkillX then
							local v2873 = {
								[1] = PosMonMasteryFruit.Position
							};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(v2873));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
						end
						if _G.SkillC then
							local v2874 = {
								[1] = PosMonMasteryFruit.Position
							};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(v2874));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
						end
						if _G.SkillV then
							local v2875 = {
								[1] = PosMonMasteryFruit.Position
							};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(v2875));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "V", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "V", false, game);
						end
					end
				end
			end);
		end
	end
end);
spawn(function()
	game:GetService("RunService").RenderStepped:Connect(function()
		pcall(function()
			if UseSkill then
				for v1801, v1802 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
					if (v1802.Name == "NotificationTemplate") then
						if string.find(v1802.Text, "Skill locked!") then
							v1802:Destroy();
						end
					end
				end
			end
		end);
	end);
end);
spawn(function()
	pcall(function()
		game:GetService("RunService").RenderStepped:Connect(function()
			if UseSkill then
				local v1749 = {
					[1] = PosMonMasteryFruit.Position
				};
				game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(v1749));
			end
		end);
	end);
end);
v68:Toggle("Auto Mastery Gun ", _G.FarmGunMastery, function(v400)
	_G.FarmGunMastery = v400;
	StopTween(_G.FarmGunMastery);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.FarmGunMastery then
				local v1750 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if  not string.find(v1750, NameMon) then
					Magnet = false;
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
				end
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
					StartMasteryGunMagnet = false;
					CheckQuest();
					TP1(CFrameQuest);
					if ((CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10) then
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest);
					end
				elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
					CheckQuest();
					if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
						pcall(function()
							for v2668, v2669 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v2669.Name == Mon) then
									repeat
										task.wait();
										if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
											HealthMin = (v2669.Humanoid.MaxHealth * Kill_At) / 100 ;
											if (v2669.Humanoid.Health <= HealthMin) then
												EquipWeapon(SelectWeaponGun);
												TP1(v2669.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0) );
												v2669.Humanoid.WalkSpeed = 0;
												v2669.HumanoidRootPart.CanCollide = false;
												v2669.HumanoidRootPart.Size = Vector3.new(2, 2, 1);
												v2669.Head.CanCollide = false;
												local v2985 = {
													[1] = v2669.HumanoidRootPart.Position,
													[2] = v2669.HumanoidRootPart
												};
												game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(v2985));
											else
												AutoHaki();
												EquipWeapon(_G.SelectWeapon);
												v2669.Humanoid.WalkSpeed = 0;
												v2669.HumanoidRootPart.CanCollide = false;
												v2669.Head.CanCollide = false;
												v2669.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
												TP1(v2669.HumanoidRootPart.CFrame * Pos );
											end
											StartMasteryGunMagnet = true;
											PosMonMasteryGun = v2669.HumanoidRootPart.CFrame;
										else
											StartMasteryGunMagnet = false;
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
										end
									until (v2669.Humanoid.Health <= 0) or (_G.FarmGunMastery == false) or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
									StartMasteryGunMagnet = false;
								end
							end
						end);
					else
						TP1(CFrameMon);
						UnEquipWeapon(_G.SelectWeapon);
						_G.FarmGunMastery = false;
						local v2570 = game:GetService("ReplicatedStorage"):FindFirstChild(Mon);
						if v2570 then
							TP1(v2570.HumanoidRootPart.CFrame * CFrame.new(0, 0, 10) );
						elseif (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1) then
							game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true;
							task.wait();
							game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false;
						end
					end
				end
			end
		end
	end);
end);
v68:Seperator("Observation");
v68:Toggle("Auto Farm Observation", _G.Observation, function(v401)
	_G.Observation = v401;
	StopTween(_G.Observation);
end);
spawn(function()
	while wait() do
		pcall(function()
			if _G.Observation then
				repeat
					task.wait();
					if  not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
						game:GetService("VirtualUser"):CaptureController();
						game:GetService("VirtualUser"):SetKeyDown("0x65");
						wait(2);
						game:GetService("VirtualUser"):SetKeyUp("0x65");
					end
				until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or  not _G.Observation
			end
		end);
	end
end);
v68:Toggle("Auto Farm Observation Hop", _G.Observation_Hop, function(v402)
	_G.Observation_Hop = v402;
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Observation then
				if (game:GetService("Players").LocalPlayer.VisionRadius.Value >= 3000) then
					wait(2);
				elseif World2 then
					if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]") then
						if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
							repeat
								task.wait();
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0) ;
							until (_G.Observation == false) or  not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						else
							repeat
								task.wait();
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = (game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)) + wait(1) ;
								if ( not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and (_G.Observation_Hop == true)) then
									game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer);
								end
							until (_G.Observation == false) or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						end
					else
						topos(CFrame.new( -5478.39209, 15.9775667, -5246.9126));
					end
				elseif World1 then
					if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain") then
						if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
							repeat
								task.wait();
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0) ;
							until (_G.Observation == false) or  not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						else
							repeat
								task.wait();
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0) ;
								wait(1);
								if ( not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and (_G.Observation_Hop == true)) then
									game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer);
								end
							until (_G.Observation == false) or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						end
					else
						topos(CFrame.new(5533.29785, 88.1079102, 4852.3916));
					end
				elseif World3 then
					if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander") then
						if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
							repeat
								task.wait();
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0) ;
							until (_G.Observation == false) or  not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						else
							repeat
								task.wait();
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0) ;
								wait(1);
								if ( not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and (_G.Observation_Hop == true)) then
									game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer);
								end
							until (_G.Observation == false) or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						end
					else
						topos(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789));
					end
				end
			end
		end
	end);
end);
v68:Seperator("Boss");
local v96 = v68:Label("Status : Select Boss");
spawn(function()
	while wait() do
		pcall(function()
			if (game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) or game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss)) then
				v96:Set("Status : Spawn!");
			else
				v96:Set("Status : Boss Not Spawn");
			end
		end);
	end
end);
if World1 then
	v68:Dropdown("Select Boss", {
		"The Gorilla King",
		"Bobby",
		"Yeti",
		"Mob Leader",
		"Vice Admiral",
		"Warden",
		"Chief Warden",
		"Swan",
		"Magma Admiral",
		"Fishman Lord",
		"Wysper",
		"Thunder God",
		"Cyborg",
		"Saber Expert"
	}, function(v1389)
		_G.SelectBoss = v1389;
	end);
end
if World2 then
	v68:Dropdown("Select Boss", {
		"Diamond",
		"Jeremy",
		"Fajita",
		"Don Swan",
		"Smoke Admiral",
		"Cursed Captain",
		"Darkbeard",
		"Order",
		"Awakened Ice Admiral",
		"Tide Keeper"
	}, function(v1390)
		_G.SelectBoss = v1390;
	end);
end
if World3 then
	v68:Dropdown("Select Boss", {
		"Stone",
		"Island Empress",
		"Kilo Admiral",
		"Captain Elephant",
		"Beautiful Pirate",
		"rip_indra True Form",
		"Longma",
		"Soul Reaper",
		"Cake Queen"
	}, function(v1391)
		_G.SelectBoss = v1391;
	end);
end
v68:Toggle("Auto Farm Boss", _G.FarmBoss, function(v403)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
	_G.FarmBoss = v403;
	StopTween(_G.FarmBoss);
end);
spawn(function()
	while wait() do
		if (_G.FarmBoss and BypassTP) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
					for v2082, v2083 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2083.Name == _G.SelectBoss) then
							if (v2083:FindFirstChild("Humanoid") and v2083:FindFirstChild("HumanoidRootPart") and (v2083.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2083.HumanoidRootPart.CanCollide = false;
									v2083.Humanoid.WalkSpeed = 0;
									v2083.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
									topos(v2083.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.FarmBoss or  not v2083.Parent or (v2083.Humanoid.Health <= 0)
							end
						end
					end
				elseif game.ReplicatedStorage:FindFirstChild(_G.SelectBoss) then
					if ((game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500) then
						topos(game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame);
					else
						BTP(game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame);
					end
				end
			end);
		end
	end
end);
spawn(function()
	while wait() do
		if (_G.FarmBoss and  not BypassTP) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
					for v2084, v2085 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2085.Name == _G.SelectBoss) then
							if (v2085:FindFirstChild("Humanoid") and v2085:FindFirstChild("HumanoidRootPart") and (v2085.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2085.HumanoidRootPart.CanCollide = false;
									v2085.Humanoid.WalkSpeed = 0;
									v2085.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
									topos(v2085.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.FarmBoss or  not v2085.Parent or (v2085.Humanoid.Health <= 0)
							end
						end
					end
				elseif game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
					topos(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5, 10, 7) );
				end
			end);
		end
	end
end);
v68:Toggle("Auto Farm All Boss", _G.AllBoss, function(v404)
	_G.AllBoss = v404;
	StopTween(_G.AllBoss);
end);
v68:Toggle("Auto Farm All Boss Hop", _G.AllBossHop, function(v405)
	_G.AllBossHop = v405;
end);
spawn(function()
	while wait() do
		if _G.AllBoss then
			pcall(function()
				for v1803, v1804 in pairs(game.ReplicatedStorage:GetChildren()) do
					if ((v1804.Name == "rip_indra") or (v1804.Name == "Ice Admiral") or (v1804.Name == "Saber Expert") or (v1804.Name == "The Saw") or (v1804.Name == "Greybeard") or (v1804.Name == "Mob Leader") or (v1804.Name == "The Gorilla King") or (v1804.Name == "Bobby") or (v1804.Name == "Yeti") or (v1804.Name == "Vice Admiral") or (v1804.Name == "Warden") or (v1804.Name == "Chief Warden") or (v1804.Name == "Swan") or (v1804.Name == "Magma Admiral") or (v1804.Name == "Fishman Lord") or (v1804.Name == "Wysper") or (v1804.Name == "Thunder God") or (v1804.Name == "Cyborg") or (v1804.Name == "Don Swan") or (v1804.Name == "Diamond") or (v1804.Name == "Jeremy") or (v1804.Name == "Fajita") or (v1804.Name == "Smoke Admiral") or (v1804.Name == "Awakened Ice Admiral") or (v1804.Name == "Tide Keeper") or (v1804.Name == "Order") or (v1804.Name == "Darkbeard") or (v1804.Name == "Stone") or (v1804.Name == "Island Empress") or (v1804.Name == "Kilo Admiral") or (v1804.Name == "Captain Elephant") or (v1804.Name == "Beautiful Pirate") or (v1804.Name == "Cake Queen") or (v1804.Name == "rip_indra True Form") or (v1804.Name == "Longma") or (v1804.Name == "Soul Reaper") or (v1804.Name == "Cake Prince") or (v1804.Name == "Dough King")) then
						if ((v1804.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 17000) then
							repeat
								task.wait();
								AutoHaki();
								EquipWeapon(_G.SelectWeapon);
								v1804.Humanoid.WalkSpeed = 0;
								v1804.HumanoidRootPart.CanCollide = false;
								v1804.Head.CanCollide = false;
								v1804.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
								topos(v1804.HumanoidRootPart.CFrame * Pos );
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
							until (v1804.Humanoid.Health <= 0) or (_G.AllBoss == false) or  not v1804.Parent
						end
					elseif _G.AllBossHop then
						Hop();
					end
				end
			end);
		end
	end
end);
v69:Seperator("Settings Farming");
v69:Toggle("Bypass TP", false, function(v406)
	v48 = v406;
end);
v69:Seperator("Speed Tween");
local v97 = {
	"100",
	"150",
	"250",
	"300",
	"325",
	"350"
};
getgenv().TweenSpeed = "350";
v69:Dropdown("Speed Tween", v97, function(v407)
	getgenv().TweenSpeed = v407;
end);
v69:Button("Stop All Tween", function()
	topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
	_G.Clip = false;
end);
v69:Toggle("Bring Mob", true, function(v409)
	_G.BringMonster = v409;
end);
spawn(function()
	while task.wait() do
		pcall(function()
			if _G.BringMonster then
				CheckQuest();
				for v1805, v1806 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if (_G.Level and StartMagnet and (v1806.Name == Mon) and ((Mon == "Factory Staff [Lv. 800]") or (Mon == "Monkey [Lv. 14]") or (Mon == "Dragon Crew Warrior [Lv. 1575]") or (Mon == "Dragon Crew Archer [Lv. 1600]")) and v1806:FindFirstChild("Humanoid") and v1806:FindFirstChild("HumanoidRootPart") and (v1806.Humanoid.Health > 0) and ((v1806.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 220)) then
						v1806.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
						v1806.HumanoidRootPart.CFrame = PosMon;
						v1806.Humanoid:ChangeState(14);
						v1806.HumanoidRootPart.CanCollide = false;
						v1806.Head.CanCollide = false;
						if v1806.Humanoid:FindFirstChild("Animator") then
							v1806.Humanoid.Animator:Destroy();
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
					elseif (_G.Level and StartMagnet and (v1806.Name == Mon) and v1806:FindFirstChild("Humanoid") and v1806:FindFirstChild("HumanoidRootPart") and (v1806.Humanoid.Health > 0) and ((v1806.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode)) then
						v1806.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
						v1806.HumanoidRootPart.CFrame = PosMon;
						v1806.Humanoid:ChangeState(14);
						v1806.HumanoidRootPart.CanCollide = false;
						v1806.Head.CanCollide = false;
						if v1806.Humanoid:FindFirstChild("Animator") then
							v1806.Humanoid.Animator:Destroy();
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
					end
				end
			end
		end);
	end
end);
local v99 = {
	"Low",
	"Normal",
	"Super Bring"
};
_G.BringMode = "Low";
v69:Dropdown("Bring Mob Mode", v99, function(v410)
	_G.BringMode = v410;
end);
spawn(function()
	while wait(0.1) do
		if _G.BringMode then
			pcall(function()
				if (_G.BringMode == "Low") then
					_G.BringMode = 250;
				elseif (_G.BringMode == "Normal") then
					_G.BringMode = 300;
				elseif (_G.BringMode == "Super Bring") then
					_G.BringMode = 350;
				end
			end);
		end
	end
end);
PosY = "25";
v69:Dropdown("Select PosY Framing", {
	"1",
	"10",
	"20",
	"25",
	"50",
	"100"
}, function(v411)
	PosY = v411;
end);
v69:Toggle("Auto Haki", true, function(v412)
	_G.Haki = v412;
end);
spawn(function()
	while wait(0.1) do
		if _G.Haki then
			if  not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
				local v1807 = {
					[1] = "Buso"
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1807));
			end
		end
	end
end);
v69:Toggle("Fast Attack", true, function(v413)
	Fast_Attack = v413;
	DamageAura = v413;
	ClickNoCooldown = v413;
	v51.Enabled = not v413;
end);
v69:Toggle("No Attack Animation", true, function(v415)
	NoAttackAnimation = v415;
end);
v69:Toggle("Disabled Notifications", false, function(v416)
	_G.Remove_trct = v416;
end);
spawn(function()
	while wait() do
		if _G.Remove_trct then
			game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false;
		else
			game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true;
		end
	end
end);
local v100 = Instance.new("BlurEffect");
v100.Size = 100;
v100.Enabled = false;
v100.Parent = game.Lighting;
v69:Toggle("Fix Lag Screen", false, function(v417)
	v100.Enabled = v417;
end);
v69:Toggle("White Screen", _G.WhiteScreen, function(v419)
	_G.WhiteScreen = v419;
	game:GetService("RunService"):Set3dRenderingEnabled( not _G.WhiteScreen);
end);
spawn(function()
	while wait() do
		if _G.WhiteScreen then
			for v1751, v1752 in pairs(game.Workspace['_WorldOrigin']:GetChildren()) do
				if ((v1752.Name == "CurvedRing") or (v1752.Name == "SlashHit") or (v1752.Name == "DamageCounter") or (v1752.Name == "SwordSlash") or (v1752.Name == "SlashTail") or (v1752.Name == "Sounds")) then
					v1752:Destroy();
				end
			end
		end
	end
end);
v69:Toggle("Invisible Monsters", _G.hadesinvis, function(v420)
	_G.hadesinvis = v420;
	while wait() do
		if _G.hadesinvis then
			pcall(function()
				for v1808, v1809 in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if (v1809.ClassName == "MeshPart") then
						v1809.Transparency = 1;
					end
				end
				for v1810, v1811 in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if (v1811.Name == "Head") then
						v1811.Transparency = 1;
					end
				end
				for v1812, v1813 in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if (v1813.ClassName == "Accessory") then
						v1813.Handle.Transparency = 1;
					end
				end
				for v1814, v1815 in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if (v1815.ClassName == "Decal") then
						v1815.Transparency = 1;
					end
				end
			end);
		end
	end
end);
v69:Toggle("Fps Boost", false, function(v421)
	if v421 then
		cleanlag();
	end
end);
function cleanlag()
	spawn(function()
		for v1392, v1393 in pairs(workspace:GetDescendants()) do
			if ((v1393.ClassName == "Part") or (v1393.ClassName == "SpawnLocation") or (v1393.ClassName == "WedgePart") or (v1393.ClassName == "Terrain")) then
				v1393.Material = "Plastic";
			end
		end
		for v1394, v1395 in pairs(game:GetDescendants()) do
			if v1395:IsA("Texture") then
				v1395.Texture = "";
			elseif v1395:IsA("BasePart") then
				v1395.Material = "Plastic";
			end
		end
		for v1396, v1397 in pairs(Players.LocalPlayer.PlayerScripts:GetDescendants()) do
			local v1398 = {
				"RecordMode",
				"Fireflies",
				"Wind",
				"WindShake",
				"WindLines",
				"WaterBlur",
				"WaterEffect",
				"wave",
				"WaterColorCorrection",
				"WaterCFrame",
				"MirageFog",
				"MobileButtonTransparency",
				"WeatherStuff",
				"AnimateEntrance",
				"Particle",
				"AccessoryInvisible"
			};
			if table.find(v1398, v1397.Name) then
				v1397:Destroy();
			end
		end
	end);
end
v69:Seperator("Setting Farm Mastery");
Kill_At = "70";
v69:Dropdown("Select % Health Mob", {
	"10",
	"20",
	"50",
	"70",
	"100",
	"150"
}, function(v422)
	PosY = v422;
end);
v69:Toggle("Skill Z", true, function(v423)
	_G.SkillZ = v423;
end);
v69:Toggle("Skill X", true, function(v424)
	_G.SkillX = v424;
end);
v69:Toggle("Skill C", true, function(v425)
	_G.SkillC = v425;
end);
v69:Toggle("Skill V", true, function(v426)
	_G.SkillV = v426;
end);
if (World1 or World2) then
	v70:Seperator("World");
end
if World1 then
	v70:Toggle("Auto Second Sea", _G.SecondSea, function(v1399)
		_G.SecondSea = v1399;
		StopTween(_G.SecondSea);
	end);
	spawn(function()
		while wait() do
			if _G.SecondSea then
				pcall(function()
					local v1885 = game:GetService("Players").LocalPlayer.Data.Level.Value;
					if ((v1885 >= 700) and World1) then
						if ((game:GetService("Workspace").Map.Ice.Door.CanCollide == false) and (game:GetService("Workspace").Map.Ice.Door.Transparency == 1)) then
							local v2575 = CFrame.new(4849.29883, 5.65138149, 719.611877);
							repeat
								topos(v2575);
								wait();
							until ((v2575.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or (_G.SecondSea == false)
							wait(1.1);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Detective");
							wait(0.5);
							EquipWeapon("Key");
							repeat
								topos(CFrame.new(1347.7124, 37.3751602, -1325.6488));
								wait();
							until ((Vector3.new(1347.7124, 37.3751602, -1325.6488) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or (_G.SecondSea == false)
							wait(0.5);
						elseif ((game:GetService("Workspace").Map.Ice.Door.CanCollide == false) and (game:GetService("Workspace").Map.Ice.Door.Transparency == 1)) then
							if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
								for v2878, v2879 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if (v2879.Name == "Ice Admiral") then
										if ( not v2879.Humanoid.Health <= 0) then
											if (v2879:FindFirstChild("Humanoid") and v2879:FindFirstChild("HumanoidRootPart") and (v2879.Humanoid.Health > 0)) then
												OldCFrameSecond = v2879.HumanoidRootPart.CFrame;
												repeat
													task.wait();
													AutoHaki();
													EquipWeapon(_G.SelectWeapon);
													v2879.HumanoidRootPart.CanCollide = false;
													v2879.Humanoid.WalkSpeed = 0;
													v2879.Head.CanCollide = false;
													v2879.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
													v2879.HumanoidRootPart.CFrame = OldCFrameSecond;
													topos(v2879.HumanoidRootPart.CFrame * Pos );
													sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
												until  not _G.SecondSea or  not v2879.Parent or (v2879.Humanoid.Health <= 0)
											end
										else
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa");
										end
									end
								end
							elseif game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral") then
								topos(game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral").HumanoidRootPart.CFrame * CFrame.new(5, 10, 7) );
							end
						end
					end
				end);
			end
		end
	end);
end
if World2 then
	v70:Toggle("Auto Third Sea", _G.ThirdSea, function(v1400)
		_G.ThirdSea = v1400;
		StopTween(_G.ThirdSea);
	end);
	spawn(function()
		while wait() do
			if _G.ThirdSea then
				pcall(function()
					if ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500) and World2) then
						_G.Level = false;
						if (game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("ZQuestProgress", "General") == 0) then
							topos(CFrame.new( -1926.3221435547, 12.819851875305, 1738.3092041016));
							if ((CFrame.new( -1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10) then
								wait(1.5);
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress", "Begin");
							end
							wait(1.8);
							if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
								for v2706, v2707 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if (v2707.Name == "rip_indra") then
										OldCFrameThird = v2707.HumanoidRootPart.CFrame;
										repeat
											task.wait();
											AutoHaki();
											EquipWeapon(_G.SelectWeapon);
											topos(v2707.HumanoidRootPart.CFrame * Pos );
											v2707.HumanoidRootPart.CFrame = OldCFrameThird;
											v2707.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											v2707.HumanoidRootPart.CanCollide = false;
											v2707.Humanoid.WalkSpeed = 0;
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou");
											sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
										until (_G.ThirdSea == false) or (v2707.Humanoid.Health <= 0) or  not v2707.Parent
									end
								end
							elseif ( not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") and ((CFrame.new( -26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000)) then
								topos(CFrame.new( -26880.93359375, 22.848554611206, 473.18951416016));
							end
						end
					end
				end);
			end
		end
	end);
end
if World2 then
	v70:Toggle("Auto Farm Factory", _G.Factory, function(v1401)
		_G.Factory = v1401;
		StopTween(_G.Factory);
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if _G.Factory then
					if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
						for v2367, v2368 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if ((v2368.Name == "Core") and (v2368.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									topos(CFrame.new(448.46756, 199.356781, -441.389252));
								until (v2368.Humanoid.Health <= 0) or (_G.Factory == false)
							end
						end
					else
						topos(CFrame.new(448.46756, 199.356781, -441.389252));
					end
				end
			end);
		end
	end);
end
v70:Seperator("Fighting Style");
v70:Toggle("Auto Superhuman", _G.Superhuman, function(v427)
	_G.Superhuman = v427;
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Superhuman then
				if (game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or (game.Players.LocalPlayer.Character:FindFirstChild("Combat") and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 150000))) then
					UnEquipWeapon("Combat");
					wait(0.1);
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg");
				end
				if (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman")) then
					_G.SelectWeapon = "Superhuman";
				end
				if (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw")) then
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299)) then
						_G.SelectWeapon = "Black Leg";
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299)) then
						_G.SelectWeapon = "Electro";
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299)) then
						_G.SelectWeapon = "Fishman Karate";
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299)) then
						_G.SelectWeapon = "Dragon Claw";
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 300000)) then
						UnEquipWeapon("Black Leg");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro");
					end
					if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 300000)) then
						UnEquipWeapon("Black Leg");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro");
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 750000)) then
						UnEquipWeapon("Electro");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate");
					end
					if (game.Players.LocalPlayer.Character:FindFirstChild("Electro") and (game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 750000)) then
						UnEquipWeapon("Electro");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate");
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300) and (game:GetService("Players")['Localplayer'].Data.Fragments.Value >= 1500)) then
						UnEquipWeapon("Fishman Karate");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
					end
					if (game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300) and (game:GetService("Players")['Localplayer'].Data.Fragments.Value >= 1500)) then
						UnEquipWeapon("Fishman Karate");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 3000000)) then
						UnEquipWeapon("Dragon Claw");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman");
					end
					if (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 3000000)) then
						UnEquipWeapon("Dragon Claw");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman");
					end
				end
			end
		end
	end);
end);
v70:Toggle("Auto DeathStep", _G.DeathStep, function(v428)
	_G.DeathStep = v428;
end);
spawn(function()
	while wait() do
		wait();
		if _G.DeathStep then
			if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step")) then
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450)) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep");
					_G.SelectWeapon = "Death Step";
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450)) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep");
					_G.SelectWeapon = "Death Step";
				end
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 449)) then
					_G.SelectWeapon = "Black Leg";
				end
			else
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg");
			end
		end
	end
end);
v70:Toggle("Auto Sharkman Karate", _G.Sharkman, function(v429)
	_G.Sharkman = v429;
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Sharkman then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate");
				if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")) then
						topos(CFrame.new( -2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365));
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate");
					elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400)) then
					else
						Ms = "Tide Keeper";
						if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
							for v2708, v2709 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v2709.Name == Ms) then
									OldCFrameShark = v2709.HumanoidRootPart.CFrame;
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2709.Head.CanCollide = false;
										v2709.Humanoid.WalkSpeed = 0;
										v2709.HumanoidRootPart.CanCollide = false;
										v2709.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
										v2709.HumanoidRootPart.CFrame = OldCFrameShark;
										topos(v2709.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
										sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
									until  not v2709.Parent or (v2709.Humanoid.Health <= 0) or (_G.Sharkman == false) or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")
								end
							end
						else
							topos(CFrame.new( -3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-8, 0.885206044, 4.0332897e-9, 1, 1.3534751e-8, -0.885206044, -2.7260627e-9, 0.465199202));
							wait(3);
						end
					end
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate");
				end
			end
		end
	end);
end);
v70:Toggle("Auto Electric Claw", _G.ElectricClaw, function(v430)
	_G.ElectricClaw = v430;
	StopTween(_G.ElectricClaw);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.ElectricClaw then
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electric Claw")) then
					if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400)) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
						_G.SelectWeapon = "Electric Claw";
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400)) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
						_G.SelectWeapon = "Electric Claw";
					end
					if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 399)) then
						_G.SelectWeapon = "Electro";
					end
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro");
				end
			end
			if _G.ElectricClaw then
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro")) then
					if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400)) or (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400)) then
						if (_G.Level == false) then
							repeat
								task.wait();
								topos(CFrame.new( -10371.4717, 330.764496, -10131.4199));
							until  not _G.ElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new( -10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
							wait(2);
							repeat
								task.wait();
								topos(CFrame.new( -12550.532226563, 336.22631835938, -7510.4233398438));
							until  not _G.ElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new( -12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10)
							wait(1);
							repeat
								task.wait();
								topos(CFrame.new( -10371.4717, 330.764496, -10131.4199));
							until  not _G.ElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new( -10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10)
							wait(1);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
						elseif (_G.Level == true) then
							_G.Level = false;
							wait(1);
							repeat
								task.wait();
								topos(CFrame.new( -10371.4717, 330.764496, -10131.4199));
							until  not _G.ElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new( -10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
							wait(2);
							repeat
								task.wait();
								topos(CFrame.new( -12550.532226563, 336.22631835938, -7510.4233398438));
							until  not _G.ElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new( -12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10)
							wait(1);
							repeat
								task.wait();
								topos(CFrame.new( -10371.4717, 330.764496, -10131.4199));
							until  not _G.ElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new( -10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10)
							wait(1);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
							_G.SelectWeapon = "Electric Claw";
							wait(0.1);
							_G.Level = true;
						end
					end
				end
			end
		end
	end);
end);
v70:Toggle("Auto Dragon Talon", _G.DragonTalon, function(v431)
	_G.DragonTalon = v431;
end);
spawn(function()
	while wait() do
		if _G.DragonTalon then
			if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon")) then
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400)) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon");
					_G.SelectWeapon = "Dragon Talon";
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400)) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon");
					_G.SelectWeapon = "Dragon Talon";
				end
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399)) then
					_G.SelectWeapon = "Dragon Claw";
				end
			else
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
			end
		end
	end
end);
v70:Toggle("Auto GodHuman", _G.God_Human, function(v432)
	_G.God_Human = v432;
end);
spawn(function()
	while task.wait() do
		if _G.God_Human then
			pcall(function()
				if (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sharkman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon") or game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman")) then
					if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman", true) == 1) then
						if ((game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman").Level.Value >= 400)) or (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") and (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman").Level.Value >= 400))) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep");
						end
					else
					end
					if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep", true) == 1) then
						if ((game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value >= 400)) or (game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and (game.Players.LocalPlayer.Character:FindFirstChild("Death Step").Level.Value >= 400))) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate");
						end
					else
					end
					if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true) == 1) then
						if ((game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value >= 400)) or (game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") and (game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate").Level.Value >= 400))) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
						end
					else
					end
					if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true) == 1) then
						if ((game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value >= 400)) or (game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and (game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw").Level.Value >= 400))) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon");
						end
					else
					end
					if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1) then
						if ((game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value >= 400)) or (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") and (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon").Level.Value >= 400))) then
							if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman", true), "Bring") then
							else
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman");
							end
						end
					else
					end
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman");
				end
			end);
		end
	end
end);
v70:Seperator("Materials");
if World2 then
	v70:Toggle("Auto Farm Radioactive Material", false, function(v1402)
		Radioactive = v1402;
		StopTween(Radioactive);
	end);
	local v788 = CFrame.new( -507.7895202636719, 72.99479675292969, -126.45632934570312);
	spawn(function()
		while wait() do
			if (Radioactive and World2) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Factory Staff") then
						for v2369, v2370 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2370.Name == "Factory Staff") then
								if (v2370:FindFirstChild("Humanoid") and v2370:FindFirstChild("HumanoidRootPart") and (v2370.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2370.HumanoidRootPart.CanCollide = false;
										v2370.Humanoid.WalkSpeed = 0;
										v2370.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2370.HumanoidRootPart.CFrame;
										topos(v2370.HumanoidRootPart.CFrame * Pos );
									until  not Radioactive or  not v2370.Parent or (v2370.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v788.Position).Magnitude > 3500) then
								BTP(v788);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v788.Position).Magnitude < 3500) then
								topos(v788);
							end
						else
							topos(v788);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -507.7895202636719, 72.99479675292969, -126.45632934570312));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Factory Staff") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Factory Staff").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if World2 then
	v70:Toggle("Auto Farm Ectoplasm", _G.Ectoplasm, function(v1403)
		_G.Ectoplasm = v1403;
		StopTween(_G.Ectoplasm);
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if _G.Ectoplasm then
					if (game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer")) then
						for v2371, v2372 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if ((v2372.Name == "Ship Deckhand") or (v2372.Name == "Ship Engineer") or (v2372.Name == "Ship Steward") or (v2372.Name == "Ship Officer")) then
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									AutoHaki();
									if string.find(v2372.Name, "Ship") then
										v2372.HumanoidRootPart.CanCollide = false;
										v2372.Head.CanCollide = false;
										v2372.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
										topos(v2372.HumanoidRootPart.CFrame * Pos );
										EctoplasmMon = v2372.HumanoidRootPart.CFrame;
										StartEctoplasmMagnet = true;
									else
										StartEctoplasmMagnet = false;
										topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625));
									end
								until (_G.Ectoplasm == false) or  not v2372.Parent or (v2372.Humanoid.Health <= 0)
							end
						end
					else
						topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						StartEctoplasmMagnet = false;
						local v2319 = (Vector3.new(911.35827636719, 125.95812988281, 33159.5390625) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
						if (v2319 > 18000) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
						end
						topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625));
					end
				end
			end
		end);
	end);
	v70:Toggle("Auto Farm Mystic Droplet", false, function(v1404)
		_G.Makori_gay = v1404;
		StopTween(_G.Makori_gay);
	end);
	local v789 = CFrame.new( -3352.9013671875, 285.01556396484375, -10534.841796875);
	spawn(function()
		while wait() do
			if (_G.Makori_gay and World2) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Water Fighter") then
						for v2373, v2374 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2374.Name == "Water Fighter") then
								if (v2374:FindFirstChild("Humanoid") and v2374:FindFirstChild("HumanoidRootPart") and (v2374.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2374.HumanoidRootPart.CanCollide = false;
										v2374.Humanoid.WalkSpeed = 0;
										v2374.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2374.HumanoidRootPart.CFrame;
										topos(v2374.HumanoidRootPart.CFrame * Pos );
									until  not _G.Makori_gay or  not v2374.Parent or (v2374.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v789.Position).Magnitude > 3500) then
								BTP(v789);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v789.Position).Magnitude < 3500) then
								topos(v789);
							end
						else
							topos(v789);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -3352.9013671875, 285.01556396484375, -10534.841796875));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Water Fighter") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Water Fighter").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if (World1 or World2) then
	v70:Toggle("Auto Farm Magma Ore", _G.Makori_gay, function(v1405)
		_G.Umm = v1405;
		StopTween(_G.Umm);
	end);
	local v790 = CFrame.new( -5850.2802734375, 77.28675079345703, 8848.6748046875);
	spawn(function()
		while wait() do
			if (_G.Umm and World1) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Military Spy") then
						for v2375, v2376 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2376.Name == "Military Spy") then
								if (v2376:FindFirstChild("Humanoid") and v2376:FindFirstChild("HumanoidRootPart") and (v2376.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2376.HumanoidRootPart.CanCollide = false;
										v2376.Humanoid.WalkSpeed = 0;
										v2376.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2376.HumanoidRootPart.CFrame;
										topos(v2376.HumanoidRootPart.CFrame * Pos );
									until  not _G.Umm or  not v2376.Parent or (v2376.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v790.Position).Magnitude > 3500) then
								BTP(v790);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v790.Position).Magnitude < 3500) then
								topos(v790);
							end
						else
							topos(v790);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -5850.2802734375, 77.28675079345703, 8848.6748046875));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Military Spy") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Military Spy").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
	local v791 = CFrame.new( -5234.60595703125, 51.953372955322266, -4732.27880859375);
	spawn(function()
		while wait() do
			if (_G.Umm and World2) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate") then
						for v2377, v2378 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2378.Name == "Lava Pirate") then
								if (v2378:FindFirstChild("Humanoid") and v2378:FindFirstChild("HumanoidRootPart") and (v2378.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2378.HumanoidRootPart.CanCollide = false;
										v2378.Humanoid.WalkSpeed = 0;
										v2378.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2378.HumanoidRootPart.CFrame;
										topos(v2378.HumanoidRootPart.CFrame * Pos );
									until  not _G.Umm or  not v2378.Parent or (v2378.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v791.Position).Magnitude > 3500) then
								BTP(v791);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v791.Position).Magnitude < 3500) then
								topos(v791);
							end
						else
							topos(v791);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -5234.60595703125, 51.953372955322266, -4732.27880859375));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Lava Pirate") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if World1 then
	v70:Toggle("Auto Farm Angel Wings", _G.Makori_gay, function(v1406)
		_G.Wing = v1406;
		StopTween(_G.Wing);
	end);
	local v792 = CFrame.new( -7827.15625, 5606.912109375, -1705.5833740234375);
	spawn(function()
		while wait() do
			if (_G.Wing and World1) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Royal Soldier") then
						for v2379, v2380 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2380.Name == "Royal Soldier") then
								if (v2380:FindFirstChild("Humanoid") and v2380:FindFirstChild("HumanoidRootPart") and (v2380.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2380.HumanoidRootPart.CanCollide = false;
										v2380.Humanoid.WalkSpeed = 0;
										v2380.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2380.HumanoidRootPart.CFrame;
										topos(v2380.HumanoidRootPart.CFrame * Pos );
									until  not _G.Wing or  not v2380.Parent or (v2380.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v792.Position).Magnitude > 3500) then
								BTP(v792);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v792.Position).Magnitude < 3500) then
								topos(v792);
							end
						else
							topos(v792);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -7827.15625, 5606.912109375, -1705.5833740234375));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Royal Soldier") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Royal Soldier").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if (World1 or World2 or World3) then
	v70:Toggle("Auto Farm Leather", _G.Makori_gay, function(v1407)
		_G.Leather = v1407;
		StopTween(_G.Leather);
	end);
	local v793 = CFrame.new( -1211.8792724609375, 4.787090301513672, 3916.83056640625);
	spawn(function()
		while wait() do
			if (_G.Leather and World1) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Pirate") then
						for v2381, v2382 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2382.Name == "Pirate") then
								if (v2382:FindFirstChild("Humanoid") and v2382:FindFirstChild("HumanoidRootPart") and (v2382.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2382.HumanoidRootPart.CanCollide = false;
										v2382.Humanoid.WalkSpeed = 0;
										v2382.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2382.HumanoidRootPart.CFrame;
										topos(v2382.HumanoidRootPart.CFrame * Pos );
									until  not _G.Leather or  not v2382.Parent or (v2382.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v793.Position).Magnitude > 3500) then
								BTP(v793);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v793.Position).Magnitude < 3500) then
								topos(v793);
							end
						else
							topos(v793);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -1211.8792724609375, 4.787090301513672, 3916.83056640625));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Pirate") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Pirate").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
	local v794 = CFrame.new( -2010.5059814453125, 73.00115966796875, -3326.620849609375);
	spawn(function()
		while wait() do
			if (_G.Leather and World2) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Marine Captain") then
						for v2383, v2384 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2384.Name == "Marine Captain") then
								if (v2384:FindFirstChild("Humanoid") and v2384:FindFirstChild("HumanoidRootPart") and (v2384.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2384.HumanoidRootPart.CanCollide = false;
										v2384.Humanoid.WalkSpeed = 0;
										v2384.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2384.HumanoidRootPart.CFrame;
										topos(v2384.HumanoidRootPart.CFrame * Pos );
									until  not _G.Leather or  not v2384.Parent or (v2384.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v794.Position).Magnitude > 3500) then
								BTP(v794);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v794.Position).Magnitude < 3500) then
								topos(v794);
							end
						else
							topos(v794);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -2010.5059814453125, 73.00115966796875, -3326.620849609375));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Marine Captain") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Marine Captain").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
	local v795 = CFrame.new( -11975.78515625, 331.7734069824219, -10620.0302734375);
	spawn(function()
		while wait() do
			if (_G.Leather and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Jungle Pirate") then
						for v2385, v2386 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2386.Name == "Jungle Pirate") then
								if (v2386:FindFirstChild("Humanoid") and v2386:FindFirstChild("HumanoidRootPart") and (v2386.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2386.HumanoidRootPart.CanCollide = false;
										v2386.Humanoid.WalkSpeed = 0;
										v2386.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2386.HumanoidRootPart.CFrame;
										topos(v2386.HumanoidRootPart.CFrame * Pos );
									until  not _G.Leather or  not v2386.Parent or (v2386.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v795.Position).Magnitude > 3500) then
								BTP(v795);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v795.Position).Magnitude < 3500) then
								topos(v795);
							end
						else
							topos(v795);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -11975.78515625, 331.7734069824219, -10620.0302734375));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Jungle Pirate") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Jungle Pirate").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if (World1 or world2 or World3) then
	v70:Toggle("Auto Farm Scrap Metal", false, function(v1408)
		Scrap = v1408;
		StopTween(Scrap);
	end);
	local v796 = CFrame.new( -1132.4202880859375, 14.844913482666016, 4293.30517578125);
	spawn(function()
		while wait() do
			if (Scrap and World1) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Brute") then
						for v2387, v2388 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2388.Name == "Brute") then
								if (v2388:FindFirstChild("Humanoid") and v2388:FindFirstChild("HumanoidRootPart") and (v2388.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2388.HumanoidRootPart.CanCollide = false;
										v2388.Humanoid.WalkSpeed = 0;
										v2388.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2388.HumanoidRootPart.CFrame;
										topos(v2388.HumanoidRootPart.CFrame * Pos );
									until  not Scrap or  not v2388.Parent or (v2388.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v796.Position).Magnitude > 3500) then
								BTP(v796);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v796.Position).Magnitude < 3500) then
								topos(v796);
							end
						else
							topos(v796);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -1132.4202880859375, 14.844913482666016, 4293.30517578125));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Brute") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Brute").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
	local v797 = CFrame.new( -972.307373046875, 73.04473876953125, 1419.2901611328125);
	spawn(function()
		while wait() do
			if (Scrap and World2) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Mercenary") then
						for v2389, v2390 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2390.Name == "Mercenary") then
								if (v2390:FindFirstChild("Humanoid") and v2390:FindFirstChild("HumanoidRootPart") and (v2390.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2390.HumanoidRootPart.CanCollide = false;
										v2390.Humanoid.WalkSpeed = 0;
										v2390.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2390.HumanoidRootPart.CFrame;
										topos(v2390.HumanoidRootPart.CFrame * Pos );
									until  not Scrap or  not v2390.Parent or (v2390.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v797.Position).Magnitude > 3500) then
								BTP(v797);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v797.Position).Magnitude < 3500) then
								topos(v797);
							end
						else
							topos(v797);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -972.307373046875, 73.04473876953125, 1419.2901611328125));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Mercenary") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Mercenary").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
	local v798 = CFrame.new( -289.6311950683594, 43.8282470703125, 5583.66357421875);
	spawn(function()
		while wait() do
			if (Scrap and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Pirate Millionaire") then
						for v2391, v2392 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2392.Name == "Pirate Millionaire") then
								if (v2392:FindFirstChild("Humanoid") and v2392:FindFirstChild("HumanoidRootPart") and (v2392.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2392.HumanoidRootPart.CanCollide = false;
										v2392.Humanoid.WalkSpeed = 0;
										v2392.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2392.HumanoidRootPart.CFrame;
										topos(v2392.HumanoidRootPart.CFrame * Pos );
									until  not Scrap or  not v2392.Parent or (v2392.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v798.Position).Magnitude > 3500) then
								BTP(v798);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v798.Position).Magnitude < 3500) then
								topos(v798);
							end
						else
							topos(v798);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -289.6311950683594, 43.8282470703125, 5583.66357421875));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Pirate Millionaire") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Pirate Millionaire").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if World3 then
	v70:Toggle("Auto Farm Conjured Cocoa", false, function(v1409)
		Cocoafarm = v1409;
		StopTween(Cocoafarm);
	end);
	local v799 = CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375);
	spawn(function()
		while wait() do
			if (Cocoafarm and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") then
						for v2393, v2394 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2394.Name == "Chocolate Bar Battler") then
								if (v2394:FindFirstChild("Humanoid") and v2394:FindFirstChild("HumanoidRootPart") and (v2394.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2394.HumanoidRootPart.CanCollide = false;
										v2394.Humanoid.WalkSpeed = 0;
										v2394.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2394.HumanoidRootPart.CFrame;
										topos(v2394.HumanoidRootPart.CFrame * Pos );
									until  not Cocoafarm or  not v2394.Parent or (v2394.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v799.Position).Magnitude > 3500) then
								BTP(v799);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v799.Position).Magnitude < 3500) then
								topos(v799);
							end
						else
							topos(v799);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Chocolate Bar Battler") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Chocolate Bar Battler").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if World3 then
	v70:Toggle("Auto Farm Dragon Scale", false, function(v1410)
		Dragon_Scale = v1410;
		StopTween(Dragon_Scale);
	end);
	local v800 = CFrame.new(5824.06982421875, 51.38640213012695, -1106.694580078125);
	spawn(function()
		while wait() do
			if (Dragon_Scale and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Warrior") then
						for v2395, v2396 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2396.Name == "Dragon Crew Warrior") then
								if (v2396:FindFirstChild("Humanoid") and v2396:FindFirstChild("HumanoidRootPart") and (v2396.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2396.HumanoidRootPart.CanCollide = false;
										v2396.Humanoid.WalkSpeed = 0;
										v2396.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2396.HumanoidRootPart.CFrame;
										topos(v2396.HumanoidRootPart.CFrame * Pos );
									until  not Dragon_Scale or  not v2396.Parent or (v2396.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v800.Position).Magnitude > 3500) then
								BTP(v800);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v800.Position).Magnitude < 3500) then
								topos(v800);
							end
						else
							topos(v800);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new(5824.06982421875, 51.38640213012695, -1106.694580078125));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Warrior") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Warrior").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if World3 then
	v70:Toggle("Auto Farm Gunpowder", false, function(v1411)
		Gunpowder = v1411;
		StopTween(Gunpowder);
	end);
	local v801 = CFrame.new( -379.6134338378906, 73.84449768066406, 5928.5263671875);
	spawn(function()
		while wait() do
			if (Gunpowder and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Pistol Billionaire") then
						for v2397, v2398 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2398.Name == "Pistol Billionaire") then
								if (v2398:FindFirstChild("Humanoid") and v2398:FindFirstChild("HumanoidRootPart") and (v2398.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2398.HumanoidRootPart.CanCollide = false;
										v2398.Humanoid.WalkSpeed = 0;
										v2398.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2398.HumanoidRootPart.CFrame;
										topos(v2398.HumanoidRootPart.CFrame * Pos );
									until  not Gunpowder or  not v2398.Parent or (v2398.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v801.Position).Magnitude > 3500) then
								BTP(v801);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v801.Position).Magnitude < 3500) then
								topos(v801);
							end
						else
							topos(v801);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -379.6134338378906, 73.84449768066406, 5928.5263671875));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Pistol Billionaire") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Pistol Billionaire").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if World3 then
	v70:Toggle("Auto Farm Fish Tail World 3", false, function(v1412)
		Fish = v1412;
		StopTween(Fish);
	end);
	local v802 = CFrame.new( -10961.0126953125, 331.7977600097656, -8914.29296875);
	spawn(function()
		while wait() do
			if (Fish and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Fishman Captain") then
						for v2399, v2400 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2400.Name == "Fishman Captain") then
								if (v2400:FindFirstChild("Humanoid") and v2400:FindFirstChild("HumanoidRootPart") and (v2400.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2400.HumanoidRootPart.CanCollide = false;
										v2400.Humanoid.WalkSpeed = 0;
										v2400.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2400.HumanoidRootPart.CFrame;
										topos(v2400.HumanoidRootPart.CFrame * Pos );
									until  not Fish or  not v2400.Parent or (v2400.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v802.Position).Magnitude > 3500) then
								BTP(v802);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v802.Position).Magnitude < 3500) then
								topos(v802);
							end
						else
							topos(v802);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -10961.0126953125, 331.7977600097656, -8914.29296875));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Fishman Captain") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Fishman Captain").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if World3 then
	v70:Toggle("Auto Farm Mini Tusk", false, function(v1413)
		MiniHee = v1413;
		StopTween(MiniHee);
	end);
	local v803 = CFrame.new( -13516.0458984375, 469.8182373046875, -6899.16064453125);
	spawn(function()
		while wait() do
			if (MiniHee and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate") then
						for v2401, v2402 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2402.Name == "Mythological Pirate") then
								if (v2402:FindFirstChild("Humanoid") and v2402:FindFirstChild("HumanoidRootPart") and (v2402.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2402.HumanoidRootPart.CanCollide = false;
										v2402.Humanoid.WalkSpeed = 0;
										v2402.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2402.HumanoidRootPart.CFrame;
										topos(v2402.HumanoidRootPart.CFrame * Pos );
									until  not MiniHee or  not v2402.Parent or (v2402.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v803.Position).Magnitude > 3500) then
								BTP(v803);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v803.Position).Magnitude < 3500) then
								topos(v803);
							end
						else
							topos(v803);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -13516.0458984375, 469.8182373046875, -6899.16064453125));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Mythological Pirate") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Mythological Pirate").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
v70:Seperator("Advance Dungeon");
v70:Toggle("Auto Phoenix Raid", _G.AdvanceDungeon, function(v433)
	_G.AdvanceDungeon = v433;
	StopTween(_G.AdvanceDungeon);
end);
spawn(function()
	while wait() do
		if _G.AdvanceDungeon then
			pcall(function()
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix")) then
					if game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
						if (game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value >= 400) then
							topos(CFrame.new( -2812.76708984375, 254.803466796875, -12595.560546875));
							if ((CFrame.new( -2812.76708984375, 254.803466796875, -12595.560546875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10) then
								wait(1.5);
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist", "Check");
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist", "Heal");
							end
						end
					elseif game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
						if (game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value >= 400) then
							topos(CFrame.new( -2812.76708984375, 254.803466796875, -12595.560546875));
							if ((CFrame.new( -2812.76708984375, 254.803466796875, -12595.560546875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10) then
								wait(1.5);
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist", "Check");
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist", "Heal");
							end
						end
					end
				end
			end);
		end
	end
end);
if World1 then
	v70:Label("Sea 1");
	v70:Seperator("Saw");
	v70:Toggle("Auto Sharks saw", _G.doughking, function(v1414)
		_G.saw = v1414;
		StopTween(_G.saw);
	end);
	v70:Toggle("Auto Shark Saw Hop", _G.doughkingHop, function(v1415)
		_G.sawhop = v1415;
	end);
	local v804 = CFrame.new( -690.33081054688, 15.09425163269, 1582.2380371094);
	spawn(function()
		while wait() do
			if (_G.saw and World1) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("The Saw") then
						for v2403, v2404 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2404.Name == "The Saw") then
								if (v2404:FindFirstChild("Humanoid") and v2404:FindFirstChild("HumanoidRootPart") and (v2404.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2404.HumanoidRootPart.CanCollide = false;
										v2404.Humanoid.WalkSpeed = 0;
										v2404.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
										topos(v2404.HumanoidRootPart.CFrame * Pos );
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
									until  not _G.saw or  not v2404.Parent or (v2404.Humanoid.Health <= 0)
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v804.Position).Magnitude > 3500) then
								BTP(v804);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v804.Position).Magnitude < 3500) then
								topos(v804);
							end
						else
							topos(v804);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -690.33081054688, 15.09425163269, 1582.2380371094));
						if game:GetService("ReplicatedStorage"):FindFirstChild("The Saw") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("The Saw").HumanoidRootPart.CFrame * CFrame.new(2, 40, 2) );
						elseif _G.sawhop then
							Hop();
						end
					end
				end);
			end
		end
	end);
	spawn(function()
		pcall(function()
			while wait(0.1) do
				if (_G.FarmSwanGlasses and _G.FarmSwanGlasses_Hop and World2 and  not game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") and  not game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]")) then
					Hop();
				end
			end
		end);
	end);
	v70:Seperator("Waden Sword");
	v70:Toggle("Auto Waden Sword", _G.waden, function(v1416)
		_G.waden = v1416;
		StopTween(_G.waden);
	end);
	v70:Toggle("Auto Waden Sword Hop", _G.wadenhop, function(v1417)
		_G.wadenhop = v1417;
	end);
	local v805 = CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562);
	spawn(function()
		while wait() do
			if (_G.waden and World1) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Chief Warden") then
						for v2405, v2406 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2406.Name == "Chief Warden") then
								if (v2406:FindFirstChild("Humanoid") and v2406:FindFirstChild("HumanoidRootPart") and (v2406.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2406.HumanoidRootPart.CanCollide = false;
										v2406.Humanoid.WalkSpeed = 0;
										v2406.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
										topos(v2406.HumanoidRootPart.CFrame * Pos );
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
									until  not _G.waden or  not v2406.Parent or (v2406.Humanoid.Health <= 0)
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TridentPos.Position).Magnitude > 3500) then
								BTP(TridentPos);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TridentPos.Position).Magnitude < 3500) then
								topos(TridentPos);
							end
						else
							topos(TridentPos);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Chief Warden") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Chief Warden").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.wadenhop then
							Hop();
						end
					end
				end);
			end
		end
	end);
	v70:Seperator("Greybeard");
	v70:Toggle("Auto Greybeard", _G.doughking, function(v1418)
		_G.gay = v1418;
		StopTween(_G.gay);
	end);
	v70:Toggle("Auto Greybeard Hop", _G.doughkingHop, function(v1419)
		_G.gayhop = v1419;
	end);
	local v806 = CFrame.new( -5023.38330078125, 28.65203285217285, 4332.3818359375);
	spawn(function()
		while wait() do
			if (_G.gay and World1) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Greybeard") then
						for v2407, v2408 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2408.Name == "Greybeard") then
								if (v2408:FindFirstChild("Humanoid") and v2408:FindFirstChild("HumanoidRootPart") and (v2408.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2408.HumanoidRootPart.CanCollide = false;
										v2408.Humanoid.WalkSpeed = 0;
										v2408.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
										topos(v2408.HumanoidRootPart.CFrame * Pos );
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
									until  not _G.gay or  not v2408.Parent or (v2408.Humanoid.Health <= 0)
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v806.Position).Magnitude > 3500) then
								BTP(v806);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v806.Position).Magnitude < 3500) then
								topos(v806);
							end
						else
							topos(v806);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -5023.38330078125, 28.65203285217285, 4332.3818359375));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Greybeard") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Greybeard").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.gayhop then
							Hop();
						end
					end
				end);
			end
		end
	end);
	v70:Seperator("Saber");
	v70:Toggle("Auto Saber", _G.Saber, function(v1420)
		_G.Saber = v1420;
		StopTween(_G.Saber);
	end);
	v70:Toggle("Auto Saber Hop", _G.SaberHop, function(v1421)
		_G.SaberHop = v1421;
	end);
	spawn(function()
		while task.wait() do
			if (_G.Saber and (game.Players.LocalPlayer.Data.Level.Value >= 200)) then
				pcall(function()
					if (game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0) then
						if (game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0) then
							if ((CFrame.new( -1612.55884, 36.9774132, 148.719543, 0.37091279, 3.071715e-9, -0.928667724, 3.970995e-8, 1, 1.9167935e-8, 0.928667724, -4.398698e-8, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100) then
								topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
								wait(1);
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame;
								wait(1);
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame;
								wait(1);
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame;
								wait(1);
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame;
								wait(1);
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame;
								wait(1);
							else
								topos(CFrame.new( -1612.55884, 36.9774132, 148.719543, 0.37091279, 3.071715e-9, -0.928667724, 3.970995e-8, 1, 1.9167935e-8, 0.928667724, -4.398698e-8, 0.37091279));
							end
						elseif (game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0) then
							if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch")) then
								EquipWeapon("Torch");
								topos(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.2879909e-9, 0.761243105, -5.706529e-10, 1, 1.2058454e-9, -0.761243105, 3.4754488e-10, -0.648466587));
							else
								topos(CFrame.new( -1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 0.00003423728, -0.258850515, 0.965917408));
							end
						elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan") ~= 0) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "GetCup");
							wait(0.5);
							EquipWeapon("Cup");
							wait(0.5);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "FillCup", game:GetService("Players").LocalPlayer.Character.Cup);
							wait(0);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan");
						elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == nil) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon");
						elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 0) then
							if (game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader")) then
								topos(CFrame.new( -2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559));
								for v3035, v3036 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if (v3036.Name == "Mob Leader") then
										if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
											if (v3036:FindFirstChild("Humanoid") and v3036:FindFirstChild("HumanoidRootPart") and (v3036.Humanoid.Health > 0)) then
												repeat
													task.wait();
													AutoHaki();
													EquipWeapon(_G.SelectWeapon);
													v3036.HumanoidRootPart.CanCollide = false;
													v3036.Humanoid.WalkSpeed = 0;
													v3036.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
													topos(v3036.HumanoidRootPart.CFrame * Pos );
													sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
												until (v3036.Humanoid.Health <= 0) or  not _G.Saber
											end
										end
										if game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
											topos(game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader").HumanoidRootPart.CFrame * Farm_Mode );
										end
									end
								end
							end
						elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 1) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon");
							wait(0.5);
							EquipWeapon("Relic");
							wait(0.5);
							topos(CFrame.new( -1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.6690688e-9, 0.481375456, 2.53852e-8, 1, -5.799956e-8, -0.481375456, 6.3057264e-8, 0.876514494));
						end
					elseif (game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert")) then
						for v2608, v2609 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2609:FindFirstChild("Humanoid") and v2609:FindFirstChild("HumanoidRootPart") and (v2609.Humanoid.Health > 0)) then
								if (v2609.Name == "Saber Expert") then
									repeat
										task.wait();
										EquipWeapon(_G.SelectWeapon);
										topos(v2609.HumanoidRootPart.CFrame * Pos );
										v2609.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
										v2609.HumanoidRootPart.Transparency = 1;
										v2609.Humanoid.JumpPower = 0;
										v2609.Humanoid.WalkSpeed = 0;
										v2609.HumanoidRootPart.CanCollide = false;
										FarmPos = v2609.HumanoidRootPart.CFrame;
										MonFarm = v2609.Name;
									until (v2609.Humanoid.Health <= 0) or  not _G.Saber
									if (v2609.Humanoid.Health <= 0) then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "PlaceRelic");
									end
								end
							end
						end
					end
				end);
			end
		end
	end);
	v70:Seperator("Pole");
	v70:Toggle("Auto Pole v1", _G.doughking, function(v1422)
		_G.pole = v1422;
		StopTween(_G.pole);
	end);
	v70:Toggle("Auto Pole v1 Hop", _G.doughkingHop, function(v1423)
		_G.polehop = v1423;
	end);
	local v807 = CFrame.new( -7748.0185546875, 5606.80615234375, -2305.898681640625);
	spawn(function()
		while wait() do
			if (_G.pole and World1) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") then
						for v2409, v2410 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2410.Name == "Thunder God") then
								if (v2410:FindFirstChild("Humanoid") and v2410:FindFirstChild("HumanoidRootPart") and (v2410.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2410.HumanoidRootPart.CanCollide = false;
										v2410.Humanoid.WalkSpeed = 0;
										v2410.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
										topos(v2410.HumanoidRootPart.CFrame * Pos );
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
									until  not _G.pole or  not v2410.Parent or (v2410.Humanoid.Health <= 0)
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v807.Position).Magnitude > 3500) then
								BTP(v807);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v807.Position).Magnitude < 3500) then
								topos(v807);
							end
						else
							topos(TridentPos);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -7748.0185546875, 5606.80615234375, -2305.898681640625));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.polehop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if World2 then
	v70:Label("Sea 2");
	v70:Seperator("Legendary Sword");
	v70:Toggle("Auto Legendary Sword", _G.BuyLegendarySword, function(v1424)
		_G.BuyLegendarySword = v1424;
	end);
	spawn(function()
		while wait() do
			if _G.BuyLegendarySword then
				pcall(function()
					local v1886 = {
						[1] = "LegendarySwordDealer",
						[2] = "1"
					};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1886));
					local v1886 = {
						[1] = "LegendarySwordDealer",
						[2] = "2"
					};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1886));
					local v1886 = {
						[1] = "LegendarySwordDealer",
						[2] = "3"
					};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1886));
					if (_G.BuyLegendarySword_Hop and _G.BuyLegendarySword and World2) then
						wait(10);
						Hop();
					end
				end);
			end
		end
	end);
	v70:Toggle("Auto Legendary Sword Hop", _G.BuyLegendarySword_Hop, function(v1425)
		_G.BuyLegendarySword_Hop = v1425;
	end);
	v70:Seperator("Enchancement Colour");
	local v808 = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("ColorsDealer", "1");
	v70:Toggle("Auto Enchancement Colour", _G.BuyEnchancementColour, function(v1426)
		_G.BuyEnchancementColour = v1426;
	end);
	v70:Toggle("Auto Enchancement Hop", _G.BuyEnchancementColour_Hop, function(v1427)
		_G.BuyEnchancementColour_Hop = v1427;
	end);
	spawn(function()
		while wait() do
			if _G.BuyEnchancementColour then
				local v1816 = {
					[1] = "ColorsDealer",
					[2] = "2"
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1816));
				if (_G.BuyEnchancementColour_Hop and _G.BuyEnchancementColour and  not World1) then
					wait(10);
					Hop();
				end
			end
		end
	end);
	v70:Seperator("Bartlio");
	v70:Toggle("Auto Bartlio", _G.Bartilo, function(v1428)
		_G.Bartilo = v1428;
	end);
	spawn(function()
		pcall(function()
			while wait(0.1) do
				if _G.Bartilo then
					if ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 0)) then
						if (string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true)) then
							if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
								Ms = "Swan Pirate";
								for v2710, v2711 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if (v2711.Name == Ms) then
										pcall(function()
											repeat
												task.wait();
												sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
												EquipWeapon(_G.SelectWeapon);
												AutoHaki();
												v2711.HumanoidRootPart.Transparency = 1;
												v2711.HumanoidRootPart.CanCollide = false;
												v2711.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
												topos(v2711.HumanoidRootPart.CFrame * Pos );
												PosMonBarto = v2711.HumanoidRootPart.CFrame;
												AutoBartiloBring = true;
											until  not v2711.Parent or (v2711.Humanoid.Health <= 0) or (_G.Bartilo == false) or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
											AutoBartiloBring = false;
										end);
									end
								end
							else
								repeat
									topos(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.5513712e-8, -0.230443969, 2.6702471e-8, 1, 8.474911e-8, 0.230443969, 7.631471e-8, -0.973085582));
									wait();
								until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.5513712e-8, -0.230443969, 2.6702471e-8, 1, 8.474911e-8, 0.230443969, 7.631471e-8, -0.973085582)).Magnitude <= 10)
							end
						else
							repeat
								topos(CFrame.new( -456.28952, 73.0200958, 299.895966));
								wait();
							until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -456.28952, 73.0200958, 299.895966)).Magnitude <= 10)
							wait(1.1);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "BartiloQuest", 1);
						end
					elseif ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 1)) then
						if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
							Ms = "Jeremy";
							for v2712, v2713 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v2713.Name == Ms) then
									OldCFrameBartlio = v2713.HumanoidRootPart.CFrame;
									repeat
										task.wait();
										sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
										EquipWeapon(_G.SelectWeapon);
										AutoHaki();
										v2713.HumanoidRootPart.Transparency = 1;
										v2713.HumanoidRootPart.CanCollide = false;
										v2713.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
										v2713.HumanoidRootPart.CFrame = OldCFrameBartlio;
										topos(v2713.HumanoidRootPart.CFrame * Pos );
										sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
									until  not v2713.Parent or (v2713.Humanoid.Health <= 0) or (_G.Bartilo == false)
								end
							end
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy [Lv. 850] [Boss]") then
							repeat
								topos(CFrame.new( -456.28952, 73.0200958, 299.895966));
								wait();
							until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -456.28952, 73.0200958, 299.895966)).Magnitude <= 10)
							wait(1.1);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo");
							wait(1);
							repeat
								topos(CFrame.new(2099.88159, 448.931, 648.997375));
								wait();
							until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10)
							wait(2);
						else
							repeat
								topos(CFrame.new(2099.88159, 448.931, 648.997375));
								wait();
							until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10)
						end
					elseif ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 2)) then
						repeat
							topos(CFrame.new( -1850.49329, 13.1789551, 1750.89685));
							wait();
						until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10)
						wait(1);
						repeat
							topos(CFrame.new( -1858.87305, 19.3777466, 1712.01807));
							wait();
						until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10)
						wait(1);
						repeat
							topos(CFrame.new( -1803.94324, 16.5789185, 1750.89685));
							wait();
						until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10)
						wait(1);
						repeat
							topos(CFrame.new( -1858.55835, 16.8604317, 1724.79541));
							wait();
						until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10)
						wait(1);
						repeat
							topos(CFrame.new( -1869.54224, 15.987854, 1681.00659));
							wait();
						until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1869.54224, 15.987854, 1681.00659)).Magnitude <= 10)
						wait(1);
						repeat
							topos(CFrame.new( -1800.0979, 16.4978027, 1684.52368));
							wait();
						until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10)
						wait(1);
						repeat
							topos(CFrame.new( -1819.26343, 14.795166, 1717.90625));
							wait();
						until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1819.26343, 14.795166, 1717.90625)).Magnitude <= 10)
						wait(1);
						repeat
							topos(CFrame.new( -1813.51843, 14.8604736, 1724.79541));
							wait();
						until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10)
					end
				end
			end
		end);
	end);
	v70:Seperator("Swan Glasses");
	v70:Toggle("Auto Swan Glasses", _G.FarmSwanGlasses, function(v1429)
		_G.FarmSwanGlasses = v1429;
		StopTween(_G.FarmSwanGlasses);
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if _G.FarmSwanGlasses then
					if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan") then
						for v2411, v2412 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if ((v2412.Name == "Don Swan") and (v2412.Humanoid.Health > 0) and v2412:IsA("Model") and v2412:FindFirstChild("Humanoid") and v2412:FindFirstChild("HumanoidRootPart")) then
								repeat
									task.wait();
									pcall(function()
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2412.HumanoidRootPart.CanCollide = false;
										v2412.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
										topos(v2412.HumanoidRootPart.CFrame * Pos );
										sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
									end);
								until (_G.FarmSwanGlasses == false) or (v2412.Humanoid.Health <= 0)
							end
						end
					else
						repeat
							task.wait();
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(2284.912109375, 15.537666320801, 905.48291015625));
						until ((CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4) or (_G.FarmSwanGlasses == false)
					end
				end
			end
		end);
	end);
	v70:Toggle("Auto Swan Glasses Hop", _G.FarmSwanGlasses_Hop, function(v1430)
		_G.FarmSwanGlasses_Hop = v1430;
	end);
	v70:Toggle("Auto Evo Race (V2)", _G.EvoRace, function(v1431)
		_G.EvoRace = v1431;
		StopTween(_G.EvoRace);
	end);
	spawn(function()
		pcall(function()
			while wait(0.1) do
				if _G.EvoRace then
					if  not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
						if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1") == 0) then
							topos(CFrame.new( -2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.390141e-8, -0.68292886, 3.5996322e-8, 1, 5.5066703e-8, 0.68292886, 1.5642467e-8, -0.730484903));
							if ((Vector3.new( -2779.83521, 72.9661407, -3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4) then
								wait(1.3);
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "2");
							end
						elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1") == 1) then
							pcall(function()
								if ( not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and  not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1")) then
									topos(game:GetService("Workspace").Flower1.CFrame);
								elseif ( not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and  not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2")) then
									topos(game:GetService("Workspace").Flower2.CFrame);
								elseif ( not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and  not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3")) then
									if game:GetService("Workspace").Enemies:FindFirstChild("Zombie") then
										for v3051, v3052 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if (v3052.Name == "Zombie") then
												repeat
													task.wait();
													AutoHaki();
													EquipWeapon(_G.SelectWeapon);
													topos(v3052.HumanoidRootPart.CFrame * Pos );
													v3052.HumanoidRootPart.CanCollide = false;
													v3052.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
													PosMonEvo = v3052.HumanoidRootPart.CFrame;
													StartEvoMagnet = true;
												until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or  not v3052.Parent or (v3052.Humanoid.Health <= 0) or (_G.EvoRace == false)
												StartEvoMagnet = false;
											end
										end
									else
										StartEvoMagnet = false;
										topos(CFrame.new( -5685.9233398438, 48.480125427246, -853.23724365234));
									end
								end
							end);
						elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1") == 2) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "3");
						end
					end
				end
			end
		end);
	end);
	v70:Seperator("Rengoku");
	v70:Toggle("Auto Rengoku", _G.Rengoku, function(v1432)
		_G.Rengoku = v1432;
		StopTween(_G.Rengoku);
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if _G.Rengoku then
					if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key")) then
						EquipWeapon("Hidden Key");
						topos(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875));
					elseif (game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior")) then
						for v2610, v2611 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (((v2611.Name == "Snow Lurker") or (v2611.Name == "Arctic Warrior")) and (v2611.Humanoid.Health > 0)) then
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									AutoHaki();
									v2611.HumanoidRootPart.CanCollide = false;
									v2611.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									RengokuMon = v2611.HumanoidRootPart.CFrame;
									topos(v2611.HumanoidRootPart.CFrame * Pos );
									StartRengokuMagnet = true;
								until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or (_G.Rengoku == false) or  not v2611.Parent or (v2611.Humanoid.Health <= 0)
								StartRengokuMagnet = false;
							end
						end
					else
						StartRengokuMagnet = false;
						topos(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188));
					end
				end
			end
		end);
	end);
	v70:Seperator("Trident");
	v70:Toggle("Auto Dragon Trident", _G.Dragon_Trident, function(v1433)
		_G.Dragon_Trident = v1433;
		StopTween(_G.Dragon_Trident);
	end);
	v70:Toggle("Auto Dragon Trident Hop", _G.Dragon_Trident_Hop, function(v1434)
		_G.Dragon_Trident_Hop = v1434;
	end);
	local v809 = CFrame.new( -3914.830322265625, 123.29389190673828, -11516.8642578125);
	spawn(function()
		while wait() do
			if (_G.Dragon_Trident and World2) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper") then
						for v2413, v2414 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2414.Name == "Tide Keeper") then
								if (v2414:FindFirstChild("Humanoid") and v2414:FindFirstChild("HumanoidRootPart") and (v2414.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2414.HumanoidRootPart.CanCollide = false;
										v2414.Humanoid.WalkSpeed = 0;
										v2414.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
										game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
									until  not _G.Dragon_Trident or  not v2414.Parent or (v2414.Humanoid.Health <= 0)
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v809.Position).Magnitude > 3500) then
								BTP(v809);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v809.Position).Magnitude < 3500) then
								topos(v809);
							end
						else
							topos(v809);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -3914.830322265625, 123.29389190673828, -11516.8642578125));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.Dragon_Trident_Hop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if World3 then
	v70:Label("Sea 3");
	v70:Seperator("Rip Indra");
	v70:Toggle("Auto Rip_Indra True", _G.DarkDagger, function(v1435)
		_G.DarkDagger = v1435;
		StopTween(_G.DarkDagger);
	end);
	local v810 = CFrame.new( -5344.822265625, 423.98541259766, -2725.0930175781);
	spawn(function()
		pcall(function()
			while wait() do
				if _G.DarkDagger then
					if (game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra")) then
						for v2415, v2416 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if ((v2416.Name == ("rip_indra True Form" or (v2416.Name == "rip_indra"))) and (v2416.Humanoid.Health > 0) and v2416:IsA("Model") and v2416:FindFirstChild("Humanoid") and v2416:FindFirstChild("HumanoidRootPart")) then
								repeat
									task.wait();
									pcall(function()
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2416.HumanoidRootPart.CanCollide = false;
										v2416.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
										topos(v2416.HumanoidRootPart.CFrame * Pos );
									end);
								until (_G.DarkDagger == false) or (v2416.Humanoid.Health <= 0)
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v810.Position).Magnitude > 3500) then
								BTP(v810);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v810.Position).Magnitude < 3500) then
								topos(v810);
							end
						else
							topos(v810);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -5344.822265625, 423.98541259766, -2725.0930175781));
					end
				end
			end
		end);
	end);
	v70:Toggle("Auto Rip_Indra True Hop", _G.DarkDagger_Hop, function(v1436)
		_G.DarkDagger_Hop = v1436;
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if (_G.DarkDagger_Hop and _G.DarkDagger and World3 and  not game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") and  not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")) then
					Hop();
				end
			end
		end);
	end);
	v70:Toggle("Auto Press Haki Button", _G.Ob_Color, function(v1437)
		Open_Color_Haki = v1437;
		StopTween(Open_Color_Haki);
	end);
	spawn(function()
		while wait(0.3) do
			pcall(function()
				if Open_Color_Haki then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Winter Sky");
					wait(0.5);
					repeat
						topos(CFrame.new( -5420.16602, 1084.9657, -2666.8208));
						wait();
					until (_G.StopTween == true) or (Open_Color_Haki == false) or ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -5420.16602, 1084.9657, -2666.8208)).Magnitude <= 10)
					wait(0.5);
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Pure Red");
					wait(0.5);
					repeat
						topos(CFrame.new( -5414.41357, 309.865753, -2212.45776));
						wait();
					until (_G.StopTween == true) or (Open_Color_Haki == false) or ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -5414.41357, 309.865753, -2212.45776)).Magnitude <= 10)
					wait(0.5);
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Snow White");
					wait(0.5);
					repeat
						topos(CFrame.new( -4971.47559, 331.565765, -3720.02954));
						wait();
					until (_G.StopTween == true) or (Open_Color_Haki == false) or ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -4971.47559, 331.565765, -3720.02954)).Magnitude <= 10)
					wait(0.5);
					game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 600));
					wait(3);
					game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 600));
				end
			end);
		end
	end);
	function EquipAllWeapon()
		pcall(function()
			for v1755, v1756 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if (v1756:IsA("Tool") and  not ((v1756.Name == "Summon Sea Beast") or (v1756.Name == "Water Body") or (v1756.Name == "Awakening"))) then
					local v1887 = game.Players.LocalPlayer.Backpack:FindFirstChild(v1756.Name);
					game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1887);
					wait(1);
				end
			end
		end);
	end
	v70:Seperator("Yama");
	v70:Toggle("Auto Yama", _G.Yama, function(v1438)
		_G.Yama = v1438;
		StopTween(_G.Yama);
	end);
	spawn(function()
		while wait() do
			if _G.Yama then
				if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress") >= 30) then
					repeat
						wait(0.1);
						fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector);
					until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or  not _G.Yama
				end
			end
		end
	end);
	v70:Seperator("Musketeer");
	v70:Toggle("Auto Musketeer Hat", _G.MusketeerHat, function(v1439)
		_G.MusketeerHat = v1439;
		StopTween(_G.MusketeerHat);
	end);
	spawn(function()
		pcall(function()
			while wait(0.1) do
				if _G.MusketeerHat then
					if ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false)) then
						if (string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true)) then
							if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
								for v2718, v2719 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if (v2719.Name == "Forest Pirate") then
										repeat
											task.wait();
											pcall(function()
												EquipWeapon(_G.SelectWeapon);
												AutoHaki();
												v2719.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
												topos(v2719.HumanoidRootPart.CFrame * Pos );
												v2719.HumanoidRootPart.CanCollide = false;
												MusketeerHatMon = v2719.HumanoidRootPart.CFrame;
												StartMagnetMusketeerhat = true;
											end);
										until (_G.MusketeerHat == false) or  not v2719.Parent or (v2719.Humanoid.Health <= 0) or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
										StartMagnetMusketeerhat = false;
									end
								end
							else
								StartMagnetMusketeerhat = false;
								topos(CFrame.new( -13206.452148438, 425.89199829102, -7964.5537109375));
							end
						else
							topos(CFrame.new( -12443.8671875, 332.40396118164, -7675.4892578125));
							if ((Vector3.new( -12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30) then
								wait(1.5);
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "CitizenQuest", 1);
							end
						end
					elseif ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false)) then
						if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true)) then
							if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
								for v2883, v2884 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if (v2884.Name == "Captain Elephant") then
										OldCFrameElephant = v2884.HumanoidRootPart.CFrame;
										repeat
											task.wait();
											pcall(function()
												EquipWeapon(_G.SelectWeapon);
												AutoHaki();
												v2884.HumanoidRootPart.CanCollide = false;
												v2884.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
												topos(v2884.HumanoidRootPart.CFrame * Pos );
												v2884.HumanoidRootPart.CanCollide = false;
												v2884.HumanoidRootPart.CFrame = OldCFrameElephant;
												sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
											end);
										until (_G.MusketeerHat == false) or (v2884.Humanoid.Health <= 0) or  not v2884.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
									end
								end
							else
								topos(CFrame.new( -13374.889648438, 421.27752685547, -8225.208984375));
							end
						else
							topos(CFrame.new( -12443.8671875, 332.40396118164, -7675.4892578125));
							if ((CFrame.new( -12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4) then
								wait(1.5);
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen");
							end
						end
					elseif ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen") == 2)) then
						topos(CFrame.new( -12512.138671875, 340.39279174805, -9872.8203125));
					end
				end
			end
		end);
	end);
	v70:Seperator("Twin Hook");
	v70:Toggle("Auto Twin Hook", _G.TwinHook, function(v1440)
		_G.TwinHook = v1440;
		StopTween(_G.TwinHook);
	end);
	v70:Toggle("Auto Twin Hook Hop", _G.TwinHook_Hop, function(v1441)
		_G.TwinHook_Hop = v1441;
	end);
	local v811 = CFrame.new( -13348.0654296875, 405.8904113769531, -8570.62890625);
	spawn(function()
		while wait() do
			if (_G.TwinHook and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
						for v2417, v2418 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2418.Name == "Captain Elephant") then
								if (v2418:FindFirstChild("Humanoid") and v2418:FindFirstChild("HumanoidRootPart") and (v2418.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2418.HumanoidRootPart.CanCollide = false;
										v2418.Humanoid.WalkSpeed = 0;
										v2418.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
										topos(v2418.HumanoidRootPart.CFrame * Pos );
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
									until  not _G.TwinHook or  not v2418.Parent or (v2418.Humanoid.Health <= 0)
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v811.Position).Magnitude > 3500) then
								BTP(v811);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v811.Position).Magnitude < 3500) then
								topos(v811);
							end
						else
							topos(v811);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -13348.0654296875, 405.8904113769531, -8570.62890625));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.TwinHook_Hop then
							Hop();
						end
					end
				end);
			end
		end
	end);
	v70:Seperator("Haki");
	v70:Toggle("Auto Rainbow Haki", _G.Rainbow_Haki, function(v1442)
		_G.Rainbow_Haki = v1442;
		StopTween(_G.Rainbow_Haki);
	end);
	spawn(function()
		pcall(function()
			while wait(0.1) do
				if _G.Rainbow_Haki then
					if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
						topos(CFrame.new( -11892.0703125, 930.57672119141, -8760.1591796875));
						if ((Vector3.new( -11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30) then
							wait(1.5);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan", "Bet");
						end
					elseif ((game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone")) then
						if game:GetService("Workspace").Enemies:FindFirstChild("Stone") then
							for v2720, v2721 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v2721.Name == "Stone") then
									OldCFrameRainbow = v2721.HumanoidRootPart.CFrame;
									repeat
										task.wait();
										EquipWeapon(_G.SelectWeapon);
										topos(v2721.HumanoidRootPart.CFrame * Pos );
										v2721.HumanoidRootPart.CanCollide = false;
										v2721.HumanoidRootPart.CFrame = OldCFrameRainbow;
										v2721.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
										sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
									until (_G.Rainbow_Haki == false) or (v2721.Humanoid.Health <= 0) or  not v2721.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
								end
							end
						else
							topos(CFrame.new( -1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 0.000020325184, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199));
						end
					elseif ((game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress")) then
						if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress") then
							for v2886, v2887 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v2887.Name == "Island Empress") then
									OldCFrameRainbow = v2887.HumanoidRootPart.CFrame;
									repeat
										task.wait();
										EquipWeapon(_G.SelectWeapon);
										topos(v2887.HumanoidRootPart.CFrame * Pos );
										v2887.HumanoidRootPart.CanCollide = false;
										v2887.HumanoidRootPart.CFrame = OldCFrameRainbow;
										v2887.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
										sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
									until (_G.Rainbow_Haki == false) or (v2887.Humanoid.Health <= 0) or  not v2887.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
								end
							end
						else
							topos(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, "-0", -0.994878292, "-0", 1, "-0", 0.994878292, 0, -0.101080291));
						end
					elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
						if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral") then
							for v2960, v2961 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v2961.Name == "Kilo Admiral") then
									OldCFrameRainbow = v2961.HumanoidRootPart.CFrame;
									repeat
										task.wait();
										EquipWeapon(_G.SelectWeapon);
										topos(v2961.HumanoidRootPart.CFrame * Pos );
										v2961.HumanoidRootPart.CanCollide = false;
										v2961.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
										v2961.HumanoidRootPart.CFrame = OldCFrameRainbow;
										sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
									until (_G.Rainbow_Haki == false) or (v2961.Humanoid.Health <= 0) or  not v2961.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
								end
							end
						else
							topos(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, "-0", -0.143904909, "-0", 1.00000012, "-0", 0.143904924, 0, -0.989591479));
						end
					elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
						if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
							for v2994, v2995 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v2995.Name == "Captain Elephant") then
									OldCFrameRainbow = v2995.HumanoidRootPart.CFrame;
									repeat
										task.wait();
										EquipWeapon(_G.SelectWeapon);
										topos(v2995.HumanoidRootPart.CFrame * Pos );
										v2995.HumanoidRootPart.CanCollide = false;
										v2995.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
										v2995.HumanoidRootPart.CFrame = OldCFrameRainbow;
										sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
									until (_G.Rainbow_Haki == false) or (v2995.Humanoid.Health <= 0) or  not v2995.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
								end
							end
						else
							topos(CFrame.new( -13485.0283, 331.709259, -8012.4873, 0.714521289, 7.988499e-8, 0.69961375, -1.0206575e-7, 1, -9.943831e-9, -0.69961375, -6.4301524e-8, 0.714521289));
						end
					elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
						if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
							for v3038, v3039 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v3039.Name == "Beautiful Pirate") then
									OldCFrameRainbow = v3039.HumanoidRootPart.CFrame;
									repeat
										task.wait();
										EquipWeapon(_G.SelectWeapon);
										topos(v3039.HumanoidRootPart.CFrame * Pos );
										v3039.HumanoidRootPart.CanCollide = false;
										v3039.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
										v3039.HumanoidRootPart.CFrame = OldCFrameRainbow;
										sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
									until (_G.Rainbow_Haki == false) or (v3039.Humanoid.Health <= 0) or  not v3039.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
								end
							end
						else
							topos(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359));
						end
					else
						topos(CFrame.new( -11892.0703125, 930.57672119141, -8760.1591796875));
						if ((Vector3.new( -11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30) then
							wait(1.5);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan", "Bet");
						end
					end
				end
			end
		end);
	end);
	v70:Toggle("Auto Observation Haki v2", _G.Observationv2, function(v1443)
		_G.Observationv2 = v1443;
		StopTween(_G.Observationv2);
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if _G.Observationv2 then
					if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen") == 3) then
						_G.MusketeerHat = false;
						if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Banana") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Apple") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pineapple")) then
							repeat
								topos(CFrame.new( -12444.78515625, 332.40396118164, -7673.1806640625));
								wait();
							until  not _G.Observationv2 or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10)
							wait(0.5);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen");
						elseif (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fruit Bowl")) then
							repeat
								topos(CFrame.new( -10920.125, 624.20275878906, -10266.995117188));
								wait();
							until  not _G.Observationv2 or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10)
							wait(0.5);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2", "Start");
							wait(1);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2", "Buy");
						else
							for v2722, v2723 in pairs(game:GetService("Workspace"):GetDescendants()) do
								if ((v2723.Name == "Apple") or (v2723.Name == "Banana") or (v2723.Name == "Pineapple")) then
									v2723.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10) ;
									wait();
									firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v2723.Handle, 0);
									wait();
								end
							end
						end
					else
						_G.MusketeerHat = true;
					end
				end
			end);
		end
	end);
	v70:Seperator("Carvander");
	v70:Toggle("Auto Cavander", _G.Carvender, function(v1444)
		_G.Carvender = v1444;
		StopTween(_G.Carvender);
	end);
	v70:Toggle("Auto Carvander Hop", _G.Carvenderhop, function(v1445)
		_G.Carvenderhop = v1445;
	end);
	local v812 = CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875);
	spawn(function()
		while wait() do
			if (_G.Carvender and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
						for v2419, v2420 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2420.Name == "Beautiful Pirate") then
								if (v2420:FindFirstChild("Humanoid") and v2420:FindFirstChild("HumanoidRootPart") and (v2420.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2420.HumanoidRootPart.CanCollide = false;
										v2420.Humanoid.WalkSpeed = 0;
										v2420.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
										topos(v2420.HumanoidRootPart.CFrame * Pos );
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
									until  not _G.Carvender or  not v2420.Parent or (v2420.Humanoid.Health <= 0)
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v812.Position).Magnitude > 3500) then
								BTP(v812);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v812.Position).Magnitude < 3500) then
								topos(v812);
							end
						else
							topos(v812);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.Cavanderhop then
							Hop();
						end
					end
				end);
			end
		end
	end);
	v70:Seperator("Tushita");
	v70:Toggle("Auto Tushita", _G.tushita, function(v1446)
		_G.tushita = v1446;
		StopTween(_G.tushita);
	end);
	v70:Toggle("Auto Tushita Hop", _G.tushitahop, function(v1447)
		_G.tushitahop = v1447;
	end);
	local v813 = CFrame.new( -10238.875976563, 389.7912902832, -9549.7939453125);
	spawn(function()
		while wait() do
			if (_G.tushita and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
						for v2421, v2422 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2422.Name == "Longma") then
								if (v2422:FindFirstChild("Humanoid") and v2422:FindFirstChild("HumanoidRootPart") and (v2422.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2422.HumanoidRootPart.CanCollide = false;
										v2422.Humanoid.WalkSpeed = 0;
										v2422.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
										topos(v2422.HumanoidRootPart.CFrame * Pos );
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
									until  not _G.tushita or  not v2422.Parent or (v2422.Humanoid.Health <= 0)
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v813.Position).Magnitude > 3500) then
								BTP(v813);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v813.Position).Magnitude < 3500) then
								topos(v813);
							end
						else
							topos(v813);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -10238.875976563, 389.7912902832, -9549.7939453125));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Longma") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Longma").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.tushitahop then
							Hop();
						end
					end
				end);
			end
		end
	end);
	v70:Toggle("Auto Holy Torch", _G.HolyTorch, function(v1448)
		_G.HolyTorch = v1448;
		StopTween(_G.HolyTorch);
	end);
	spawn(function()
		while wait(0.5) do
			pcall(function()
				if _G.HolyTorch then
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch")) then
						repeat
							wait(0.2);
							EquipWeapon("Holy Torch");
							TP1(CFrame.new( -10752.4434, 415.261749, -9367.43848, 1, 0, 0, 0, 1, 0, 0, 0, 1));
						until (Vector3.new( -10752.4434, 415.261749, -9367.43848) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
						wait(2);
						repeat
							wait(0.2);
							EquipWeapon("Holy Torch");
							TP1(CFrame.new( -11671.6289, 333.78125, -9474.31934, 0.300932229, 0, -0.953645527, 0, 1, 0, 0.953645527, 0, 0.300932229));
						until (Vector3.new( -11671.6289, 333.78125, -9474.31934) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
						wait(2);
						repeat
							wait(0.2);
							EquipWeapon("Holy Torch");
							TP1(CFrame.new( -12133.1406, 521.507446, -10654.292, 0.80428642, 0, -0.594241858, 0, 1, 0, 0.594241858, 0, 0.80428642));
						until (Vector3.new( -12133.1406, 521.507446, -10654.292) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
						wait(2);
						repeat
							wait(0.2);
							EquipWeapon("Holy Torch");
							TP1(CFrame.new( -13336.127, 484.521179, -6985.31689, 0.853732228, 0, -0.520712316, 0, 1, 0, 0.520712316, 0, 0.853732228));
						until (Vector3.new( -13336.127, 484.521179, -6985.31689) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
						wait(2);
						EquipWeapon("Holy Torch");
						repeat
							wait(0.2);
							TP1(CFrame.new( -13487.623, 336.436188, -7924.53857, -0.982848108, 0, 0.184417039, 0, 1, 0, -0.184417039, 0, -0.982848108));
						until (Vector3.new( -13487.623, 336.436188, -7924.53857) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
						wait(2);
						Com();
						wait(20);
					end
				end
			end);
		end
	end);
	v70:Seperator("Hallow Scythe");
	v70:Toggle("Auto Hallow Scythe", _G.FarmBossHallow, function(v1449)
		_G.FarmBossHallow = v1449;
		StopTween(_G.FarmBossHallow);
	end);
	v70:Toggle("Auto Hallow Scythe Hop", _G.FarmBossHallowHop, function(v1450)
		_G.FarmBossHallowHop = v1450;
	end);
	spawn(function()
		while wait() do
			if _G.FarmBossHallow then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
						for v2423, v2424 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if string.find(v2424.Name, "Soul Reaper") then
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									AutoHaki();
									v2424.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2424.HumanoidRootPart.CFrame * Pos );
									v2424.HumanoidRootPart.Transparency = 1;
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until (v2424.Humanoid.Health <= 0) or (_G.FarmBossHallow == false)
							end
						end
					elseif (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence")) then
						repeat
							topos(CFrame.new( -8932.322265625, 146.83154296875, 6062.55078125));
							wait();
						until (CFrame.new( -8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8
						EquipWeapon("Hallow Essence");
					elseif game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif _G.FarmBossHallowHop then
						Hop();
					end
				end);
			end
		end
	end);
	v70:Seperator("Soul Guitar");
	v70:Toggle("Auto Soul Guitar ( Test )", _G.Guitar, function(v1451)
		_G.Guitar = v1451;
		StopTween(_G.Guitar);
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if _G.Guitar then
					if (GetWeaponInventory("Soul Guitar") == false) then
						if ((CFrame.new( -9681.458984375, 6.139880657196045, 6341.3720703125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000) then
							if game:GetService("Workspace").NPCs:FindFirstChild("Skeleton Machine") then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("soulGuitarBuy", true);
							elseif (game:GetService("Workspace").Map["Haunted Castle"].Candle1.Transparency == 0) then
								if (game:GetService("Workspace").Map["Haunted Castle"].Placard1.Left.Part.Transparency == 0) then
									Quest2 = true;
									repeat
										wait();
										topos(CFrame.new( -8762.69140625, 176.84783935546875, 6171.3076171875));
									until ((CFrame.new( -8762.69140625, 176.84783935546875, 6171.3076171875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or  not _G.Guitar
									wait(1);
									fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard7.Left.ClickDetector);
									wait(1);
									fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard6.Left.ClickDetector);
									wait(1);
									fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard5.Left.ClickDetector);
									wait(1);
									fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard4.Right.ClickDetector);
									wait(1);
									fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard3.Left.ClickDetector);
									wait(1);
									fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard2.Right.ClickDetector);
									wait(1);
									fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard1.Right.ClickDetector);
									wait(1);
								elseif game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1:FindFirstChild("ClickDetector") then
									if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1:FindFirstChild("ClickDetector") then
										Quest4 = true;
										repeat
											wait();
											topos(CFrame.new( -9553.5986328125, 65.62338256835938, 6041.58837890625));
										until ((CFrame.new( -9553.5986328125, 65.62338256835938, 6041.58837890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or  not _G.Guitar
										wait(1);
										topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.CFrame);
										wait(1);
										fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.ClickDetector);
										wait(1);
										topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.CFrame);
										wait(1);
										fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector);
										wait(1);
										fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector);
										wait(1);
										fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector);
										wait(1);
										topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.CFrame);
										wait(1);
										fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector);
										wait(1);
										fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector);
										wait(1);
										topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.CFrame);
										wait(1);
										fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.ClickDetector);
										wait(1);
										topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.CFrame);
										wait(1);
										fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector);
										wait(1);
										fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector);
										wait(1);
										fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector);
									else
										Quest3 = true;
									end
								else
									if game:GetService("Workspace").NPCs:FindFirstChild("Ghost") then
										local v3033 = {
											[1] = "GuitarPuzzleProgress",
											[2] = "Ghost"
										};
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v3033));
									end
									if game.Workspace.Enemies:FindFirstChild("Living Zombie") then
										for v3040, v3041 in pairs(game.Workspace.Enemies:GetChildren()) do
											if (v3041:FindFirstChild("HumanoidRootPart") and v3041:FindFirstChild("Humanoid") and (v3041.Humanoid.Health > 0)) then
												if (v3041.Name == "Living Zombie") then
													EquipWeapon(_G.SelectWeapon);
													v3041.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
													v3041.HumanoidRootPart.Transparency = 1;
													v3041.Humanoid.JumpPower = 0;
													v3041.Humanoid.WalkSpeed = 0;
													v3041.HumanoidRootPart.CanCollide = false;
													v3041.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0) ;
													topos(CFrame.new( -10160.787109375, 138.6616973876953, 5955.03076171875));
												end
											end
										end
									else
										topos(CFrame.new( -10160.787109375, 138.6616973876953, 5955.03076171875));
									end
								end
							elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2), "Error") then
								print("Go to Grave");
								topos(CFrame.new( -8653.2060546875, 140.98487854003906, 6160.033203125));
							elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2), "Nothing") then
								print("Wait Next Night");
							else
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2, true);
							end
						else
							topos(CFrame.new( -9681.458984375, 6.139880657196045, 6341.3720703125));
						end
					elseif _G.soulGuitarhop then
						hop();
					end
				end
			end);
		end
	end);
	v70:Toggle("Auto Soul Guitar + Hop", false, function(v1452)
		_G.soulGuitarhop = v1452;
	end);
	v70:Seperator("Buddy Sword");
	v70:Toggle("Auto Buddy Sword", _G.BudySword, function(v1453)
		_G.BudySword = v1453;
		StopTween(_G.BudySword);
	end);
	v70:Toggle("Auto Buddy Sword Hop", _G.BudySwordHop, function(v1454)
		_G.BudySwordHop = v1454;
	end);
	local v814 = CFrame.new( -731.2034301757812, 381.5658874511719, -11198.4951171875);
	spawn(function()
		while wait() do
			if (_G.BudySword and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
						for v2425, v2426 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2426.Name == "Cake Queen") then
								if (v2426:FindFirstChild("Humanoid") and v2426:FindFirstChild("HumanoidRootPart") and (v2426.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2426.HumanoidRootPart.CanCollide = false;
										v2426.Humanoid.WalkSpeed = 0;
										v2426.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
										topos(v2426.HumanoidRootPart.CFrame * Pos );
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
									until  not _G.BudySword or  not v2426.Parent or (v2426.Humanoid.Health <= 0)
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v814.Position).Magnitude > 3500) then
								BTP(v814);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v814.Position).Magnitude < 3500) then
								topos(v814);
							end
						else
							topos(v814);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -731.2034301757812, 381.5658874511719, -11198.4951171875));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.BudySwordHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
	v70:Seperator("Dual Curse Katana");
	v70:Toggle("Auto Dual Curse Katana ( Test )", _G.Cdk, function(v1455)
		_G.CDK = v1455;
		StopTween(_G.CDK);
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if _G.CDK then
					if (game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") or game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama")) then
						if (game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita")) then
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
								EquipWeapon("Tushita");
							end
						elseif (game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama")) then
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
								EquipWeapon("Yama");
							end
						end
					else
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem", "Tushita");
					end
				end
			end);
		end
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if _G.CDK then
					if (GetMaterial("Alucard Fragment") == 0) then
						Auto_Quest_Yama_1 = true;
						Auto_Quest_Yama_2 = false;
						Auto_Quest_Yama_3 = false;
						Auto_Quest_Tushita_1 = false;
						Auto_Quest_Tushita_2 = false;
						Auto_Quest_Tushita_3 = false;
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil");
					elseif (GetMaterial("Alucard Fragment") == 1) then
						Auto_Quest_Yama_1 = false;
						Auto_Quest_Yama_2 = true;
						Auto_Quest_Yama_3 = false;
						Auto_Quest_Tushita_1 = false;
						Auto_Quest_Tushita_2 = false;
						Auto_Quest_Tushita_3 = false;
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil");
					elseif (GetMaterial("Alucard Fragment") == 2) then
						Auto_Quest_Yama_1 = false;
						Auto_Quest_Yama_2 = false;
						Auto_Quest_Yama_3 = true;
						Auto_Quest_Tushita_1 = false;
						Auto_Quest_Tushita_2 = false;
						Auto_Quest_Tushita_3 = false;
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil");
					elseif (GetMaterial("Alucard Fragment") == 3) then
						Auto_Quest_Yama_1 = false;
						Auto_Quest_Yama_2 = false;
						Auto_Quest_Yama_3 = false;
						Auto_Quest_Tushita_1 = true;
						Auto_Quest_Tushita_2 = false;
						Auto_Quest_Tushita_3 = false;
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good");
					elseif (GetMaterial("Alucard Fragment") == 4) then
						Auto_Quest_Yama_1 = false;
						Auto_Quest_Yama_2 = false;
						Auto_Quest_Yama_3 = false;
						Auto_Quest_Tushita_1 = false;
						Auto_Quest_Tushita_2 = true;
						Auto_Quest_Tushita_3 = false;
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good");
					elseif (GetMaterial("Alucard Fragment") == 5) then
						Auto_Quest_Yama_1 = false;
						Auto_Quest_Yama_2 = false;
						Auto_Quest_Yama_3 = false;
						Auto_Quest_Tushita_1 = false;
						Auto_Quest_Tushita_2 = false;
						Auto_Quest_Tushita_3 = true;
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good");
					elseif (GetMaterial("Alucard Fragment") == 6) then
						if (game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").ReplicatedStorage:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]")) then
							Auto_Quest_Yama_1 = false;
							Auto_Quest_Yama_2 = false;
							Auto_Quest_Yama_3 = false;
							Auto_Quest_Tushita_1 = false;
							Auto_Quest_Tushita_2 = false;
							Auto_Quest_Tushita_3 = false;
							if (game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]")) then
								for v3072, v3073 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if ((v3073.Name == "Cursed Skeleton Boss") or (v3073.Name == "Cursed Skeleton")) then
										if (v3073.Humanoid.Health > 0) then
											EquipWeapon(Sword);
											topos(v3073.HumanoidRootPart.CFrame * CFrame.new(PosX, PosY, PosZ) );
											v3073.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
											v3073.HumanoidRootPart.Transparency = 1;
											v3073.Humanoid.JumpPower = 0;
											v3073.Humanoid.WalkSpeed = 0;
											v3073.HumanoidRootPart.CanCollide = false;
											PosMon = v3073.HumanoidRootPart.CFrame;
											MonFarm = v3073.Name;
											Click();
										end
									end
								end
							end
						elseif ((CFrame.new( -12361.7060546875, 603.3547973632812, -6550.5341796875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good");
							wait(1);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil");
							wait(1);
							topos(CFrame.new( -12361.7060546875, 603.3547973632812, -6550.5341796875));
							wait(1.5);
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game);
							wait(1.5);
							topos(CFrame.new( -12253.5419921875, 598.8999633789062, -6546.8388671875));
						else
							topos(CFrame.new( -12361.7060546875, 603.3547973632812, -6550.5341796875));
						end
					end
				end
			end);
		end
	end);
	spawn(function()
		while wait() do
			if Auto_Quest_Yama_1 then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate") then
						for v2427, v2428 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2428.Name == "Mythological Pirate") then
								repeat
									wait();
									topos(v2428.HumanoidRootPart.CFrame * CFrame.new(0, 0, -2) );
								until (_G.CDK == false) or (Auto_Quest_Yama_1 == false)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil");
							end
						end
					else
						topos(CFrame.new( -13451.46484375, 543.712890625, -6961.0029296875));
					end
				end);
			end
		end
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if Auto_Quest_Yama_2 then
					for v2094, v2095 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v2095:FindFirstChild("HazeESP") then
							v2095.HazeESP.Size = UDim2.new(50, 50, 50, 50);
							v2095.HazeESP.MaxDistance = "inf";
						end
					end
					for v2096, v2097 in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
						if v2097:FindFirstChild("HazeESP") then
							v2097.HazeESP.Size = UDim2.new(50, 50, 50, 50);
							v2097.HazeESP.MaxDistance = "inf";
						end
					end
				end
			end);
		end
	end);
	spawn(function()
		while wait() do
			pcall(function()
				for v1817, v1818 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if (Auto_Quest_Yama_2 and v1818:FindFirstChild("HazeESP") and ((v1818.HumanoidRootPart.Position - PosMonsEsp.Position).magnitude <= 300)) then
						v1818.HumanoidRootPart.CFrame = PosMonsEsp;
						v1818.HumanoidRootPart.CanCollide = false;
						v1818.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
						if  not v1818.HumanoidRootPart:FindFirstChild("BodyVelocity") then
							local v2433 = Instance.new("BodyVelocity", v1818.HumanoidRootPart);
							v2433.MaxForce = Vector3.new(1, 1, 1) * math.huge ;
							v2433.Velocity = Vector3.new(0, 0, 0);
						end
					end
				end
			end);
		end
	end);
	spawn(function()
		while wait() do
			if Auto_Quest_Yama_2 then
				pcall(function()
					for v2101, v2102 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v2102:FindFirstChild("HazeESP") then
							repeat
								wait();
								if ((v2102.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000) then
									topos(v2102.HumanoidRootPart.CFrame * Pos );
								else
									EquipWeapon(Sword);
									topos(v2102.HumanoidRootPart.CFrame * Pos );
									v2102.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
									v2102.HumanoidRootPart.Transparency = 1;
									v2102.Humanoid.JumpPower = 0;
									v2102.Humanoid.WalkSpeed = 0;
									v2102.HumanoidRootPart.CanCollide = false;
									PosMon = v2102.HumanoidRootPart.CFrame;
									MonFarm = v2102.Name;
									Click();
									if ((v2102.Humanoid.Health <= 0) and v2102.Humanoid:FindFirstChild("Animator")) then
										v2102.Humanoid.Animator:Destroy();
									end
								end
							until (_G.CDK == false) or (Auto_Quest_Yama_2 == false) or  not v2102.Parent or (v2102.Humanoid.Health <= 0) or  not v2102:FindFirstChild("HazeESP")
						else
							for v2576, v2577 in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
								if v2577:FindFirstChild("HazeESP") then
									if ((v2577.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000) then
										topos(v2577.HumanoidRootPart.CFrameMon * Farm_Mode );
									else
										topos(v2577.HumanoidRootPart.CFrame * Farm_Mode );
									end
								end
							end
						end
					end
				end);
			end
		end
	end);
	spawn(function()
		while wait() do
			if Auto_Quest_Yama_3 then
				pcall(function()
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then
						topos(game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame);
					elseif game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
						repeat
							wait();
							if (game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Hell's Messenger [Lv. 2200] [Boss]")) then
								for v2845, v2846 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if ((v2846.Name == "Cursed Skeleton") or (v2846.Name == "Cursed Skeleton") or (v2846.Name == "Hell's Messenger")) then
										if (v2846.Humanoid.Health > 0) then
											repeat
												wait();
												EquipWeapon(Sword);
												topos(v2846.HumanoidRootPart.CFrame * Pos );
												v2846.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
												v2846.HumanoidRootPart.Transparency = 1;
												v2846.Humanoid.JumpPower = 0;
												v2846.Humanoid.WalkSpeed = 0;
												v2846.HumanoidRootPart.CanCollide = false;
												PosMon = v2846.HumanoidRootPart.CFrame;
												MonFarm = v2846.Name;
												Click();
												if ((v2846.Humanoid.Health <= 0) and v2846.Humanoid:FindFirstChild("Animator")) then
													v2846.Humanoid.Animator:Destroy();
												end
											until (v2846.Humanoid.Health <= 0) or  not v2846.Parent or (Auto_Quest_Yama_3 == false)
										end
									end
								end
							else
								wait(5);
								topos(game:GetService("Workspace").Map.HellDimension.Torch1.CFrame);
								wait(1.5);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game);
								wait(1.5);
								topos(game:GetService("Workspace").Map.HellDimension.Torch2.CFrame);
								wait(1.5);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game);
								wait(1.5);
								topos(game:GetService("Workspace").Map.HellDimension.Torch3.CFrame);
								wait(1.5);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game);
								wait(1.5);
								topos(game:GetService("Workspace").Map.HellDimension.Exit.CFrame);
							end
						until (_G.CDK == false) or (Auto_Quest_Yama_3 == false) or (GetMaterial("Alucard Fragment") == 3)
					elseif (game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") or game.ReplicatedStorage:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]")) then
						if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
							for v2889, v2890 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v2890.Name == "Soul Reaper") then
									if (v2890.Humanoid.Health > 0) then
										repeat
											wait();
											topos(v2890.HumanoidRootPart.CFrame * CFrame.new(PosX, PosY, PosZ) );
										until (_G.CDK == false) or (Auto_Quest_Yama_3 == false) or game:GetService("Workspace").Map:FindFirstChild("HellDimension")
									end
								end
							end
						else
							topos(CFrame.new( -9570.033203125, 315.9346923828125, 6726.89306640625));
						end
					else
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1);
					end
				end);
			end
		end
	end);
	spawn(function()
		while wait() do
			if Auto_Quest_Tushita_1 then
				topos(CFrame.new( -9546.990234375, 21.139892578125, 4686.1142578125));
				wait(5);
				topos(CFrame.new( -6120.0576171875, 16.455780029296875, -2250.697265625));
				wait(5);
				topos(CFrame.new( -9533.2392578125, 7.254445552825928, -8372.69921875));
			end
		end
	end);
	spawn(function()
		while wait() do
			if Auto_Quest_Tushita_2 then
				pcall(function()
					if ((CFrame.new( -5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500) then
						for v2436, v2437 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (Auto_Quest_Tushita_2 and v2437:FindFirstChild("HumanoidRootPart") and v2437:FindFirstChild("Humanoid") and (v2437.Humanoid.Health > 0)) then
								if ((v2437.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000) then
									repeat
										wait();
										EquipWeapon(Sword);
										topos(v2437.HumanoidRootPart.CFrame * Pos );
										v2437.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
										v2437.HumanoidRootPart.Transparency = 1;
										v2437.Humanoid.JumpPower = 0;
										v2437.Humanoid.WalkSpeed = 0;
										v2437.HumanoidRootPart.CanCollide = false;
										PosMon = v2437.HumanoidRootPart.CFrame;
										MonFarm = v2437.Name;
										Click();
										if ((v2437.Humanoid.Health <= 0) and v2437.Humanoid:FindFirstChild("Animator")) then
											v2437.Humanoid.Animator:Destroy();
										end
									until (v2437.Humanoid.Health <= 0) or  not v2437.Parent or (Auto_Quest_Tushita_2 == false)
								end
							end
						end
					else
						topos(CFrame.new( -5545.1240234375, 313.800537109375, -2976.616455078125));
					end
				end);
			end
		end
	end);
	spawn(function()
		while wait() do
			if Auto_Quest_Tushita_3 then
				pcall(function()
					if (game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") or game.ReplicatedStorage:FindFirstChild("Cake Queen [Lv. 2175] [Boss]")) then
						if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
							for v2612, v2613 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v2613.Name == "Cake Queen") then
									if (v2613.Humanoid.Health > 0) then
										repeat
											wait();
											EquipWeapon(Sword);
											topos(v2613.HumanoidRootPart.CFrame * Pos );
											v2613.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
											v2613.HumanoidRootPart.Transparency = 1;
											v2613.Humanoid.JumpPower = 0;
											v2613.Humanoid.WalkSpeed = 0;
											v2613.HumanoidRootPart.CanCollide = false;
											PosMon = v2613.HumanoidRootPart.CFrame;
											MonFarm = v2613.Name;
											Click();
											if ((v2613.Humanoid.Health <= 0) and v2613.Humanoid:FindFirstChild("Animator")) then
												v2613.Humanoid.Animator:Destroy();
											end
										until (_G.CDK == false) or (Auto_Quest_Tushita_3 == false) or game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension")
									end
								end
							end
						else
							topos(CFrame.new( -709.3132934570312, 381.6005859375, -11011.396484375));
						end
					elseif game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") then
						repeat
							wait();
							if (game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Heaven's Guardian [Lv. 2200] [Boss]")) then
								for v2854, v2855 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if ((v2855.Name == "Cursed Skeleton") or (v2855.Name == "Cursed Skeleton") or (v2855.Name == "Heaven's Guardian")) then
										if (v2855.Humanoid.Health > 0) then
											repeat
												wait();
												EquipWeapon(Sword);
												topos(v2855.HumanoidRootPart.CFrame * Pos );
												v2855.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
												v2855.HumanoidRootPart.Transparency = 1;
												v2855.Humanoid.JumpPower = 0;
												v2855.Humanoid.WalkSpeed = 0;
												v2855.HumanoidRootPart.CanCollide = false;
												PosMon = v2855.HumanoidRootPart.CFrame;
												MonFarm = v2855.Name;
												Click();
												if ((v2855.Humanoid.Health <= 0) and v2855.Humanoid:FindFirstChild("Animator")) then
													v2855.Humanoid.Animator:Destroy();
												end
											until (v2855.Humanoid.Health <= 0) or  not v2855.Parent or (Auto_Quest_Tushita_3 == false)
										end
									end
								end
							else
								wait(5);
								topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch1.CFrame);
								wait(1.5);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game);
								wait(1.5);
								topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch2.CFrame);
								wait(1.5);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game);
								wait(1.5);
								topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch3.CFrame);
								wait(1.5);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game);
								wait(1.5);
								topos(game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame);
							end
						until  not _G.CDK or  not Auto_Quest_Tushita_3 or (GetMaterial("Alucard Fragment") == 6)
					end
				end);
			end
		end
	end);
end
spawn(function()
	while task.wait() do
		pcall(function()
			if _G.BringMonster then
				CheckQuest();
				for v1819, v1820 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if (_G.Level and StartMagnet and (v1820.Name == Mon) and ((Mon == "Factory Staff") or (Mon == "Monkey") or (Mon == "Dragon Crew Warrior") or (Mon == "Dragon Crew Archer")) and v1820:FindFirstChild("Humanoid") and v1820:FindFirstChild("HumanoidRootPart") and (v1820.Humanoid.Health > 0) and ((v1820.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250)) then
						v1820.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
						v1820.HumanoidRootPart.CFrame = PosMon;
						v1820.Humanoid:ChangeState(14);
						v1820.HumanoidRootPart.CanCollide = false;
						v1820.Head.CanCollide = false;
						if v1820.Humanoid:FindFirstChild("Animator") then
							v1820.Humanoid.Animator:Destroy();
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
					elseif (_G.Level and StartMagnet and (v1820.Name == Mon) and v1820:FindFirstChild("Humanoid") and v1820:FindFirstChild("HumanoidRootPart") and (v1820.Humanoid.Health > 0) and ((v1820.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode)) then
						v1820.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
						v1820.HumanoidRootPart.CFrame = PosMon;
						v1820.Humanoid:ChangeState(14);
						v1820.HumanoidRootPart.CanCollide = false;
						v1820.Head.CanCollide = false;
						if v1820.Humanoid:FindFirstChild("Animator") then
							v1820.Humanoid.Animator:Destroy();
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
					end
					if (_G.Ectoplasm and StartEctoplasmMagnet) then
						if (string.find(v1820.Name, "Ship") and v1820:FindFirstChild("Humanoid") and v1820:FindFirstChild("HumanoidRootPart") and (v1820.Humanoid.Health > 0) and ((v1820.HumanoidRootPart.Position - EctoplasmMon.Position).Magnitude <= _G.BringMode)) then
							v1820.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v1820.HumanoidRootPart.CFrame = EctoplasmMon;
							v1820.Humanoid:ChangeState(14);
							v1820.HumanoidRootPart.CanCollide = false;
							v1820.Head.CanCollide = false;
							if v1820.Humanoid:FindFirstChild("Animator") then
								v1820.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.Rengoku and StartRengokuMagnet) then
						if (((v1820.Name == "Snow Lurker") or (v1820.Name == "Arctic Warrior")) and ((v1820.HumanoidRootPart.Position - RengokuMon.Position).Magnitude <= _G.BringMode) and v1820:FindFirstChild("Humanoid") and v1820:FindFirstChild("HumanoidRootPart") and (v1820.Humanoid.Health > 0)) then
							v1820.HumanoidRootPart.Size = Vector3.new(1500, 1500, 1500);
							v1820.Humanoid:ChangeState(14);
							v1820.HumanoidRootPart.CanCollide = false;
							v1820.Head.CanCollide = false;
							v1820.HumanoidRootPart.CFrame = RengokuMon;
							if v1820.Humanoid:FindFirstChild("Animator") then
								v1820.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.MusketeerHat and StartMagnetMusketeerhat) then
						if ((v1820.Name == "Forest Pirate") and ((v1820.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= _G.BringMode) and v1820:FindFirstChild("Humanoid") and v1820:FindFirstChild("HumanoidRootPart") and (v1820.Humanoid.Health > 0)) then
							v1820.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v1820.Humanoid:ChangeState(14);
							v1820.HumanoidRootPart.CanCollide = false;
							v1820.Head.CanCollide = false;
							v1820.HumanoidRootPart.CFrame = MusketeerHatMon;
							if v1820.Humanoid:FindFirstChild("Animator") then
								v1820.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.ObservationHakiV2 and Mangnetcitzenmon) then
						if ((v1820.Name == "Forest Pirate") and ((v1820.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= _G.BringMode) and v1820:FindFirstChild("Humanoid") and v1820:FindFirstChild("HumanoidRootPart") and (v1820.Humanoid.Health > 0)) then
							v1820.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v1820.Humanoid:ChangeState(14);
							v1820.HumanoidRootPart.CanCollide = false;
							v1820.Head.CanCollide = false;
							v1820.HumanoidRootPart.CFrame = PosHee;
							if v1820.Humanoid:FindFirstChild("Animator") then
								v1820.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.EvoRace and StartEvoMagnet) then
						if ((v1820.Name == "Zombie") and ((v1820.HumanoidRootPart.Position - PosMonEvo.Position).Magnitude <= _G.BringMode) and v1820:FindFirstChild("Humanoid") and v1820:FindFirstChild("HumanoidRootPart") and (v1820.Humanoid.Health > 0)) then
							v1820.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v1820.Humanoid:ChangeState(14);
							v1820.HumanoidRootPart.CanCollide = false;
							v1820.Head.CanCollide = false;
							v1820.HumanoidRootPart.CFrame = PosMonEvo;
							if v1820.Humanoid:FindFirstChild("Animator") then
								v1820.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.Bartilo and AutoBartiloBring) then
						if ((v1820.Name == "Swan Pirate") and ((v1820.HumanoidRootPart.Position - PosMonBarto.Position).Magnitude <= _G.BringMode) and v1820:FindFirstChild("Humanoid") and v1820:FindFirstChild("HumanoidRootPart") and (v1820.Humanoid.Health > 0)) then
							v1820.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v1820.Humanoid:ChangeState(14);
							v1820.HumanoidRootPart.CanCollide = false;
							v1820.Head.CanCollide = false;
							v1820.HumanoidRootPart.CFrame = PosMonBarto;
							if v1820.Humanoid:FindFirstChild("Animator") then
								v1820.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.FarmFruitMastery and StartMasteryFruitMagnet) then
						if (v1820.Name == "Monkey") then
							if (((v1820.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode) and v1820:FindFirstChild("Humanoid") and v1820:FindFirstChild("HumanoidRootPart") and (v1820.Humanoid.Health > 0)) then
								v1820.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v1820.Humanoid:ChangeState(14);
								v1820.HumanoidRootPart.CanCollide = false;
								v1820.Head.CanCollide = false;
								v1820.HumanoidRootPart.CFrame = PosMonMasteryFruit;
								if v1820.Humanoid:FindFirstChild("Animator") then
									v1820.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						elseif (v1820.Name == "Factory Staff") then
							if (((v1820.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode) and v1820:FindFirstChild("Humanoid") and v1820:FindFirstChild("HumanoidRootPart") and (v1820.Humanoid.Health > 0)) then
								v1820.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v1820.Humanoid:ChangeState(14);
								v1820.HumanoidRootPart.CanCollide = false;
								v1820.Head.CanCollide = false;
								v1820.HumanoidRootPart.CFrame = PosMonMasteryFruit;
								if v1820.Humanoid:FindFirstChild("Animator") then
									v1820.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						elseif (v1820.Name == Mon) then
							if (((v1820.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode) and v1820:FindFirstChild("Humanoid") and v1820:FindFirstChild("HumanoidRootPart") and (v1820.Humanoid.Health > 0)) then
								v1820.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v1820.Humanoid:ChangeState(14);
								v1820.HumanoidRootPart.CanCollide = false;
								v1820.Head.CanCollide = false;
								v1820.HumanoidRootPart.CFrame = PosMonMasteryFruit;
								if v1820.Humanoid:FindFirstChild("Animator") then
									v1820.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						end
					end
					if (_G.FarmGunMastery and StartMasteryGunMagnet) then
						if (v1820.Name == "Monkey") then
							if (((v1820.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode) and v1820:FindFirstChild("Humanoid") and v1820:FindFirstChild("HumanoidRootPart") and (v1820.Humanoid.Health > 0)) then
								v1820.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v1820.Humanoid:ChangeState(14);
								v1820.HumanoidRootPart.CanCollide = false;
								v1820.Head.CanCollide = false;
								v1820.HumanoidRootPart.CFrame = PosMonMasteryGun;
								if v1820.Humanoid:FindFirstChild("Animator") then
									v1820.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						elseif (v1820.Name == "Factory Staff") then
							if (((v1820.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode) and v1820:FindFirstChild("Humanoid") and v1820:FindFirstChild("HumanoidRootPart") and (v1820.Humanoid.Health > 0)) then
								v1820.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v1820.Humanoid:ChangeState(14);
								v1820.HumanoidRootPart.CanCollide = false;
								v1820.Head.CanCollide = false;
								v1820.HumanoidRootPart.CFrame = PosMonMasteryGun;
								if v1820.Humanoid:FindFirstChild("Animator") then
									v1820.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						elseif (v1820.Name == Mon) then
							if (((v1820.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode) and v1820:FindFirstChild("Humanoid") and v1820:FindFirstChild("HumanoidRootPart") and (v1820.Humanoid.Health > 0)) then
								v1820.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v1820.Humanoid:ChangeState(14);
								v1820.HumanoidRootPart.CanCollide = false;
								v1820.Head.CanCollide = false;
								v1820.HumanoidRootPart.CFrame = PosMonMasteryGun;
								if v1820.Humanoid:FindFirstChild("Animator") then
									v1820.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						end
					end
					if (_G.FarmCandy and StartCandyMagnet) then
						if (((v1820.Name == "Ice Cream Chef") or (v1820.Name == "Ice Cream Commander")) and ((v1820.HumanoidRootPart.Position - CandyMon.Position).Magnitude <= _G.BringMode) and v1820:FindFirstChild("Humanoid") and v1820:FindFirstChild("HumanoidRootPart") and (v1820.Humanoid.Health > 0)) then
							v1820.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v1820.Humanoid:ChangeState(14);
							v1820.HumanoidRootPart.CanCollide = false;
							v1820.Head.CanCollide = false;
							v1820.HumanoidRootPart.CFrame = CandyMon;
							if v1820.Humanoid:FindFirstChild("Animator") then
								v1820.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (StardFarm and FarmMag) then
						if (((v1820.Name == "Cocoa Warrior") or (v1820.Name == "Chocolate Bar Battler") or (v1820.Name == "Sweet Thief") or (v1820.Name == "Candy Rebel")) and ((v1820.HumanoidRootPart.Position - PosGG.Position).Magnitude <= 250) and v1820:FindFirstChild("Humanoid") and v1820:FindFirstChild("HumanoidRootPart") and (v1820.Humanoid.Health > 0)) then
							v1820.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v1820.Humanoid:ChangeState(14);
							v1820.HumanoidRootPart.CanCollide = false;
							v1820.Head.CanCollide = false;
							v1820.HumanoidRootPart.CFrame = PosGG;
							if v1820.Humanoid:FindFirstChild("Animator") then
								v1820.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.Farmfast and StardMag) then
						if (((v1820.Name == "Shanda") or (v1820.Name == "Shanda")) and ((v1820.HumanoidRootPart.Position - FastMon.Position).Magnitude <= _G.BringMode) and v1820:FindFirstChild("Humanoid") and v1820:FindFirstChild("HumanoidRootPart") and (v1820.Humanoid.Health > 0)) then
							v1820.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v1820.Humanoid:ChangeState(14);
							v1820.HumanoidRootPart.CanCollide = false;
							v1820.Head.CanCollide = false;
							v1820.HumanoidRootPart.CFrame = FastMon;
							if v1820.Humanoid:FindFirstChild("Animator") then
								v1820.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
				end
			end
		end);
	end
end);
task.spawn(function()
	while true do
		wait();
		if setscriptable then
			setscriptable(game.Players.LocalPlayer, "SimulationRadius", true);
		end
		if sethiddenproperty then
			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
		end
	end
end);
function InMyNetWork(v434)
	if isnetworkowner then
		return isnetworkowner(v434);
	else
		if ((v434.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode) then
			return true;
		end
		return false;
	end
end
task.spawn(function()
	while task.wait() do
		pcall(function()
			if (MakoriGayMag and _G.BringMonster) then
				for v1821, v1822 in pairs(game.Workspace.Enemies:GetChildren()) do
					if ( not string.find(v1822.Name, "Boss") and ((v1822.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode)) then
						if InMyNetWork(v1822.HumanoidRootPart) then
							v1822.HumanoidRootPart.CFrame = PosGay;
							v1822.Humanoid.JumpPower = 0;
							v1822.Humanoid.WalkSpeed = 0;
							v1822.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							v1822.HumanoidRootPart.Transparency = 1;
							v1822.HumanoidRootPart.CanCollide = false;
							v1822.Head.CanCollide = false;
							if v1822.Humanoid:FindFirstChild("Animator") then
								v1822.Humanoid.Animator:Destroy();
							end
							v1822.Humanoid:ChangeState(11);
							v1822.Humanoid:ChangeState(14);
						end
					end
				end
			end
		end);
	end
end);
task.spawn(function()
	while task.wait() do
		pcall(function()
			if (Anchor and _G.BringMonster) then
				for v1823, v1824 in pairs(game.Workspace.Enemies:GetChildren()) do
					if ( not string.find(v1824.Name, "Boss") and ((v1824.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode)) then
						if InMyNetWork(v1824.HumanoidRootPart) then
							v1824.HumanoidRootPart.CFrame = PosNarathiwat;
							v1824.Humanoid.JumpPower = 0;
							v1824.Humanoid.WalkSpeed = 0;
							v1824.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							v1824.HumanoidRootPart.Transparency = 1;
							v1824.HumanoidRootPart.CanCollide = false;
							v1824.Head.CanCollide = false;
							if v1824.Humanoid:FindFirstChild("Animator") then
								v1824.Humanoid.Animator:Destroy();
							end
							v1824.Humanoid:ChangeState(11);
							v1824.Humanoid:ChangeState(14);
						end
					end
				end
			end
		end);
	end
end);
task.spawn(function()
	while task.wait() do
		pcall(function()
			if ((_G.FarmNearest and AutoFarmNearestMagnet) or (SelectMag and _G.BringMonster)) then
				for v1825, v1826 in pairs(game.Workspace.Enemies:GetChildren()) do
					if ( not string.find(v1826.Name, "Boss") and ((v1826.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode)) then
						if InMyNetWork(v1826.HumanoidRootPart) then
							v1826.HumanoidRootPart.CFrame = PosMon;
							v1826.Humanoid.JumpPower = 0;
							v1826.Humanoid.WalkSpeed = 0;
							v1826.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							v1826.HumanoidRootPart.Transparency = 1;
							v1826.HumanoidRootPart.CanCollide = false;
							v1826.Head.CanCollide = false;
							if v1826.Humanoid:FindFirstChild("Animator") then
								v1826.Humanoid.Animator:Destroy();
							end
							v1826.Humanoid:ChangeState(11);
							v1826.Humanoid:ChangeState(14);
						end
					end
				end
			end
		end);
	end
end);
if (World1 or World2) then
	v71:Label("Go To The Third Sea");
end
if World3 then
	v71:Seperator("Mirage");
	local v815 = v71:Label("");
	task.spawn(function()
		while task.wait() do
			pcall(function()
				if game.Workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island") then
					v815:Set("Check Mirage : Spawn!");
				else
					v815:Set("Check Mirage : Not Spawn");
				end
			end);
		end
	end);
	v71:Toggle("Auto Mystic Island", _G.MysticIsland, function(v1456)
		_G.MysticIsland = v1456;
		StopTween(_G.MysticIsland);
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if _G.MysticIsland then
					if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
						topos(CFrame.new(game:GetService("Workspace").Map.MysticIsland.Center.Position.X, 500, game:GetService("Workspace").Map.MysticIsland.Center.Position.Z));
					end
				end
			end
		end);
	end);
	v71:Toggle("Teleport Advanced Fruit Dealer", _G.TPNPC, function(v1457)
		_G.Miragenpc = v1457;
		StopTween(_G.Miragenpc);
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if _G.Miragenpc then
					local v1888 = game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit Dealer");
					if v1888 then
						topos(CFrame.new(v1888.HumanoidRootPart.Position));
					end
				end
			end
		end);
	end);
	v71:Button("Teleport Advanced Fruit Dealer", function()
		TweenNpc();
	end);
	function TweenNpc()
		repeat
			wait();
		until game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
		if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
			local v1757 = getnilinstances();
			for v1827, v1828 in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
				table.insert(v1757, v1828);
			end
			for v1829, v1830 in pairs(v1757) do
				if (v1830.Name == "Advanced Fruit Dealer") then
					TP2(v1830.HumanoidRootPart.CFrame);
					break;
				end
			end
		end
	end
	v71:Toggle("Auto Lock Moon", _G.LockCamToMoon, function(v1458)
		_G.LockCamToMoon = v1458;
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if _G.LockCamToMoon then
					wait(0.1);
					local v1889 = game.Lighting:GetMoonDirection();
					local v1890 = game.Workspace.CurrentCamera.CFrame.p + (v1889 * 100) ;
					game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, v1890);
				end
			end);
		end
	end);
	v71:Toggle("Tween Gear", _G.TweenMGear, function(v1459)
		_G.TweenMGear = v1459;
		StopTween(_G.TweenMGear);
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if _G.TweenMGear then
					if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
						for v2499, v2500 in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
							if v2500:IsA("MeshPart") then
								if (v2500.Material == Enum.Material.Neon) then
									topos(v2500.CFrame);
								end
							end
						end
					end
				end
			end
		end);
	end);
	v71:Seperator("Race V4");
	v71:Button("Teleport To Top Of GreatTree", function()
		local v1460 = {
			[1] = "RaceV4Progress",
			[2] = "Teleport"
		};
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1460));
		wait(0.1);
		TP1(CFrame.new(28609.5801, 14896.5098, 105.869637, -0.00754010677, 3.2678094e-9, -0.999971569, 6.8831363e-9, 1, 3.2160012e-9, 0.999971569, -6.858692e-9, -0.00754010677));
		wait(2);
		local v1461 = game.Players.LocalPlayer;
		local v1462 = CFrame.new(28609.5801, 14896.5098, 105.869637).Position;
		if (v1461.Character and v1461.Character:FindFirstChild("HumanoidRootPart")) then
			local v1758 = (v1461.Character.HumanoidRootPart.Position - v1462).Magnitude;
			if (v1758 < 3) then
				local v1892 = {
					[1] = "RaceV4Progress",
					[2] = "TeleportBack"
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1892));
			end
		end
	end);
	v71:Button("Teleport To Timple Of Time", function()
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
	end);
	v71:Button("Teleport To Lever Pull", function()
		TP2(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734));
	end);
	v71:Button("Teleport To Acient One (Must Be in Temple Of Time!)", function()
		TP2(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375));
	end);
	v71:Button("Clock Acces", function()
		game:GetService("Workspace").Map["Temple of Time"].DoNotEnter:Remove();
		game:GetService("Workspace").Map["Temple of Time"].ClockRoomExit:Remove();
	end);
	v71:Toggle("Auto Buy Gear", _G.Bone4, function(v1464)
		_G.Bone4 = v1464;
	end);
	spawn(function()
		pcall(function()
			while wait(0.1) do
				if _G.Bone4 then
					local v1893 = {
						[1] = "UpgradeRace",
						[2] = "Buy"
					};
					game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v1893));
				end
			end
		end);
	end);
	v71:Toggle("Disabled Inf Stairs", nil, function(v1465)
		game.Players.LocalPlayer.Character.InfiniteStairs.Disabled = v1465;
	end);
	v71:Button("Teleport Trial Door", function()
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
		wait(0.1);
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
		wait(0.1);
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
		wait(0.1);
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
		if (game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman") then
			Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
			wait(0.6);
			topos(CFrame.new(28224.056640625, 14889.4267578125, -210.5872039794922));
		elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Human") then
			Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
			wait(0.6);
			topos(CFrame.new(29237.294921875, 14889.4267578125, -206.94955444335938));
		elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg") then
			Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
			wait(0.6);
			topos(CFrame.new(28492.4140625, 14894.4267578125, -422.1100158691406));
		elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea") then
			Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
			wait(0.6);
			topos(CFrame.new(28967.408203125, 14918.0751953125, 234.31198120117188));
		elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul") then
			Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
			wait(0.6);
			topos(CFrame.new(28672.720703125, 14889.1279296875, 454.5961608886719));
		elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink") then
			Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
			wait(0.6);
			topos(CFrame.new(29020.66015625, 14889.4267578125, -379.2682800292969));
		end
	end);
	v71:Button("Teleport To Clock", function()
		TP2(CFrame.new(29551.9941, 15069.002, -85.5179291));
	end);
	v71:Toggle("Auto Trial", false, function(v1468)
		_G.QuestRace = v1468;
		StopTween(_G.QuestRace);
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if _G.QuestRace then
					if (game:GetService("Players").LocalPlayer.Data.Race.Value == "Human") then
						for v2501, v2502 in pairs(game.Workspace.Enemies:GetDescendants()) do
							if (v2502:FindFirstChild("Humanoid") and v2502:FindFirstChild("HumanoidRootPart") and (v2502.Humanoid.Health > 0)) then
								pcall(function()
									repeat
										wait(0.1);
										v2502.Humanoid.Health = 0;
										v2502.HumanoidRootPart.CanCollide = false;
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
									until  not _G.QuestRace or  not v2502.Parent or (v2502.Humanoid.Health <= 0)
								end);
							end
						end
					elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea") then
						for v2622, v2623 in next, workspace:GetDescendants() do
							if (v2623.Name == "FinishPart") then
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v2623.CFrame;
							end
						end
					elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman") then
						for v2736, v2737 in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
							if (v2737.Name == "HumanoidRootPart") then
								topos(v2737.CFrame * CFrame.new(PosX, PosY, PosZ) );
								for v2938, v2939 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
									if v2939:IsA("Tool") then
										if (v2939.ToolTip == "Melee") then
											game.Players.LocalPlayer.Character.Humanoid:EquipTool(v2939);
										end
									end
								end
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								for v2940, v2941 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
									if v2941:IsA("Tool") then
										if (v2941.ToolTip == "Blox Fruit") then
											game.Players.LocalPlayer.Character.Humanoid:EquipTool(v2941);
										end
									end
								end
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.5);
								for v2942, v2943 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
									if v2943:IsA("Tool") then
										if (v2943.ToolTip == "Sword") then
											game.Players.LocalPlayer.Character.Humanoid:EquipTool(v2943);
										end
									end
								end
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.5);
								for v2944, v2945 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
									if v2945:IsA("Tool") then
										if (v2945.ToolTip == "Gun") then
											game.Players.LocalPlayer.Character.Humanoid:EquipTool(v2945);
										end
									end
								end
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
							end
						end
					elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg") then
						topos(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1));
					elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul") then
						for v2962, v2963 in pairs(game.Workspace.Enemies:GetDescendants()) do
							if (v2963:FindFirstChild("Humanoid") and v2963:FindFirstChild("HumanoidRootPart") and (v2963.Humanoid.Health > 0)) then
								pcall(function()
									repeat
										wait(0.1);
										v2963.Humanoid.Health = 0;
										v2963.HumanoidRootPart.CanCollide = false;
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
									until  not _G.QuestRace or  not v2963.Parent or (v2963.Humanoid.Health <= 0)
								end);
							end
						end
					elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink") then
						for v3010, v3011 in pairs(game:GetService("Workspace"):GetDescendants()) do
							if (v3011.Name == "StartPoint") then
								topos(v3011.CFrame * CFrame.new(0, 10, 0) );
							end
						end
					end
				end
			end
		end);
	end);
	v71:Toggle("Auto Farm & active V4", false, function(v1469)
		_G.Bone = v1469;
		_G.Bone4 = v1469;
		_G.ActiveV4 = v1469;
		StopTween(_G.Bone);
	end);
	v71:Button("Buy Ancient One Quest", function(v1470)
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace", "Buy");
	end);
	v71:Seperator("Kill Player Trial");
	local v816 = {
		"Melee",
		"Sword",
		"Fruit",
		"Gun"
	};
	_G.SelectWeaponTrial = "Melee";
	v71:Dropdown("Select Weapon Kill Player Trial", v816, function(v1471)
		_G.SelectWeaponTrial = v1471;
	end);
	task.spawn(function()
		while wait() do
			pcall(function()
				if (_G.SelectWeaponTrial == "Melee") then
					for v2107, v2108 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if (v2108.ToolTip == "Melee") then
							if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v2108.Name)) then
								_G.SelectWeaponTrial = v2108.Name;
							end
						end
					end
				elseif (_G.SelectWeaponTrial == "Sword") then
					for v2503, v2504 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if (v2504.ToolTip == "Sword") then
							if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v2504.Name)) then
								_G.SelectWeaponTrial = v2504.Name;
							end
						end
					end
				elseif (_G.SelectWeaponTrial == "Gun") then
					for v2625, v2626 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if (v2626.ToolTip == "Gun") then
							if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v2626.Name)) then
								_G.SelectWeaponTrial = v2626.Name;
							end
						end
					end
				elseif (_G.SelectWeapon == "Fruit") then
					for v2739, v2740 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if (v2740.ToolTip == "Blox Fruit") then
							if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v2740.Name)) then
								_G.SelectWeapon = v2740.Name;
							end
						end
					end
				end
			end);
		end
	end);
	v71:Toggle("Kill Player After Trial", false, function(v1472)
		_G.KillAfterTrials = v1472;
		_G.Click = v1472;
		_G.TurnKen = v1472;
		_G.AimNearest = v1472;
		_G.Aimbot_Skill = v1472;
		StopTween(_G.KillAfterTrials);
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if _G.KillAfterTrials then
					if (game:GetService("Players")['LocalPlayer'].PlayerGui.Main.Timer.Visible == true) then
						for v2505, v2506 in pairs(game.Workspace.Characters:GetChildren()) do
							if (v2506.Name ~= game.Players.LocalPlayer.Name) then
								if (v2506:FindFirstChild("Humanoid") and v2506:FindFirstChild("HumanoidRootPart") and (v2506.Humanoid.Health > 0) and v2506.Parent and ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v2506.HumanoidRootPart.Position).Magnitude <= 230)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeaponTrial);
										UsefastattackPlayers = true;
										TP2(v2506.HumanoidRootPart.CFrame * CFrame.new(1, 1, 2) );
										v2506.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
										if _G.SkillTrialZ then
											game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
											wait(0.1);
											game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
										end
										if _G.SkillTrialX then
											game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
											wait(0.1);
											game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
										end
										if _G.SkillTrialC then
											game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
											wait(0.1);
											game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
										end
										if _G.SkillTrialV then
											game:GetService("VirtualInputManager"):SendKeyEvent(true, "V", false, game);
											wait(0.1);
											game:GetService("VirtualInputManager"):SendKeyEvent(false, "V", false, game);
										end
										if _G.SkillTrialF then
											game:GetService("VirtualInputManager"):SendKeyEvent(true, "F", false, game);
											wait(0.1);
											game:GetService("VirtualInputManager"):SendKeyEvent(false, "F", false, game);
										end
										v2506.HumanoidRootPart.CanCollide = false;
										v2506.Head.CanCollide = false;
										v2506.Humanoid.WalkSpeed = 0;
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
									until (_G.KillAfterTrials == false) or (v2506.Humanoid.Health <= 0) or  not v2506.Parent or  not v2506:FindFirstChild("HumanoidRootPart") or  not v2506:FindFirstChild("Humanoid")
								end
							end
						end
					end
				end
			end);
		end
	end);
	v71:Seperator("Setting Kill Player Trial");
	v71:Toggle("Use Skill Z Kill Player", false, function(v1473)
		_G.SkillTrialZ = v1473;
	end);
	v71:Toggle("Use Skill X Kill Player", false, function(v1474)
		_G.SkillTrialX = v1474;
	end);
	v71:Toggle("Use Skill C Kill Player", false, function(v1475)
		_G.SkillTrialC = v1475;
	end);
	v71:Toggle("Use Skill V Kill Player", false, function(v1476)
		_G.SkillTrialV = v1476;
	end);
	v71:Toggle("Use Skill F Kill Player", false, function(v1477)
		_G.SkillTrialF = v1477;
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if _G.TurnKen then
					repeat
						task.wait();
						if  not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
							game:GetService("VirtualUser"):CaptureController();
							game:GetService("VirtualUser"):SetKeyDown("0x65");
							wait(2);
							game:GetService("VirtualUser"):SetKeyUp("0x65");
						end
					until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or  not _G.Observation
				end
			end);
		end
	end);
end
if (World1 or World2) then
	v72:Label("Go To The Third Sea");
end
if World3 then
	v72:Button("Remove Fog", function()
		game:GetService("Lighting").LightingLayers:Destroy();
		game:GetService("Lighting").Sky:Destroy();
	end);
	local v817 = {
		"Guardian",
		"PirateGrandBrigade",
		"MarineGrandBrigade",
		"PirateBrigade",
		"MarineBrigade",
		"PirateSloop",
		"MarineSloop",
		"BeastHunter"
	};
	_G.SelectedBoat = "PirateGrandBrigade";
	v72:Dropdown("Select Boat", v817, function(v1478)
		_G.SelectedBoat = v1478;
	end);
	local v818 = {
		"Zone 1",
		"Zone 2",
		"Zone 3",
		"Zone 4",
		"Zone 5",
		"Zone 6"
	};
	_G.SelectedZone = "Zone 5";
	v72:Dropdown("Select Zone", v818, function(v1479)
		_G.SelectedZone = v1479;
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if (_G.SelectedZone == "Zone 1") then
					CFrameSelectedZone = CFrame.new( -21998.375, 30.0006084, -682.309143, 0.120013528, 0.00690158736, 0.99274826, -0.0574118942, 0.998350561, -2.365092e-10, -0.991110802, -0.0569955558, 0.120211802);
				elseif (_G.SelectedZone == "Zone 2") then
					CFrameSelectedZone = CFrame.new( -26779.5215, 30.0005474, -822.858032, 0.307457417, 0.019647358, 0.951358974, -0.0637726262, 0.997964442, -4.1533402e-10, -0.949422479, -0.0606706589, 0.308084518);
				elseif (_G.SelectedZone == "Zone 3") then
					CFrameSelectedZone = CFrame.new( -31171.957, 30.0001011, -2256.93774, 0.37637493, 0.0150483791, 0.926345229, -0.0399504974, 0.999201655, 2.7089667e-11, -0.925605655, -0.0370079502, 0.376675636);
				elseif (_G.SelectedZone == "Zone 4") then
					CFrameSelectedZone = CFrame.new( -34054.6875, 30.2187767, -2560.12012, 0.0935864747, -0.00122954219, 0.995610416, 0.0624034069, 0.998040259, -0.00463332096, -0.993653536, 0.062563099, 0.0934797972);
				elseif (_G.SelectedZone == "Zone 5") then
					CFrameSelectedZone = CFrame.new( -38887.5547, 30.0004578, -2162.99023, -0.188895494, -0.00704088295, 0.981971979, -0.0372481011, 0.999306023, -1.3988234e-9, -0.981290519, -0.0365765914, -0.189026669);
				elseif (_G.SelectedZone == "Zone 6") then
					CFrameSelectedZone = CFrame.new( -44541.7617, 30.0003204, -1244.8584, -0.0844199061, -0.00553312758, 0.9964149, -0.0654025897, 0.997858942, 2.0231941e-10, -0.99428153, -0.0651681125, -0.0846010372);
				end
			end
		end);
	end);
	getgenv().SpeedBoat = "300";
	v72:Dropdown("Speed Tween Boat", {
		"180",
		"200",
		"250",
		"300",
		"325",
		"350"
	}, function(v1480)
		getgenv().SpeedBoat = v1480;
	end);
	v72:Toggle("Start Sea Event", _G.SailBoat, function(v1482)
		_G.SailBoat = v1482;
	end);
	function CheckBoat()
		for v1655, v1656 in pairs(game:GetService("Workspace").Boats:GetChildren()) do
			if (v1656.Name == _G.SelectedBoat) then
				for v1895, v1896 in pairs(v1656:GetChildren()) do
					if (v1896.Name == "MyBoatEsp") then
						return v1656;
					end
				end
			end
		end
		return false;
	end
	function CheckEnemiesBoat()
		if (game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") or game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") or game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade")) then
			return true;
		end
		return false;
	end
	function CheckShark()
		for v1657, v1658 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			if ((v1658.Name == "Shark") and v1658:FindFirstChild("Humanoid") and v1658:FindFirstChild("HumanoidRootPart") and (v1658.Humanoid.Health > 0)) then
				if game:GetService("Workspace").Enemies:FindFirstChild("Shark") then
					if ((v1658.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200) then
						return true;
					end
				end
			end
		end
		return false;
	end
	function CheckPiranha()
		for v1659, v1660 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			if ((v1660.Name == "Piranha") and v1660:FindFirstChild("Humanoid") and v1660:FindFirstChild("HumanoidRootPart") and (v1660.Humanoid.Health > 0)) then
				if game:GetService("Workspace").Enemies:FindFirstChild("Piranha") then
					if ((v1660.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200) then
						return true;
					end
				end
			end
		end
		return false;
	end
	function AddEsp(v1483, v1484)
		local v1485 = Instance.new("BillboardGui");
		local v1486 = Instance.new("TextLabel");
		v1485.Parent = v1484;
		v1485.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
		v1485.Active = true;
		v1485.Name = v1483;
		v1485.AlwaysOnTop = true;
		v1485.LightInfluence = 1;
		v1485.Size = UDim2.new(0, 200, 0, 50);
		v1485.StudsOffset = Vector3.new(0, 2.5, 0);
		v1486.Parent = v1485;
		v1486.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		v1486.BackgroundTransparency = 1;
		v1486.Size = UDim2.new(1, 0, 1, 0);
		v1486.Font = Enum.Font.GothamBold;
		v1486.TextColor3 = Color3.fromRGB(255, 255, 255);
		v1486.TextSize = 15;
		v1486.Text = "Your Ship";
	end
	spawn(function()
		while wait() do
			pcall(function()
				if _G.SailBoat then
					if  not CheckBoat() then
						local v2321 = CFrame.new( -16927.451171875, 9.0863618850708, 433.8642883300781);
						if ((v2321.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000) then
							TP1(CFrame.new( -16224, 9, 439));
						else
							stoppos = TP2(v2321);
						end
						if ((CFrame.new( -16927.451171875, 9.0863618850708, 433.8642883300781).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10) then
							if stoppos then
								stoppos:Stop();
							end
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat", _G.SelectedBoat);
							for v2627, v2628 in pairs(game:GetService("Workspace").Boats:GetChildren()) do
								if (v2628.Name == _G.SelectedBoat) then
									if ((v2628.VehicleSeat.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100) then
										AddEsp("MyBoatEsp", v2628);
									end
								end
							end
						end
					else
						for v2507, v2508 in pairs(game:GetService("Workspace").Boats:GetChildren()) do
							if (v2508.Name == _G.SelectedBoat) then
								if v2508:FindFirstChild("MyBoatEsp") then
									if  not game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit then
										if ((CheckShark() and FarmShark) or (game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") and _G.Terrorshark) or (CheckPiranha() and _G.farmpiranya) or (game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") and _G.Fish_Crew_Member) or (game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") and _G.bjirFishBoat) or (game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") and _G.RelzPirateBrigade) or (game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") and _G.KillGhostShip) or (CheckSeaBeast() and _G.SeaBest)) then
											if stoppos then
												stoppos:Stop();
											end
										else
											stoppos = TP2(v2508.VehicleSeat.CFrame * CFrame.new(0, 1, 0) );
										end
									else
										repeat
											wait();
											stopboat = TPB(CFrameSelectedZone, v2508.VehicleSeat);
										until (CheckShark() and FarmShark) or (game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") and _G.Terrorshark) or (CheckPiranha() and _G.farmpiranya) or (game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") and _G.Fish_Crew_Member) or (game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") and _G.bjirFishBoat) or (game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") and _G.RelzPirateBrigade) or (game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") and _G.KillGhostShip) or (CheckSeaBeast() and _G.SeaBest) or  not game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit or  not _G.SailBoat
										if stopboat then
											stopboat:Stop();
										end
										game:GetService("VirtualInputManager"):SendKeyEvent(true, 32, false, game);
										wait(0.1);
										game:GetService("VirtualInputManager"):SendKeyEvent(false, 32, false, game);
									end
								end
							end
						end
					end
				end
			end);
		end
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if _G.SailBoat then
					if ((CheckShark() and FarmShark) or (game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") and _G.Terrorshark) or (CheckPiranha() and _G.farmpiranya) or (game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") and _G.Fish_Crew_Member) or (game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") and _G.bjirFishBoat) or (game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") and _G.RelzPirateBrigade) or (game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") and _G.KillGhostShip) or (CheckSeaBeast() and _G.SeaBest)) then
						if (game.Players.LocalPlayer.Character.Humanoid.Sit == true) then
							game:GetService("VirtualInputManager"):SendKeyEvent(true, 32, false, game);
							wait(0.1);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, 32, false, game);
						end
					end
				end
			end
		end);
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if _G.SailBoat then
					if (game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") and _G.Fish_Crew_Member) then
						for v2509, v2510 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
								if (v2510.Name == "Fish Crew Member") then
									if (v2510:FindFirstChild("Humanoid") and v2510:FindFirstChild("HumanoidRootPart") and (v2510.Humanoid.Health > 0)) then
										repeat
											task.wait();
											AutoHaki();
											EquipWeapon(_G.SelectWeapon);
											TP2(v2510.HumanoidRootPart.CFrame * Pos );
											NeedAttacking = true;
											_G.SeaSkill = false;
										until  not _G.Fish_Crew_Member or  not v2510.Parent or (v2510.Humanoid.Health <= 0)
										StartMagnet = false;
									end
								end
							end
						end
					elseif (game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") and _G.bjirFishBoat) then
						for v2629, v2630 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") then
								repeat
									task.wait();
									local v2861 = v2630.Engine.CFrame;
									if ((v2861.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50) then
										_G.SeaSkill = true;
									else
										_G.SeaSkill = false;
									end
									TP2(v2861);
									Skillaimbot = true;
									AimSkill = v2630.Engine.CFrame * CFrame.new(0, -15, 0) ;
									AimBotSkillPosition = AimSkill.Position;
								until  not v2630.Parent or (v2630.Health < 0) or  not game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") or  not v2630:FindFirstChild("Engine") or  not _G.bjirFishBoat
								Skillaimbot = false;
								_G.SeaSkill = false;
							end
						end
					elseif (game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") and _G.KillGhostShip) then
						for v2741, v2742 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") then
								repeat
									task.wait();
									local v2946 = v2742.Engine.CFrame;
									if ((v2946.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50) then
										_G.SeaSkill = true;
									else
										_G.SeaSkill = false;
									end
									TP2(v2946);
									Skillaimbot = true;
									AimSkill = v2742.Engine.CFrame * CFrame.new(0, -15, 0) ;
									AimBotSkillPosition = AimSkill.Position;
								until  not v2742.Parent or (v2742.Health.Value < 0) or  not game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") or  not v2742:FindFirstChild("Engine") or  not _G.KillGhostShip
								Skillaimbot = false;
								_G.SeaSkill = false;
							end
						end
					elseif (game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") and _G.RelzPirateBrigade) then
						for v2900, v2901 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") then
								repeat
									task.wait();
									local v2977 = v2901.Engine.CFrame;
									if ((v2977.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50) then
										_G.SeaSkill = true;
									else
										_G.SeaSkill = false;
									end
									TP2(v2977);
									Skillaimbot = true;
									AimSkill = v2901.Engine.CFrame * CFrame.new(0, -15, 0) ;
									AimBotSkillPosition = AimSkill.Position;
								until  not v2901.Parent or (v2901.Health.Value < 0) or  not game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") or  not v2901:FindFirstChild("Engine") or  not _G.RelzPirateBrigade
								Skillaimbot = false;
								_G.SeaSkill = false;
							end
						end
					elseif (CheckSeaBeast() and _G.SeaBest) then
						if game:GetService("Workspace"):FindFirstChild("SeaBeasts") then
							for v3012, v3013 in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
								if CheckSeaBeast() then
									repeat
										wait();
										CFrameSeaBeast = v3013.HumanoidRootPart.CFrame * CFrame.new(0, 200, 0) ;
										if ((CFrameSeaBeast.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 200) then
											_G.SeaSkill = true;
										else
											_G.SeaSkill = false;
										end
										Skillaimbot = true;
										AimBotSkillPosition = v3013.HumanoidRootPart.CFrame.Position;
										TP2(CFrameSeaBeast * Pos );
									until  not _G.SeaBest or (CheckSeaBeast() == false) or  not v3013:FindFirstChild("Humanoid") or  not v3013:FindFirstChild("HumanoidRootPart") or (v3013.Humanoid.Health < 0) or  not v3013.Parent
									Skillaimbot = false;
									_G.SeaSkill = false;
								else
									Skillaimbot = false;
									_G.SeaSkill = false;
								end
							end
						end
					elseif (game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") and _G.Terrorshark) then
						for v3014, v3015 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") then
								if (v3015.Name == "Terrorshark") then
									if (v3015:FindFirstChild("Humanoid") and v3015:FindFirstChild("HumanoidRootPart") and (v3015.Humanoid.Health > 0)) then
										repeat
											task.wait(0.15);
											AutoHaki();
											EquipWeapon(_G.SelectWeapon);
											NeedAttacking = true;
											_G.SeaSkill = false;
											TP2(v3015.HumanoidRootPart.CFrame * CFrame.new(0, 60, 0) );
										until  not _G.Terrorshark or  not v3015.Parent or (v3015.Humanoid.Health <= 0)
									end
								end
							end
						end
					elseif (CheckPiranha() and _G.farmpiranya) then
						for v3044, v3045 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if game:GetService("Workspace").Enemies:FindFirstChild("Piranha") then
								if (v3045.Name == "Piranha") then
									if (v3045:FindFirstChild("Humanoid") and v3045:FindFirstChild("HumanoidRootPart") and (v3045.Humanoid.Health > 0)) then
										repeat
											task.wait();
											AutoHaki();
											EquipWeapon(_G.SelectWeapon);
											TP2(v3045.HumanoidRootPart.CFrame * Pos );
											NeedAttacking = true;
											_G.SeaSkill = false;
										until  not _G.farmpiranya or  not v3045.Parent or (v3045.Humanoid.Health <= 0)
									end
								end
							end
						end
					elseif (CheckShark() and FarmShark) then
						for v3058, v3059 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if game:GetService("Workspace").Enemies:FindFirstChild("Shark") then
								if (v3059.Name == "Shark") then
									if (v3059:FindFirstChild("Humanoid") and v3059:FindFirstChild("HumanoidRootPart") and (v3059.Humanoid.Health > 0)) then
										repeat
											task.wait();
											AutoHaki();
											EquipWeapon(_G.SelectWeapon);
											TP2(v3059.HumanoidRootPart.CFrame * Pos );
											NeedAttacking = true;
											_G.SeaSkill = false;
										until  not FarmShark or  not v3059.Parent or (v3059.Humanoid.Health <= 0)
									end
								end
							end
						end
					else
						Skillaimbot = false;
						_G.SeaSkill = false;
						UnEquipWeapon(_G.SelectWeapon);
					end
				end
			end);
		end
	end);
	v72:Toggle("Auto Kill Shark", FarmShark, function(v1505)
		FarmShark = v1505;
		StopTween(FarmShark);
	end);
	v72:Toggle("Auto Kill Piranha", _G.farmpiranya, function(v1506)
		_G.farmpiranya = v1506;
		StopTween(_G.farmpiranya);
	end);
	v72:Toggle("Auto Fish Crew", _G.Fish_Crew_Member, function(v1507)
		_G.Fish_Crew_Member = v1507;
		StopTween(_G.Fish_Crew_Member);
	end);
	function UpDownPos(v1508)
		fastpos(v1508 * CFrame.new(0, 40, 0) );
		wait(2);
		fastpos(v1508 * CFrame.new(0, 300, 0) );
		wait(3);
	end
	v72:Toggle("Auto Kill Ghost Ship", _G.bjirFishBoat, function(v1509)
		_G.bjirFishBoat = v1509;
		StopTween(_G.bjirFishBoat);
		if  not _G.bjirFishBoat then
			_G.SeaSkill = false;
			Skillaimbot = false;
			StopTween(_G.bjirFishBoat);
		end
	end);
	v72:Toggle("Auto Kill Pirate Grand Brigade", _G.KillGhostShip, function(v1510)
		_G.KillGhostShip = v1510;
		StopTween(_G.KillGhostShip);
	end);
	v72:Toggle("Auto Kill Terror Shark", _G.Terrorshark, function(v1511)
		_G.Terrorshark = v1511;
		StopTween(_G.Terrorshark);
	end);
	v72:Toggle("Auto Kill Sea Beast", _G.SeaBest, function(v1512)
		_G.SeaBest = v1512;
		StopTween(_G.SeaBest);
		if  not _G.SeaBest then
			_G.SeaSkill = false;
			Skillaimbot = false;
		end
	end);
	function CheckSeaBeast()
		if game:GetService("Workspace"):FindFirstChild("SeaBeasts") then
			for v1831, v1832 in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
				if (v1832:FindFirstChild("Humanoid") or v1832:FindFirstChild("HumanoidRootPart") or (v1832.Humanoid.Health < 0)) then
					return true;
				end
			end
		end
		return false;
	end
	v72:Seperator("Setting Sea Event");
	local v820 = {
		"100",
		"150",
		"200",
		"250",
		"300",
		"325",
		"350"
	};
	v72:Dropdown("Select Brightness", v820, function(v1513)
		BrightValue = v1513;
	end);
	v72:Button("Set Brightness", function()
		game:GetService("Lighting").Brightness = BrightValue;
	end);
	v72:Toggle("Enable Speed Boat", _G.IncreaseBoatSpeed, function(v1515)
		_G.IncreaseBoatSpeed = v1515;
	end);
	spawn(function()
		while wait() do
			pcall(function()
				local v1760 = {};
				for v1833, v1834 in pairs(game.Workspace.Boats:GetDescendants()) do
					if v1834:IsA("VehicleSeat") then
						table.insert(v1760, v1834);
					end
				end
				if _G.IncreaseBoatSpeed then
					for v2109, v2110 in pairs(v1760) do
						v2110.MaxSpeed = 350;
					end
				else
					for v2112, v2113 in pairs(v1760) do
						v2113.MaxSpeed = 150;
					end
				end
			end);
		end
	end);
	v72:Toggle("Enable Fly Boat", false, function(v1516)
		if v1516 then
			_G.NoClipRock = true;
			v35(speaker, true);
		else
			_G.NoClipRock = false;
			v34(speaker);
		end
	end);
	v72:Toggle("NoClip Rock", _G.NoClipRock, function(v1517)
		_G.NoClipRock = v1517;
	end);
	spawn(function()
		while wait() do
			pcall(function()
				for v1835, v1836 in pairs(game:GetService("Workspace").Boats:GetChildren()) do
					for v1897, v1898 in pairs(game:GetService("Workspace").Boats[v1836.Name]:GetDescendants()) do
						if v1898:IsA("BasePart") then
							if (_G.NoClipRock or _G.SailBoat) then
								v1898.CanCollide = false;
							else
								v1898.CanCollide = true;
							end
						end
					end
				end
			end);
		end
	end);
	v72:Toggle("Press W Auto", _G.r71PressW, function(v1518)
		_G.r71PressW = v1518;
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if _G.r71PressW then
					if (game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true) then
						game:GetService("VirtualInputManager"):SendKeyEvent(true, "W", false, game);
					end
				end
			end);
		end
	end);
	DoneSkillGun = false;
	DoneSkillSword = false;
	DoneSkillFruit = false;
	DoneSkillMelee = false;
	spawn(function()
		while wait() do
			pcall(function()
				if _G.SeaSkill then
					if (_G.UseSeaFruitSkill and (DoneSkillFruit == false)) then
						for v2511, v2512 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
							if v2512:IsA("Tool") then
								if (v2512.ToolTip == "Blox Fruit") then
									game.Players.LocalPlayer.Character.Humanoid:EquipTool(v2512);
								end
							end
						end
						if _G.SkillFruitZ then
							game:service("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
							wait(_G.SeaHoldSKillZ);
							game:service("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
						end
						if _G.SkillFruitX then
							game:service("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
							wait(_G.SeaHoldSKillX);
							game:service("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
						end
						if _G.SkillFruitC then
							game:service("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
							wait(_G.SeaHoldSKillC);
							game:service("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
						end
						if _G.SkillFruitV then
							game:service("VirtualInputManager"):SendKeyEvent(true, "V", false, game);
							wait(_G.SeaHoldSKillV);
							game:service("VirtualInputManager"):SendKeyEvent(false, "V", false, game);
						end
						if _G.SkillFruitF then
							game:service("VirtualInputManager"):SendKeyEvent(true, "F", false, game);
							wait(_G.SeaHoldSKillF);
							game:service("VirtualInputManager"):SendKeyEvent(false, "F", false, game);
						end
						DoneSkillFruit = true;
					end
					if (_G.UseSeaMeleeSkill and (DoneSkillMelee == false)) then
						for v2513, v2514 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
							if v2514:IsA("Tool") then
								if (v2514.ToolTip == "Melee") then
									game.Players.LocalPlayer.Character.Humanoid:EquipTool(v2514);
								end
							end
						end
						if _G.SkillMeleeZ then
							game:service("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
							wait(0);
							game:service("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
						end
						if _G.SkillMeleeX then
							game:service("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
							wait(0);
							game:service("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
						end
						if _G.SkillMeleeC then
							game:service("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
							wait(0);
							game:service("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
						end
						if _G.SkillMeleeV then
							game:service("VirtualInputManager"):SendKeyEvent(true, "V", false, game);
							wait(0);
							game:service("VirtualInputManager"):SendKeyEvent(false, "V", false, game);
						end
						DoneSkillMelee = true;
					end
					if (_G.UseSeaSwordSkill and (DoneSkillSword == false)) then
						for v2515, v2516 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
							if v2516:IsA("Tool") then
								if (v2516.ToolTip == "Sword") then
									game.Players.LocalPlayer.Character.Humanoid:EquipTool(v2516);
								end
							end
						end
						if _G.SkillSwordZ then
							game:service("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
							wait(0);
							game:service("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
						end
						if _G.SkillSwordX then
							game:service("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
							wait(0);
							game:service("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
						end
						DoneSkillSword = true;
					end
					if (_G.UseSeaGunSkill and (DoneSkillGun == false)) then
						for v2517, v2518 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
							if v2518:IsA("Tool") then
								if (v2518.ToolTip == "Gun") then
									game.Players.LocalPlayer.Character.Humanoid:EquipTool(v2518);
								end
							end
						end
						if _G.SkillGunZ then
							game:service("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
							wait(0.1);
							game:service("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
						end
						if _G.SkillGunX then
							game:service("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
							wait(0.1);
							game:service("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
						end
						DoneSkillGun = true;
					end
					DoneSkillGun = false;
					DoneSkillSword = false;
					DoneSkillFruit = false;
					DoneSkillMelee = false;
				end
			end);
		end
	end);
	v72:Seperator("Kitsune Event");
	v72:Toggle("Auto Kitsunen Island", _G.FKitsune, function(v1519)
		_G.FKitsune = v1519;
		StopTween(_G.FKitsune);
	end);
	spawn(function()
		while wait() do
			if _G.FrozenDimension then
				pcall(function()
					if game.Workspace._WorldOrigin.Locations:FindFirstChild("Frozen Dimension") then
						topos(game.Workspace._WorldOrigin.Locations:FindFirstChild("Frozen Dimension").HumanoidRootPart.CFrame * CFrame.new(0, 500, -100) );
					end
				end);
			end
		end
	end);
	spawn(function()
		while wait() do
			if _G.FKitsune then
				pcall(function()
					if game.Workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island") then
						topos(game.Workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island").HumanoidRootPart.CFrame * CFrame.new(0, 100, 0) );
					end
				end);
			end
		end
	end);
	v72:Toggle("Teleporter Kitsune", false, function(v1520)
		_G.tpkit = v1520;
		StopTween(_G.tpkit);
	end);
	spawn(function()
		local v1521;
		while  not v1521 do
			v1521 = game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland");
			wait(1);
		end
		while wait() do
			if _G.tpkit then
				local v1837 = v1521:FindFirstChild("ShrineActive");
				if v1837 then
					for v2322, v2323 in pairs(v1837:GetDescendants()) do
						if (v2323:IsA("BasePart") and v2323.Name:find("NeonShrinePart")) then
							topos(v2323.CFrame);
						end
					end
				end
			end
		end
	end);
	local v821 = false;
	v72:Toggle("Auto Collect Azure Ember", false, function(v1522)
		_G.CltAze = v1522;
		StopTween(_G.CltAze);
		if _G.CltAze then
			spawn(function()
				while _G.CltAze do
					wait();
					local v1899 = game:GetService("Workspace").EmberTemplate;
					local v1900 = game.Players.LocalPlayer;
					local v1901 = v1900.Character and v1900.Character:FindFirstChild("HumanoidRootPart") ;
					if v1901 then
						local v2324 = false;
						while  not v2324 and v1901:IsDescendantOf(workspace)  do
							for v2581, v2582 in pairs(v1899:GetDescendants()) do
								if (v2582:IsA("BasePart") and (v2582.Name == "Part")) then
									v2324 = true;
									v1901.CFrame = v2582.CFrame;
									break;
								end
							end
							wait(0.1);
						end
					end
				end
			end);
		end
	end);
	v72:Button("Trade Azure Ember", function()
		game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RF/KitsuneStatuePray"):InvokeServer();
	end);
	v72:Seperator("Leviathan");
	_G.SelectedBoatLevi = "PirateGrandBrigade";
	v72:Dropdown("Select Boat Find Leviathan", v817, function(v1523)
		_G.SelectedBoatLevi = v1523;
	end);
	getgenv().SpeedBoat = "300";
	v72:Dropdown("Speed Boat Find Leviathan", {
		"180",
		"200",
		"250",
		"300",
		"325",
		"350"
	}, function(v1524)
		getgenv().SpeedBoat = v1524;
	end);
	v72:Toggle("Auto Find Leviathan (Need 5 People)", _G.AutoLeviathan, function(v1526)
		_G.AutoLeviathan = v1526;
		StopTween(_G.AutoLeviathan);
	end);
	spawn(function()
		while wait() do
			if _G.AutoLeviathan then
				pcall(function()
					local v1902 = game.Players.LocalPlayer;
					local v1903 = v1902.Character:WaitForChild("Humanoid");
					local v1904 = v1902.Character:WaitForChild("HumanoidRootPart");
					if  not game:GetService("Workspace").Boats:FindFirstChild(_G.SelectedBoatLevi) then
						topos(CFrame.new( -16927.451171875, 9.0863618850708, 433.8642883300781));
						if ((CFrame.new( -16927.451171875, 9.0863618850708, 433.8642883300781).Position - v1904.Position).Magnitude <= 10) then
							local v2583 = {
								[1] = "BuyBoat",
								[2] = _G.SelectedBoatLevi
							};
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2583));
						end
					else
						local v2325 = game:GetService("Workspace").Boats:FindFirstChild(_G.SelectedBoatLevi);
						if v2325 then
							local v2584 = 0;
							for v2631, v2632 in pairs(v2325:GetDescendants()) do
								if (v2632:IsA("VehicleSeat") or v2632:IsA("Seat")) then
									if v2632.Occupant then
										v2584 = v2584 + 1 ;
									end
								end
							end
							if (v2584 >= 4) then
								if  not v1903.Sit then
									v1904.CFrame = v2325.VehicleSeat.CFrame;
									wait(1);
									v2325.VehicleSeat.BodyPosition.D = 5000;
									v2325.VehicleSeat.BodyPosition.Position = Vector3.new(0, 200, 0);
								else
									TPB(v2325.VehicleSeat.CFrame * CFrame.new( -30, 0, -30) );
									repeat
										wait(0.1);
										v2325.VehicleSeat.BodyPosition.D = 5000;
										v2325.VehicleSeat.BodyPosition.Position = Vector3.new(0, 200, 0);
										TPB(v2325.VehicleSeat.CFrame * CFrame.new( -30, 0, -30) );
										if game:GetService("Workspace").Maps:FindFirstChild("Frozen Island") then
											_G.AutoLeviathan = false;
											break;
										end
									until (v1903.Health <= 0) or  not v2325:FindFirstChild("VehicleSeat")
									v2325.VehicleSeat.BodyPosition.D = 300;
									v2325.VehicleSeat.BodyPosition.Position = Vector3.new(0, 24, 0);
									TPB(v2325.VehicleSeat.CFrame);
								end
							end
						end
					end
				end);
			end
		end
	end);
	spawn(function()
		while wait() do
			if _G.AutoLeviathan then
				pcall(function()
					for v2115, v2116 in pairs(game:GetService("Workspace").Boats:GetChildren()) do
						for v2326, v2327 in pairs(game:GetService("Workspace").Boats[v2116.Name]:GetDescendants()) do
							if v2327:IsA("BasePart") then
								if (_G.NoClipRock or _G.AutoLeviathan) then
									v2327.CanCollide = false;
								else
									v2327.CanCollide = true;
								end
							end
						end
					end
				end);
			end
		end
	end);
	v72:Toggle("Auto Kill / Attack Leviathan", _G.KillLeviathan, function(v1527)
		_G.KillLeviathan = v1527;
		StopTween(_G.KillLeviathan);
	end);
	spawn(function()
		while wait() do
			if _G.KillLeviathan then
				pcall(function()
					for v2117, v2118 in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
						if ((v2118.Name == "Leviathan") and v2118:FindFirstChild("HumanoidRootPart")) then
							repeat
								wait();
								topos(v2118.HumanoidRootPart.CFrame * CFrame.new(0, 500, 0) );
								pcall(function()
									Click();
									AutoHaki();
									_G.SeaSkill = true;
								end);
								_G.SeaSkill = true;
								AimBotSkillPosition = v2118.HumanoidRootPart;
								Skillaimbot = true;
							until  not v2118:FindFirstChild("HumanoidRootPart") or  not _G.KillLeviathan
							_G.SeaSkill = false;
							Skillaimbot = false;
						end
					end
				end);
			end
		end
	end);
	v72:Toggle("Tween Frozen Dimension", _G.FrozenDimension, function(v1528)
		_G.FrozenDimension = v1528;
		StopTween(_G.FrozenDimension);
	end);
	spawn(function()
		while wait() do
			if _G.FrozenDimension then
				pcall(function()
					if game.Workspace._WorldOrigin.Locations:FindFirstChild("Frozen Dimension") then
						topos(workspace._WorldOrigin.Locations:FindFirstChild("Frozen Dimension").CFrame * CFrame.new(0, 250, 0) );
					end
				end);
			end
		end
	end);
	v72:Seperator("Settings Skills Only Sea Event");
	v72:Toggle("Enable Melee Skill", _G.UseSeaMeleeSkill, function(v1529)
		_G.UseSeaMeleeSkill = v1529;
	end);
	v72:Toggle("Enable Fruit Skill", _G.UseSeaFruitSkill, function(v1530)
		_G.UseSeaFruitSkill = v1530;
	end);
	v72:Toggle("Enable Sword Skill", _G.UseSeaSwordSkill, function(v1531)
		_G.UseSeaSwordSkill = v1531;
	end);
	v72:Toggle("Enable Gun Skill", _G.UseSeaGunSkill, function(v1532)
		_G.UseSeaGunSkill = v1532;
	end);
	v72:Seperator("Settings Melee Skill");
	v72:Toggle("Use Skill Z Melee", _G.UseSeaFruitSkill, function(v1533)
		_G.SkillMeleeZ = v1533;
	end);
	v72:Toggle("Use Skill X Melee", _G.UseSeaSwordSkill, function(v1534)
		_G.SkillMeleeX = v1534;
	end);
	v72:Toggle("Use Skill C Melee", _G.UseSeaGunSkill, function(v1535)
		_G.SkillMeleeC = v1535;
	end);
	v72:Seperator("Settings Fruit Skill");
	v72:Toggle("Use Skill Z Fruit", _G.UseSeaFruitSkill, function(v1536)
		_G.SkillFruitZ = v1536;
	end);
	v72:Toggle("Use Skill X Fruit", _G.UseSeaFruitSkill, function(v1537)
		_G.SkillFruitX = v1537;
	end);
	v72:Toggle("Use Skill C Fruit", _G.UseSeaFruitSkill, function(v1538)
		_G.SkillFruitC = v1538;
	end);
	v72:Toggle("Use Skill V Fruit", _G.UseSeaFruitSkill, function(v1539)
		_G.SkillFruitV = v1539;
	end);
	v72:Toggle("Use Skill F Fruit", _G.UseSeaFruitSkill, function(v1540)
		_G.SkillFruitF = v1540;
	end);
	v72:Seperator("Settings Sword and Gun");
	v72:Toggle("Use Skill Z | Sword And Gun", _G.UseSeaFruitSkill, function(v1541)
		_G.SkillGunZ = v1541;
		_G.SkillSwordZ = v1541;
	end);
	v72:Toggle("Use Skill X | Sword And Gun", _G.UseSeaFruitSkill, function(v1542)
		_G.SkillGunX = v1542;
		_G.SkillSwordX = v1542;
	end);
	function EquipAllWeapon()
		pcall(function()
			for v1761, v1762 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if (v1762:IsA("Tool") and  not ((v1762.Name == "Summon Sea Beast") or (v1762.Name == "Water Body") or (v1762.Name == "Awakening"))) then
					local v1905 = game.Players.LocalPlayer.Backpack:FindFirstChild(v1762.Name);
					game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1905);
					wait(1);
				end
			end
		end);
	end
	local v822 = getrawmetatable(game);
	local v823 = v822.__namecall;
	setreadonly(v822, false);
	v822.__namecall = newcclosure(function(...)
		local v1543 = getnamecallmethod();
		local v1544 = {
			...
		};
		if (tostring(v1543) == "FireServer") then
			if (tostring(v1544[1]) == "RemoteEvent") then
				if ((tostring(v1544[2]) ~= "true") and (tostring(v1544[2]) ~= "false")) then
					if Skillaimbot then
						v1544[2] = AimBotSkillPosition;
						return v823(unpack(v1544));
					end
				end
			end
		end
		return v823(...);
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if UseSkill then
					for v2119, v2120 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v2120.Name == MonFarm) and v2120:FindFirstChild("Humanoid") and v2120:FindFirstChild("HumanoidRootPart") and (v2120.Humanoid.Health <= ((v2120.Humanoid.MaxHealth * _G.Kill_At) / 100))) then
							if _G.SkillZ then
								game:service("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
								wait(_G.HoldSKillZ);
								game:service("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
							end
							if _G.SkillX then
								game:service("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
								wait(_G.HoldSKillX);
								game:service("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
							end
							if _G.SkillC then
								game:service("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
								wait(_G.HoldSKillC);
								game:service("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
							end
							if _G.SkillV then
								game:service("VirtualInputManager"):SendKeyEvent(true, "V", false, game);
								wait(_G.HoldSKillV);
								game:service("VirtualInputManager"):SendKeyEvent(false, "V", false, game);
							end
							if _G.SkillF then
								game:service("VirtualInputManager"):SendKeyEvent(true, "F", false, game);
								wait(_G.HoldSKillF);
								game:service("VirtualInputManager"):SendKeyEvent(false, "F", false, game);
							end
						end
					end
				end
			end);
		end
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if UseGunSkill then
					for v2121, v2122 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v2122.Name == MonFarm) and v2122:FindFirstChild("Humanoid") and v2122:FindFirstChild("HumanoidRootPart") and (v2122.Humanoid.Health <= ((v2122.Humanoid.MaxHealth * _G.Kill_At) / 100))) then
							if _G.SkillZ then
								game:service("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
								wait(0.5);
								game:service("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
							end
							if _G.SkillX then
								game:service("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
								wait(0.5);
								game:service("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
							end
						end
					end
				end
			end);
		end
	end);
end
v74:Seperator("ESP MENU");
v74:Toggle("ESP Player", false, function(v435)
	ESPPlayer = v435;
	UpdatePlayerChams();
end);
v74:Toggle("ESP Island Kitsune", false, function(v436)
	IslandESP = v436;
	while IslandESP do
		wait();
		UpdateIslandESPKitsune();
	end
end);
function UpdateIslandESPKitsune()
	for v825, v826 in pairs(game:GetService("Workspace").Map.KitsuneIsland.ShrineActive:GetChildren()) do
		pcall(function()
			if IslandESP then
				if (v826.Name ~= "NeonShrinePart") then
					if  not v826:FindFirstChild("IslandESP") then
						local v2328 = Instance.new("BillboardGui", v826);
						v2328.Name = "IslandESP";
						v2328.ExtentsOffset = Vector3.new(0, 1, 0);
						v2328.Size = UDim2.new(1, 200, 1, 30);
						v2328.Adornee = v826;
						v2328.AlwaysOnTop = true;
						local v2334 = Instance.new("TextLabel", v2328);
						v2334.Font = "Code";
						v2334.FontSize = "Size14";
						v2334.TextWrapped = true;
						v2334.Size = UDim2.new(1, 0, 1, 0);
						v2334.TextYAlignment = "Top";
						v2334.BackgroundTransparency = 1;
						v2334.TextStrokeTransparency = 0.5;
						v2334.TextColor3 = Color3.fromRGB(80, 245, 245);
						v2334.Text = "Kitsune Island";
					else
						v826['IslandESP'].TextLabel.Text = "Kitsune Island";
					end
				end
			elseif v826:FindFirstChild("IslandESP") then
				v826:FindFirstChild("IslandESP"):Destroy();
			end
		end);
	end
end
v74:Toggle("ESP Chest", false, function(v437)
	ChestESP = v437;
	UpdateChestChams();
end);
v74:Toggle("ESP Fruit", false, function(v438)
	DevilFruitESP = v438;
	while DevilFruitESP do
		wait();
		UpdateDevilChams();
	end
end);
v74:Toggle("ESP Real Fruit", RealFruitESP, function(v439)
	RealFruitESP = v439;
	UpdateRealFruitChams();
end);
v74:Toggle("ESP Flower", false, function(v440)
	FlowerESP = v440;
	UpdateFlowerChams();
end);
spawn(function()
	while wait() do
		if FlowerESP then
			UpdateFlowerChams();
		end
		if DevilFruitESP then
			UpdateDevilChams();
		end
		if ChestESP then
			UpdateChestChams();
		end
		if ESPPlayer then
			UpdatePlayerChams();
		end
		if RealFruitESP then
			UpdateRealFruitChams();
		end
	end
end);
v74:Toggle("ESP Island", IslandESP, function(v441)
	IslandESP = v441;
	while IslandESP do
		wait();
		UpdateIslandESP();
	end
end);
v74:Toggle("Esp Mystic Island", false, function(v442)
	MirageIslandESP = v442;
	while MirageIslandESP do
		wait();
		UpdateIslandMirageESP();
	end
end);
v74:Seperator("Troll");
v74:Button("Rain Fruit", function()
	for v827, v828 in pairs(game:GetObjects("rbxassetid://131220073739500")[1]:GetChildren()) do
		v828.Parent = game.Workspace.Map;
		v828:MoveTo(game.Players.LocalPlayer.Character.PrimaryPart.Position + Vector3.new(math.random( -50, 50), 100, math.random( -50, 50)) );
		if v828.Fruit:FindFirstChild("AnimationController") then
			v828.Fruit:FindFirstChild("AnimationController"):LoadAnimation(v828.Fruit:FindFirstChild("Idle")):Play();
		end
		v828.Handle.Touched:Connect(function(v1545)
			if (v1545.Parent == game.Players.LocalPlayer.Character) then
				v828.Parent = game.Players.LocalPlayer.Backpack;
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(v828);
			end
		end);
	end
end);
v74:Button("Instant Level/Beli/EXP", function()
	local v443 = game:GetService("Players").LocalPlayer;
	local v444 = require(game:GetService("ReplicatedStorage").Notification);
	local v445 = v443:WaitForChild("Data");
	local v446 = require(game.ReplicatedStorage:WaitForChild("EXPFunction"));
	local v447 = require(game:GetService("ReplicatedStorage").Effect.Container.LevelUp);
	local v448 = require(game:GetService("ReplicatedStorage").Util.Sound);
	local v449 = game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp_Proxy") or game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp") ;
	function v129(v831)
		local v832 = v831;
		while true do
			local v1546, v1547 = string.gsub(v832, "^(-?%d+)(%d%d%d)", "%1,%2");
			v832 = v1546;
			if (v1547 == 0) then
				break;
			end
		end
		return v832;
	end
	v444.new("<Color=Yellow>QUEST COMPLETED!<Color=/>"):Display();
	v444.new("Earned <Color=Yellow>9,999,999,999,999 Exp.<Color=/> (+ None)"):Display();
	v444.new("Earned <Color=Green>$9,999,999,999,999<Color=/>"):Display();
	v443.Data.Exp.Value = 999999999999;
	v443.Data.Beli.Value = v443.Data.Beli.Value + 999999999999 ;
	delay = 0;
	count = 0;
	while (v443.Data.Exp.Value - v446(v445.Level.Value)) > 0  do
		v443.Data.Exp.Value = v443.Data.Exp.Value - v446(v445.Level.Value) ;
		v443.Data.Level.Value = v443.Data.Level.Value + 1 ;
		v443.Data.Points.Value = v443.Data.Points.Value + 3 ;
		v447({
			v443
		});
		v448.Play(v448, v449.Value);
		v444.new("<Color=Green>LEVEL UP!<Color=/> ("   .. v443.Data.Level.Value   .. ")" ):Display();
		count = count + 1 ;
		if (count >= 5) then
			delay = tick();
			count = 0;
			wait(2);
		end
	end
end);
v74:Textbox("Fake Level", true, function(v452)
	game:GetService("Players").LocalPlayer.Data.Level.Value = v452;
end);
v74:Textbox("Fake Exp", true, function(v454)
	game:GetService("Players").LocalPlayer.Data.Exp.Value = v454;
end);
v74:Textbox("Fake Money", true, function(v456)
	game:GetService("Players").LocalPlayer.Data.Beli.Value = v456;
end);
v74:Textbox("Fake Fragment", true, function(v458)
	game:GetService("Players").LocalPlayer.Data.Fragments.Value = v458;
end);
v74:Textbox("Fake Points", true, function(v460)
	game:GetService("Players").LocalPlayer.Data.Points.Value = v460;
end);
v74:Textbox("Fake Bounty", true, function(v462)
	game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value = v462;
end);
v74:Seperator("Highlight");
v74:Toggle("Show Chat disabled", _G.chat, function(v464)
	_G.chat = v464;
	local v465 = game:GetService("StarterGui");
	if _G.chat then
		v465:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false);
	else
		v465:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true);
	end
end);
v74:Toggle("Show leaderboard disabled", _G.leaderboard, function(v466)
	_G.leaderboard = v466;
	local v467 = game:GetService("StarterGui");
	if _G.leaderboard then
		v467:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false);
	else
		v467:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true);
	end
end);
v74:Seperator("Hack");
v74:Button("Unlock Buso", function()
	local v468 = "Buso";
	if (type(v468) == "string") then
		game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v468);
	elseif (type(v468) == "table") then
		for v1838, v1839 in next, v468 do
			game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v1839);
		end
	end
end);
v74:Button("Unlock Soru", function()
	local v469 = "Soru";
	if (type(v469) == "string") then
		game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v469);
	elseif (type(v469) == "table") then
		for v1840, v1841 in next, v469 do
			game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v1841);
		end
	end
end);
v74:Button("Unlock Geppo", function()
	local v470 = "Geppo";
	if (type(v470) == "string") then
		game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v470);
	elseif (type(v470) == "table") then
		for v1842, v1843 in next, v470 do
			game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v1843);
		end
	end
end);
v74:Button("Max Zoom", function()
	while wait() do
		game.Players.LocalPlayer.CameraMaxZoomDistance = 9223372036854718;
	end
end);
v74:Button("Kaitun Cap", function(v471)
	local v472 = require(game:GetService("Players").LocalPlayer.PlayerGui.Main.UIController.Inventory);
	local v473 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory");
	local v474 = {};
	local v475 = {
		"Mythical",
		"Legendary",
		"Rare",
		"Uncommon",
		"Common"
	};
	local v476 = {
		Common = Color3.fromRGB(179, 179, 179),
		Uncommon = Color3.fromRGB(92, 140, 211),
		Rare = Color3.fromRGB(140, 82, 255),
		Legendary = Color3.fromRGB(213, 43, 228),
		Mythical = Color3.fromRGB(238, 47, 50)
	};
	function GetRaity(v837)
		for v1548, v1549 in pairs(v476) do
			if (v1549 == v837) then
				return v1548;
			end
		end
	end
	for v838, v839 in pairs(v473) do
		v474[v839.Name] = v839;
	end
	local v477 = #getupvalue(v472.UpdateRender, 4);
	local v478 = {};
	local v479 = {};
	local v480 = 0;
	while v480 < v477  do
		local v841 = 0;
		while (v841 < 25000) and (v480 < v477)  do
			game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.CanvasPosition = Vector2.new(0, v841);
			for v1661, v1662 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.Frame:GetChildren()) do
				if (v1662:IsA("Frame") and  not v478[v1662.ItemName.Text] and (v1662.ItemName.Visible == true)) then
					local v1844 = GetRaity(v1662.Background.BackgroundColor3);
					if v1844 then
						print("Rac");
						if  not v479[v1844] then
							v479[v1844] = {};
						end
						table.insert(v479[v1844], v1662:Clone());
					end
					v480 = v480 + 1 ;
					v478[v1662.ItemName.Text] = true;
				end
			end
			v841 = v841 + 20 ;
		end
		wait();
	end
	function GetXY(v842)
		return v842 * 100 ;
	end
	local v481 = Instance.new("UIListLayout");
	v481.FillDirection = Enum.FillDirection.Vertical;
	v481.SortOrder = 2;
	v481.Padding = UDim.new(0, 10);
	local v486 = Instance.new("Frame", game.Players.LocalPlayer.PlayerGui.BubbleChat);
	v486.BackgroundTransparency = 1;
	v486.Size = UDim2.new(0.5, 0, 1, 0);
	v481.Parent = v486;
	local v490 = Instance.new("Frame", game.Players.LocalPlayer.PlayerGui.BubbleChat);
	v490.BackgroundTransparency = 1;
	v490.Size = UDim2.new(0.5, 0, 1, 0);
	v490.Position = UDim2.new(0.6, 0, 0, 0);
	v481:Clone().Parent = v490;
	for v843, v844 in pairs(v479) do
		local v845 = Instance.new("Frame", v486);
		v845.BackgroundTransparency = 1;
		v845.Size = UDim2.new(1, 0, 0, 0);
		v845.LayoutOrder = table.find(v475, v843);
		local v849 = Instance.new("Frame", v490);
		v849.BackgroundTransparency = 1;
		v849.Size = UDim2.new(1, 0, 0, 0);
		v849.LayoutOrder = table.find(v475, v843);
		local v853 = Instance.new("UIGridLayout", v845);
		v853.CellPadding = UDim2.new(0.005, 0, 0.005, 0);
		v853.CellSize = UDim2.new(0, 70, 0, 70);
		v853.FillDirectionMaxCells = 100;
		v853.FillDirection = Enum.FillDirection.Horizontal;
		local v859 = v853:Clone();
		v859.Parent = v849;
		for v1551, v1552 in pairs(v844) do
			if (v474[v1552.ItemName.Text] and v474[v1552.ItemName.Text].Mastery) then
				if (v1552.ItemLine2.Text ~= "Accessory") then
					local v1906 = v1552.ItemName:Clone();
					v1906.BackgroundTransparency = 1;
					v1906.TextSize = 10;
					v1906.TextXAlignment = 2;
					v1906.TextYAlignment = 2;
					v1906.ZIndex = 5;
					v1906.Text = v474[v1552.ItemName.Text].Mastery;
					v1906.Size = UDim2.new(0.5, 0, 0.5, 0);
					v1906.Position = UDim2.new(0.5, 0, 0.5, 0);
					v1906.Parent = v1552;
				end
				v1552.Parent = v845;
			elseif (v1552.ItemLine2.Text == "Blox Fruit") then
				v1552.Parent = v849;
			end
		end
		v845.AutomaticSize = 2;
		v849.AutomaticSize = 2;
	end
	local v495 = {
		Superhuman = Vector2.new(3, 2),
		GodHuman = Vector2.new(3, 2),
		DeathStep = Vector2.new(4, 3),
		ElectricClaw = Vector2.new(2, 0),
		SharkmanKarate = Vector2.new(0, 0),
		DragonTalon = Vector2.new(1, 5)
	};
	local v496 = Instance.new("Frame", v486);
	v496.BackgroundTransparency = 1;
	v496.Size = UDim2.new(1, 0, 0, 0);
	v496.LayoutOrder = table.find(v475, k);
	v496.AutomaticSize = 2;
	v496.LayoutOrder = 100;
	local v481 = Instance.new("UIGridLayout", v496);
	v481.CellPadding = UDim2.new(0.005, 0, 0.005, 0);
	v481.CellSize = UDim2.new(0, 70, 0, 70);
	v481.FillDirectionMaxCells = 100;
	v481.FillDirection = Enum.FillDirection.Horizontal;
	local v472 = {
		"Superhuman",
		"ElectricClaw",
		"DragonTalon",
		"SharkmanKarate",
		"DeathStep",
		"GodHuman"
	};
	for v863, v864 in pairs(v472) do
		if (v495[v864] and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy"   .. v864 , true) == 1)) then
			local v1663 = Instance.new("ImageLabel", v496);
			v1663.Image = "rbxassetid://
131220073739500";
			v1663.ImageRectSize = Vector2.new(100, 100);
			v1663.ImageRectOffset = v495[v864] * 100 ;
		end
	end
	function formatNumber(v865)
		return tostring(v865):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "");
	end
	game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.Position = UDim2.new(0, 800, 0, 500);
	game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Position = UDim2.new(0, 800, 0, 550);
	local v507 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone();
	v507.Parent = game:GetService("Players").LocalPlayer.PlayerGui.BubbleChat;
	v507.Position = UDim2.new(0, 800, 0.63, 0);
	local v511 = formatNumber(game.Players.LocalPlayer.Data.Fragments.Value);
	v507.Text = "Ã†â€™"   .. v511 ;
	print("Done");
	pcall(function()
		game:GetService("Players").LocalPlayer.PlayerGui.Main.MenuButton:Destroy();
	end);
	pcall(function()
		game:GetService("Players").LocalPlayer.PlayerGui.Main.HP:Destroy();
	end);
	pcall(function()
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Energy:Destroy();
	end);
	for v866, v867 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main:GetChildren()) do
		if v867:IsA("ImageButton") then
			v867:Destroy();
		end
	end
	pcall(function()
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Compass:Destroy();
	end);
end);
v74:Seperator("Graphic");
v74:Button("Remove Fog ( Sea 3 )", function(v513)
	game:GetService("Lighting").LightingLayers:Destroy();
	game:GetService("Lighting").Sky:Destroy();
end);
v74:Toggle("Remove Fog", RemoveFog, function(v514)
	RemoveFog = v514;
	if  not RemoveFog then
		return;
	end
	while RemoveFog do
		wait();
		game.Lighting.FogEnd = 8999999488;
		if  not RemoveFog then
			game.Lighting.FogEnd = 2500;
		end
	end
end);
v74:Toggle("Remove Damage", true, function()
	for v869, v870 in pairs(game.Workspace:GetDescendants()) do
		if (v870.Name == "DamageCounter") then
			v870:Destroy();
		end
	end
	for v871, v872 in pairs(game.ReplicatedStorage:GetDescendants()) do
		if (v872.Name == "DamageCounter") then
			v872:Destroy();
		end
	end
end);
v74:Button("Unlock FPS", function()
	setfpscap(9999999);
end);
v74:Seperator("Abilities");
v74:Toggle("Dodge No Cooldown", false, function(v515)
	nododgecool = v515;
	NoDodgeCool();
end);
v74:Toggle("Infinite Energy", false, function(v516)
	InfiniteEnergy = v516;
	v28 = v27.Character.Energy.Value;
end);
v74:Toggle("Infinite Ability", false, function(v518)
	InfAbility = v518;
	if (value == false) then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy();
	end
end);
spawn(function()
	while wait() do
		if InfAbility then
			InfAb();
		end
	end
end);
v74:Toggle("Infinite Obversation Range", getgenv().InfiniteObRange, function(v519)
	getgenv().InfiniteObRange = v519;
	local v521 = game:GetService("Players").LocalPlayer.VisionRadius.Value;
	while getgenv().InfiniteObRange do
		wait();
		local v873 = game:GetService("Players").LocalPlayer;
		local v874 = v873.Character;
		local v875 = v873.VisionRadius;
		if v873 then
			if (v874.Humanoid.Health <= 0) then
				wait(5);
			end
			v875.Value = math.huge;
		elseif ((getgenv().InfiniteObRange == false) and v873) then
			v875.Value = v521;
		end
	end
end);
v74:Toggle("Infinite Geppo", getgenv().InfGeppo, function(v522)
	getgenv().InfGeppo = v522;
end);
spawn(function()
	while wait() do
		pcall(function()
			if getgenv().InfGeppo then
				for v1847, v1848 in next, getgc() do
					if game:GetService("Players").LocalPlayer.Character.Geppo then
						if ((typeof(v1848) == "function") and (getfenv(v1848).script == game:GetService("Players").LocalPlayer.Character.Geppo)) then
							for v2587, v2588 in next, getupvalues(v1848) do
								if (tostring(v2587) == "9") then
									repeat
										wait(0.1);
										setupvalue(v1848, v2587, 0);
									until  not getgenv().InfGeppo or (game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0)
								end
							end
						end
					end
				end
			end
		end);
	end
end);
v74:Toggle("Infinite Soru", _G.Infsoru, function(v524)
	_G.Infsoru = v524;
end);
spawn(function()
	while wait() do
		pcall(function()
			if (_G.Infsoru and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil)) then
				for v1849, v1850 in next, getgc() do
					if game:GetService("Players").LocalPlayer.Character.Soru then
						if ((typeof(v1850) == "function") and (getfenv(v1850).script == game:GetService("Players").LocalPlayer.Character.Soru)) then
							for v2589, v2590 in next, getupvalues(v1850) do
								if (typeof(v2590) == "table") then
									repeat
										wait(0.1);
										v2590.LastUse = 0;
									until  not _G.Infsoru or (game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0)
								end
							end
						end
					end
				end
			end
		end);
	end
end);
v74:Button("Remove Lava", function()
	for v876, v877 in pairs(game.Workspace:GetDescendants()) do
		if (v877.Name == "Lava") then
			v877:Destroy();
		end
	end
	for v878, v879 in pairs(game.ReplicatedStorage:GetDescendants()) do
		if (v879.Name == "Lava") then
			v879:Destroy();
		end
	end
end);
local v105 = v73:Label("Players");
spawn(function()
	while wait() do
		pcall(function()
			for v1670, v1671 in pairs(game:GetService("Players"):GetPlayers()) do
				if (v1670 == 12) then
					v105:Set("Players:"   .. " "   .. v1670   .. " "   .. "/"   .. " "   .. "12"   .. " "   .. "(Max)" );
				elseif (v1670 == 1) then
					v105:Set("Player:"   .. " "   .. v1670   .. " "   .. "/"   .. " "   .. "12" );
				else
					v105:Set("Players:"   .. " "   .. v1670   .. " "   .. "/"   .. " "   .. "12" );
				end
			end
		end);
	end
end);
Playerslist = {};
for v525, v526 in pairs(game:GetService("Players"):GetChildren()) do
	table.insert(Playerslist, v526.Name);
end
local v106 = v73:Dropdown("Select Player", Playerslist, function(v527)
	_G.SelectPly = v527;
end);
v73:Button("Refresh Player", function()
	Playerslist = {};
	v106:Clear();
	for v880, v881 in pairs(game:GetService("Players"):GetChildren()) do
		v106:Add(v881.Name);
	end
end);
v73:Toggle("Spectate Player", false, function(v528)
	SpectatePlys = v528;
	local v529 = game:GetService("Players").LocalPlayer.Character.Humanoid;
	local v530 = game:GetService("Players"):FindFirstChild(_G.SelectPly);
	repeat
		wait(0.1);
		game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(_G.SelectPly).Character.Humanoid;
	until SpectatePlys == false
	game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid;
end);
v73:Toggle("Teleport", false, function(v533)
	_G.TeleportPly = v533;
	pcall(function()
		if _G.TeleportPly then
			repeat
				topos(game:GetService("Players")[_G.SelectPly].Character.HumanoidRootPart.CFrame);
				wait();
			until _G.TeleportPly == false
		end
		StopTween(_G.TeleportPly);
	end);
end);
v73:Seperator("Quest Player");
v73:Button("Get Quest Elite Players", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter");
end);
v73:Toggle("Auto Kill Player Quest", _G.PlayerHunter, function(v534)
	_G.PlayerHunter = v534;
	StopTween(_G.PlayerHunter);
end);
spawn(function()
	game:GetService("RunService").Heartbeat:connect(function()
		pcall(function()
			if _G.PlayerHunter then
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
					game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11);
				end
			end
		end);
	end);
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.PlayerHunter then
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp");
				end
			end
		end
	end);
end);
spawn(function()
	while wait() do
		if _G.PlayerHunter then
			if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
				wait(0.5);
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter");
			else
				for v1918, v1919 in pairs(game:GetService("Workspace").Characters:GetChildren()) do
					if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, v1919.Name) then
						repeat
							wait();
							if  not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								local v2633 = {
									[1] = "Buso"
								};
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2633));
							end
							EquipWeapon(_G.SelectWeapon);
							Useskill = true;
							topos(v1919.HumanoidRootPart.CFrame * CFrame.new(1, 7, 3) );
							v1919.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							game:GetService("VirtualUser"):CaptureController();
							game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
						until (_G.PlayerHunter == false) or (v1919.Humanoid.Health <= 0)
						Useskill = false;
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
					end
				end
			end
		end
	end
end);
spawn(function()
	while wait() do
		pcall(function()
			if Useskill then
				game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(true, "V", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(false, "V", false, game);
			end
		end);
	end
end);
v73:Seperator("PvP");
v73:Toggle("Aimbot Nearest", false, function(v535)
	_G.AimNearest = v535;
end);
local v107 = game:GetService("Players");
local v27 = v107.LocalPlayer;
local v108 = game:GetService("RunService");
local function v109()
	local v536 = nil;
	local v537 = math.huge;
	for v884, v885 in pairs(v107:GetPlayers()) do
		if ((v885 ~= v27) and v885.Character and v885.Character:FindFirstChild("HumanoidRootPart")) then
			if ((v885.Team ~= v27.Team) and (v885.Team.Name ~= "Marines")) then
				local v1851 = v885.Character.HumanoidRootPart.Position;
				local v1852 = (v27.Character.HumanoidRootPart.Position - v1851).Magnitude;
				if (v1852 < v537) then
					v536 = v885;
					v537 = v1852;
				end
			end
		end
	end
	return v536;
end
v108.RenderStepped:Connect(function()
	if _G.AimNearest then
		local v1553 = v109();
		if v1553 then
			_G.Aim_Players = v1553;
		end
	end
end);
local v110 = getrawmetatable(game);
local v111 = v110.__namecall;
setreadonly(v110, false);
v110.__namecall = newcclosure(function(...)
	local v538 = getnamecallmethod();
	local v539 = {
		...
	};
	if (tostring(v538) == "FireServer") then
		if (tostring(v539[1]) == "RemoteEvent") then
			if ((tostring(v539[2]) ~= "true") and (tostring(v539[2]) ~= "false")) then
				if (_G.AimNearest and _G.Aim_Players) then
					v539[2] = _G.Aim_Players.Character.HumanoidRootPart.Position;
					return v111(unpack(v539));
				end
			end
		end
	end
	return v111(...);
end);
setreadonly(v110, true);
v73:Toggle("Enabled PvP", false, function(v540)
	_G.EnabledPvP = v540;
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.EnabledPvP then
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp");
				end
			end
		end
	end);
end);
v73:Button("Set Position Spawn", function()
	_G.Pos_Spawn = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
	Com();
end);
v73:Toggle("Safe Mode", false, function(v542)
	_G.Safe_Mode = v542;
	StopTween(_G.Safe_Mode);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Safe_Mode then
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame;
			end
		end
	end);
end);
v73:Button("Respawn", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates");
	wait();
end);
v73:Seperator("Other Players");
v73:Toggle("Auto Active V3", _G.ActiveV3, function(v543)
	_G.ActiveV3 = v543;
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.ActiveV3 then
				game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility");
			end
		end
	end);
end);
v73:Toggle("Auto Active V4", _G.ActiveV4, function(v544)
	_G.ActiveV4 = v544;
end);
spawn(function()
	while task.wait() do
		if _G.ActiveV4 then
			pcall(function()
				if (game.Players.LocalPlayer.Character:FindFirstChild("RaceEnergy") and (game.Players.LocalPlayer.Character.RaceEnergy.Value >= 1) and game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") and  not game.Players.LocalPlayer.Character.RaceTransformed.Value) then
					local v1920 = {
						[1] = true
					};
					game:GetService("Players").LocalPlayer.Backpack.Awakening.RemoteFunction:InvokeServer(unpack(v1920));
				end
			end);
		end
	end
end);
v73:Toggle("Enable Fly", false, function(v545)
	if v545 then
		_G.NoClip = true;
		v35(speaker, true);
	else
		_G.NoClip = false;
		v34(speaker);
	end
end);
v73:Toggle("Walk on Water", true, function(v546)
	_G.WalkWater = v546;
end);
spawn(function()
	while task.wait() do
		pcall(function()
			if _G.WalkWater then
				game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 112, 1000);
			else
				game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 80, 1000);
			end
		end);
	end
end);
v73:Toggle("NoClip", _G.NoClip, function(v547)
	_G.NoClip = v547;
end);
spawn(function()
	while wait() do
		if sethiddenproperty then
			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", 100);
		end
		if setscriptable then
			setscriptable(game.Players.LocalPlayer, "SimulationRadius", true);
			game.Players.LocalPlayer.SimulationRadius = math.huge * math.huge , (((((((((math.huge * math.huge * 0) / 0) * 0) / 0) * 0) / 0) * 0) / 0) * 0) / 0 ;
		end
	end
end);
v73:Seperator("Stats");
local v113 = v73:Label("Stat Points");
spawn(function()
	while wait() do
		pcall(function()
			v113:Set("Stat Points: "   .. tostring(game:GetService("Players")['LocalPlayer'].Data.Points.Value) );
		end);
	end
end);
local v114 = v73:Label("Melee: ");
local v115 = v73:Label("Defense: ");
local v116 = v73:Label("Sword: ");
local v117 = v73:Label("Gun: ");
local v118 = v73:Label("Fruit: ");
spawn(function()
	while wait() do
		pcall(function()
			v114:Set("Melee: "   .. game.Players.localPlayer.Data.Stats.Melee.Level.Value );
		end);
	end
end);
spawn(function()
	while wait() do
		pcall(function()
			v115:Set("Defense: "   .. game.Players.localPlayer.Data.Stats.Defense.Level.Value );
		end);
	end
end);
spawn(function()
	while wait() do
		pcall(function()
			v116:Set("Sword: "   .. game.Players.localPlayer.Data.Stats.Sword.Level.Value );
		end);
	end
end);
spawn(function()
	while wait() do
		pcall(function()
			v117:Set("Gun: "   .. game.Players.localPlayer.Data.Stats.Gun.Level.Value );
		end);
	end
end);
spawn(function()
	while wait() do
		pcall(function()
			v118:Set("Fruit: "   .. game.Players.localPlayer.Data.Stats["Demon Fruit"].Level.Value );
		end);
	end
end);
_G.Point = "1";
v73:Dropdown("Select Stats Kaitun", {
	"1",
	"10",
	"100",
	"1000"
}, function(v548)
	_G.Point = v548;
end);
v73:Toggle("Auto Stats Kaitun", _G.Stats_Kaitun, function(v549)
	_G.Stats_Kaitun = v549;
end);
spawn(function()
	while wait() do
		pcall(function()
			if _G.Stats_Kaitun then
				if World1 then
					local v1921 = {
						[1] = "AddPoint",
						[2] = "Melee",
						[3] = _G.Point
					};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1921));
				elseif World2 then
					local v2346 = {
						[1] = "AddPoint",
						[2] = "Melee",
						[3] = _G.Point
					};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2346));
					local v2346 = {
						[1] = "AddPoint",
						[2] = "Defense",
						[3] = _G.Point
					};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2346));
				end
			end
		end);
	end
end);
v73:Toggle("Melee", false, function(v550)
	melee = v550;
end);
spawn(function()
	while wait() do
		if melee then
			local v1673 = {
				[1] = "AddPoint",
				[2] = "Melee",
				[3] = _G.Point
			};
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1673));
		end
	end
end);
v73:Toggle("Defense", false, function(v551)
	defense = v551;
end);
spawn(function()
	while wait() do
		if defense then
			local v1674 = {
				[1] = "AddPoint",
				[2] = "Defense",
				[3] = _G.Point
			};
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1674));
		end
	end
end);
v73:Toggle("Sword", false, function(v552)
	sword = v552;
end);
spawn(function()
	while wait() do
		if sword then
			local v1675 = {
				[1] = "AddPoint",
				[2] = "Sword",
				[3] = _G.Point
			};
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1675));
		end
	end
end);
v73:Toggle("Gun", false, function(v553)
	gun = v553;
end);
spawn(function()
	while wait() do
		if gun then
			local v1676 = {
				[1] = "AddPoint",
				[2] = "Gun",
				[3] = _G.Point
			};
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1676));
		end
	end
end);
v73:Toggle("Devil Fruit", false, function(v554)
	demonfruit = v554;
end);
spawn(function()
	while wait() do
		if demonfruit then
			local v1677 = {
				[1] = "AddPoint",
				[2] = "Demon Fruit",
				[3] = _G.Point
			};
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1677));
		end
	end
end);
v75:Seperator("Raid");
_G.SelectChip = selectraids or "" ;
Raidslist = {};
RaidsModule = require(game.ReplicatedStorage.Raids);
for v555, v556 in pairs(RaidsModule.raids) do
	table.insert(Raidslist, v556);
end
for v557, v558 in pairs(RaidsModule.advancedRaids) do
	table.insert(Raidslist, v558);
end
v75:Dropdown("Select Chips", Raidslist, function(v559)
	_G.SelectChip = v559;
end);
v75:Toggle("Auto Select Dungeon", _G.SelectDungeon, function(v560)
	_G.SelectDungeon = v560;
end);
spawn(function()
	while wait() do
		if _G.SelectDungeon then
			pcall(function()
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame-Flame") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame-Flame")) then
					_G.SelectChip = "Flame";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice-Ice") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice-Ice")) then
					_G.SelectChip = "Ice";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake-Quake") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake-Quake")) then
					_G.SelectChip = "Quake";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light-Light") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light-Light")) then
					_G.SelectChip = "Light";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark-Dark") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark-Dark")) then
					_G.SelectChip = "Dark";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("String-String") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String-String")) then
					_G.SelectChip = "String";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble-Rumble") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble-Rumble")) then
					_G.SelectChip = "Rumble";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma-Magma") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma-Magma")) then
					_G.SelectChip = "Magma";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit")) then
					_G.SelectChip = "Human: Buddha";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand-Sand") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand-Sand")) then
					_G.SelectChip = "Sand";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird-Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird-Bird: Phoenix")) then
					_G.SelectChip = "Bird: Phoenix";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough")) then
					_G.SelectChip = "Dough";
				else
					_G.SelectChip = "Flame";
				end
			end);
		end
	end
end);
v75:Toggle("Auto Buy Chip", _G.BuyChip, function(v561)
	_G.BuyChip = v561;
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.BuyChip then
				if ( not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or  not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip")) then
					if  not game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip);
					end
				end
			end
		end
	end);
end);
v75:Button("Buy Chip Select", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip);
end);
v75:Toggle("Auto Start Go To Dungeon", _G.StartRaid, function(v562)
	_G.StartRaid = v562;
end);
spawn(function()
	while wait(0.1) do
		pcall(function()
			if _G.StartRaid then
				if (game:GetService("Players")['LocalPlayer'].PlayerGui.Main.Timer.Visible == false) then
					if (( not game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip")) or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip")) then
						if World2 then
							fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector);
						elseif World3 then
							fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector);
						end
					end
				end
			end
		end);
	end
end);
v75:Button("Start Go To Dungeon", function()
	if World2 then
		fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector);
	elseif World3 then
		fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector);
	end
end);
v75:Button("Next Island", function()
	pcall(function()
		if game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 5") then
			topos(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 5").CFrame * CFrame.new(0, 70, 100) );
		elseif game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 4") then
			topos(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 4").CFrame * CFrame.new(0, 70, 100) );
		elseif game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 3") then
			topos(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 3").CFrame * CFrame.new(0, 70, 100) );
		elseif game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 2") then
			topos(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 2").CFrame * CFrame.new(0, 70, 100) );
		elseif game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1") then
			topos(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1").CFrame * CFrame.new(0, 70, 100) );
		end
	end);
end);
v75:Toggle("Auto Next Island", _G.Dungeon, function(v563)
	_G.Dungeon = v563;
	StopTween(_G.Dungeon);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Dungeon then
				if (game:GetService("Players")['LocalPlayer'].PlayerGui.Main.Timer.Visible == true) then
					if game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 5") then
						topos(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 5").CFrame * RaidPos );
					elseif game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 4") then
						topos(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 4").CFrame * RaidPos );
					elseif game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 3") then
						topos(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 3").CFrame * RaidPos );
					elseif game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 2") then
						topos(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 2").CFrame * RaidPos );
					elseif game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1") then
						topos(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1").CFrame * RaidPos );
					end
				end
			end
		end
	end);
end);
Type = 1;
spawn(function()
	while wait(0.1) do
		if (Type == 1) then
			RaidPos = CFrame.new(0, 25, 0);
		elseif (Type == 2) then
			RaidPos = CFrame.new(0, 25, -40);
		elseif (Type == 3) then
			RaidPos = CFrame.new(40, 25, 0);
		elseif (Type == 4) then
			RaidPos = CFrame.new(0, 25, 40);
		elseif (Type == 5) then
			RaidPos = CFrame.new( -40, 25, 0);
		elseif (Type == 6) then
			RaidPos = CFrame.new(0, 25, 0);
		end
	end
end);
spawn(function()
	while wait(0.1) do
		Type = 1;
		wait(0.9);
		Type = 2;
		wait(0.9);
		Type = 3;
		wait(0.9);
		Type = 4;
		wait(0.9);
		Type = 5;
		wait(0.9);
	end
end);
v75:Toggle("Kill Aura", nil, function(v564)
	_G.Kill_Aura = v564;
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Kill_Aura then
				if (game:GetService("Players")['LocalPlayer'].PlayerGui.Main.Timer.Visible == true) then
					for v2123, v2124 in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
						if (v2124:FindFirstChild("Humanoid") and v2124:FindFirstChild("HumanoidRootPart") and (v2124.Humanoid.Health > 0)) then
							pcall(function()
								repeat
									wait();
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
									v2124.Humanoid.Health = 0;
									v2124.HumanoidRootPart.CanCollide = false;
								until  not _G.Kill_Aura or  not v2124.Parent or (v2124.Humanoid.Health <= 0)
							end);
						end
					end
				end
			end
		end
	end);
end);
v75:Toggle("Auto Awakener", _G.Awakener, function(v565)
	_G.Awakener = v565;
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.Awakener then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Check");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Awaken");
			end
		end
	end);
end);
if World2 then
	v75:Button("Teleport to Lab", function()
		topos(CFrame.new( -6438.73535, 250.645355, -4501.50684));
	end);
elseif World3 then
	v75:Button("Teleport to Lab", function()
		topos(CFrame.new( -5017.40869, 314.844055, -2823.0127, -0.925743818, 4.482175e-8, -0.378151238, 4.5550315e-9, 1, 1.0737756e-7, 0.378151238, 9.768162e-8, -0.925743818));
	end);
end
if World2 then
	v75:Button("Awakening Room", function()
		topos(CFrame.new(266.227783, 1.39509034, 1857.00732));
	end);
elseif World3 then
	v75:Button("Awakening Room", function()
		topos(CFrame.new( -11571.440429688, 49.172668457031, -7574.7368164062));
	end);
end
v75:Seperator("Misc KoKo Sword");
v75:Toggle("Auto Law", _G.OderSword, function(v566)
	_G.OderSword = v566;
	StopTween(_G.OderSword);
end);
v75:Toggle("Auto Law Hop", _G.OderSwordHop, function(v567)
	_G.OderSwordHop = v567;
end);
spawn(function()
	while wait() do
		if _G.OderSword then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
					for v2125, v2126 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2126.Name == "Order [Lv. 1250] [Raid Boss]") then
							if (v2126:FindFirstChild("Humanoid") and v2126:FindFirstChild("HumanoidRootPart") and (v2126.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2126.HumanoidRootPart.CanCollide = false;
									v2126.Humanoid.WalkSpeed = 0;
									v2126.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2126.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.OderSword or  not v2126.Parent or (v2126.Humanoid.Health <= 0)
							end
						end
					end
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
					topos(game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
				elseif _G.OderSwordHop then
					Hop();
				end
			end);
		end
	end
end);
v75:Button("Buy Microchip Law Boss", function()
	local v568 = {
		[1] = "BlackbeardReward",
		[2] = "Microchip",
		[3] = "2"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v568));
end);
v75:Button("Start Go To Raid Law Boss", function()
	if World2 then
		fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector);
	end
end);
v76:Seperator("World");
v76:Button("Teleport To Old World", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain");
end);
v76:Button("Teleport To Second Sea", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa");
end);
v76:Button("Teleport To Third Sea", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou");
end);
v76:Seperator("Teleport Fast");
if World1 then
	v76:Dropdown("Select Island", {
		"Sky Island 1",
		"Sky Island 2",
		"Under Water Island",
		"Under Water Island Entrace"
	}, function(v1554)
		_G.SelectFast = v1554;
	end);
end
if World2 then
	v76:Dropdown("Select Island", {
		"Flamingo Mansion",
		"Flamingo Room",
		"Cursed Ship",
		"Zombie Island"
	}, function(v1555)
		_G.SelectFast = v1555;
	end);
end
if World3 then
	v76:Dropdown("Select Island", {
		"Mansion",
		"Hydra Island",
		"Castle on the Sea",
		"Floating Turtle",
		"Beautiful Pirate"
	}, function(v1556)
		_G.SelectFast = v1556;
	end);
end
v76:Toggle("Teleport Fast", false, function(v569)
	_G.TeleFast = v569;
	if (_G.TeleFast == true) then
		repeat
			wait();
			if (_G.SelectFast == "Sky Island 1") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -4652, 873, -1754));
			elseif (_G.SelectFast == "Sky Island 2") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -7895, 5547, -380));
			elseif (_G.SelectFast == "Under Water Island") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61164, 5, 1820));
			elseif (_G.SelectFast == "Under Water Island Entrace") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(3865, 5, -1926));
			elseif (_G.SelectFast == "Flamingo Mansion") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -317, 331, 597));
			elseif (_G.SelectFast == "Flamingo Room") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(2283, 15, 867));
			elseif (_G.SelectFast == "Cursed Ship") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923, 125, 32853));
			elseif (_G.SelectFast == "Zombie Island") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -6509, 83, -133));
			elseif (_G.SelectFast == "Mansion") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -12471, 374, -7551));
			elseif (_G.SelectFast == "Hydra Island") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5756, 610, -282));
			elseif (_G.SelectFast == "Castle on the Sea") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -5092, 315, -3130));
			elseif (_G.SelectFast == "Floating Turtle") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -12001, 332, -8861));
			elseif (_G.SelectFast == "Beautiful Pirate") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5319, 23, -93));
			end
		until  not _G.TeleFast
	end
end);
v76:Seperator("Island");
if World1 then
	v76:Dropdown("Select Island", {
		"WindMill",
		"Marine",
		"Middle Town",
		"Jungle",
		"Pirate Village",
		"Desert",
		"Snow Island",
		"MarineFord",
		"Colosseum",
		"Sky Island 1",
		"Sky Island 2",
		"Sky Island 3",
		"Prison",
		"Magma Village",
		"Under Water Island",
		"Fountain City"
	}, function(v1557)
		_G.SelectIsland = v1557;
	end);
end
if World2 then
	v76:Dropdown("Select Island", {
		"The Cafe",
		"Frist Spot",
		"Dark Area",
		"Flamingo Mansion",
		"Flamingo Room",
		"Green Zone",
		"Zombie Island",
		"Two Snow Mountain",
		"Punk Hazard",
		"Cursed Ship",
		"Ice Castle",
		"Forgotten Island",
		"Ussop Island"
	}, function(v1558)
		_G.SelectIsland = v1558;
	end);
end
if World3 then
	v76:Dropdown("Select Island", {
		"Mansion",
		"Port Town",
		"Great Tree",
		"Castle On The Sea",
		"Hydra Island",
		"Floating Turtle",
		"Haunted Castle",
		"Ice Cream Island",
		"Peanut Island",
		"Cake Island",
		"Candy Cane Island",
		"Tiki Outpost"
	}, function(v1559)
		_G.SelectIsland = v1559;
	end);
end
v76:Toggle("Teleport", false, function(v570)
	_G.TeleportIsland = v570;
	if (_G.TeleportIsland == true) then
		repeat
			wait();
			if (_G.SelectIsland == "Middle Town") then
				topos(CFrame.new( -688, 15, 1585));
			elseif (_G.SelectIsland == "MarineFord") then
				topos(CFrame.new( -4810, 21, 4359));
			elseif (_G.SelectIsland == "Marine") then
				topos(CFrame.new( -2728, 25, 2056));
			elseif (_G.SelectIsland == "WindMill") then
				topos(CFrame.new(889, 17, 1434));
			elseif (_G.SelectIsland == "Desert") then
				topos(CFrame.new(945, 21, 4375));
			elseif (_G.SelectIsland == "Snow Island") then
				topos(CFrame.new(1298, 87, -1344));
			elseif (_G.SelectIsland == "Pirate Village") then
				topos(CFrame.new( -1173, 45, 3837));
			elseif (_G.SelectIsland == "Jungle") then
				topos(CFrame.new( -1614, 37, 146));
			elseif (_G.SelectIsland == "Prison") then
				topos(CFrame.new(4870, 6, 736));
			elseif (_G.SelectIsland == "Under Water Island") then
				topos(CFrame.new(61164, 5, 1820));
			elseif (_G.SelectIsland == "Colosseum") then
				topos(CFrame.new( -1535, 7, -3014));
			elseif (_G.SelectIsland == "Magma Village") then
				topos(CFrame.new( -5290, 9, 8349));
			elseif (_G.SelectIsland == "Sky Island 1") then
				topos(CFrame.new( -4814, 718, -2551));
			elseif (_G.SelectIsland == "Sky Island 2") then
				topos(CFrame.new( -4652, 873, -1754));
			elseif (_G.SelectIsland == "Sky Island 3") then
				topos(CFrame.new( -7895, 5547, -380));
			elseif (_G.SelectIsland == "Fountain City") then
				topos(CFrame.new(5128, 60, 4106));
			elseif (_G.SelectIsland == "The Cafe") then
				topos(CFrame.new( -382, 73, 290));
			elseif (_G.SelectIsland == "Frist Spot") then
				topos(CFrame.new( -11, 29, 2771));
			elseif (_G.SelectIsland == "Dark Area") then
				topos(CFrame.new(3494, 13, -3259));
			elseif (_G.SelectIsland == "Flamingo Mansion") then
				topos(CFrame.new( -317, 331, 597));
			elseif (_G.SelectIsland == "Flamingo Room") then
				topos(CFrame.new(2285, 15, 905));
			elseif (_G.SelectIsland == "Green Zone") then
				topos(CFrame.new( -2258, 73, -2696));
			elseif (_G.SelectIsland == "Zombie Island") then
				topos(CFrame.new( -5552, 194, -776));
			elseif (_G.SelectIsland == "Two Snow Mountain") then
				topos(CFrame.new(752, 408, -5277));
			elseif (_G.SelectIsland == "Punk Hazard") then
				topos(CFrame.new( -5897, 18, -5096));
			elseif (_G.SelectIsland == "Cursed Ship") then
				topos(CFrame.new(919, 125, 32869));
			elseif (_G.SelectIsland == "Ice Castle") then
				topos(CFrame.new(5505, 40, -6178));
			elseif (_G.SelectIsland == "Forgotten Island") then
				topos(CFrame.new( -3050, 240, -10178));
			elseif (_G.SelectIsland == "Ussop Island") then
				topos(CFrame.new(4816, 8, 2863));
			elseif (_G.SelectIsland == "Mansion") then
				topos(CFrame.new( -12471, 374, -7551));
			elseif (_G.SelectIsland == "Port Town") then
				topos(CFrame.new( -334, 7, 5300));
			elseif (_G.SelectIsland == "Castle On The Sea") then
				topos(CFrame.new( -5073, 315, -3153));
			elseif (_G.SelectIsland == "Hydra Island") then
				topos(CFrame.new(5756, 610, -282));
			elseif (_G.SelectIsland == "Great Tree") then
				topos(CFrame.new(2681, 1682, -7190));
			elseif (_G.SelectIsland == "Floating Turtle") then
				topos(CFrame.new( -12528, 332, -8658));
			elseif (_G.SelectIsland == "Haunted Castle") then
				topos(CFrame.new( -9517, 142, 5528));
			elseif (_G.SelectIsland == "Ice Cream Island") then
				topos(CFrame.new( -902, 79, -10988));
			elseif (_G.SelectIsland == "Peanut Island") then
				topos(CFrame.new( -2062, 50, -10232));
			elseif (_G.SelectIsland == "Cake Island") then
				topos(CFrame.new( -1897, 14, -11576));
			elseif (_G.SelectIsland == "Candy Cane Island") then
				topos(CFrame.new( -1038, 10, -14076));
			elseif (_G.SelectIsland == "Tiki Outpost") then
				topos(CFrame.new( -16224, 9, 439));
			end
		until  not _G.TeleportIsland
	end
	StopTween(_G.TeleportIsland);
end);
v77:Seperator("Abilities");
v77:Button("Buy Geppo [ 10,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo");
end);
v77:Button("Buy Buso Haki [ 25,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso");
end);
v77:Button("Buy Soru [ 25,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru");
end);
v77:Button("Buy Observation Haki [ 750,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy");
end);
v77:Toggle("Auto Buy Abilities", false, function(v571)
	Abilities = v571;
	while Abilities do
		wait(0.1);
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo");
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso");
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru");
	end
end);
v77:Seperator("Fighting Style");
v77:Button("Buy Black Leg [ 150,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg");
end);
v77:Button("Buy Electro [ 550,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro");
end);
v77:Button("Buy Fishman Karate [ 750,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate");
end);
v77:Button("Buy Dragon Claw [ 1,500 Fragments ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1");
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
end);
v77:Button("Buy Superhuman [ 3,000,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman");
end);
v77:Button("Buy Death Step [ 5,000 Fragments 5,000,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep");
end);
v77:Button("Buy Sharkman Karate [ 5,000 Fragments 2,500,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true);
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate");
end);
v77:Button("Buy Electric Claw [ 5,000 Fragments 3,000,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
end);
v77:Button("Buy Dragon Talon [ 5,000 Fragments 3,000,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon");
end);
v77:Button("Buy God Human [ 5,000 Fragments 5,000,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman");
end);
v77:Button("Buy Sanguine Art [ 5,000 Fragments $5,000,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt", true);
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt");
end);
v77:Seperator("Sword");
v77:Button("Cutlass [ 1,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cutlass");
end);
v77:Button("Katana [ 1,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Katana");
end);
v77:Button("Iron Mace [ 25,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace");
end);
v77:Button("Dual Katana [ 12,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Duel Katana");
end);
v77:Button("Triple Katana [ 60,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana");
end);
v77:Button("Pipe [ 100,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Pipe");
end);
v77:Button("Dual-Headed Blade [ 400,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade");
end);
v77:Button("Bisento [ 1,200,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Bisento");
end);
v77:Button("Soul Cane [ 750,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane");
end);
v77:Button("Pole v.2 [ 5,000 Fragments ]", function()
	game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ThunderGodTalk");
end);
v77:Toggle("Yama Sword [ Elite Hunter 30 ]", _G.Yama, function(v572)
	_G.Yama = v572;
end);
spawn(function()
	while wait() do
		if _G.Yama then
			if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress") >= 30) then
				repeat
					wait(0.1);
					fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector);
				until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or  not _G.Yama
			end
		end
	end
end);
v77:Seperator("Gun");
v77:Button("Slingshot [ 5,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Slingshot");
end);
v77:Button("Musket [ 8,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Musket");
end);
v77:Button("Flintlock [ 10,500 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Flintlock");
end);
v77:Button("Refined Slingshot [ 30,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Refined Flintlock");
end);
v77:Button("Refined Flintlock [ 65,000 Beli ]", function()
	local v573 = {
		[1] = "BuyItem",
		[2] = "Refined Flintlock"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v573));
end);
v77:Button("Cannon [ 100,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cannon");
end);
v77:Button("Kabucha [ 1,500 Fragments]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "1");
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "2");
end);
v77:Button("Bizarre Rifle [ 250 Ectoplasm ]", function()
	local v574 = "Ectoplasm";
	local v575 = "Buy";
	local v576 = 1;
	local v577 = game:GetService("ReplicatedStorage").Remotes['CommF_'];
	v577:InvokeServer(v574, v575, v576);
	local v574 = "Ectoplasm";
	local v575 = "Buy";
	local v576 = 1;
	local v577 = game:GetService("ReplicatedStorage").Remotes['CommF_'];
	v577:InvokeServer(v574, v575, v576);
end);
v77:Seperator("Stats");
v77:Button("Reset Stats (Use 2.5K Fragments)", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1");
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2");
end);
v77:Button("Random Race (Use 3K Fragments)", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "1");
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2");
end);
v77:Button("Buy Cyborg (Use 2.5K Fragments)", function()
	local v578 = {
		[1] = "CyborgTrainer",
		[2] = "Buy"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v578));
end);
v77:Seperator("Accessories");
v77:Button("Black Cape [ 50,000 Beli ]", function()
	local v579 = {
		[1] = "BuyItem",
		[2] = "Black Cape"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v579));
end);
v77:Button("Swordsman Hat [ 150k Beli ]", function()
	local v580 = {
		[1] = "BuyItem",
		[2] = "Swordsman Hat"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v580));
end);
v77:Button("Tomoe Ring [ 500k Beli ]", function()
	local v581 = {
		[1] = "BuyItem",
		[2] = "Tomoe Ring"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v581));
end);
v78:Seperator("Sniper");
FruitList = {
	"Bomb-Bomb",
	"Spike-Spike",
	"Chop-Chop",
	"Spring-Spring",
	"Kilo-Kilo",
	"Spin-Spin",
	"Bird: Falcon",
	"Smoke-Smoke",
	"Flame-Flame",
	"Ice-Ice",
	"Sand-Sand",
	"Dark-Dark",
	"Revive-Revive",
	"Diamond-Diamond",
	"Light-Light",
	"Love-Love",
	"Rubber-Rubber",
	"Barrier-Barrier",
	"Magma-Magma",
	"Door-Door",
	"Quake-Quake",
	"Human-Human: Buddha",
	"String-String",
	"Bird-Bird: Phoenix",
	"Rumble-Rumble",
	"Paw-Paw",
	"Gravity-Gravity",
	"Dough-Dough",
	"Venom-Venom",
	"Shadow-Shadow",
	"Control-Control",
	"Soul-Soul",
	"Dragon-Dragon",
	"Leopard-Leopard"
};
local v119 = game.ReplicatedStorage:FindFirstChild("Remotes").CommF_:InvokeServer("GetFruits");
Table_DevilFruitSniper = {};
ShopDevilSell = {};
for v582, v583 in next, v119 do
	table.insert(Table_DevilFruitSniper, v583.Name);
	if v583.OnSale then
		table.insert(ShopDevilSell, v583.Name);
	end
end
_G.SelectFruit = "";
v78:Dropdown("Select Fruits Sniper", Table_DevilFruitSniper, function(v584)
	_G.SelectFruit = v584;
end);
v78:Toggle("Auto Buy Fruit Sniper", _G.BuyFruitSniper, function(v585)
	_G.BuyFruitSniper = v585;
end);
v78:Seperator("Others");
v78:Dropdown("Select Fruits Eat", Table_DevilFruitSniper, function(v586)
	_G.SelectFruitEat = v586;
end);
v78:Toggle("Auto Eat Fruit", _G.EatFruit, function(v587)
	_G.EatFruit = v587;
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.EatFruit then
				game:GetService("Players").LocalPlayer.Character:FindFirstChild(_G.SelectFruitEat).EatRemote:InvokeServer();
			end
		end
	end);
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.BuyFruitSniper then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit", "_G.SelectFruit", false);
			end
		end
	end);
end);
v78:Button("Random Fruit", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy");
end);
v78:Button("Open Devil Shop", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits");
	game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true;
end);
local function v120(v589)
	local v590 = game:GetService("ReplicatedStorage");
	local v591 = require(v590.DialogueController);
	local v592 = require(v590.DialoguesList);
	for v886, v887 in pairs(v592) do
		if (tostring(v886) == v589) then
			v591.Start(v591, v887);
		end
	end
end
v78:Button("Open Devil Shop Mirage", function()
	v120("FruitShop2");
end);
v78:Toggle("Auto Store Fruit", _G.StoreFruit, function(v593)
	_G.StoreFruit = v593;
end);
spawn(function()
	while wait() do
		if _G.StoreFruit then
			pcall(function()
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Bomb-Bomb", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spike-Spike", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Chop-Chop", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spring-Spring", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Kilo-Kilo", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Smoke-Smoke", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spin-Spin", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Flame-Flame", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Bird-Bird: Falcon", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Ice-Ice", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Sand-Sand", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dark-Dark", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Revive-Revive", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Diamond-Diamond", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Light-Light", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Love-Love", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Rubber-Rubber", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Barrier-Barrier", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Magma-Magma", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Door-Door", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Quake-Quake", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Human-Human: Buddha", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "String-String", game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Bird-Bird: Phoenix", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Rumble-Rumble", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Paw-Paw", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Gravity-Gravity", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dough-Dough", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Shadow-Shadow", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Venom-Venom", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Control-Control", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dragon-Dragon", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Leopard-Leopard", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit") );
				end
			end);
		end
	end
end);
v78:Toggle("Bring to Fruit", _G.Grabfruit, function(v594)
	_G.Grabfruit = v594;
end);
spawn(function()
	while wait(0.1) do
		if _G.Grabfruit then
			for v1769, v1770 in pairs(game.Workspace:GetChildren()) do
				if string.find(v1770.Name, "Fruit") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1770.Handle.CFrame;
				end
			end
		end
	end
end);
v78:Toggle("Tween to Fruit", _G.Tweenfruit, function(v595)
	_G.Tweenfruit = v595;
	StopTween(_G.Tweenfruit);
end);
spawn(function()
	while wait(0.1) do
		if _G.Tweenfruit then
			for v1771, v1772 in pairs(game.Workspace:GetChildren()) do
				if string.find(v1772.Name, "Fruit") then
					topos(v1772.Handle.CFrame);
				end
			end
		end
	end
end);
v79:Seperator("Server");
v79:Button("Rejoin Server", function()
	game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer);
end);
v79:Button("Server Hop", function()
	Hop();
end);
v79:Button("Hop To Lower Player", function()
	getgenv().AutoTeleport = true;
	getgenv().DontTeleportTheSameNumber = true;
	getgenv().CopytoClipboard = false;
	if  not game:IsLoaded() then
		print("Game is loading waiting...");
	end
	local v599 = math.huge;
	local v600;
	local v601;
	local v602 = "https://games.roblox.com/v1/games/"   .. game.PlaceId   .. "/servers/Public?sortOrder=Asc&limit=100" ;
	function serversearch()
		for v1560, v1561 in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(v602)).data) do
			if ((type(v1561) == "table") and (v1561.playing ~= nil) and (v599 > v1561.playing)) then
				v600 = v1561.maxPlayers;
				v599 = v1561.playing;
				v601 = v1561.id;
			end
		end
	end
	function getservers()
		serversearch();
		for v1562, v1563 in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(v602))) do
			if (v1562 == "nextPageCursor") then
				if v602:find("&cursor=") then
					local v1924 = v602:find("&cursor=");
					local v1925 = v602:sub(v1924);
					v602 = v602:gsub(v1925, "");
				end
				v602 = v602   .. "&cursor="   .. v1563 ;
				getservers();
			end
		end
	end
	getservers();
	if AutoTeleport then
		if DontTeleportTheSameNumber then
			if (( #game:GetService("Players"):GetPlayers() - 4) == v599) then
				return warn("It has same number of players (except you)");
			elseif (v601 == game.JobId) then
				return warn("Your current server is the most empty server atm");
			end
		end
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, v601);
	end
end);
v79:Button("Copy Job Id", function()
	setclipboard(tostring(game.JobId));
end);
v79:Textbox("Place Job Id", true, function(v603)
	_G.Job = v603;
end);
v79:Button("Join Sever", function()
	game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId, _G.Job, game.Players.LocalPlayer);
end);
v79:Seperator("Misc");
v79:Button("Title Name", function()
	local v604 = {
		"getTitles"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v604));
	game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true;
end);
v79:Button("Color Haki", function()
	game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true;
end);
v79:Seperator("Teams");
v79:Button("Join Pirates Team", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates");
end);
v79:Button("Join Marines Team", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Marines");
end);
v79:Seperator("Misc");
v79:Toggle("Anti AFK", true, function()
	local v607 = game:GetService("VirtualUser");
	repeat
		wait();
	until game:IsLoaded()
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		game:GetService("VirtualUser"):ClickButton2(Vector2.new());
		v607:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
		wait(1);
		v607:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
	end);
end);
v79:Seperator("Codes");
local v121 = {
	"KITTGAMING",
	"ENYU_IS_PRO",
	"FUDD10",
	"BIGNEWS",
	"THEGREATACE",
	"SUB2GAMERROBOT_EXP1",
	"STRAWHATMAIME",
	"SUB2OFFICIALNOOBIE",
	"SUB2NOOBMASTER123",
	"SUB2DAIGROCK",
	"AXIORE",
	"TANTAIGAMIMG",
	"STRAWHATMAINE",
	"JCWK",
	"FUDD10_V2",
	"SUB2FER999",
	"MAGICBIS",
	"TY_FOR_WATCHING",
	"STARCODEHEO"
};
v79:Button("Redeem All Codes", function()
	function RedeemCode(v888)
		game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(v888);
	end
	for v889, v890 in pairs(v121) do
		RedeemCode(v890);
	end
end);
v79:Dropdown("Selected Codes Reset stat", {
	"NOOB_REFUND",
	"SUB2GAMERROBOT_RESET1",
	"Sub2UncleKizaru"
}, function(v608)
	_G.CodeSelect = v608;
end);
v79:Button("Redeem Code (Selected Codes)", function()
	game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(_G.CodeSelect);
end);
v79:Seperator("State");
v79:Dropdown("Select Haki State", {
	"State 0",
	"State 1",
	"State 2",
	"State 3",
	"State 4",
	"State 5"
}, function(v609)
	_G.SelectStateHaki = v609;
end);
v79:Button("Change Buso Haki State", function()
	if (_G.SelectStateHaki == "State 0") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 0);
	elseif (_G.SelectStateHaki == "State 1") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 1);
	elseif (_G.SelectStateHaki == "State 2") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 2);
	elseif (_G.SelectStateHaki == "State 3") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 3);
	elseif (_G.SelectStateHaki == "State 4") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 4);
	elseif (_G.SelectStateHaki == "State 5") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 5);
	end
end);
local v122 = game:GetService("Players");
game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Việt Nam Cộng sản",
	Text = "Loading...",
	Icon = "rbxthumb://type=Asset&id=83190276951914&w=150&h=150",
	Duration = 10
});
spawn(function()
	while wait() do
		for v1564, v1565 in pairs(game.Players:GetPlayers()) do
			if ((v1565.Name == "red_game43") or (v1565.Name == "rip_indra") or (v1565.Name == "Axiore") or (v1565.Name == "Polkster") or (v1565.Name == "wenlocktoad") or (v1565.Name == "Daigrock") or (v1565.Name == "toilamvidamme") or (v1565.Name == "oofficialnoobie") or (v1565.Name == "Uzoth") or (v1565.Name == "Azarth") or (v1565.Name == "arlthmetic") or (v1565.Name == "Death_King") or (v1565.Name == "Lunoven") or (v1565.Name == "TheGreateAced") or (v1565.Name == "rip_fud") or (v1565.Name == "drip_mama") or (v1565.Name == "layandikit12") or (v1565.Name == "Hingoi")) then
				Hop();
			end
		end
	end
end);
local v56 = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"));
local v57 = getupvalues(v56)[2];
local v123 = require(game:GetService("Players")['LocalPlayer'].PlayerScripts.CombatFramework.RigController);
local v124 = getupvalues(v123)[2];
local v125 = require(game.ReplicatedStorage.CombatFramework.RigLib);
local v126 = tick();
new = {};
function FastAttackConnectorFunction()
	repeat
		wait();
	until game:IsLoaded()
	repeat
		task.wait();
	until game.ReplicatedStorage
	repeat
		task.wait();
	until game.Players
	repeat
		task.wait();
	until game.Players.LocalPlayer
	repeat
		task.wait();
	until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
	local v610 = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"));
	local v611 = getupvalues(v610)[2];
	local v612 = require(game:GetService("Players")['LocalPlayer'].PlayerScripts.CombatFramework.RigController);
	local v613 = getupvalues(v612)[2];
	local v614 = require(game.ReplicatedStorage.CombatFramework.RigLib);
	local v615 = tick();
	ReturnFunctions = {};
	function CurrentWeapon()
		local v891 = v611.activeController;
		local v892 = v891.blades[1];
		if  not v892 then
			return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name;
		end
		pcall(function()
			while v892.Parent ~= game.Players.LocalPlayer.Character  do
				v892 = v892.Parent;
			end
		end);
		if  not v892 then
			return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name;
		end
		return v892;
	end
	function AttackFunctgggggion()
		if (game.Players.LocalPlayer.Character.Stun.Value ~= 0) then
			return nil;
		end
		local v893 = v611.activeController;
		v893.hitboxMagnitude = 55;
		if (v893 and v893.equipped) then
			for v1776 = 1, 1 do
				local v1777 = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(game.Players.LocalPlayer.Character, {
					game.Players.LocalPlayer.Character.HumanoidRootPart
				}, 60);
				if ( #v1777 > 0) then
					local v1926 = debug.getupvalue(v893.attack, 5);
					local v1927 = debug.getupvalue(v893.attack, 6);
					local v1928 = debug.getupvalue(v893.attack, 4);
					local v1929 = debug.getupvalue(v893.attack, 7);
					local v1930 = ((v1926 * 798405) + (v1928 * 727595)) % v1927 ;
					local v1931 = (v1928 * 798405)(function()
						v1930 = ((v1930 * v1927) + NumberAc13) % 1099511627776 ;
						v1926 = math.floor(v1930 / v1927 );
						v1928 = v1930 - (v1926 * v1927) ;
					end)();
					v1929 = v1929 + 1 ;
					debug.setupvalue(v893.attack, 5, v1926);
					debug.setupvalue(v893.attack, 6, v1927);
					debug.setupvalue(v893.attack, 4, v1928);
					debug.setupvalue(v893.attack, 7, v1929);
					for v2127, v2128 in pairs(v893.animator.anims.basic) do
						v2128:Play(0.01, 0.01, 0.01);
					end
					if (game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and v893.blades and v893.blades[1]) then
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange", tostring(CurrentWeapon()));
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", v1777, 2, "");
					end
				end
			end
		end
	end
	CountAttack = 0;
	TickCountAttack = tick();
	spawn(function()
		local v895 = getrawmetatable(game);
		local v896 = v895.__namecall;
		setreadonly(v895, false);
		v895.__namecall = newcclosure(function(v1566, ...)
			local v1567 = getnamecallmethod();
			local v1568 = {
				...
			};
			if ((v1567 == "FireServer") and (v1566.Name == "RigControllerEvent") and (v1568[1] == "hit")) then
				CountAttack = CountAttack + 1 ;
				TickCountAttack = tick();
			end
			return v896(v1566, unpack(v1568));
		end);
	end);
	ReturnFunctions.GetCount = function(v898)
		return CountAttack;
	end;
	ReturnFunctions.Attack = function(v899, v900)
		UFFF = v900;
	end;
	FastAttackSettings = {
		CDAAT = 80,
		TimeWait = 10
	};
	spawn(function()
		local v901 = require(game.ReplicatedStorage.Util.CameraShaker);
		v901:Stop();
	end);
	ReturnFunctions.InputValue = function(v902, v903, v904)
		FastAttackSettings['CDAAT'] = v903;
		FastAttackSettings['TimeWait'] = v904;
	end;
	ReturnFunctions.InputSetting = function(v907, v908)
		conchosetting = v908;
	end;
	function atack()
		pcall(function()
			AttackFunctgggggion();
		end);
	end
	ToiCanOxi = 0;
	conchosetting = {};
	ReturnFunctions.GetMethod = function(v909)
		MethodAttack = "Slow";
		if (CountAttack < FastAttackSettings['CDAAT']) then
			MethodAttack = "Fast";
		end
		return MethodAttack;
	end;
	spawn(function()
		while task.wait() do
			if UFFF then
				pcall(function()
					if (conchosetting and (type(conchosetting) == "table")) then
						if (conchosetting and conchosetting["Mastery Farm"]) then
							ToiCanOxi = 2;
							atack();
							if (conchosetting['DelayAttack'] and (type(conchosetting['DelayAttack']) == "number") and (conchosetting['DelayAttack'] >= 0.1)) then
								wait(conchosetting['DelayAttack']);
							else
								conchosetting['DelayAttack'] = 0.2;
								wait(conchosetting['DelayAttack']);
							end
						elseif (CountAttack < FastAttackSettings['CDAAT']) then
							ToiCanOxi = ToiCanOxi + 1 ;
							atack();
						elseif (CountAttack >= FastAttackSettings['CDAAT']) then
							ToiCanOxi = ToiCanOxi + 1 ;
							atack();
							if (conchosetting['DelayAttack'] and (type(conchosetting['DelayAttack']) == "number") and (conchosetting['DelayAttack'] >= 0.1)) then
								wait(conchosetting['DelayAttack'] * 2 );
							else
								conchosetting['DelayAttack'] = 0.2;
								wait(conchosetting['DelayAttack'] * 2 );
							end
						end
					end
				end);
			end
		end
	end);
	spawn(function()
		while task.wait() do
			pcall(function()
				if ((tick() - TickCountAttack) >= FastAttackSettings['TimeWait']) then
					CountAttack = 0;
				end
			end);
		end
	end);
	spawn(function()
		while task.wait() do
			if UFFF then
				pcall(function()
					local v1853 = getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))[2];
					v1853.activeController.hitboxMagnitude = 55;
					v1853.activeController.timeToNextAttack = 0;
					v1853.activeController.attacking = false;
					v1853.activeController.increment = 3;
					v1853.activeController.blocking = false;
					v1853.activeController.timeToNextBlock = 0;
					v1853.activeController:attack();
					task.wait(0.2);
				end);
			end
		end
	end);
	spawn(function()
		while task.wait() do
			if UFFF then
				pcall(function()
					local v1860 = getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))[2];
					v1860.activeController.hitboxMagnitude = 55;
					v1860.activeController.timeToNextAttack = 0;
					v1860.activeController.attacking = false;
					v1860.activeController.increment = 3;
					v1860.activeController.blocking = false;
					v1860.activeController.timeToNextBlock = 0;
					a = math.random(1, 5);
					if (a > 1) then
						game:GetService("VirtualUser"):CaptureController();
						game:GetService("VirtualUser"):Button1Down(Vector2.new(50, 50));
					end
					task.wait(0.2);
				end);
			end
		end
	end);
	spawn(function()
		while wait() do
			if UFFF then
				pcall(function()
					if (CountAttack >= FastAttackSettings['CDAAT']) then
						TickFastAttackF = tick();
						repeat
							wait();
						until (tick() - TickFastAttackF) >= FastAttackSettings['TimeWait']
						CountAttack = 0;
					end
				end);
			end
		end
	end);
	return ReturnFunctions;
end
return FastAttackConnectorFunction();;