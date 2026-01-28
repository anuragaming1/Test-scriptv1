-- ts file was generated at discord.gg/25ms

if not game:IsLoaded() then
    game.Loaded:Wait()
end

local _Players = game:GetService('Players')
local _ReplicatedStorage = game:GetService('ReplicatedStorage')

game:GetService('VirtualUser')
game:GetService('RunService')
game:GetService('HttpService')

local _LocalPlayer = _Players.LocalPlayer

_ReplicatedStorage:WaitForChild('Remotes', 5):WaitForChild('CommF_', 5)
_LocalPlayer:WaitForChild('PlayerGui', 5):WaitForChild('Main', 5)

local _ = 10 > tick() - 0
local _ReplicatedStorage2 = game:GetService('ReplicatedStorage')
local _Effect = _ReplicatedStorage2:FindFirstChild('Effect')

if _Effect then
    _Effect = _ReplicatedStorage2.Effect:FindFirstChild('Container')
end
if _Effect then
    local _Death = _Effect:FindFirstChild('Death')

    if _Death then
        local v7, v8 = pcall(require, _Death)

        if v7 and type(v8) == 'function' then
            hookfunction(v8, function() end)
        end
    end

    local _Respawn = _Effect:FindFirstChild('Respawn')

    if _Respawn then
        local v10, v11 = pcall(require, _Respawn)

        if v10 and type(v11) == 'function' then
            hookfunction(v11, function() end)
        end
    end
end

local _GuideModule = _ReplicatedStorage2:FindFirstChild('GuideModule')

if _GuideModule then
    local v13, v14 = pcall(require, _GuideModule)

    if v13 and (v14 and type(v14.ChangeDisplayedNPC) == 'function') then
        hookfunction(v14.ChangeDisplayedNPC, function() end)
    end
end

local _Util = game:GetService('ReplicatedStorage'):WaitForChild('Util', 5)
local v16 = _Util and _Util:FindFirstChild('CameraShaker')

if v16 then
    require(v16):Stop()
end

local _PlaceId = game.PlaceId

if ({
    [2753915549] = true,
    [4442272183] = true,
    [7449423635] = true,
})[_PlaceId] then
    if _PlaceId == 2753915549 then
        World1 = true
    elseif _PlaceId == 4442272183 then
        World2 = true
    elseif _PlaceId == 7449423635 then
        World3 = true
    end
else
    game.Players.LocalPlayer:Kick('Unsupported Game')
end

repeat
    wait()
until game.Players.LocalPlayer.Character

function CheckQuest()
    MyLevel = game:GetService('Players').LocalPlayer.Data.Level.Value

    if World1 then
        if MyLevel < 1 or MyLevel > 9 then
            if MyLevel < 10 or MyLevel > 14 then
                if MyLevel < 15 or MyLevel > 29 then
                    if MyLevel < 30 or MyLevel > 39 then
                        if MyLevel < 40 or MyLevel > 59 then
                            if MyLevel < 60 or MyLevel > 74 then
                                if MyLevel < 75 or MyLevel > 89 then
                                    if MyLevel < 90 or MyLevel > 99 then
                                        if MyLevel < 100 or MyLevel > 119 then
                                            if MyLevel < 120 or MyLevel > 149 then
                                                if MyLevel < 150 or MyLevel > 174 then
                                                    if MyLevel < 175 or MyLevel > 189 then
                                                        if MyLevel < 190 or MyLevel > 209 then
                                                            if MyLevel < 210 or MyLevel > 249 then
                                                                if MyLevel < 250 or MyLevel > 274 then
                                                                    if MyLevel < 275 or MyLevel > 299 then
                                                                        if MyLevel < 300 or MyLevel > 324 then
                                                                            if MyLevel < 325 or MyLevel > 374 then
                                                                                if MyLevel < 375 or MyLevel > 399 then
                                                                                    if MyLevel < 400 or MyLevel > 449 then
                                                                                        if MyLevel < 450 or MyLevel > 474 then
                                                                                            if MyLevel < 475 or MyLevel > 524 then
                                                                                                if MyLevel < 525 or MyLevel > 549 then
                                                                                                    if MyLevel < 550 or MyLevel > 624 then
                                                                                                        if MyLevel < 625 or MyLevel > 649 then
                                                                                                            if MyLevel >= 650 then
                                                                                                                Mon = 'Galley Captain'
                                                                                                                LevelQuest = 2
                                                                                                                NameQuest = 'FountainQuest'
                                                                                                                NameMon = 'Galley Captain'
                                                                                                                CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, -0, 0.996196866, -0, 1, -0, -0.996196866, -0, 0.087131381)
                                                                                                                CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
                                                                                                            end
                                                                                                        else
                                                                                                            Mon = 'Galley Pirate'
                                                                                                            LevelQuest = 1
                                                                                                            NameQuest = 'FountainQuest'
                                                                                                            NameMon = 'Galley Pirate'
                                                                                                            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, -0, 0.996196866, -0, 1, -0, -0.996196866, -0, 0.087131381)
                                                                                                            CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
                                                                                                        end
                                                                                                    else
                                                                                                        Mon = 'Royal Soldier'
                                                                                                        LevelQuest = 2
                                                                                                        NameQuest = 'SkyExp2Quest'
                                                                                                        NameMon = 'Royal Soldier'
                                                                                                        CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, -0, -0, -1, -0, 1, -0, 1, -0, -0)
                                                                                                        CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
                                                                                                    end
                                                                                                else
                                                                                                    Mon = 'Royal Squad'
                                                                                                    LevelQuest = 1
                                                                                                    NameQuest = 'SkyExp2Quest'
                                                                                                    NameMon = 'Royal Squad'
                                                                                                    CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, -0, -0, -1, -0, 1, -0, 1, -0, -0)
                                                                                                    CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
                                                                                                end
                                                                                            else
                                                                                                Mon = 'Shanda'
                                                                                                LevelQuest = 2
                                                                                                NameQuest = 'SkyExp1Quest'
                                                                                                NameMon = 'Shanda'
                                                                                                CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, -0, 0.906319618, -0, 1, -0, -0.906319618, -0, -0.422592998)
                                                                                                CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)

                                                                                                if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                                                                                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                                                                                                end
                                                                                            end
                                                                                        else
                                                                                            Mon = "God's Guard"
                                                                                            LevelQuest = 1
                                                                                            NameQuest = 'SkyExp1Quest'
                                                                                            NameMon = "God's Guard"
                                                                                            CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, -0, 1, -0, 0.0871884301, -0, 0.996191859)
                                                                                            CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)

                                                                                            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                                                                                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-4607.82275, 872.54248, -1667.55688))
                                                                                            end
                                                                                        end
                                                                                    else
                                                                                        Mon = 'Fishman Commando'
                                                                                        LevelQuest = 2
                                                                                        NameQuest = 'FishmanQuest'
                                                                                        NameMon = 'Fishman Commando'
                                                                                        CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                                                                                        CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)

                                                                                        if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                                                                                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                                                                        end
                                                                                    end
                                                                                else
                                                                                    Mon = 'Fishman Warrior'
                                                                                    LevelQuest = 1
                                                                                    NameQuest = 'FishmanQuest'
                                                                                    NameMon = 'Fishman Warrior'
                                                                                    CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                                                                                    CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)

                                                                                    if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                                                                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                                                                    end
                                                                                end
                                                                            else
                                                                                Mon = 'Military Spy'
                                                                                LevelQuest = 2
                                                                                NameQuest = 'MagmaQuest'
                                                                                NameMon = 'Military Spy'
                                                                                CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, -0, 0.866048813, -0, 1, -0, -0.866048813, -0, -0.499959469)
                                                                                CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
                                                                            end
                                                                        else
                                                                            Mon = 'Military Soldier'
                                                                            LevelQuest = 1
                                                                            NameQuest = 'MagmaQuest'
                                                                            NameMon = 'Military Soldier'
                                                                            CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, -0, 0.866048813, -0, 1, -0, -0.866048813, -0, -0.499959469)
                                                                            CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
                                                                        end
                                                                    else
                                                                        Mon = 'Gladiator'
                                                                        LevelQuest = 2
                                                                        NameQuest = 'ColosseumQuest'
                                                                        NameMon = 'Gladiator'
                                                                        CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, -0, -0.857167721, -0, 1, -0, 0.857167721, -0, -0.515037298)
                                                                        CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
                                                                    end
                                                                else
                                                                    Mon = 'Toga Warrior'
                                                                    LevelQuest = 1
                                                                    NameQuest = 'ColosseumQuest'
                                                                    NameMon = 'Toga Warrior'
                                                                    CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, -0, -0.857167721, -0, 1, -0, 0.857167721, -0, -0.515037298)
                                                                    CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
                                                                end
                                                            else
                                                                Mon = 'Dangerous Prisoner'
                                                                LevelQuest = 2
                                                                NameQuest = 'PrisonerQuest'
                                                                NameMon = 'Dangerous Prisoner'
                                                                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-9, -0.995993316, 1.60817859e-9, 1, -5.16744869e-9, 0.995993316, -2.06384709e-9, -0.0894274712)
                                                                CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
                                                            end
                                                        else
                                                            Mon = 'Prisoner'
                                                            LevelQuest = 1
                                                            NameQuest = 'PrisonerQuest'
                                                            NameMon = 'Prisoner'
                                                            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-9, -0.995993316, 1.60817859e-9, 1, -5.16744869e-9, 0.995993316, -2.06384709e-9, -0.0894274712)
                                                            CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
                                                        end
                                                    else
                                                        Mon = 'Dark Master'
                                                        LevelQuest = 2
                                                        NameQuest = 'SkyQuest'
                                                        NameMon = 'Dark Master'
                                                        CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, -0, 0.500031412, -0, 1, -0, -0.500031412, -0, 0.866007268)
                                                        CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
                                                    end
                                                else
                                                    Mon = 'Sky Bandit'
                                                    LevelQuest = 1
                                                    NameQuest = 'SkyQuest'
                                                    NameMon = 'Sky Bandit'
                                                    CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, -0, 0.500031412, -0, 1, -0, -0.500031412, -0, 0.866007268)
                                                    CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
                                                end
                                            else
                                                Mon = 'Chief Petty Officer'
                                                LevelQuest = 1
                                                NameQuest = 'MarineQuest2'
                                                NameMon = 'Chief Petty Officer'
                                                CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, -0, -0, -1, -0, 1, -0, 1, -0, -0)
                                                CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
                                            end
                                        else
                                            Mon = 'Snowman'
                                            LevelQuest = 2
                                            NameQuest = 'SnowQuest'
                                            NameMon = 'Snowman'
                                            CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, -0, 0.939684391, -0, 1, -0, -0.939684391, -0, -0.342042685)
                                            CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
                                        end
                                    else
                                        Mon = 'Snow Bandit'
                                        LevelQuest = 1
                                        NameQuest = 'SnowQuest'
                                        NameMon = 'Snow Bandit'
                                        CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, -0, 0.939684391, -0, 1, -0, -0.939684391, -0, -0.342042685)
                                        CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
                                    end
                                else
                                    Mon = 'Desert Officer'
                                    LevelQuest = 2
                                    NameQuest = 'DesertQuest'
                                    NameMon = 'Desert Officer'
                                    CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, -0, 1, -0, 0.573571265, -0, 0.819155693)
                                    CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
                                end
                            else
                                Mon = 'Desert Bandit'
                                LevelQuest = 1
                                NameQuest = 'DesertQuest'
                                NameMon = 'Desert Bandit'
                                CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, -0, 1, -0, 0.573571265, -0, 0.819155693)
                                CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
                            end
                        else
                            Mon = 'Brute'
                            LevelQuest = 2
                            NameQuest = 'BuggyQuest1'
                            NameMon = 'Brute'
                            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, -0, 1, -0, 0.258804798, -0, 0.965929627)
                            CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
                        end
                    else
                        Mon = 'Pirate'
                        LevelQuest = 1
                        NameQuest = 'BuggyQuest1'
                        NameMon = 'Pirate'
                        CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, -0, 1, -0, 0.258804798, -0, 0.965929627)
                        CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)
                    end
                else
                    Mon = 'Gorilla'
                    LevelQuest = 2
                    NameQuest = 'JungleQuest'
                    NameMon = 'Gorilla'
                    CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, -0, -0, 1, -0, 1, -0, -1, -0, -0)
                    CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
                end
            else
                Mon = 'Monkey'
                LevelQuest = 1
                NameQuest = 'JungleQuest'
                NameMon = 'Monkey'
                CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, -0, -0, 1, -0, 1, -0, -1, -0, -0)
                CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)
            end
        else
            Mon = 'Bandit'
            LevelQuest = 1
            NameQuest = 'BanditQuest1'
            NameMon = 'Bandit'
            CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, -0, 1, -0, 0.341998369, -0, 0.939700544)
            CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
        end
    elseif World2 then
        if MyLevel < 700 or MyLevel > 724 then
            if MyLevel < 725 or MyLevel > 774 then
                if MyLevel < 775 or MyLevel > 799 then
                    if MyLevel < 800 or MyLevel > 874 then
                        if MyLevel < 875 or MyLevel > 899 then
                            if MyLevel < 900 or MyLevel > 949 then
                                if MyLevel < 950 or MyLevel > 974 then
                                    if MyLevel < 975 or MyLevel > 999 then
                                        if MyLevel < 1000 or MyLevel > 1049 then
                                            if MyLevel < 1050 or MyLevel > 1099 then
                                                if MyLevel < 1100 or MyLevel > 1124 then
                                                    if MyLevel < 1125 or MyLevel > 1174 then
                                                        if MyLevel < 1175 or MyLevel > 1199 then
                                                            if MyLevel < 1200 or MyLevel > 1249 then
                                                                if MyLevel < 1250 or MyLevel > 1274 then
                                                                    if MyLevel < 1275 or MyLevel > 1299 then
                                                                        if MyLevel < 1300 or MyLevel > 1324 then
                                                                            if MyLevel < 1325 or MyLevel > 1349 then
                                                                                if MyLevel < 1350 or MyLevel > 1374 then
                                                                                    if MyLevel < 1375 or MyLevel > 1424 then
                                                                                        if MyLevel < 1425 or MyLevel > 1449 then
                                                                                            if MyLevel >= 1450 then
                                                                                                Mon = 'Water Fighter'
                                                                                                LevelQuest = 2
                                                                                                NameQuest = 'ForgottenQuest'
                                                                                                NameMon = 'Water Fighter'
                                                                                                CFrameQuest = CFrame.new(-3054, 240, -10146)
                                                                                                CFrameMon = CFrame.new(-3291, 252, -10501)
                                                                                            end
                                                                                        else
                                                                                            Mon = 'Sea Soldier'
                                                                                            LevelQuest = 1
                                                                                            NameQuest = 'ForgottenQuest'
                                                                                            NameMon = 'Sea Soldier'
                                                                                            CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, -0, 1, -0, 0.13915664, -0, 0.990270376)
                                                                                            CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
                                                                                        end
                                                                                    else
                                                                                        Mon = 'Snow Lurker'
                                                                                        LevelQuest = 2
                                                                                        NameQuest = 'FrostQuest'
                                                                                        NameMon = 'Snow Lurker'
                                                                                        CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, -0, -0.358349502, -0, 1, -0, 0.358349502, -0, -0.933587909)
                                                                                        CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
                                                                                    end
                                                                                else
                                                                                    Mon = 'Arctic Warrior'
                                                                                    LevelQuest = 1
                                                                                    NameQuest = 'FrostQuest'
                                                                                    NameMon = 'Arctic Warrior'
                                                                                    CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, -0, -0.358349502, -0, 1, -0, 0.358349502, -0, -0.933587909)
                                                                                    CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)

                                                                                    if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                                                                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
                                                                                    end
                                                                                end
                                                                            else
                                                                                Mon = 'Ship Officer'
                                                                                LevelQuest = 2
                                                                                NameQuest = 'ShipQuest2'
                                                                                NameMon = 'Ship Officer'
                                                                                CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
                                                                                CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)

                                                                                if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                                                                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                                                                                end
                                                                            end
                                                                        else
                                                                            Mon = 'Ship Steward'
                                                                            LevelQuest = 1
                                                                            NameQuest = 'ShipQuest2'
                                                                            NameMon = 'Ship Steward'
                                                                            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
                                                                            CFrameMon = CFrame.new(919.4385375976563, 129.55599975585938, 33436.03515625)

                                                                            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                                                                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                                                                            end
                                                                        end
                                                                    else
                                                                        Mon = 'Ship Engineer'
                                                                        LevelQuest = 2
                                                                        NameQuest = 'ShipQuest1'
                                                                        NameMon = 'Ship Engineer'
                                                                        CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)
                                                                        CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)

                                                                        if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                                                                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                                                                        end
                                                                    end
                                                                else
                                                                    Mon = 'Ship Deckhand'
                                                                    LevelQuest = 1
                                                                    NameQuest = 'ShipQuest1'
                                                                    NameMon = 'Ship Deckhand'
                                                                    CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)
                                                                    CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)

                                                                    if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                                                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                                                                    end
                                                                end
                                                            else
                                                                Mon = 'Lava Pirate'
                                                                LevelQuest = 2
                                                                NameQuest = 'FireSideQuest'
                                                                NameMon = 'Lava Pirate'
                                                                CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, -0, 0.469463557, -0, 1, -0, -0.469463557, -0, -0.882952213)
                                                                CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
                                                            end
                                                        else
                                                            Mon = 'Magma Ninja'
                                                            LevelQuest = 1
                                                            NameQuest = 'FireSideQuest'
                                                            NameMon = 'Magma Ninja'
                                                            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, -0, 0.469463557, -0, 1, -0, -0.469463557, -0, -0.882952213)
                                                            CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
                                                        end
                                                    else
                                                        Mon = 'Horned Warrior'
                                                        LevelQuest = 2
                                                        NameQuest = 'IceSideQuest'
                                                        NameMon = 'Horned Warrior'
                                                        CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, -0, 1, -0, 0.891015649, -0, 0.453972578)
                                                        CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
                                                    end
                                                else
                                                    Mon = 'Lab Subordinate'
                                                    LevelQuest = 1
                                                    NameQuest = 'IceSideQuest'
                                                    NameMon = 'Lab Subordinate'
                                                    CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, -0, 1, -0, 0.891015649, -0, 0.453972578)
                                                    CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
                                                end
                                            else
                                                Mon = 'Winter Warrior'
                                                LevelQuest = 2
                                                NameQuest = 'SnowMountainQuest'
                                                NameMon = 'Winter Warrior'
                                                CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, -0, 0.92718488, -0, 1, -0, -0.92718488, -0, -0.374604106)
                                                CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
                                            end
                                        else
                                            Mon = 'Snow Trooper'
                                            LevelQuest = 1
                                            NameQuest = 'SnowMountainQuest'
                                            NameMon = 'Snow Trooper'
                                            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, -0, 0.92718488, -0, 1, -0, -0.92718488, -0, -0.374604106)
                                            CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
                                        end
                                    else
                                        Mon = 'Vampire'
                                        LevelQuest = 2
                                        NameQuest = 'ZombieQuest'
                                        NameMon = 'Vampire'
                                        CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, -0, -0.95628953, -0, 1, -0, 0.95628953, -0, -0.29242146)
                                        CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
                                    end
                                else
                                    Mon = 'Zombie'
                                    LevelQuest = 1
                                    NameQuest = 'ZombieQuest'
                                    NameMon = 'Zombie'
                                    CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, -0, -0.95628953, -0, 1, -0, 0.95628953, -0, -0.29242146)
                                    CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
                                end
                            else
                                Mon = 'Marine Captain'
                                LevelQuest = 2
                                NameQuest = 'MarineQuest3'
                                NameMon = 'Marine Captain'
                                CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, -0, 0.500031412, -0, 1, -0, -0.500031412, -0, 0.866007268)
                                CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
                            end
                        else
                            Mon = 'Marine Lieutenant'
                            LevelQuest = 1
                            NameQuest = 'MarineQuest3'
                            NameMon = 'Marine Lieutenant'
                            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, -0, 0.500031412, -0, 1, -0, -0.500031412, -0, 0.866007268)
                            CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
                        end
                    else
                        Mon = 'Factory Staff'
                        NameQuest = 'Area2Quest'
                        LevelQuest = 2
                        NameMon = 'Factory Staff'
                        CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.0773208699999999e-10, -0.0319722369)
                        CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
                    end
                else
                    Mon = 'Swan Pirate'
                    LevelQuest = 1
                    NameQuest = 'Area2Quest'
                    NameMon = 'Swan Pirate'
                    CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, -0, 0.99026376, -0, 1, -0, -0.99026376, -0, 0.139203906)
                    CFrameMon = CFrame.new(1068.664306640625, 137.61428833007813, 1322.1060791015625)
                end
            else
                Mon = 'Mercenary'
                LevelQuest = 2
                NameQuest = 'Area1Quest'
                NameMon = 'Mercenary'
                CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, -0, -0.974368095, -0, 1, -0, 0.974368095, -0, -0.22495985)
                CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
            end
        else
            Mon = 'Raider'
            LevelQuest = 1
            NameQuest = 'Area1Quest'
            NameMon = 'Raider'
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, -0, -0.974368095, -0, 1, -0, 0.974368095, -0, -0.22495985)
            CFrameMon = CFrame.new(-728.3267211914063, 52.779319763183594, 2345.7705078125)
        end
    elseif World3 then
        if MyLevel < 1500 or MyLevel > 1524 then
            if MyLevel < 1525 or MyLevel > 1574 then
                if MyLevel < 1575 or MyLevel > 1599 then
                    if MyLevel < 1600 or MyLevel > 1624 then
                        if MyLevel < 1625 or MyLevel > 1649 then
                            if MyLevel < 1650 or MyLevel > 1699 then
                                if MyLevel < 1700 or MyLevel > 1724 then
                                    if MyLevel < 1725 or MyLevel > 1774 then
                                        if MyLevel < 1775 or MyLevel > 1799 then
                                            if MyLevel < 1800 or MyLevel > 1824 then
                                                if MyLevel < 1825 or MyLevel > 1849 then
                                                    if MyLevel < 1850 or MyLevel > 1899 then
                                                        if MyLevel < 1900 or MyLevel > 1924 then
                                                            if MyLevel < 1925 or MyLevel > 1974 then
                                                                if MyLevel < 1975 or MyLevel > 1999 then
                                                                    if MyLevel < 2000 or MyLevel > 2024 then
                                                                        if MyLevel < 2025 or MyLevel > 2049 then
                                                                            if MyLevel < 2050 or MyLevel > 2074 then
                                                                                if MyLevel < 2075 or MyLevel > 2099 then
                                                                                    if MyLevel < 2100 or MyLevel > 2124 then
                                                                                        if MyLevel < 2125 or MyLevel > 2149 then
                                                                                            if MyLevel < 2150 or MyLevel > 2199 then
                                                                                                if MyLevel < 2200 or MyLevel > 2224 then
                                                                                                    if MyLevel < 2225 or MyLevel > 2249 then
                                                                                                        if MyLevel < 2250 or MyLevel > 2274 then
                                                                                                            if MyLevel < 2275 or MyLevel > 2299 then
                                                                                                                if MyLevel < 2300 or MyLevel > 2324 then
                                                                                                                    if MyLevel < 2325 or MyLevel > 2349 then
                                                                                                                        if MyLevel < 2350 or MyLevel > 2374 then
                                                                                                                            if MyLevel < 2375 or MyLevel > 2399 then
                                                                                                                                if MyLevel < 2400 or MyLevel > 2424 then
                                                                                                                                    if MyLevel < 2425 or MyLevel > 2449 then
                                                                                                                                        if MyLevel < 2450 or MyLevel > 2474 then
                                                                                                                                            if MyLevel < 2475 or MyLevel > 2524 then
                                                                                                                                                if MyLevel < 2525 or MyLevel > 2550 then
                                                                                                                                                    if MyLevel < 2550 or MyLevel > 2574 then
                                                                                                                                                        if MyLevel >= 2575 then
                                                                                                                                                            Mon = 'Skull Slayer'
                                                                                                                                                            LevelQuest = 2
                                                                                                                                                            NameQuest = 'TikiQuest3'
                                                                                                                                                            NameMon = 'Skull Slayer'
                                                                                                                                                            CFrameQuest = CFrame.new(-16665.1914, 104.596405, 1579.69434, 0.951068401, -0, -0.308980465, -0, 1, -0, 0.308980465, -0, 0.951068401)
                                                                                                                                                            CFrameMon = CFrame.new(-16855.043, 122.457253, 1478.15308, -0.999392271, -0, -0.0348687991, -0, 1, -0, 0.0348687991, -0, -0.999392271)
                                                                                                                                                        end
                                                                                                                                                    else
                                                                                                                                                        Mon = 'Serpent Hunter'
                                                                                                                                                        LevelQuest = 1
                                                                                                                                                        NameQuest = 'TikiQuest3'
                                                                                                                                                        NameMon = 'Serpent Hunter'
                                                                                                                                                        CFrameQuest = CFrame.new(-16665.1914, 104.596405, 1579.69434, 0.951068401, -0, -0.308980465, -0, 1, -0, 0.308980465, -0, 0.951068401)
                                                                                                                                                        CFrameMon = CFrame.new(-16521.0625, 106.09285, 1488.78467, 0.469467044, -0, 0.882950008, -0, 1, -0, -0.882950008, -0, 0.469467044)
                                                                                                                                                    end
                                                                                                                                                else
                                                                                                                                                    Mon = 'Isle Champion'
                                                                                                                                                    LevelQuest = 2
                                                                                                                                                    NameQuest = 'TikiQuest2'
                                                                                                                                                    NameMon = 'Isle Champion'
                                                                                                                                                    CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
                                                                                                                                                    CFrameMon = CFrame.new(-16641.6796875, 235.7825469970703, 1031.282958984375)
                                                                                                                                                end
                                                                                                                                            else
                                                                                                                                                Mon = 'Island Boy'
                                                                                                                                                LevelQuest = 2
                                                                                                                                                NameQuest = 'TikiQuest1'
                                                                                                                                                NameMon = 'Island Boy'
                                                                                                                                                CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632813)
                                                                                                                                                CFrameMon = CFrame.new(-16901.26171875, 84.06756591796875, -192.88906860351563)
                                                                                                                                            end
                                                                                                                                        else
                                                                                                                                            Mon = 'Isle Outlaw'
                                                                                                                                            LevelQuest = 1
                                                                                                                                            NameQuest = 'TikiQuest1'
                                                                                                                                            NameMon = 'Isle Outlaw'
                                                                                                                                            CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632813)
                                                                                                                                            CFrameMon = CFrame.new(-16442.814453125, 116.13899993896484, -264.4637756347656)
                                                                                                                                        end
                                                                                                                                    else
                                                                                                                                        Mon = 'Snow Demon'
                                                                                                                                        LevelQuest = 2
                                                                                                                                        NameQuest = 'CandyQuest1'
                                                                                                                                        NameMon = 'Snow Demon'
                                                                                                                                        CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
                                                                                                                                        CFrameMon = CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375)
                                                                                                                                    end
                                                                                                                                else
                                                                                                                                    Mon = 'Candy Pirate'
                                                                                                                                    LevelQuest = 1
                                                                                                                                    NameQuest = 'CandyQuest1'
                                                                                                                                    NameMon = 'Candy Pirate'
                                                                                                                                    CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
                                                                                                                                    CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
                                                                                                                                end
                                                                                                                            else
                                                                                                                                Mon = 'Candy Rebel'
                                                                                                                                LevelQuest = 2
                                                                                                                                NameQuest = 'ChocQuest2'
                                                                                                                                NameMon = 'Candy Rebel'
                                                                                                                                CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
                                                                                                                                CFrameMon = CFrame.new(134.86563110351563, 77.2476806640625, -12876.5478515625)
                                                                                                                            end
                                                                                                                        else
                                                                                                                            Mon = 'Sweet Thief'
                                                                                                                            LevelQuest = 1
                                                                                                                            NameQuest = 'ChocQuest2'
                                                                                                                            NameMon = 'Sweet Thief'
                                                                                                                            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
                                                                                                                            CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
                                                                                                                        end
                                                                                                                    else
                                                                                                                        Mon = 'Chocolate Bar Battler'
                                                                                                                        LevelQuest = 2
                                                                                                                        NameQuest = 'ChocQuest1'
                                                                                                                        NameMon = 'Chocolate Bar Battler'
                                                                                                                        CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
                                                                                                                        CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
                                                                                                                    end
                                                                                                                else
                                                                                                                    Mon = 'Cocoa Warrior'
                                                                                                                    LevelQuest = 1
                                                                                                                    NameQuest = 'ChocQuest1'
                                                                                                                    NameMon = 'Cocoa Warrior'
                                                                                                                    CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
                                                                                                                    CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
                                                                                                                end
                                                                                                            else
                                                                                                                Mon = 'Head Baker'
                                                                                                                LevelQuest = 2
                                                                                                                NameQuest = 'CakeQuest2'
                                                                                                                NameMon = 'Head Baker'
                                                                                                                CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.2214214299999995e-8, 0.250778586, 4.74911062e-8, 1, 1.49904711e-8, -0.250778586, 2.64211941e-8, -0.96804446)
                                                                                                                CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
                                                                                                            end
                                                                                                        else
                                                                                                            Mon = 'Baking Staff'
                                                                                                            LevelQuest = 1
                                                                                                            NameQuest = 'CakeQuest2'
                                                                                                            NameMon = 'Baking Staff'
                                                                                                            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.2214214299999995e-8, 0.250778586, 4.74911062e-8, 1, 1.49904711e-8, -0.250778586, 2.64211941e-8, -0.96804446)
                                                                                                            CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
                                                                                                        end
                                                                                                    else
                                                                                                        Mon = 'Cake Guard'
                                                                                                        LevelQuest = 2
                                                                                                        NameQuest = 'CakeQuest1'
                                                                                                        NameMon = 'Cake Guard'
                                                                                                        CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-8, 0.288177818, 6.9301186999999995e-8, 1, 7.5193121099999995e-8, -0.288177818, -5.2032135e-8, 0.957576931)
                                                                                                        CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
                                                                                                    end
                                                                                                else
                                                                                                    Mon = 'Cookie Crafter'
                                                                                                    LevelQuest = 1
                                                                                                    NameQuest = 'CakeQuest1'
                                                                                                    NameMon = 'Cookie Crafter'
                                                                                                    CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-8, 0.288177818, 6.9301186999999995e-8, 1, 7.5193121099999995e-8, -0.288177818, -5.2032135e-8, 0.957576931)
                                                                                                    CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
                                                                                                end
                                                                                            else
                                                                                                Mon = 'Ice Cream Commander'
                                                                                                LevelQuest = 2
                                                                                                NameQuest = 'IceCreamIslandQuest'
                                                                                                NameMon = 'Ice Cream Commander'
                                                                                                CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, -0, -0, -1, -0, 1, -0, 1, -0, -0)
                                                                                                CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
                                                                                            end
                                                                                        else
                                                                                            Mon = 'Ice Cream Chef'
                                                                                            LevelQuest = 1
                                                                                            NameQuest = 'IceCreamIslandQuest'
                                                                                            NameMon = 'Ice Cream Chef'
                                                                                            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, -0, -0, -1, -0, 1, -0, 1, -0, -0)
                                                                                            CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
                                                                                        end
                                                                                    else
                                                                                        Mon = 'Peanut President'
                                                                                        LevelQuest = 2
                                                                                        NameQuest = 'NutsIslandQuest'
                                                                                        NameMon = 'Peanut President'
                                                                                        CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, -0, -0, -1, -0, 1, -0, 1, -0, -0)
                                                                                        CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
                                                                                    end
                                                                                else
                                                                                    Mon = 'Peanut Scout'
                                                                                    LevelQuest = 1
                                                                                    NameQuest = 'NutsIslandQuest'
                                                                                    NameMon = 'Peanut Scout'
                                                                                    CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, -0, -0, -1, -0, 1, -0, 1, -0, -0)
                                                                                    CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
                                                                                end
                                                                            else
                                                                                Mon = 'Posessed Mummy'
                                                                                LevelQuest = 2
                                                                                NameQuest = 'HauntedQuest2'
                                                                                NameMon = 'Posessed Mummy'
                                                                                CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, -0, -0, -1, -0, 1, -0, 1, -0, -0)
                                                                                CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
                                                                            end
                                                                        else
                                                                            Mon = 'Demonic Soul'
                                                                            LevelQuest = 1
                                                                            NameQuest = 'HauntedQuest2'
                                                                            NameMon = 'Demonic Soul'
                                                                            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, -0, -0, -1, -0, 1, -0, 1, -0, -0)
                                                                            CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
                                                                        end
                                                                    else
                                                                        Mon = 'Living Zombie'
                                                                        LevelQuest = 2
                                                                        NameQuest = 'HauntedQuest1'
                                                                        NameMon = 'Living Zombie'
                                                                        CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, -0, -0, 1, -0, 1, -0, -1, -0, -0)
                                                                        CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
                                                                    end
                                                                else
                                                                    Mon = 'Reborn Skeleton'
                                                                    LevelQuest = 1
                                                                    NameQuest = 'HauntedQuest1'
                                                                    NameMon = 'Reborn Skeleton'
                                                                    CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, -0, -0, 1, -0, 1, -0, -1, -0, -0)
                                                                    CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
                                                                end
                                                            else
                                                                Mon = 'Musketeer Pirate'
                                                                LevelQuest = 2
                                                                NameQuest = 'DeepForestIsland2'
                                                                NameMon = 'Musketeer Pirate'
                                                                CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, -0, 0.996196866, -0, 1, -0, -0.996196866, -0, -0.0871315002)
                                                                CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
                                                            end
                                                        else
                                                            Mon = 'Jungle Pirate'
                                                            LevelQuest = 1
                                                            NameQuest = 'DeepForestIsland2'
                                                            NameMon = 'Jungle Pirate'
                                                            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, -0, 0.996196866, -0, 1, -0, -0.996196866, -0, -0.0871315002)
                                                            CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
                                                        end
                                                    else
                                                        Mon = 'Mythological Pirate'
                                                        LevelQuest = 2
                                                        NameQuest = 'DeepForestIsland'
                                                        NameMon = 'Mythological Pirate'
                                                        CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, -0, 1, -0, 0.707079291, -0, 0.707134247)
                                                        CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
                                                    end
                                                else
                                                    Mon = 'Forest Pirate'
                                                    LevelQuest = 1
                                                    NameQuest = 'DeepForestIsland'
                                                    NameMon = 'Forest Pirate'
                                                    CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, -0, 1, -0, 0.707079291, -0, 0.707134247)
                                                    CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
                                                end
                                            else
                                                Mon = 'Fishman Captain'
                                                LevelQuest = 2
                                                NameQuest = 'DeepForestIsland3'
                                                NameMon = 'Fishman Captain'
                                                CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, -0, 0.469463557, -0, 1, -0, -0.469463557, -0, -0.882952213)
                                                CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625)
                                            end
                                        else
                                            Mon = 'Fishman Raider'
                                            LevelQuest = 1
                                            NameQuest = 'DeepForestIsland3'
                                            NameMon = 'Fishman Raider'
                                            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, -0, 0.469463557, -0, 1, -0, -0.469463557, -0, -0.882952213)
                                            CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
                                        end
                                    else
                                        Mon = 'Marine Rear Admiral'
                                        NameMon = 'Marine Rear Admiral'
                                        NameQuest = 'MarineTreeIsland'
                                        LevelQuest = 2
                                        CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
                                        CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
                                    end
                                else
                                    Mon = 'Marine Commodore'
                                    LevelQuest = 1
                                    NameQuest = 'MarineTreeIsland'
                                    NameMon = 'Marine Commodore'
                                    CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, -0, 0.258804798, -0, 1, -0, -0.258804798, -0, -0.965929747)
                                    CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
                                end
                            else
                                Mon = 'Venomous Assailant'
                                NameQuest = 'VenomCrewQuest'
                                LevelQuest = 2
                                NameMon = 'Venomous Assailant'
                                CFrameQuest = CFrame.new(5213.8740234375, 1004.5042724609375, 758.6944580078125)
                                CFrameMon = CFrame.new(4638.78564453125, 1078.94091796875, 881.8002319335938)
                            end
                        else
                            Mon = 'Hydra Enforcer'
                            NameQuest = 'VenomCrewQuest'
                            LevelQuest = 1
                            NameMon = 'Hydra Enforcer'
                            CFrameQuest = CFrame.new(5213.8740234375, 1004.5042724609375, 758.6944580078125)
                            CFrameMon = CFrame.new(4584.69287109375, 1002.6435546875, 705.7958984375)
                        end
                    else
                        Mon = 'Dragon Crew Archer'
                        NameQuest = 'DragonCrewQuest'
                        LevelQuest = 2
                        NameMon = 'Dragon Crew Archer'
                        CFrameQuest = CFrame.new(6738.96142578125, 127.81645965576172, -713.511474609375)
                        CFrameMon = CFrame.new(6817.91259765625, 484.804443359375, 513.4141235351563)
                    end
                else
                    Mon = 'Dragon Crew Warrior'
                    LevelQuest = 1
                    NameQuest = 'DragonCrewQuest'
                    NameMon = 'Dragon Crew Warrior'
                    CFrameQuest = CFrame.new(6738.96142578125, 127.81645965576172, -713.511474609375)
                    CFrameMon = CFrame.new(6920.71435546875, 56.15597152709961, -942.5044555664063)
                end
            else
                Mon = 'Pistol Billionaire'
                LevelQuest = 2
                NameQuest = 'PiratePortQuest'
                NameMon = 'Pistol Billionaire'
                CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, -0, 1, -0, 0.258804798, -0, 0.965929627)
                CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875)
            end
        else
            Mon = 'Pirate Millionaire'
            LevelQuest = 1
            NameQuest = 'PiratePortQuest'
            NameMon = 'Pirate Millionaire'
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, -0, 1, -0, 0.258804798, -0, 0.965929627)
            CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
        end
    end
end
function MaterialMon()
    local _LocalPlayer2 = game.Players.LocalPlayer
    local _Character = _LocalPlayer2.Character

    if _Character then
        _Character = _LocalPlayer2.Character:FindFirstChild('HumanoidRootPart')
    end
    if _Character then
        local function v22(p20, p21)
            if p21 <= (_Character.Position - p20).Magnitude then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', p20)
            end
        end

        if World1 then
            if SelectMaterial ~= 'Angel Wings' then
                if SelectMaterial ~= 'Leather + Scrap Metal' then
                    if SelectMaterial ~= 'Magma Ore' then
                        if SelectMaterial == 'Fish Tail' then
                            MMon = {
                                'Fishman Warrior',
                                'Fishman Commando',
                                'Fishman Lord',
                            }
                            MPos = CFrame.new(61123, 19, 1569)
                            SP = 'Default'

                            v22(Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875), 17000)
                        end
                    else
                        MMon = {
                            'Military Soldier',
                            'Military Spy',
                            'Magma Admiral',
                        }
                        MPos = CFrame.new(-5815, 84, 8820)
                        SP = 'Default'
                    end
                else
                    MMon = {
                        'Brute',
                        'Pirate',
                    }
                    MPos = CFrame.new(-1145, 15, 4350)
                    SP = 'Default'
                end
            else
                MMon = {
                    'Shanda',
                    'Royal Squad',
                    'Royal Soldier',
                    'Wysper',
                    'Thunder God',
                }
                MPos = CFrame.new(-4698, 845, -1912)
                SP = 'Default'

                v22(Vector3.new(-4607.82275, 872.54248, -1667.55688), 10000)
            end
        elseif World2 then
            if SelectMaterial ~= 'Leather + Scrap Metal' then
                if SelectMaterial ~= 'Magma Ore' then
                    if SelectMaterial ~= 'Ectoplasm' then
                        if SelectMaterial ~= 'Mystic Droplet' then
                            if SelectMaterial ~= 'Radioactive Material' then
                                if SelectMaterial == 'Vampire Fang' then
                                    MMon = {
                                        'Vampire',
                                    }
                                    MPos = CFrame.new(-6033, 7, -1317)
                                    SP = 'Default'
                                end
                            else
                                MMon = {
                                    'Factory Staff',
                                }
                                MPos = CFrame.new(295, 73, -56)
                                SP = 'Default'
                            end
                        else
                            MMon = {
                                'Water Fighter',
                            }
                            MPos = CFrame.new(-3385, 239, -10542)
                            SP = 'Default'
                        end
                    else
                        MMon = {
                            'Ship Deckhand',
                            'Ship Engineer',
                            'Ship Steward',
                            'Ship Officer',
                        }
                        MPos = CFrame.new(911.35827636719, 125.95812988281, 33159.5390625)
                        SP = 'Default'

                        v22(Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875), 18000)
                    end
                else
                    MMon = {
                        'Magma Ninja',
                        'Lava Pirate',
                    }
                    MPos = CFrame.new(-5428, 78, -5959)
                    SP = 'Default'
                end
            else
                MMon = {
                    'Marine Captain',
                }
                MPos = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
                SP = 'Default'
            end
        elseif World3 then
            if SelectMaterial ~= 'Leather + Scrap Metal' then
                if SelectMaterial ~= 'Fish Tail' then
                    if SelectMaterial ~= 'Conjured Cocoa' then
                        if SelectMaterial ~= 'Dragon Scale' then
                            if SelectMaterial ~= 'Gunpowder' then
                                if SelectMaterial == 'Mini Tusk' then
                                    MMon = {
                                        'Mythological Pirate',
                                    }
                                    MPos = CFrame.new(-13545, 470, -6917)
                                    SP = 'Default'
                                end
                            else
                                MMon = {
                                    'Pistol Billionaire',
                                }
                                MPos = CFrame.new(-469, 74, 5904)
                                SP = 'Default'
                            end
                        else
                            MMon = {
                                'Dragon Crew Warrior',
                            }
                            MPos = CFrame.new(6594, 383, 139)
                            SP = 'Default'
                        end
                    else
                        MMon = {
                            'Chocolate Bar Battler',
                            'Cocoa Warrior',
                        }
                        MPos = CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625)
                        SP = 'Default'
                    end
                else
                    MMon = {
                        'Fishman Raider',
                        'Fishman Captain',
                    }
                    MPos = CFrame.new(-10993, 332, -8940)
                    SP = 'Default'
                end
            else
                MMon = {
                    'Jungle Pirate',
                    'Forest Pirate',
                }
                MPos = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)
                SP = 'Default'
            end
        end
    end
end

local u23 = 0
local u24 = 1

function AutoHaki()
    if not game:GetService('Players').LocalPlayer.Character:FindFirstChild('HasBuso') then
        local v25 = tick()

        if u24 <= v25 - u23 then
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Buso')

            u23 = v25
        end
    end
end

local u26 = 0
local u27 = 0.5

function UnEquipWeapon(p28)
    local v29 = tick()

    if u27 <= v29 - u26 then
        if game.Players.LocalPlayer.Character:FindFirstChild(p28) then
            getgenv().NotAutoEquip = true
            game.Players.LocalPlayer.Character[p28].Parent = game.Players.LocalPlayer.Backpack
            getgenv().NotAutoEquip = false
        end

        u26 = v29
    end
end

local u30 = 0
local u31 = 0.5

function EquipWeapon(p32)
    local v33 = tick()

    if u31 <= v33 - u30 then
        local v34 = not getgenv().NotAutoEquip and game.Players.LocalPlayer.Backpack:FindFirstChild(p32)

        if v34 then
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v34)
        end

        u30 = v33
    end
end
function BTP(p35)
    local _LocalPlayer3 = game.Players.LocalPlayer
    local _HumanoidRootPart = _LocalPlayer3.Character.HumanoidRootPart
    local _Humanoid = _LocalPlayer3.Character.Humanoid
    local _Main = _LocalPlayer3.PlayerGui.Main
    local _ = p35.Position
    local _Position = _HumanoidRootPart.Position

    while true do
        _Humanoid.Health = 0
        _HumanoidRootPart.CFrame = p35
        _Main.Quest.Visible = false

        if (_HumanoidRootPart.Position - _Position).Magnitude > 1 then
            _Position = _HumanoidRootPart.Position
            _HumanoidRootPart.CFrame = p35
        end

        task.wait(0.5)

        if (p35.Position - _HumanoidRootPart.Position).Magnitude <= 2000 then
            return
        end
    end
end
function BTPZ(p41)
    local _LocalPlayer4 = game.Players.LocalPlayer

    if _LocalPlayer4.Character and _LocalPlayer4.Character:FindFirstChild('HumanoidRootPart') then
        _LocalPlayer4.Character.HumanoidRootPart.CFrame = p41
    end
end

local u43 = 0
local u44 = 0.5

function fastpos(p45)
    local v46 = tick()

    if u44 <= v46 - u43 then
        local _Magnitude = (p45.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude

        game:GetService('TweenService'):Create(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(_Magnitude / 1000, Enum.EasingStyle.Linear), {CFrame = p45}):Play()

        u43 = v46
    end
end

local u48 = 0
local u49 = 0.5

function TPB(p50, p51)
    local v52 = tick()

    if u49 <= v52 - u48 then
        local _TweenService = game:GetService('TweenService')
        local _Magnitude2 = (p51.CFrame.Position - p50.Position).Magnitude
        local _SpeedBoat = getgenv().SpeedBoat
        local v56 = TweenInfo.new(_Magnitude2 / _SpeedBoat, Enum.EasingStyle.Linear)

        if _Magnitude2 <= 25 then
            return {
                Stop = function() end,
            }
        end

        local u57 = _TweenService:Create(p51, v56, {CFrame = p50})
        local v58 = u57

        u57.Play(v58)

        u48 = v52

        return {
            Stop = function()
                u57:Cancel()
            end,
        }
    end
end

local u59 = 0
local u60 = 0.2

function EquipAllWeapon()
    pcall(function()
        local v61 = tick()

        if u60 <= v61 - u59 then
            local v62, v63, v64 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

            while true do
                local v65

                v64, v65 = v62(v63, v64)

                if v64 == nil then
                    break
                end
                if v65:IsA('Tool') and (v65.Name ~= 'Summon Sea Beast' and (v65.Name ~= 'Water Body' and v65.Name ~= 'Awakening')) then
                    local v66 = game.Players.LocalPlayer.Backpack:FindFirstChild(v65.Name)

                    if v66 then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v66)
                    end
                end
            end

            u59 = v61
        end
    end)
end
function CheckNearestTeleporter(p67)
    local _ = game.Players.LocalPlayer.Data.Level.Value
    local _Position2 = p67.Position
    local _huge = math.huge
    local _huge2 = math.huge
    local _PlaceId2 = game.PlaceId
    local v72 = nil
    local v73 = nil
    local v74 = nil

    if _PlaceId2 == 2753915549 then
        v72 = true
    elseif _PlaceId2 == 4442272183 then
        v73 = true
    elseif _PlaceId2 == 7449423635 then
        v74 = true
    end

    local v75 = {}
    local v76

    if v74 then
        v76 = {
            Mansion = Vector3.new(-12471, 374, -7551),
            Hydra = Vector3.new(5659, 1013, -341),
            ['Caslte On The Sea'] = Vector3.new(-5092, 315, -3130),
            ['Floating Turtle'] = Vector3.new(-12001, 332, -8861),
            ['Beautiful Pirate'] = Vector3.new(5319, 23, -93),
            ['Temple Of Time'] = Vector3.new(28286, 14897, 103),
        }
    elseif v73 then
        v76 = {
            ['Flamingo Mansion'] = Vector3.new(-317, 331, 597),
            ['Flamingo Room'] = Vector3.new(2283, 15, 867),
            ['Cursed Ship'] = Vector3.new(923, 125, 32853),
            ['Zombie Island'] = Vector3.new(-6509, 83, -133),
        }
    else
        v76 = v72 and {
            ['Sky Island 1'] = Vector3.new(-4652, 873, -1754),
            ['Sky Island 2'] = Vector3.new(-7895, 5547, -380),
            ['Under Water Island'] = Vector3.new(61164, 5, 1820),
            ['Under Water Island Entrace'] = Vector3.new(3865, 5, -1926),
        } or v75
    end

    local v77, v78, v79 = pairs(v76)
    local v80 = {}

    while true do
        local v81

        v79, v81 = v77(v78, v79)

        if v79 == nil then
            break
        end

        v80[v79] = (v81 - _Position2).Magnitude
    end

    local v82, v83, v84 = pairs(v80)

    while true do
        local v85

        v84, v85 = v82(v83, v84)

        if v84 == nil then
            break
        end
        if v85 < _huge then
            _huge2 = v85
            _huge = _huge2

            local v86 = _huge2

            _huge2 = _huge
            v86 = _huge
        end
    end

    local v87, v88, v89 = pairs(v80)
    local v90 = nil

    while true do
        local v91

        v89, v91 = v87(v88, v89)

        if v89 == nil then
            break
        end
        if v91 <= _huge then
            v90 = v76[v89]
        end
    end

    if _huge2 <= (_Position2 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude then
        return v90
    end
end
function requestEntrance(p92)
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack({
        'requestEntrance',
        p92,
    }))

    local _CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(_CFrame.X, _CFrame.Y + 50, _CFrame.Z)

    task.wait(0.5)
end
function topos(p94)
    pcall(function()
        if game:GetService('Players').LocalPlayer and (game:GetService('Players').LocalPlayer.Character and (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Humanoid') and (game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and (game:GetService('Players').LocalPlayer.Character.Humanoid.Health > 0 and game:GetService('Players').LocalPlayer.Character.HumanoidRootPart)))) then
            if not TweenSpeed then
                TweenSpeed = 350
            end

            DefualtY = p94.Y
            TargetY = p94.Y
            targetCFrameWithDefualtY = CFrame.new(p94.X, DefualtY, p94.Z)
            targetPos = p94.Position
            oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            Distance = (targetPos - game:GetService('Players').LocalPlayer.Character:WaitForChild('HumanoidRootPart').Position).Magnitude

            if Distance <= 300 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p94
            end

            local v95 = CheckNearestTeleporter(p94)

            if v95 then
                pcall(function()
                    tween:Cancel()
                end)
                requestEntrance(v95)
            end

            b1 = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, DefualtY, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
            IngoreY = true

            if IngoreY and (b1.Position - targetCFrameWithDefualtY.Position).Magnitude > 5 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, DefualtY, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)

                local _TweenService2 = game:GetService('TweenService')
                local v97 = TweenInfo.new((targetPos - game:GetService('Players').LocalPlayer.Character:WaitForChild('HumanoidRootPart').Position).Magnitude / TweenSpeed, Enum.EasingStyle.Linear)

                tween = _TweenService2:Create(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, v97, {CFrame = targetCFrameWithDefualtY})

                tween:Play();

                ({}).Stop = function(_)
                    tween:Cancel()
                end

                tween.Completed:Wait()

                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, TargetY, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
            else
                local _TweenService3 = game:GetService('TweenService')
                local v99 = TweenInfo.new((targetPos - game:GetService('Players').LocalPlayer.Character:WaitForChild('HumanoidRootPart').Position).Magnitude / TweenSpeed, Enum.EasingStyle.Linear)
                local v100 = {CFrame = p94}

                tween = _TweenService3:Create(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, v99, v100)

                tween:Play();

                ({}).Stop = function(_)
                    tween:Cancel()
                end

                tween.Completed:Wait()

                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, TargetY, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
            end
            if tween then
                return tweenfunc
            else
                return tween
            end
        else
            return
        end
    end)
end
function StopTween(p101)
    pcall(function()
        if not p101 then
            getgenv().StopTween = true

            if tween then
                tween:Cancel()

                tween = nil
            end

            local _LocalPlayer5 = game:GetService('Players').LocalPlayer

            if _LocalPlayer5 then
                _LocalPlayer5 = _LocalPlayer5.Character
            end
            if _LocalPlayer5 then
                _LocalPlayer5 = _LocalPlayer5:FindFirstChild('HumanoidRootPart')
            end
            if _LocalPlayer5 then
                _LocalPlayer5.Anchored = true

                task.wait(0.1)

                _LocalPlayer5.CFrame = _LocalPlayer5.CFrame
                _LocalPlayer5.Anchored = false
            end
            if _LocalPlayer5 then
                _LocalPlayer5 = _LocalPlayer5:FindFirstChild('BodyClip')
            end
            if _LocalPlayer5 then
                _LocalPlayer5:Destroy()
            end

            getgenv().StopTween = false
            getgenv().Clip = false
        end
    end)
end

spawn(function()
    while task.wait() do
        pcall(function()
            if getgenv().TeleportIsland or (getgenv().AutoFarm or (getgenv().AutoMaterial or (getgenv().MasteryFarm or (getgenv().AutoGetMelee or (getgenv().TeleportToFruit or (getgenv().AutoNewWorld or (getgenv().AutoThirdSea or (getgenv().AutoFactory or (getgenv().AutoPirateRaid or (getgenv().AutoEliteHunter or (getgenv().AutoTouchPadHaki or (getgenv().AutoRipIndra or (getgenv().AutoSoulReaper or (getgenv().AutoDoughKing or (getgenv().AutoDarkbeard or (getgenv().DojoClaimQuest or (getgenv().DragonTalonUpgrade or (getgenv().BlazeEmberFarm or (getgenv().AutoObservationHakiV2 or (getgenv().AutoObservation or (getgenv().AutoFarmBoss or (getgenv().AutoFarmAllBoss or (getgenv().Auto_Dungeon or (getgenv().SailBoat or (getgenv().RelzFishBoat or (getgenv().RelzPirateBrigade or (getgenv().RelzPirateGrandBrigade or (getgenv().AutoTerrorshark or (getgenv().AutoSeaBest or (getgenv().AutoFrozenDimension or (getgenv().KillLevi or (getgenv().UpgradeRaceV2 or (getgenv().AutoCyborg or (getgenv().AutoGhoul or (getgenv().QuestTrain_2 or (getgenv().TeleportMigare or (getgenv().Tweentohighestpoint or (getgenv().TeleportToGear or (getgenv().AutoTrialRace or (getgenv().AutoKillPlayerAfterTrial or (getgenv().AutoRainbowHaki or (getgenv().AutoSkullGuitar or (getgenv().AutoGetCDK or (getgenv().AutoTushita or (getgenv().AutoSaber or getgenv().TeleportPlayer))))))))))))))))))))))))))))))))))))))))))))) then
                if not game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('BodyClip') then
                    local _BodyVelocity = Instance.new('BodyVelocity')

                    _BodyVelocity.Name = 'BodyClip'
                    _BodyVelocity.Parent = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
                    _BodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
                    _BodyVelocity.Velocity = Vector3.new(0, 0, 0)
                end
            else
                local _BodyClip = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('BodyClip')

                if _BodyClip then
                    _BodyClip:Destroy()
                end
            end
        end)
    end
end)
spawn(function()
    pcall(function()
        game:GetService('RunService').Stepped:Connect(function()
            if getgenv().TeleportIsland or (getgenv().AutoFarm or (getgenv().AutoMaterial or (getgenv().MasteryFarm or (getgenv().AutoGetMelee or (getgenv().TeleportToFruit or (getgenv().AutoNewWorld or (getgenv().AutoThirdSea or (getgenv().AutoFactory or (getgenv().AutoPirateRaid or (getgenv().AutoEliteHunter or (getgenv().AutoTouchPadHaki or (getgenv().AutoRipIndra or (getgenv().AutoSoulReaper or (getgenv().AutoDoughKing or (getgenv().AutoDarkbeard or (getgenv().DojoClaimQuest or (getgenv().DragonTalonUpgrade or (getgenv().BlazeEmberFarm or (getgenv().AutoObservationHakiV2 or (getgenv().AutoObservation or (getgenv().AutoFarmBoss or (getgenv().AutoFarmAllBoss or (getgenv().Auto_Dungeon or (getgenv().SailBoat or (getgenv().RelzFishBoat or (getgenv().RelzPirateBrigade or (getgenv().RelzPirateGrandBrigade or (getgenv().AutoTerrorshark or (getgenv().AutoSeaBest or (getgenv().AutoFrozenDimension or (getgenv().KillLevi or (getgenv().UpgradeRaceV2 or (getgenv().AutoCyborg or (getgenv().AutoGhoul or (getgenv().QuestTrain_2 or (getgenv().TeleportMigare or (getgenv().Tweentohighestpoint or (getgenv().TeleportToGear or (getgenv().AutoTrialRace or (getgenv().AutoKillPlayerAfterTrial or (getgenv().AutoRainbowHaki or (getgenv().AutoSkullGuitar or (getgenv().AutoGetCDK or (getgenv().AutoTushita or (getgenv().AutoSaber or getgenv().TeleportPlayer))))))))))))))))))))))))))))))))))))))))))))) then
                local v105, v106, v107 = pairs(game:GetService('Players').LocalPlayer.Character:GetDescendants())

                while true do
                    local v108

                    v107, v108 = v105(v106, v107)

                    if v107 == nil then
                        break
                    end
                    if v108:IsA('BasePart') then
                        v108.CanCollide = false
                    end
                end
            end
        end)
    end)
end)
spawn(function()
    local v109 = 0
    local v110 = 1

    while wait() do
        if (getgenv().AutoFarm or getgenv().Kill_Trial_V4) and v110 < tick() - v109 then
            pcall(function()
                game:GetService('ReplicatedStorage').Remotes.CommE:FireServer('Ken', true)
            end)

            v109 = tick()
        end
    end
end)
spawn(function()
    local v111 = tick()

    while task.wait(0.1) do
        if getgenv().AutoSeaBest and CheckSeaBeast() then
            local v112 = tick()

            if v112 - v111 >= 0.5 then
                Pos = CFrame.new(math.random(-600, 600), math.random(0, 300), math.random(-600, 600))
                v111 = v112
            end
        end
    end
end)

local _LocalPlayer6 = game.Players.LocalPlayer

local function u116(p114)
    if not p114 then
        return false
    end

    local _Humanoid2 = p114:FindFirstChild('Humanoid')

    if _Humanoid2 then
        _Humanoid2 = _Humanoid2.Health > 0
    end

    return _Humanoid2
end
local function u133(p117, p118)
    local v119 = game:GetService('Workspace').Enemies:GetChildren()
    local v120 = game:GetService('Players'):GetPlayers()
    local _Position3 = p117:GetPivot().Position
    local v122, v123, v124 = ipairs(v119)
    local v125 = {}

    while true do
        local v126

        v124, v126 = v122(v123, v124)

        if v124 == nil then
            break
        end

        local _HumanoidRootPart2 = v126:FindFirstChild('HumanoidRootPart')

        if _HumanoidRootPart2 and (u116(v126) and (_HumanoidRootPart2.Position - _Position3).Magnitude <= p118) then
            table.insert(v125, v126)
        end
    end

    local v128, v129, v130 = ipairs(v120)

    while true do
        local v131

        v130, v131 = v128(v129, v130)

        if v130 == nil then
            break
        end
        if v131 ~= _LocalPlayer6 and v131.Character then
            local _HumanoidRootPart3 = v131.Character:FindFirstChild('HumanoidRootPart')

            if _HumanoidRootPart3 and (u116(v131.Character) and (_HumanoidRootPart3.Position - _Position3).Magnitude <= p118) then
                table.insert(v125, v131.Character)
            end
        end
    end

    return v125
end

function AttackNoCoolDown()
    local _Character2 = _LocalPlayer6.Character

    if not _Character2 then
        return
    end

    local v135, v136, v137 = ipairs(_Character2:GetChildren())
    local v138 = nil

    while true do
        local v139

        v137, v139 = v135(v136, v137)

        if v137 == nil then
            v139 = v138

            break
        end
        if v139:IsA('Tool') then
            break
        end
    end

    if v139 then
        local v140 = u133(_Character2, 60)

        if v139:FindFirstChild('LeftClickRemote') then
            local v141, v142, v143 = ipairs(v140)
            local v144 = 1

            while true do
                local v145, v146 = v141(v142, v143)

                if v145 == nil then
                    break
                end

                v143 = v145

                local _HumanoidRootPart4 = v146:FindFirstChild('HumanoidRootPart')

                if _HumanoidRootPart4 then
                    local _Unit = (_HumanoidRootPart4.Position - _Character2:GetPivot().Position).Unit

                    v139.LeftClickRemote:FireServer(_Unit, v144)

                    v144 = v144 + 1
                end
            end
        else
            local v149, v150, v151 = ipairs(v140)
            local u152 = {}
            local u153 = nil

            while true do
                local v154, v155 = v149(v150, v151)

                if v154 == nil then
                    break
                end

                v151 = v154

                if not v155:GetAttribute('IsBoat') then
                    local _Head = v155:FindFirstChild('Head')

                    if _Head then
                        table.insert(u152, {v155, _Head})

                        u153 = _Head
                    end
                end
            end

            if u153 then
                local _ReplicatedStorage3 = game:GetService('ReplicatedStorage')
                local _RERegisterAttack = _ReplicatedStorage3:WaitForChild('Modules'):WaitForChild('Net'):WaitForChild('RE/RegisterAttack')
                local _RERegisterHit = _ReplicatedStorage3:WaitForChild('Modules'):WaitForChild('Net'):WaitForChild('RE/RegisterHit')

                pcall(function()
                    _RERegisterAttack:FireServer(0.1)
                    _RERegisterHit:FireServer(u153, u152)
                end)
            end
        end
    end
end

print('--[[Loaded UI]]--')

Window = loadstring(game:HttpGet('https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua'))():CreateWindow({
    Title = 'Banana Cat Hub [ Free ] By Chiriku Roblox',
    SubTitle = '',
    TabWidth = 155,
    Size = UDim2.fromOffset(500, 350),
    Acrylic = false,
    Theme = 'Dark',
    MinimizeKey = Enum.KeyCode.LeftControl,
})
Shop = Window:AddTab({
    Title = 'Tab Shop',
    Icon = '',
})
sex = {
    'WildDares',
    'BossBuild',
    'GetPranked',
    'Sub2OfficialNoobie',
    'Sub2Daigrock',
    'Sub2NoobMaster123',
    'Bluxxy',
    'JCWK',
    'Enyu_is_Pro',
    'Sub2Fer999',
    'kittgaming',
    'TheGreatAce',
    'StrawHatMaine',
    'TantaiGaming',
    'Axiore',
    'SUB2GAMERROBOT_EXP1',
    'MagicBus',
    'StarcodeHEO',
    'Sub2CaptainMaui',
    'FIGHT4FRUIT',
    'EARN_FRUITS',
}

Shop:AddButton({
    Title = 'Redeem Code',
    Callback = function()
        function RedeemCode(p160)
            game:GetService('ReplicatedStorage').Remotes.Redeem:InvokeServer(p160)
        end

        local v161, v162, v163 = pairs(sex)
        local u164 = 0.5

        while true do
            local u165

            v163, u165 = v161(v162, v163)

            if v163 == nil then
                break
            end

            spawn(function()
                RedeemCode(u165)
                wait(u164)
            end)
        end
    end,
})

local _CommF_ = game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CommF_')

Shop:AddButton({
    Title = 'Teleport Old World',
    Callback = function()
        local _, _ = pcall(function()
            return _CommF_:InvokeServer('TravelMain')
        end)
    end,
})

local _CommF_2 = game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CommF_')

Shop:AddButton({
    Title = 'Teleport New World',
    Callback = function()
        local _, _ = pcall(function()
            return _CommF_2:InvokeServer('TravelDressrosa')
        end)
    end,
})

local _CommF_3 = game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CommF_')

Shop:AddButton({
    Title = 'Teleport Third Sea',
    Callback = function()
        local _, _ = pcall(function()
            return _CommF_3:InvokeServer('TravelZou')
        end)
    end,
})
Shop:AddParagraph({
    Title = 'Fighting Shop',
    Content = string.rep('-', 21),
})

local _CommF_4 = game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CommF_')

Shop:AddButton({
    Title = 'Black Leg',
    Callback = function()
        local _, _ = pcall(function()
            return _CommF_4:InvokeServer('BuyBlackLeg')
        end)
    end,
})

local _CommF_5 = game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CommF_')

Shop:AddButton({
    Title = 'Fishman Karate',
    Callback = function()
        local _, _ = pcall(function()
            return _CommF_5:InvokeServer('BuyFishmanKarate')
        end)
    end,
})

local _CommF_6 = game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CommF_')

Shop:AddButton({
    Title = 'Electro',
    Callback = function()
        local _, _ = pcall(function()
            return _CommF_6:InvokeServer('BuyElectro')
        end)
    end,
})

local _CommF_7 = game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CommF_')

Shop:AddButton({
    Title = 'Dragon Breath',
    Callback = function()
        local v173, _ = pcall(function()
            return _CommF_7:InvokeServer('BlackbeardReward', 'DragonClaw', '1')
        end)

        if v173 then
            local v174, _ = pcall(function()
                return _CommF_7:InvokeServer('BlackbeardReward', 'DragonClaw', '2')
            end)

            if not v174 then
            end
        else
            return
        end
    end,
})
Shop:AddButton({
    Title = 'SuperHuman',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySuperhuman')
    end,
})
Shop:AddButton({
    Title = 'Death Step',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDeathStep')
    end,
})
Shop:AddButton({
    Title = 'Sharkman Karate',
    Callback = function()
        local _CommF_8 = game:GetService('ReplicatedStorage').Remotes.CommF_

        _CommF_8:InvokeServer('BuySharkmanKarate', true)
        wait(0.2)
        _CommF_8:InvokeServer('BuySharkmanKarate')
    end,
})
Shop:AddButton({
    Title = 'Electric Claw',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw')
    end,
})
Shop:AddButton({
    Title = 'Dragon Talon',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDragonTalon')
    end,
})
Shop:AddButton({
    Title = 'God Human',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyGodhuman')
    end,
})
Shop:AddButton({
    Title = 'Sanguine Art',
    Callback = function()
        local _CommF_9 = game:GetService('ReplicatedStorage').Remotes.CommF_

        _CommF_9:InvokeServer('BuySanguineArt', true)
        wait(0.2)
        _CommF_9:InvokeServer('BuySanguineArt')
    end,
})
Shop:AddParagraph({
    Title = 'Abilities Shop',
    Content = string.rep('-', 21),
})
Shop:AddButton({
    Title = 'Skyjump [ $10,000 Beli ]',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Geppo')
    end,
})
Shop:AddButton({
    Title = 'Buso Haki [ $25,000 Beli ]',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Buso')
    end,
})
Shop:AddButton({
    Title = 'Observation haki [ $750,000 Beli ]',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('KenTalk', 'Buy')
    end,
})
Shop:AddButton({
    Title = 'Soru [ $100,000 Beli ]',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Soru')
    end,
})
Shop:AddParagraph({
    Title = 'Misc Shop',
    Content = string.rep('-', 21),
})
Shop:AddButton({
    Title = 'Buy Refund Stat (2500F)',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Refund', '1')
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Refund', '2')
    end,
})
Shop:AddButton({
    Title = 'Buy Reroll Race (3000F)',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Reroll', '1')
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Reroll', '2')
    end,
})
Shop:AddButton({
    Title = 'Buy Ghoul Race',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'Ectoplasm',
            'BuyCheck',
            4,
        }))
        wait(0.5)
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'Ectoplasm',
            'Change',
            4,
        }))
    end,
})
Shop:AddButton({
    Title = 'Buy Cyborg Race (2500F)',
    Callback = function()
        if not isBuying then
            isBuying = true

            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                'CyborgTrainer',
                'Buy',
            }))
            wait(0.5)

            isBuying = false
        end
    end,
})

Server = Window:AddTab({
    Title = 'Tab Status And Server',
    Icon = '',
})
Time = Server:AddParagraph({
    Title = 'Time Zone',
    Content = '',
})

function UpdateOS()
    local _t = os.date('*t')
    local v178 = _t.hour % 24
    local v179 = v178 < 12 and 'AM' or 'PM'
    local __02i02i02is = string.format('%02i:%02i:%02i %s', (v178 - 1) % 12 + 1, _t.min, _t.sec, v179)
    local __02d02d04d = string.format('%02d/%02d/%04d', _t.day, _t.month, _t.year)
    local _LocalizationService = game:GetService('LocalizationService')
    local _LocalPlayer7 = game:GetService('Players').LocalPlayer
    local _ = _LocalPlayer7.Name
    local v184

    if getgenv().countryRegionCode then
        v184 = getgenv().countryRegionCode
    else
        local v185

        v185, v184 = pcall(function()
            return _LocalizationService:GetCountryRegionForPlayerAsync(_LocalPlayer7)
        end)

        if v185 then
            getgenv().countryRegionCode = v184
        else
            getgenv().countryRegionCode = 'Unknown'
        end
    end

    Time:SetDesc(__02d02d04d .. ' - ' .. __02i02i02is .. ' [ ' .. v184 .. ' ]')
end

spawn(function()
    while true do
        UpdateOS()
        wait(1)
    end
end)

Timmessss = Server:AddParagraph({
    Title = 'Time',
    Content = '',
})

function UpdateTime()
    local v186 = math.floor(workspace.DistributedGameTime + 0.5)
    local v187 = math.floor(v186 / 3600) % 24
    local v188 = math.floor(v186 / 60) % 60
    local v189 = math.floor(v186 / 1) % 60

    Timmessss:SetDesc(v187 .. ' Hour (h) ' .. v188 .. ' Minute (m) ' .. v189 .. ' Second (s) ')
end

spawn(function()
    while true do
        UpdateTime()
        wait(1)
    end
end)

Miragecheck = Server:AddParagraph({
    Title = 'Mirage Island',
    Content = 'Status: ',
})

local u190 = ''

spawn(function()
    pcall(function()
        while true do
            repeat
                wait(1)

                local v191 = game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') ~= nil and '\u{2705}\u{fe0f}' or '\u{274c}\u{fe0f}'
            until v191 ~= u190

            Miragecheck:SetDesc('Status: ' .. v191)

            u190 = v191
        end
    end)
end)

Kitsunecheck = Server:AddParagraph({
    Title = 'Kitsune Island',
    Content = 'Status: ',
})

spawn(function()
    local v192 = ''

    while task.wait(1) do
        local v193 = game:GetService('Workspace').Map:FindFirstChild('KitsuneIsland') and '\u{2705}\u{fe0f}' or '\u{274c}\u{fe0f}'

        if v193 ~= v192 then
            Kitsunecheck:SetDesc('Status: ' .. v193)

            v192 = v193
        end
    end
end)

CPrehistoriccheck = Server:AddParagraph({
    Title = 'Prehistoric Island',
    Desc = 'Status: ',
})

task.spawn(function()
    local v194 = ''

    while task.wait(1) do
        local v195 = game.Workspace._WorldOrigin.Locations:FindFirstChild('Prehistoric Island') and '\u{2705}\u{fe0f}' or '\u{274c}\u{fe0f}'

        if v195 ~= v194 then
            CPrehistoriccheck:SetDesc('Status: ' .. v195)

            v194 = v195
        end
    end
end)

FrozenIsland = Server:AddParagraph({
    Title = 'Frozen Dimension',
    Content = 'Status: ',
})

spawn(function()
    local v196 = ''

    while wait(1) do
        local v197 = game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') and '\u{2705}\u{fe0f}' or '\u{274c}\u{fe0f}'

        if v197 ~= v196 then
            FrozenIsland:SetDesc('Status: ' .. v197)

            v196 = v197
        end
    end
end)

MobCakePrince = Server:AddParagraph({
    Title = 'Dimension Killed',
    Content = '',
})

spawn(function()
    while wait(1) do
        local _CakePrinceSpawner = game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner')
        local v199 = string.len(_CakePrinceSpawner) < 86 and 'Cake Prince: \u{2705}\u{fe0f}' or 'Kill: ' .. string.sub(_CakePrinceSpawner, 39, 41)

        MobCakePrince:SetDesc(v199)
    end
end)

CheckRip = Server:AddParagraph({
    Title = 'Rip_Indra',
    Content = 'Status: ',
})

spawn(function()
    local v200 = ''

    while wait(1) do
        local v201 = game:GetService('ReplicatedStorage'):FindFirstChild('rip_indra True Form') or (game:GetService('Workspace').Enemies:FindFirstChild('rip_indra') and '\u{2705}\u{fe0f}' or '\u{274c}\u{fe0f}')

        if v201 ~= v200 then
            CheckRip:SetDesc('Status: ' .. v201)

            v200 = v201
        end
    end
end)

CheckDoughKing = Server:AddParagraph({
    Title = 'Dough King',
    Content = 'Status: ',
})

spawn(function()
    local v202 = ''

    while wait(1) do
        local v203 = game:GetService('ReplicatedStorage'):FindFirstChild('Dough King') or (game:GetService('Workspace').Enemies:FindFirstChild('Dough King') and '\u{2705}\u{fe0f}' or '\u{274c}\u{fe0f}')

        if v203 ~= v202 then
            CheckDoughKing:SetDesc('Status: ' .. v203)

            v202 = v203
        end
    end
end)

EliteHunter = Server:AddParagraph({
    Title = 'Elite Hunter',
    Content = 'Status: ',
})

spawn(function()
    local v204 = ''

    while wait(1) do
        local v205 = (game:GetService('ReplicatedStorage'):FindFirstChild('Diablo') or (game:GetService('ReplicatedStorage'):FindFirstChild('Deandre') or (game:GetService('ReplicatedStorage'):FindFirstChild('Urban') or (game:GetService('Workspace').Enemies:FindFirstChild('Diablo') or (game:GetService('Workspace').Enemies:FindFirstChild('Deandre') or game:GetService('Workspace').Enemies:FindFirstChild('Urban')))))) and ('\u{2705}\u{fe0f}' or '\u{274c}\u{fe0f}') or '\u{274c}\u{fe0f}'
        local _EliteHunter = game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter', 'Progress')

        if v205 ~= v204 then
            EliteHunter:SetDesc('Status: ' .. v205 .. ' | Killed: ' .. _EliteHunter)

            v204 = v205
        end
    end
end)

FM = Server:AddParagraph({
    Title = 'Full Moon',
    Content = '',
})

task.spawn(function()
    while task.wait(1) do
        local _MoonTextureId = game:GetService('Lighting').Sky.MoonTextureId
        local v208 = _MoonTextureId == 'http://www.roblox.com/asset/?id=9709149431' and 'Moon: 5/5' or (_MoonTextureId == 'http://www.roblox.com/asset/?id=9709149052' and 'Moon: 4/5' or (_MoonTextureId == 'http://www.roblox.com/asset/?id=9709143733' and 'Moon: 3/5' or (_MoonTextureId == 'http://www.roblox.com/asset/?id=9709150401' and 'Moon: 2/5' or (_MoonTextureId == 'http://www.roblox.com/asset/?id=9709149680' and 'Moon: 1/5' or 'Moon: 0/5'))))

        FM:SetDesc(v208)
    end
end)

LegendarySword = Server:AddParagraph({
    Title = 'Legendary Sword',
    Content = 'Status: ',
})

spawn(function()
    while wait(1) do
        local v209 = game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('LegendarySwordDealer', '1') and 'Shisui' or (game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('LegendarySwordDealer', '2') and 'Wando' or (game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('LegendarySwordDealer', '3') and 'Saddi' or 'Not Found Legend Swords'))

        LegendarySword:SetDesc(v209)
    end
end)

StatusBone = Server:AddParagraph({
    Title = 'Bone',
    Content = '',
})

spawn(function()
    while wait(1) do
        StatusBone:SetDesc('You Have: ' .. tostring(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Bones', 'Check')) .. ' Bones')
    end
end)

Input = Server:AddInput('Input', {
    Title = 'Input Job Id',
    Default = '',
    Placeholder = 'Paste Job Id',
    Numeric = false,
    Finished = false,
    Callback = function(p210)
        getgenv().Job = p210
    end,
})
Toggle = Server:AddToggle('Toggle', {
    Title = 'Spam Join',
    Default = false,
})

Toggle:OnChanged(function(p211)
    getgenv().Join = p211
end)
spawn(function()
    local v212 = 0
    local v213 = 1

    while task.wait() do
        if getgenv().Join and v213 <= tick() - v212 then
            v212 = tick()

            game:GetService('TeleportService'):TeleportToPlaceInstance(game.placeId, getgenv().Job, game.Players.LocalPlayer)
        end
    end
end)

local u214 = 0
local u215 = 5

Server:AddButton({
    Title = 'Join Server',
    Callback = function()
        if u215 <= tick() - u214 then
            u214 = tick()

            game:GetService('TeleportService'):TeleportToPlaceInstance(game.placeId, getgenv().Job, game.Players.LocalPlayer)
        end
    end,
})

local u216 = 0
local u217 = 2

Server:AddButton({
    Title = 'Copy JobId',
    Callback = function()
        if u217 > tick() - u216 then
            print('Please try again in a moment!')
        else
            u216 = tick()

            setclipboard(tostring(game.JobId))
            print('JobId Copied!')
        end
    end,
})

local u218 = 0
local u219 = 3

Server:AddButton({
    Title = 'Rejoin Server',
    Callback = function()
        if u219 <= tick() - u218 then
            u218 = tick()

            game:GetService('TeleportService'):Teleport(game.PlaceId, game:GetService('Players').LocalPlayer)
        end
    end,
})
Server:AddButton({
    Title = 'Hop Server',
    Callback = function()
        Hop()
    end,
})

function Hop()
    local _PlaceId3 = game.PlaceId
    local u221 = {}
    local u222 = ''
    local _hour = os.date('!*t').hour

    function TPReturner()
        local v224

        if u222 ~= '' then
            v224 = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. _PlaceId3 .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. u222))
        else
            v224 = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. _PlaceId3 .. '/servers/Public?sortOrder=Asc&limit=100'))
        end
        if v224.nextPageCursor and (v224.nextPageCursor ~= 'null' and v224.nextPageCursor ~= nil) then
            u222 = v224.nextPageCursor
        end

        local v225, v226, v227 = pairs(v224.data)
        local v228 = 0

        while true do
            local v229

            v227, v229 = v225(v226, v227)

            if v227 == nil then
                break
            end

            local v230 = true
            local u231 = tostring(v229.id)

            if tonumber(v229.maxPlayers) > tonumber(v229.playing) then
                local v232, v233, v234 = pairs(u221)

                while true do
                    local v235

                    v234, v235 = v232(v233, v234)

                    if v234 == nil then
                        break
                    end
                    if v228 == 0 then
                        if tonumber(_hour) ~= tonumber(v235) then
                            pcall(function()
                                u221 = {}

                                table.insert(u221, _hour)
                            end)
                        end
                    elseif u231 == tostring(v235) then
                        v230 = false
                    end

                    v228 = v228 + 1
                end

                if v230 == true then
                    table.insert(u221, u231)
                    wait(0.1)
                    pcall(function()
                        game:GetService('TeleportService'):TeleportToPlaceInstance(_PlaceId3, u231, game.Players.LocalPlayer)
                    end)
                    wait(1)

                    break
                end
            end
        end
    end
    function Teleport()
        while true do
            pcall(function()
                TPReturner()

                if u222 ~= '' then
                    TPReturner()
                end
            end)
            wait(2)
        end
    end

    Teleport()
end

LGa = Window:AddTab({
    Title = 'Tab Local Player',
    Icon = '',
})

LGa:AddButton({
    Title = 'Stop Tween',
    Callback = function()
        StopTween()
    end,
})
LGa:AddButton({
    Title = 'Show Item',
    Description = "I'm Still Fixing....",
    Callback = function() end,
})
LGa:AddButton({
    Title = 'Open Devil Fruit Shop [ Mirage ]',
    Description = "I'm Still Fixing....",
    Callback = function() end,
})
LGa:AddButton({
    Title = 'Open Devil Fruit Shop',
    Description = "I'm Still Fixing....",
    Callback = function() end,
})
LGa:AddButton({
    Title = 'Open Title',
    Callback = function()
        local u236 = {
            'getTitles',
        }
        local v237, _ = pcall(function()
            return game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(u236))
        end)

        if v237 then
            game.Players.LocalPlayer.PlayerGui.Main.Titles.Visible = true
        end
    end,
})

local u238 = 0
local u239 = 2

LGa:AddButton({
    Title = 'Open Color',
    Callback = function()
        if u239 <= tick() - u238 then
            u238 = tick()

            local _Colors = game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild('Colors')

            if _Colors then
                _Colors.Visible = true
            end
        end
    end,
})
LGa:AddButton({
    Title = 'Boost FPS',
    Callback = function()
        FPSBooster()
    end,
})

function FPSBooster()
    local u241 = true
    local v242 = game
    local _Workspace = v242.Workspace
    local _Lighting = v242.Lighting
    local _Terrain = _Workspace.Terrain

    sethiddenproperty(_Lighting, 'Technology', 2)
    sethiddenproperty(_Terrain, 'Decoration', false)

    _Terrain.WaterWaveSize = 0
    _Terrain.WaterWaveSpeed = 0
    _Terrain.WaterReflectance = 0
    _Terrain.WaterTransparency = 0
    _Lighting.GlobalShadows = false
    _Lighting.FogEnd = 9000000000
    _Lighting.Brightness = 0
    settings().Rendering.QualityLevel = 'Level01'

    local function v247(p246)
        if p246:IsA('Part') or (p246:IsA('Union') or (p246:IsA('CornerWedgePart') or p246:IsA('TrussPart'))) then
            p246.Material = 'Plastic'
            p246.Reflectance = 0
        elseif p246:IsA('Decal') or p246:IsA('Texture') and u241 then
            p246.Transparency = 1
        elseif p246:IsA('ParticleEmitter') or p246:IsA('Trail') then
            p246.Lifetime = NumberRange.new(0)
        elseif p246:IsA('Explosion') then
            p246.BlastPressure = 1
            p246.BlastRadius = 1
        elseif p246:IsA('Fire') or (p246:IsA('SpotLight') or (p246:IsA('Smoke') or p246:IsA('Sparkles'))) then
            p246.Enabled = false
        elseif p246:IsA('MeshPart') then
            p246.Material = 'Plastic'
            p246.Reflectance = 0
            p246.TextureID = 1.0385902758728955e16
        end
    end

    local v248, v249, v250 = pairs(_Workspace:GetDescendants())

    while true do
        local v251

        v250, v251 = v248(v249, v250)

        if v250 == nil then
            break
        end
        if v251:IsA('Part') or (v251:IsA('Union') or (v251:IsA('CornerWedgePart') or (v251:IsA('TrussPart') or v251:IsA('MeshPart')))) then
            v247(v251)
        end
    end

    local v252, v253, v254 = pairs(_Lighting:GetChildren())

    while true do
        local v255

        v254, v255 = v252(v253, v254)

        if v254 == nil then
            break
        end
        if v255:IsA('BlurEffect') or (v255:IsA('SunRaysEffect') or (v255:IsA('ColorCorrectionEffect') or (v255:IsA('BloomEffect') or v255:IsA('DepthOfFieldEffect')))) then
            v255.Enabled = false
        end
    end
end

Dropdown = LGa:AddDropdown('Dropdown', {
    Title = 'Select Stats',
    Values = {
        'Melee',
        'Defense',
        'Sword',
        'Gun',
        'Fruit',
    },
    Multi = false,
})

Dropdown:SetValue('')
Dropdown:OnChanged(function(p256)
    StatsMode = p256
end)
spawn(function()
    while true do
        repeat
            wait(0.5)

            local _LocalPlayer8 = game.Players.LocalPlayer
            local v258 = _LocalPlayer8 and _LocalPlayer8:FindFirstChild('Data') and (_LocalPlayer8.Data:FindFirstChild('Points') and (_LocalPlayer8.Data.Points.Value >= PointStats and getgenv().AutoStats) and ({
                Melee = 'Melee',
                Defense = 'Defense',
                Sword = 'Sword',
                Gun = 'Gun',
                Fruit = 'Demon Fruit',
            })[StatsMode])
        until v258

        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AddPoint', v258, PointStats)
    end
end)

Slider = LGa:AddSlider('Slider', {
    Title = 'Point Stats',
    Description = '',
    Default = 1,
    Min = 1,
    Max = 1000,
    Rounding = 0,
    Callback = function(p259)
        PointStats = p259
    end,
})
Toggle = LGa:AddToggle('Toggle', {
    Title = 'Auto Stats',
    Default = false,
})

Toggle:OnChanged(function(p260)
    getgenv().AutoStats = p260
end)

local u261 = true
local u262 = 2

LGa:AddButton({
    Title = 'Change Team To Pirates',
    Callback = function()
        if u261 then
            u261 = false

            task.wait(u262)
            pcall(function()
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SetTeam', 'Pirates')
            end)

            u261 = true
        end
    end,
})

local u263 = true
local u264 = 2

LGa:AddButton({
    Title = 'Change Team To Marines',
    Callback = function()
        if u263 then
            u263 = false

            task.wait(u264)
            pcall(function()
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SetTeam', 'Marines')
            end)

            u263 = true
        end
    end,
})

Toggle = LGa:AddToggle('Toggle', {
    Title = 'Auto Summon Cake Prince',
    Description = 'When you attack 500 monsters, you will automatically summon Cake Prince',
    Default = true,
})

Toggle:OnChanged(function(p265)
    getgenv().AutoSpawnCP = p265
end)

local u266 = 0
local u267 = 1

spawn(function()
    while task.wait() do
        if getgenv().AutoSpawnCP and u267 <= tick() - u266 then
            u266 = tick()

            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner', true)
        end
    end
end)

Toggle = LGa:AddToggle('Toggle', {
    Title = 'Black Screen',
    Default = false,
})

Toggle:OnChanged(function(p268)
    getgenv().StartBlackScreen = p268
end)

local u269 = 0
local u270 = 0.5

spawn(function()
    while task.wait() do
        if u270 <= tick() - u269 then
            u269 = tick()

            if getgenv().StartBlackScreen then
                game:GetService('Players').LocalPlayer.PlayerGui.Main.Blackscreen.Size = UDim2.new(500, 0, 500, 500)
            else
                game:GetService('Players').LocalPlayer.PlayerGui.Main.Blackscreen.Size = UDim2.new(1, 0, 500, 500)
            end
        end
    end
end)

Toggle = LGa:AddToggle('Toggle', {
    Title = 'White Screen',
    Default = false,
})

Toggle:OnChanged(function(p271)
    getgenv().WhiteScreen = p271

    if getgenv().WhiteScreen ~= true then
        if getgenv().WhiteScreen == false then
            game:GetService('RunService'):Set3dRenderingEnabled(true)
        end
    else
        game:GetService('RunService'):Set3dRenderingEnabled(false)
    end
end)

Toggle = LGa:AddToggle('Toggle', {
    Title = 'Hide Mob',
    Default = false,
})

Toggle:OnChanged(function(p272)
    getgenv().HideMob = p272
end)
spawn(function()
    while task.wait() do
        if getgenv().HideMob then
            pcall(function()
                local v273, v274, v275 = pairs(game:GetService('Workspace').Enemies:GetDescendants())

                while true do
                    local v276

                    v275, v276 = v273(v274, v275)

                    if v275 == nil then
                        break
                    end
                    if v276.ClassName == 'MeshPart' then
                        v276.Transparency = 1
                    end
                end

                local v277, v278, v279 = pairs(game:GetService('Workspace').Enemies:GetDescendants())

                while true do
                    local v280

                    v279, v280 = v277(v278, v279)

                    if v279 == nil then
                        break
                    end
                    if v280.Name == 'Head' then
                        v280.Transparency = 1
                    end
                end

                local v281, v282, v283 = pairs(game:GetService('Workspace').Enemies:GetDescendants())

                while true do
                    local v284

                    v283, v284 = v281(v282, v283)

                    if v283 == nil then
                        break
                    end
                    if v284.ClassName == 'Accessory' then
                        v284.Handle.Transparency = 1
                    end
                end

                local v285, v286, v287 = pairs(game:GetService('Workspace').Enemies:GetDescendants())

                while true do
                    local v288

                    v287, v288 = v285(v286, v287)

                    if v287 == nil then
                        break
                    end
                    if v288.ClassName == 'Decal' then
                        v288.Transparency = 1
                    end
                end
            end)
        end
    end
end)

Toggle = LGa:AddToggle('Toggle', {
    Title = 'Remove Dame Text',
    Default = true,
})

Toggle:OnChanged(function(p289)
    getgenv().RemoveText = p289
    game:GetService('ReplicatedStorage').Assets.GUI.DamageCounter.Enabled = not getgenv().RemoveText
end)

Toggle = LGa:AddToggle('Toggle', {
    Title = 'Remove Notification',
    Default = false,
})

Toggle:OnChanged(function(p290)
    getgenv().RemoveNotification = p290
    game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = not getgenv().RemoveNotification
end)

Toggle = LGa:AddToggle('Toggle', {
    Title = 'Auto Rejoin On Kick',
    Default = false,
})

Toggle:OnChanged(function(p291)
    getgenv().AutoRejoinKick = p291

    if p291 then
        getgenv().rejoin = game:GetService('CoreGui').RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(p292)
            if p292.Name == 'ErrorPrompt' and p292:FindFirstChild('MessageArea') and p292.MessageArea:FindFirstChild('ErrorFrame') then
                game:GetService('TeleportService'):Teleport(game.PlaceId)
            end
        end)
    elseif getgenv().rejoin then
        getgenv().rejoin:Disconnect()

        getgenv().rejoin = nil
    end
end)
LGa:AddButton({
    Title = 'Rain Fruit',
    Callback = function()
        local v293 = game:GetObjects('rbxassetid://14759368201')[1]:GetChildren()
        local v294, v295, v296 = pairs(v293)
        local v297 = 10
        local v298 = 0

        while true do
            local u299

            v296, u299 = v294(v295, v296)

            if v296 == nil or v297 <= v298 then
                break
            end

            v298 = v298 + 1
            u299.Parent = game.Workspace.Map

            u299:MoveTo(game.Players.LocalPlayer.Character.PrimaryPart.Position + Vector3.new(math.random(-50, 50), 100, math.random(-50, 50)))

            local _AnimationController = u299.Fruit:FindFirstChild('AnimationController')
            local v301 = _AnimationController and _AnimationController:FindFirstChild('Idle')

            if v301 then
                v301:Play()
            end

            u299.Handle.Touched:Connect(function(p302)
                if p302.Parent == game.Players.LocalPlayer.Character then
                    u299.Parent = game.Players.LocalPlayer.Backpack

                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(u299)
                end
            end)
        end
    end,
})

if World1 then
    Dropdown = LGa:AddDropdown('Dropdown', {
        Title = 'Select Island',
        Values = {
            'WindMill',
            'Marine',
            'Middle Town',
            'Jungle',
            'Pirate Village',
            'Desert',
            'Snow Island',
            'MarineFord',
            'Colosseum',
            'Sky Island 1',
            'Sky Island 2',
            'Sky Island 3',
            'Prison',
            'Magma Village',
            'Under Water Island',
            'Fountain City',
            'Shank Room',
            'Mob Island',
        },
        Multi = false,
        Default = false,
    })

    Dropdown:SetValue('0.15')
    Dropdown:OnChanged(function(p303)
        getgenv().SelectIsland = p303
    end)
end
if World2 then
    Dropdown = LGa:AddDropdown('Dropdown', {
        Title = 'Select Island',
        Values = {
            'The Cafe',
            'Frist Spot',
            'Dark Area',
            'Flamingo Mansion',
            'Flamingo Room',
            'Green Zone',
            'Factory',
            'Colossuim',
            'Zombie Island',
            'Two Snow Mountain',
            'Punk Hazard',
            'Cursed Ship',
            'Ice Castle',
            'Forgotten Island',
            'Ussop Island',
            'Mini Sky Island',
        },
        Multi = false,
        Default = false,
    })

    Dropdown:SetValue('0.15')
    Dropdown:OnChanged(function(p304)
        getgenv().SelectIsland = p304
    end)
end
if World3 then
    Dropdown = LGa:AddDropdown('Dropdown', {
        Title = 'Select Island',
        Values = {
            'Mansion',
            'Port Town',
            'Great Tree',
            'Castle On The Sea',
            'MiniSky',
            'Hydra Island',
            'Floating Turtle',
            'Haunted Castle',
            'Ice Cream Island',
            'Peanut Island',
            'Cake Island',
            'Cocoa Island',
            'Candy Island',
            'Tiki Outpost',
        },
        Multi = false,
        Default = false,
    })

    Dropdown:SetValue('0.15')
    Dropdown:OnChanged(function(p305)
        getgenv().SelectIsland = p305
    end)
end

Toggle = LGa:AddToggle('Toggle', {
    Title = 'Teleport Island',
    Default = false,
})

Toggle:OnChanged(function(p306)
    getgenv().TeleportIsland = p306

    if getgenv().TeleportIsland ~= true then
        return
    else
        while true do
            if true then
                task.wait()

                if getgenv().SelectIsland ~= 'WindMill' then
                    if getgenv().SelectIsland ~= 'Marine' then
                        if getgenv().SelectIsland ~= 'Middle Town' then
                            if getgenv().SelectIsland ~= 'Jungle' then
                                if getgenv().SelectIsland ~= 'Pirate Village' then
                                    if getgenv().SelectIsland ~= 'Desert' then
                                        if getgenv().SelectIsland ~= 'Snow Island' then
                                            if getgenv().SelectIsland ~= 'MarineFord' then
                                                if getgenv().SelectIsland ~= 'Colosseum' then
                                                    if getgenv().SelectIsland ~= 'Sky Island 1' then
                                                        if getgenv().SelectIsland ~= 'Sky Island 2' then
                                                            if getgenv().SelectIsland ~= 'Sky Island 3' then
                                                                if getgenv().SelectIsland ~= 'Prison' then
                                                                    if getgenv().SelectIsland ~= 'Magma Village' then
                                                                        if getgenv().SelectIsland ~= 'Under Water Island' then
                                                                            if getgenv().SelectIsland ~= 'Fountain City' then
                                                                                if getgenv().SelectIsland ~= 'Shank Room' then
                                                                                    if getgenv().SelectIsland ~= 'Mob Island' then
                                                                                        if getgenv().SelectIsland ~= 'The Cafe' then
                                                                                            if getgenv().SelectIsland ~= 'Frist Spot' then
                                                                                                if getgenv().SelectIsland ~= 'Dark Area' then
                                                                                                    if getgenv().SelectIsland ~= 'Flamingo Mansion' then
                                                                                                        if getgenv().SelectIsland ~= 'Flamingo Room' then
                                                                                                            if getgenv().SelectIsland ~= 'Green Zone' then
                                                                                                                if getgenv().SelectIsland ~= 'Factory' then
                                                                                                                    if getgenv().SelectIsland ~= 'Colossuim' then
                                                                                                                        if getgenv().SelectIsland ~= 'Zombie Island' then
                                                                                                                            if getgenv().SelectIsland ~= 'Two Snow Mountain' then
                                                                                                                                if getgenv().SelectIsland ~= 'Punk Hazard' then
                                                                                                                                    if getgenv().SelectIsland ~= 'Cursed Ship' then
                                                                                                                                        if getgenv().SelectIsland ~= 'Ice Castle' then
                                                                                                                                            if getgenv().SelectIsland ~= 'Forgotten Island' then
                                                                                                                                                if getgenv().SelectIsland ~= 'Ussop Island' then
                                                                                                                                                    if getgenv().SelectIsland ~= 'Mini Sky Island' then
                                                                                                                                                        if getgenv().SelectIsland ~= 'Great Tree' then
                                                                                                                                                            if getgenv().SelectIsland ~= 'Castle On The Sea' then
                                                                                                                                                                if getgenv().SelectIsland ~= 'MiniSky' then
                                                                                                                                                                    if getgenv().SelectIsland ~= 'Port Town' then
                                                                                                                                                                        if getgenv().SelectIsland ~= 'Hydra Island' then
                                                                                                                                                                            if getgenv().SelectIsland ~= 'Floating Turtle' then
                                                                                                                                                                                if getgenv().SelectIsland ~= 'Mansion' then
                                                                                                                                                                                    if getgenv().SelectIsland ~= 'Haunted Castle' then
                                                                                                                                                                                        if getgenv().SelectIsland ~= 'Ice Cream Island' then
                                                                                                                                                                                            if getgenv().SelectIsland ~= 'Peanut Island' then
                                                                                                                                                                                                if getgenv().SelectIsland ~= 'Cake Island' then
                                                                                                                                                                                                    if getgenv().SelectIsland ~= 'Cocoa Island' then
                                                                                                                                                                                                        if getgenv().SelectIsland ~= 'Candy Island' then
                                                                                                                                                                                                            if getgenv().SelectIsland == 'Tiki Outpost' then
                                                                                                                                                                                                                topos(CFrame.new(-16101.1885, 12.8422165, 380.942291, 0.194113985, 1.39194061e-8, -0.980978966, -9.829046909999999e-9, 1, 1.22443504e-8, 0.980978966, 7.2652883699999995e-9, 0.194113985))
                                                                                                                                                                                                            end
                                                                                                                                                                                                        else
                                                                                                                                                                                                            topos(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
                                                                                                                                                                                                        end
                                                                                                                                                                                                    else
                                                                                                                                                                                                        topos(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
                                                                                                                                                                                                    end
                                                                                                                                                                                                else
                                                                                                                                                                                                    topos(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
                                                                                                                                                                                                end
                                                                                                                                                                                            else
                                                                                                                                                                                                topos(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
                                                                                                                                                                                            end
                                                                                                                                                                                        else
                                                                                                                                                                                            topos(CFrame.new(-874, 66, -10915))
                                                                                                                                                                                        end
                                                                                                                                                                                    else
                                                                                                                                                                                        topos(CFrame.new(-9516, 142, 5537))
                                                                                                                                                                                    end
                                                                                                                                                                                else
                                                                                                                                                                                    topos(CFrame.new(-12551, 337, -7476))
                                                                                                                                                                                end
                                                                                                                                                                            else
                                                                                                                                                                                topos(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
                                                                                                                                                                            end
                                                                                                                                                                        else
                                                                                                                                                                            topos(CFrame.new(5433, 1062, 290))
                                                                                                                                                                        end
                                                                                                                                                                    else
                                                                                                                                                                        topos(CFrame.new(-95, 11, 5455))
                                                                                                                                                                    end
                                                                                                                                                                else
                                                                                                                                                                    topos(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
                                                                                                                                                                end
                                                                                                                                                            else
                                                                                                                                                                topos(CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375))
                                                                                                                                                            end
                                                                                                                                                        else
                                                                                                                                                            topos(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
                                                                                                                                                        end
                                                                                                                                                    else
                                                                                                                                                        topos(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
                                                                                                                                                    end
                                                                                                                                                else
                                                                                                                                                    topos(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
                                                                                                                                                end
                                                                                                                                            else
                                                                                                                                                topos(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
                                                                                                                                            end
                                                                                                                                        else
                                                                                                                                            topos(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
                                                                                                                                        end
                                                                                                                                    else
                                                                                                                                        topos(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
                                                                                                                                    end
                                                                                                                                else
                                                                                                                                    topos(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
                                                                                                                                end
                                                                                                                            else
                                                                                                                                topos(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
                                                                                                                            end
                                                                                                                        else
                                                                                                                            topos(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
                                                                                                                        end
                                                                                                                    else
                                                                                                                        topos(CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
                                                                                                                    end
                                                                                                                else
                                                                                                                    topos(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                                                                                                                end
                                                                                                            else
                                                                                                                topos(CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
                                                                                                            end
                                                                                                        else
                                                                                                            topos(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
                                                                                                        end
                                                                                                    else
                                                                                                        topos(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
                                                                                                    end
                                                                                                else
                                                                                                    topos(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
                                                                                                end
                                                                                            else
                                                                                                topos(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
                                                                                            end
                                                                                        else
                                                                                            topos(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
                                                                                        end
                                                                                    else
                                                                                        topos(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
                                                                                    end
                                                                                else
                                                                                    topos(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
                                                                                end
                                                                            else
                                                                                topos(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
                                                                            end
                                                                        else
                                                                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                                                        end
                                                                    else
                                                                        topos(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
                                                                    end
                                                                else
                                                                    topos(CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
                                                                end
                                                            else
                                                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                                                            end
                                                        else
                                                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-4607.82275, 872.54248, -1667.55688))
                                                        end
                                                    else
                                                        topos(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
                                                    end
                                                else
                                                    topos(CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
                                                end
                                            else
                                                topos(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
                                            end
                                        else
                                            topos(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
                                        end
                                    else
                                        topos(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
                                    end
                                else
                                    topos(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
                                end
                            else
                                topos(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
                            end
                        else
                            topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                        end
                    else
                        topos(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
                    end
                else
                    topos(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
                end
            end
            if not getgenv().TeleportIsland then
            end
        end
    end
end)

Settings = Window:AddTab({
    Title = 'Setting Farm',
    Icon = '',
})
Dropdown = Settings:AddDropdown('DropdownFarm', {
    Title = 'Select Weapon',
    Values = {
        'Melee',
        'Sword',
        'Blox Fruit',
    },
    Multi = false,
})

Dropdown:SetValue('Melee')
Dropdown:OnChanged(function(p307)
    getgenv().SelectWeapon = p307
end)
task.spawn(function()
    local u308 = nil

    while task.wait(0.5) do
        pcall(function()
            if getgenv().SelectWeapon == u308 then
                return
            end

            u308 = getgenv().SelectWeapon

            local v309, v310, v311 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())
            local v312 = nil

            while true do
                local v313

                v311, v313 = v309(v310, v311)

                if v311 == nil then
                    break
                end
                if v313.ToolTip == getgenv().SelectWeapon then
                    v312 = v313.Name

                    break
                end
            end

            if v312 then
                getgenv().SelectWeapon = v312
            end
        end)
    end
end)

Toggle = Settings:AddToggle('Toggle', {
    Title = 'Auto Turn On Buso',
    Default = true,
})

Toggle:OnChanged(function(p314)
    getgenv().AUTOHAKI = p314
end)
spawn(function()
    local v315 = true
    local v316 = 2

    while task.wait(0.1) do
        if getgenv().AUTOHAKI and (not game.Players.LocalPlayer.Character:FindFirstChild('HasBuso') and v315) then
            local u317 = {
                'Buso',
            }

            pcall(function()
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(u317))
            end)
            wait(v316)

            v315 = true
        end
    end
end)

Toggle = Settings:AddToggle('Toggle', {
    Title = 'Auto Turn On Race V4',
    Default = false,
})

Toggle:OnChanged(function(p318)
    getgenv().AutoTurnOnV4 = p318
end)
task.spawn(function()
    local v319 = 0

    while true do
        repeat
            task.wait(0.1)
        until getgenv().AutoTurnOnV4

        local v320 = tick()

        if v320 - v319 >= 0.5 then
            local _Character3 = game.Players.LocalPlayer.Character

            if _Character3 and (_Character3:FindFirstChild('RaceEnergy') and (_Character3.RaceEnergy.Value >= 1 and not _Character3.RaceTransformed.Value)) then
                local _VirtualInputManager = game:GetService('VirtualInputManager')

                _VirtualInputManager:SendKeyEvent(true, 'Y', false, game)
                task.wait(0.1)
                _VirtualInputManager:SendKeyEvent(false, 'Y', false, game)

                v319 = v320
            else
                v319 = v320
            end
        end
    end
end)

Toggle = Settings:AddToggle('Toggle', {
    Title = 'Auto Turn On Race V3',
    Default = false,
})

Toggle:OnChanged(function(p323)
    getgenv().AutoTurnOnV3 = p323
end)
task.spawn(function()
    local u324 = false

    while true do
        task.wait(0.1)
        pcall(function()
            if getgenv().AutoTurnOnV3 ~= u324 then
                if getgenv().AutoTurnOnV3 then
                    game:GetService('ReplicatedStorage').Remotes.CommE:FireServer('ActivateAbility')
                end

                u324 = getgenv().AutoTurnOnV3
            end
        end)
    end
end)

local _Toggle = Settings:AddToggle('Toggle', {
    Title = 'Auto Set Spawn Point',
    Default = false,
})
local u326 = false

_Toggle:OnChanged(function(p327)
    getgenv().Set = p327

    if p327 ~= u326 then
        u326 = p327

        if p327 then
            pcall(function()
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SetSpawnPoint')
            end)
        end
    end
end)
Settings:AddToggle('Toggle', {
    Title = 'Anti AFK',
    Default = true,
}):OnChanged(function(p328)
    getgenv().AntiAFK = p328
end)
task.spawn(function()
    while true do
        if getgenv().AntiAFK then
            local _VirtualUser = game:GetService('VirtualUser')

            game:GetService('Players').LocalPlayer.Idled:Connect(function()
                _VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                wait(1)
                _VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
            end)
        end

        game:GetService('RunService').Heartbeat:wait()
    end
end)
Settings:AddToggle('Toggle', {
    Title = 'Reset Teleport',
    Default = false,
}):OnChanged(function(p330)
    BypassTP = p330
end)
Settings:AddToggle('Bypass TP', {
    Title = 'Stop Reset Teleport When Have Legendary',
    Default = false,
}):OnChanged(function(p331)
    getgenv().StopTP = p331
end)
spawn(function()
    while task.wait(1) do
        if getgenv().StopTP and (game.Players.LocalPlayer.Backpack:FindFirstChild('Fist of Darkness') or (game.Players.LocalPlayer.Character:FindFirstChild('Fist of Darkness') or (game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice")))) then
            BypassTP = false
        end
    end
end)

getgenv().FastAttack = false

local _Toggle2 = Settings:AddToggle('Toggle', {
    Title = 'Fast Attack',
    Default = true,
})
local u333 = nil

local function u334()
    while getgenv().FastAttack do
        if type(AttackNoCoolDown) == 'function' then
            AttackNoCoolDown()
        end

        task.wait(0.1)
    end
end

_Toggle2:OnChanged(function(p335)
    getgenv().FastAttack = p335

    if p335 and not u333 then
        u333 = task.spawn(u334)
    end
    if not p335 and u333 then
        u333 = nil
    end
end)
Settings:AddToggle('Toggle', {
    Title = 'Bring Mob',
    Default = true,
}):OnChanged(function(p336)
    getgenv().BringMonster = p336
end)
game:GetService('RunService')

local _Players2 = game:GetService('Players')
local _Workspace2 = game:GetService('Workspace')
local _LocalPlayer9 = _Players2.LocalPlayer

spawn(function()
    while task.wait(0.1) do
        pcall(function()
            CheckQuest()

            local v340 = _Workspace2.Enemies:GetChildren()
            local v341, v342, v343 = ipairs(v340)
            local v344 = 0

            while true do
                local v345

                v343, v345 = v341(v342, v343)

                if v343 == nil or 2 <= v344 then
                    break
                end
                if getgenv().BringMonster and (v345:FindFirstChild('Humanoid') and v345:FindFirstChild('HumanoidRootPart')) then
                    local _Humanoid3 = v345:FindFirstChild('Humanoid')
                    local _HumanoidRootPart5 = v345:FindFirstChild('HumanoidRootPart')

                    if _Humanoid3 and (_HumanoidRootPart5 and _LocalPlayer9.Character) and _LocalPlayer9.Character:FindFirstChild('HumanoidRootPart') then
                        local _Magnitude3 = (_HumanoidRootPart5.Position - _LocalPlayer9.Character.HumanoidRootPart.Position).Magnitude

                        if getgenv().StartMagnet and (v345.Name == MonFarm or v345.Name == Mon) and (_Humanoid3.Health > 0 and _Magnitude3 <= 350) then
                            if v345.Name ~= 'Factory Staff' or (not PosMon or (_HumanoidRootPart5.Position - PosMon.Position).Magnitude > 5000) then
                                if (v345.Name == MonFarm or v345.Name == Mon) and (PosMon and ((_HumanoidRootPart5.Position - PosMon.Position).Magnitude <= 4500 and _HumanoidRootPart5.Parent)) then
                                    _HumanoidRootPart5.CanCollide = false
                                    _HumanoidRootPart5.Size = Vector3.new(60, 60, 60)
                                    _HumanoidRootPart5.CFrame = PosMon
                                    v345.Head.CanCollide = false

                                    local _Animator = _Humanoid3:FindFirstChild('Animator')

                                    if _Animator then
                                        pcall(function()
                                            _Animator:Destroy()
                                        end)
                                    end

                                    sethiddenproperty(_LocalPlayer9, 'SimulationRadius', math.huge)

                                    v344 = v344 + 1
                                end
                            elseif _HumanoidRootPart5.Parent then
                                _HumanoidRootPart5.CanCollide = false
                                _HumanoidRootPart5.Size = Vector3.new(60, 60, 60)
                                _HumanoidRootPart5.CFrame = PosMon
                                v345.Head.CanCollide = false

                                local _Animator2 = _Humanoid3:FindFirstChild('Animator')

                                if _Animator2 then
                                    pcall(function()
                                        _Animator2:Destroy()
                                    end)
                                end

                                sethiddenproperty(_LocalPlayer9, 'SimulationRadius', math.huge)

                                v344 = v344 + 1
                            end
                        end
                    end
                end
            end
        end)
    end
end)
Settings:AddToggle('Toggle', {
    Title = 'Spin Position',
    Description = 'Spin Position When Farm',
    Default = true,
}):OnChanged(function(p351)
    getgenv().SpinPos = p351
end)
spawn(function()
    while wait() do
        if getgenv().SpinPos then
            Pos = CFrame.new(0, PosY, -20)

            wait(0.1)

            Pos = CFrame.new(-20, PosY, 0)

            wait(0.1)

            Pos = CFrame.new(0, PosY, 20)

            wait(0.1)

            Pos = CFrame.new(20, PosY, 0)
        else
            Pos = CFrame.new(0, PosY, 0)
        end
    end
end)

Slider = Settings:AddSlider('Slider', {
    Title = 'Farm Distance',
    Default = 15,
    Min = 0,
    Max = 30,
    Rounding = 5,
    Callback = function(p352)
        PosY = p352
    end,
})

Settings:AddToggle('Toggle', {
    Title = 'Auto Reduce Lag Farm Safely',
    Default = true,
}):OnChanged(function(p353)
    getgenv().ReduceLag = p353
end)
spawn(function()
    while wait(0.1) do
        if getgenv().ReduceLag then
            local v354, v355, v356 = pairs(game.Workspace._WorldOrigin:GetChildren())

            while true do
                local u357

                v356, u357 = v354(v355, v356)

                if v356 == nil then
                    break
                end
                if u357 and (u357.Name == 'CurvedRing' or (u357.Name == 'SlashHit' or (u357.Name == 'SwordSlash' or (u357.Name == 'SlashTail' or u357.Name == 'Sounds')))) then
                    pcall(function()
                        u357:Destroy()
                    end)
                end
            end
        end
    end
end)
Settings:AddToggle('Toggle', {
    Title = 'Anti Cheat Farming',
    Description = 'This feature helps you Farm safely without being detected',
    Default = true,
}):OnChanged(function(p358)
    getgenv().ResetFlags = p358
end)
spawn(function()
    while task.wait(5) do
        pcall(function()
            if getgenv().ResetFlags then
                local _LocalPlayer10 = game:GetService('Players').LocalPlayer
                local v360, v361, v362 = pairs(_LocalPlayer10.Character:GetDescendants())

                while true do
                    local v363

                    v362, v363 = v360(v361, v362)

                    if v362 == nil then
                        break
                    end
                    if v363:IsA('LocalScript') and table.find({
                        'General',
                        'Shiftlock',
                        'FallDamage',
                        '4444',
                        'CamBob',
                        'JumpCD',
                        'Looking',
                        'Run',
                    }, v363.Name) then
                        v363:Destroy()
                    end
                end

                local v364, v365, v366 = pairs(_LocalPlayer10.PlayerScripts:GetDescendants())

                while true do
                    local v367

                    v366, v367 = v364(v365, v366)

                    if v366 == nil then
                        break
                    end
                    if v367:IsA('LocalScript') and table.find({
                        'RobloxMotor6DBugFix',
                        'Clans',
                        'Codes',
                        'CustomForceField',
                        'MenuBloodSp',
                        'PlayerList',
                    }, v367.Name) then
                        v367:Destroy()
                    end
                end
            end
        end)
    end
end)

Main = Window:AddTab({
    Title = 'Tab Farming',
    Icon = '',
})

Main:AddButton({
    Title = 'Copy discord invite link',
    Callback = function()
        pcall(function()
            setclipboard('https://discord.gg/2YCGftRB')
        end)
    end,
})
Main:AddParagraph({
    Title = 'Main Farm',
    Content = string.rep('-', 21),
})

Dropdown = Main:AddDropdown('DropdownFarm', {
    Title = 'Select Method Farm',
    Values = {
        'Farm Level',
        'Farm Bone',
        'Farm Katakuri',
    },
    Multi = false,
})

Dropdown:SetValue('Farm Level')
Dropdown:OnChanged(function(p368)
    FarmMode = p368
end)
spawn(function()
    local v369 = 0.5
    local v370 = true

    while wait(v369) do
        if getgenv().AutoFarm and (FarmMode == 'Farm Level' and v370) then
            spawn(function()
                local _LocalPlayer11 = game:GetService('Players').LocalPlayer
                local _Text = _LocalPlayer11.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                local _Visible = _LocalPlayer11.PlayerGui.Main.Quest.Visible
                local _Character4 = _LocalPlayer11.Character

                if _Character4 then
                    _Character4 = _LocalPlayer11.Character:FindFirstChild('HumanoidRootPart')
                end
                if not string.find(_Text, NameMon) then
                    getgenv().StartMagnet = false

                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                end
                if not _Visible then
                    getgenv().StartMagnet = false

                    CheckQuest()

                    if BypassTP then
                        local _Magnitude4 = (_Character4.Position - CFrameQuest.Position).Magnitude

                        if _Magnitude4 > 1500 then
                            BTP(CFrameQuest * CFrame.new(0, 20, 5))
                        elseif _Magnitude4 < 1500 then
                            topos(CFrameQuest)
                        end
                    else
                        topos(CFrameQuest)
                    end
                    if (_Character4.Position - CFrameQuest.Position).Magnitude <= 20 then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', NameQuest, LevelQuest)
                    end
                end
                if _Visible then
                    CheckQuest()

                    local v376 = game:GetService('Workspace').Enemies:GetChildren()
                    local v377, v378, v379 = pairs(v376)

                    while true do
                        local v380

                        v379, v380 = v377(v378, v379)

                        if v379 == nil then
                            break
                        end
                        if v380:FindFirstChild('HumanoidRootPart') and (v380:FindFirstChild('Humanoid') and (v380.Humanoid.Health > 0 and v380.Name == Mon)) then
                            if string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                task.wait(0.1)
                                AutoHaki()
                                EquipWeapon(getgenv().SelectWeapon)

                                PosMon = v380.HumanoidRootPart.CFrame

                                topos(v380.HumanoidRootPart.CFrame * Pos)

                                v380.HumanoidRootPart.CanCollide = false
                                v380.Humanoid.WalkSpeed = 0
                                v380.Head.CanCollide = false
                                getgenv().StartMagnet = true

                                sethiddenproperty(_LocalPlayer11, 'SimulationRadius', math.huge)

                                if getgenv().AutoFarm and (v380.Humanoid.Health > 0 and v380.Parent) and game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible then
                                end
                            else
                                getgenv().StartMagnet = false

                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                            end
                        end
                    end
                end
            end)
            task.wait(0.5)

            v370 = true
        end
    end
end)

local u381 = {
    ['Reborn Skeleton'] = CFrame.new(-8769.58984, 142.13063, 6055.27637),
    ['Living Zombie'] = CFrame.new(-10156.4531, 138.652481, 5964.5752),
    ['Demonic Soul'] = CFrame.new(-9525.17188, 172.13063, 6152.30566),
    ['Posessed Mummy'] = CFrame.new(-9570.88281, 5.81831884, 6187.86279),
}

spawn(function()
    while task.wait(0.2) do
        if getgenv().BonesBring then
            pcall(function()
                local v382, v383, v384 = ipairs(game.Workspace.Enemies:GetChildren())

                while true do
                    local v385

                    v384, v385 = v382(v383, v384)

                    if v384 == nil then
                        break
                    end
                    if u381[v385.Name] and (v385:FindFirstChild('HumanoidRootPart') and v385:FindFirstChild('Humanoid')) then
                        v385.HumanoidRootPart.CFrame = u381[v385.Name]
                        v385.Head.CanCollide = false
                        v385.Humanoid.Sit = false

                        v385.Humanoid:ChangeState(11)
                        task.wait(0.1)
                        v385.Humanoid:ChangeState(14)

                        v385.HumanoidRootPart.CanCollide = false
                        v385.Humanoid.JumpPower = 0
                        v385.Humanoid.WalkSpeed = 0

                        local _Animator3 = v385.Humanoid:FindFirstChild('Animator')

                        if _Animator3 then
                            _Animator3:Destroy()
                        end

                        sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                    end
                end
            end)
        end
    end
end)

BonePos = CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375)

spawn(function()
    while wait(0.1) do
        if FarmMode == 'Farm Bone' and (getgenv().AutoFarm and World3) then
            pcall(function()
                local v387 = game:GetService('Workspace').Enemies:GetChildren()
                local v388, v389, v390 = pairs(v387)
                local v391 = false

                while true do
                    local v392

                    v390, v392 = v388(v389, v390)

                    if v390 == nil then
                        break
                    end
                    if (v392.Name == 'Reborn Skeleton' or (v392.Name == 'Living Zombie' or (v392.Name == 'Demonic Soul' or v392.Name == 'Posessed Mummy'))) and (v392:FindFirstChild('Humanoid') and (v392:FindFirstChild('HumanoidRootPart') and v392.Humanoid.Health > 0)) then
                        v391 = true

                        repeat
                            wait(0.1)
                            AutoHaki()
                            EquipWeapon(getgenv().SelectWeapon)

                            v392.HumanoidRootPart.CanCollide = false
                            v392.Humanoid.WalkSpeed = 0
                            v392.Head.CanCollide = false
                            getgenv().BonesBring = true

                            topos(v392.HumanoidRootPart.CFrame * Pos)
                        until not getgenv().AutoFarm or (not v392.Parent or v392.Humanoid.Health <= 0)
                    end
                end

                if not v391 then
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BonePos.Position).Magnitude <= 1500 then
                            topos(BonePos)
                        else
                            BTP(BonePos)
                        end
                    else
                        topos(BonePos)
                    end

                    UnEquipWeapon(getgenv().SelectWeapon)

                    getgenv().BonesBring = false

                    topos(CFrame.new(-9515, 164, 5786))

                    local v393, v394, v395 = pairs(game:GetService('ReplicatedStorage'):GetChildren())

                    while true do
                        local v396

                        v395, v396 = v393(v394, v395)

                        if v395 == nil then
                            break
                        end
                        if v396.Name == 'Reborn Skeleton' or (v396.Name == 'Living Zombie' or (v396.Name == 'Demonic Soul' or v396.Name == 'Posessed Mummy')) then
                            topos(v396.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end
            end)
        end
    end
end)

local u397 = {
    ['Cookie Crafter'] = CFrame.new(-2333.28052, 37.8239059, -12093.2861),
    ['Cake Guard'] = CFrame.new(-1575.56433, 37.8238907, -12416.2529),
    ['Baking Staff'] = CFrame.new(-1872.35742, 37.8239517, -12899.4248),
    ['Head Baker'] = CFrame.new(-2223.1416, 53.5283203, -12854.752),
}

spawn(function()
    while task.wait(0.2) do
        if getgenv().CakeBring then
            pcall(function()
                local v398, v399, v400 = pairs(game.Workspace.Enemies:GetChildren())

                while true do
                    local v401

                    v400, v401 = v398(v399, v400)

                    if v400 == nil then
                        break
                    end
                    if u397[v401.Name] then
                        local v402 = u397[v401.Name]

                        if v402 then
                            v401.HumanoidRootPart.CFrame = v402
                        end

                        v401.Head.CanCollide = false
                        v401.Humanoid.Sit = false

                        v401.Humanoid:ChangeState(11)
                        task.wait(0.1)
                        v401.Humanoid:ChangeState(14)

                        v401.HumanoidRootPart.CanCollide = false
                        v401.Humanoid.JumpPower = 0
                        v401.Humanoid.WalkSpeed = 0

                        if v401.Humanoid:FindFirstChild('Animator') then
                            v401.Humanoid.Animator:Destroy()
                        end

                        sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while task.wait(0.1) do
        if FarmMode == 'Farm Katakuri' and (getgenv().AutoFarm and World3) then
            pcall(function()
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer('CakePrinceSpawner')

                if game.ReplicatedStorage:FindFirstChild('Cake Prince') or game:GetService('Workspace').Enemies:FindFirstChild('Cake Prince') then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Cake Prince') then
                        local v403, v404, v405 = pairs(game.Workspace.Enemies:GetChildren())

                        while true do
                            local v406

                            v405, v406 = v403(v404, v405)

                            if v405 == nil then
                                break
                            end
                            if getgenv().AutoFarm and (v406.Name == 'Cake Prince' and (v406:FindFirstChild('HumanoidRootPart') and (v406:FindFirstChild('Humanoid') and v406.Humanoid.Health > 0))) then
                                repeat
                                    game:GetService('RunService').Heartbeat:wait()
                                    AutoHaki()
                                    EquipWeapon(getgenv().SelectWeapon)

                                    v406.HumanoidRootPart.CanCollide = false
                                    v406.Humanoid.WalkSpeed = 0
                                    v406.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                    topos(v406.HumanoidRootPart.CFrame * Pos)
                                until not getgenv().AutoFarm or (not v406.Parent or v406.Humanoid.Health <= 0)
                            end
                        end
                    elseif game:GetService('Workspace').Map.CakeLoaf.BigMirror.Other.Transparency == 0 and (CFrame.new(-1990.672607421875, 4532.99951171875, -14973.6748046875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 then
                        topos(CFrame.new(-2151.82153, 149.315704, -12404.9053))
                    end
                elseif game:GetService('Workspace').Enemies:FindFirstChild('Cookie Crafter') or (game:GetService('Workspace').Enemies:FindFirstChild('Cake Guard') or (game:GetService('Workspace').Enemies:FindFirstChild('Baking Staff') or game:GetService('Workspace').Enemies:FindFirstChild('Head Baker'))) then
                    local v407, v408, v409 = pairs(game.Workspace.Enemies:GetChildren())

                    while true do
                        local v410

                        v409, v410 = v407(v408, v409)

                        if v409 == nil then
                            break
                        end
                        if v410:FindFirstChild('Humanoid') and (v410:FindFirstChild('HumanoidRootPart') and (v410.Humanoid.Health > 0 and (v410.Name == 'Cookie Crafter' or (v410.Name == 'Cake Guard' or (v410.Name == 'Baking Staff' or v410.Name == 'Head Baker'))))) and (v410:FindFirstChild('HumanoidRootPart') and (v410:FindFirstChild('Humanoid') and v410.Humanoid.Health > 0)) then
                            repeat
                                game:GetService('RunService').Heartbeat:wait()
                                AutoHaki()
                                EquipWeapon(getgenv().SelectWeapon)

                                v410.HumanoidRootPart.CanCollide = false
                                v410.Humanoid.WalkSpeed = 0
                                v410.Head.CanCollide = false

                                topos(v410.HumanoidRootPart.CFrame * Pos)

                                getgenv().CakeBring = true
                            until not getgenv().AutoFarm or (not v410.Parent or v410.Humanoid.Health <= 0)
                        end
                    end
                else
                    local v411 = CFrame.new(-2077, 252, -12373)

                    if BypassTP then
                        BTP(v411)
                    else
                        topos(v411)
                    end
                end
            end)
        end
    end
end)
Main:AddToggle('Toggle', {
    Title = 'Start Farm',
    Default = false,
}):OnChanged(function(p412)
    getgenv().AutoFarm = p412

    StopTween(getgenv().AutoFarm)
end)
Main:AddParagraph({
    Title = 'Farming Material',
    Content = string.rep('-', 21),
})

local v413 = World1 and {
    'Leather + Scrap Metal',
    'Angel Wings',
    'Magma Ore',
    'Fish Tail',
} or (World2 and {
    'Leather + Scrap Metal',
    'Radioactive Material',
    'Ectoplasm',
    'Mystic Droplet',
    'Magma Ore',
    'Vampire Fang',
} or (World3 and {
    'Leather + Scrap Metal',
    'Demonic Wisp',
    'Conjured Cocoa',
    'Dragon Scale',
    'Gunpowder',
    'Fish Tail',
    'Mini Tusk',
} or {}))

MaterialListMon = Main:AddDropdown('MaterialListMon', {
    Title = 'Select Material',
    Values = v413,
    Multi = false,
})

MaterialListMon:OnChanged(function(p414)
    getgenv().SelectMaterial = p414
end)
Main:AddToggle('Toggle', {
    Title = 'Farm Material',
    Default = false,
}):OnChanged(function(p415)
    getgenv().AutoMaterial = p415

    if not p415 then
        StopTween()
    end
end)
spawn(function()
    local function u418(p416, p417)
        if p416:FindFirstChild('Humanoid') and (p416:FindFirstChild('HumanoidRootPart') and (p416.Humanoid.Health > 0 and p416.Name == p417)) then
            repeat
                task.wait(0.1)
                AutoHaki()
                EquipWeapon(getgenv().SelectWeapon)

                p416.HumanoidRootPart.CanCollide = false
                p416.Humanoid.WalkSpeed = 0
                p416.Head.CanCollide = false

                topos(p416.HumanoidRootPart.CFrame * Pos)

                getgenv().StartMagnet = true
                MonFarm = p416.Name
                PosMon = p416.HumanoidRootPart.CFrame
            until not getgenv().AutoMaterial or (not p416.Parent or p416.Humanoid.Health <= 0)

            UnEquipWeapon(getgenv().SelectWeapon)
        end
    end
    local function u427()
        local v419, v420, v421 = pairs(game:GetService('Workspace')._WorldOrigin.EnemySpawns:GetChildren())

        while true do
            local v422

            v421, v422 = v419(v420, v421)

            if v421 == nil then
                break
            end

            local v423, v424, v425 = ipairs(MMon)

            while true do
                local v426

                v425, v426 = v423(v424, v425)

                if v425 == nil then
                    break
                end
                if string.find(v422.Name, v426) and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v422.Position).Magnitude >= 10 then
                    topos(v422.CFrame * Pos)
                end
            end
        end
    end

    while task.wait(0.1) do
        if getgenv().AutoMaterial then
            pcall(function()
                if getgenv().SelectMaterial then
                    MaterialMon(getgenv().SelectMaterial)
                    topos(MPos)
                end

                local v428, v429, v430 = ipairs(MMon)

                while true do
                    local v431

                    v430, v431 = v428(v429, v430)

                    if v430 == nil then
                        break
                    end

                    local v432, v433, v434 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v435

                        v434, v435 = v432(v433, v434)

                        if v434 == nil then
                            break
                        end

                        u418(v435, v431)
                    end
                end

                u427()
            end)
        end
    end
end)
Main:AddParagraph({
    Title = 'Mastery Farm',
    Content = string.rep('-', 21),
})

Slider = Main:AddSlider('Slider', {
    Title = 'Select Health [ % ]',
    Default = 30,
    Min = 0,
    Max = 100,
    Rounding = 5,
    Callback = function(p436)
        getgenv().Kill_At = p436
    end,
})
Dropdown = Main:AddDropdown('DropdownFarm', {
    Title = 'Select Method Farm Mastery',
    Values = {
        'Blox Fruit',
        'Gun',
    },
    Multi = false,
})

Dropdown:SetValue('Blox Fruit')
Dropdown:OnChanged(function(p437)
    FarmMode2 = p437
end)
spawn(function()
    while task.wait() do
        if FarmMode2 == 'Blox Fruit' and getgenv().MasteryFarm then
            pcall(function()
                QuestTitle = game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text

                if not string.find(QuestTitle, NameMon) then
                    UseSkill = false
                    Skillaimbot = false

                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                end
                if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    UseSkill = false

                    CheckQuest()

                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 2000 then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 2000 then
                                topos(CFrameQuest)
                            else
                                topos(CFrameQuest)
                            end
                        else
                            BTP(CFrameQuest)
                        end
                    end

                    repeat
                        task.wait()
                        topos(CFrameQuest)
                    until (CFrameQuest.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not getgenv().MasteryFarm

                    if (CFrameQuest.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                        wait(0.1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', NameQuest, LevelQuest)
                        wait(0.1)
                    end
                end
                if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    CheckQuest()

                    if game:GetService('Workspace').Enemies:FindFirstChild(Mon) then
                        local v438, v439, v440 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v441

                            v440, v441 = v438(v439, v440)

                            if v440 == nil then
                                break
                            end
                            if v441:FindFirstChild('HumanoidRootPart') and (v441:FindFirstChild('Humanoid') and (v441.Humanoid.Health > 0 and v441.Name == Mon)) then
                                if string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                    HealthMs = v441.Humanoid.MaxHealth * getgenv().Kill_At / 100

                                    task.wait()

                                    if v441.Humanoid.Health > HealthMs then
                                        UseSkill = false
                                        Skillaimbot = false

                                        AutoHaki()
                                        EquipWeapon(getgenv().SelectWeapon)

                                        MonFarm = v441.Name
                                        PosMon = v441.HumanoidRootPart.CFrame

                                        topos(v441.HumanoidRootPart.CFrame * Pos)

                                        v441.HumanoidRootPart.CanCollide = false
                                        PosMonMasteryFruit = v441.HumanoidRootPart.CFrame
                                        v441.Humanoid.WalkSpeed = 0
                                        v441.Head.CanCollide = false
                                    else
                                        AutoHaki()
                                        EquipWeapon(game:GetService('Players').LocalPlayer.Data.DevilFruit.Value)
                                        topos(v441.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0))

                                        v441.HumanoidRootPart.CanCollide = false
                                        PosMonMasteryFruit = v441.HumanoidRootPart.CFrame
                                        MonFarm = v441.Name
                                        PosMon = v441.HumanoidRootPart.CFrame
                                        v441.Humanoid.WalkSpeed = 0
                                        v441.Head.CanCollide = false
                                        UseSkill = true
                                        Skillaimbot = true
                                    end

                                    getgenv().StartMagnet = true

                                    if getgenv().MasteryFarm and (v441.Humanoid.Health > 0 and v441.Parent) and game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= false then
                                    end
                                else
                                    UseSkill = false

                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                                end
                            end
                        end
                    else
                        topos(CFrameMon)

                        UseSkill = false
                        Skillaimbot = false
                        Mob = game:GetService('ReplicatedStorage'):FindFirstChild(Mon)

                        if Mob then
                            topos(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 0, 10))
                        elseif game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                            game:GetService('Players').LocalPlayer.Character.Humanoid.Jump = true

                            task.wait()

                            game:GetService('Players').LocalPlayer.Character.Humanoid.Jump = false
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while task.wait() do
        if UseSkill then
            pcall(function()
                CheckQuest()

                local v442, v443, v444 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                while true do
                    local v445

                    v444, v445 = v442(v443, v444)

                    if v444 == nil then
                        break
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild(game:GetService('Players').LocalPlayer.Data.DevilFruit.Value) then
                        MasBF = game:GetService('Players').LocalPlayer.Character[game:GetService('Players').LocalPlayer.Data.DevilFruit.Value].Level.Value
                    elseif game:GetService('Players').LocalPlayer.Backpack:FindFirstChild(game:GetService('Players').LocalPlayer.Data.DevilFruit.Value) then
                        MasBF = game:GetService('Players').LocalPlayer.Backpack[game:GetService('Players').LocalPlayer.Data.DevilFruit.Value].Level.Value
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild(game:GetService('Players').LocalPlayer.Data.DevilFruit.Value) then
                        if getgenv().SkillZ then
                            local v446 = {
                                PosMonMasteryFruit.Position,
                            }

                            game:GetService('Players').LocalPlayer.Character[game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Tool').Name].RemoteEvent:FireServer(unpack(v446))
                            game:GetService('VirtualInputManager'):SendKeyEvent(true, 'Z', false, game)
                            game:GetService('VirtualInputManager'):SendKeyEvent(false, 'Z', false, game)
                        end
                        if getgenv().SkillX then
                            local v447 = {
                                PosMonMasteryFruit.Position,
                            }

                            game:GetService('Players').LocalPlayer.Character[game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Tool').Name].RemoteEvent:FireServer(unpack(v447))
                            game:GetService('VirtualInputManager'):SendKeyEvent(true, 'X', false, game)
                            game:GetService('VirtualInputManager'):SendKeyEvent(false, 'X', false, game)
                        end
                        if getgenv().SkillC then
                            local v448 = {
                                PosMonMasteryFruit.Position,
                            }

                            game:GetService('Players').LocalPlayer.Character[game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Tool').Name].RemoteEvent:FireServer(unpack(v448))
                            game:GetService('VirtualInputManager'):SendKeyEvent(true, 'C', false, game)
                            game:GetService('VirtualInputManager'):SendKeyEvent(false, 'C', false, game)
                        end
                        if getgenv().SkillV then
                            local v449 = {
                                PosMonMasteryFruit.Position,
                            }

                            game:GetService('Players').LocalPlayer.Character[game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Tool').Name].RemoteEvent:FireServer(unpack(v449))
                            game:GetService('VirtualInputManager'):SendKeyEvent(true, 'V', false, game)
                            game:GetService('VirtualInputManager'):SendKeyEvent(false, 'V', false, game)
                        end
                        if getgenv().SkillF then
                            local v450 = {
                                PosMonMasteryFruit.Position,
                            }

                            game:GetService('Players').LocalPlayer.Character[game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Tool').Name].RemoteEvent:FireServer(unpack(v450))
                            game:GetService('VirtualInputManager'):SendKeyEvent(true, 'F', false, game)
                            game:GetService('VirtualInputManager'):SendKeyEvent(false, 'F', false, game)
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    game:GetService('RunService').RenderStepped:Connect(function()
        pcall(function()
            if UseSkill then
                local v451, v452, v453 = pairs(game:GetService('Players').LocalPlayer.PlayerGui.Notifications:GetChildren())

                while true do
                    local v454

                    v453, v454 = v451(v452, v453)

                    if v453 == nil then
                        break
                    end
                    if v454.Name == 'NotificationTemplate' and string.find(v454.Text, 'Skill locked!') then
                        v454:Destroy()
                    end
                end
            end
        end)
    end)
end)
spawn(function()
    pcall(function()
        game:GetService('RunService').RenderStepped:Connect(function()
            if UseSkill then
                local v455 = {
                    PosMonMasteryFruit.Position,
                }

                game:GetService('Players').LocalPlayer.Character[game:GetService('Players').LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(v455))
            end
        end)
    end)
end)
spawn(function()
    pcall(function()
        while task.wait() do
            if FarmMode2 == 'Gun' and getgenv().MasteryFarm then
                QuestTitle = game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text

                if not string.find(QuestTitle, NameMon) then
                    Skillaimbot = false

                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                end
                if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= false then
                    if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        CheckQuest()

                        if game:GetService('Workspace').Enemies:FindFirstChild(Mon) then
                            pcall(function()
                                local v456, v457, v458 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                while true do
                                    local v459

                                    v458, v459 = v456(v457, v458)

                                    if v458 == nil then
                                        return
                                    end
                                    if v459.Name == Mon then
                                        repeat
                                            if true then
                                                task.wait()

                                                if string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                    HealthMin = v459.Humanoid.MaxHealth * getgenv().Kill_At / 100

                                                    if v459.Humanoid.Health > HealthMin then
                                                        AutoHaki()
                                                        EquipWeapon(getgenv().SelectWeapon)

                                                        MonFarm = v459.Name
                                                        PosMon = v459.HumanoidRootPart.CFrame
                                                        v459.Humanoid.WalkSpeed = 0
                                                        v459.HumanoidRootPart.CanCollide = false
                                                        v459.Head.CanCollide = false

                                                        topos(v459.HumanoidRootPart.CFrame * Pos)
                                                        game:GetService('VirtualUser'):CaptureController()
                                                        game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
                                                    else
                                                        EquipWeapon(SelectWeaponGun)

                                                        Skillaimbot = true
                                                        AimSkill = v459.Engine.CFrame * CFrame.new(0, -15, 0)
                                                        AimBotSkillPosition = AimSkill.Position
                                                        MonFarm = v459.Name
                                                        PosMon = v459.HumanoidRootPart.CFrame

                                                        topos(v459.HumanoidRootPart.CFrame * CFrame.new(0, 0, 10))

                                                        v459.Humanoid.WalkSpeed = 0
                                                        v459.HumanoidRootPart.CanCollide = false
                                                        v459.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                                                        v459.Head.CanCollide = false

                                                        local v460 = {
                                                            v459.HumanoidRootPart.Position,
                                                            v459.HumanoidRootPart,
                                                        }

                                                        game:GetService('Players').LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(v460))
                                                        task.wait(0.1)
                                                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                                        task.wait(0.1)
                                                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                                    end

                                                    getgenv().StartMagnet = true
                                                    PosMonMasteryGun = v459.HumanoidRootPart.CFrame
                                                else
                                                    getgenv().StartMagnet = true

                                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                                                end
                                            end
                                        until v459.Humanoid.Health <= 0 or not getgenv().MasteryFarm or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    end
                                end
                            end)
                        else
                            topos(CFrameMon)

                            Mob = game:GetService('ReplicatedStorage'):FindFirstChild(Mon)

                            if Mob then
                                topos(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 0, 10))
                            elseif game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                                game:GetService('Players').LocalPlayer.Character.Humanoid.Jump = true

                                task.wait()

                                game:GetService('Players').LocalPlayer.Character.Humanoid.Jump = false
                            end
                        end
                    end
                else
                    CheckQuest()

                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 2000 then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 2000 then
                                topos(CFrameQuest)
                            else
                                topos(CFrameQuest)
                            end
                        else
                            BTP(CFrameQuest)
                        end
                    else
                        topos(CFrameQuest)
                    end
                    if (CFrameQuest.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        task.wait(1.1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', NameQuest, LevelQuest)
                    end
                end
            end
        end
    end)
end)
spawn(function()
    pcall(function()
        if getgenv().MasteryFarm then
            while task.wait() do
                local v461, v462, v463 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                while true do
                    local v464

                    v463, v464 = v461(v462, v463)

                    if v463 == nil then
                        break
                    end
                    if v464:IsA('Tool') and v464:FindFirstChild('RemoteFunctionShoot') then
                        SelectWeaponGun = v464.Name
                    end
                end
            end
        end
    end)
end)

local _ = game:GetService('Players').LocalPlayer

spawn(function()
    pcall(function()
        while task.wait() do
            local v465, v466, v467 = pairs(game:GetService('Players').LocalPlayer.Backpack:GetChildren())

            while true do
                local v468

                v467, v468 = v465(v466, v467)

                if v467 == nil then
                    break
                end
                if v468:IsA('Tool') and v468:FindFirstChild('RemoteFunctionShoot') then
                    SelectWeaponGun = v468.Name
                end
            end
        end
    end)
end)
Main:AddToggle('Toggle', {
    Title = 'Auto Farm Mastery',
    Default = false,
}):OnChanged(function(p469)
    getgenv().MasteryFarm = p469

    StopTween(getgenv().MasteryFarm)
end)
Main:AddToggle('Toggle', {
    Title = 'Skill Z',
    Default = true,
}):OnChanged(function(p470)
    getgenv().SkillZ = p470
end)
Main:AddToggle('Toggle', {
    Title = 'Skill X',
    Default = false,
}):OnChanged(function(p471)
    getgenv().SkillX = p471
end)
Main:AddToggle('Toggle', {
    Title = 'Skill C',
    Default = false,
}):OnChanged(function(p472)
    getgenv().SkillC = p472
end)
Main:AddToggle('Toggle', {
    Title = 'Skill V',
    Default = false,
}):OnChanged(function(p473)
    getgenv().SkillV = p473
end)
Main:AddToggle('Toggle', {
    Title = 'Skill F',
    Default = false,
}):OnChanged(function(p474)
    getgenv().SkillF = p474
end)

Stack = Window:AddTab({
    Title = 'Tab Stack Farm',
    Icon = '',
})
Dropdown = Stack:AddDropdown('DropdownFarm', {
    Title = 'Select Melee',
    Values = {
        'Superhuman',
        'DeathStep',
        'Sharkman Karate',
        'Electric Claw',
        'Dragon Talon',
        'GodHuman',
    },
    Multi = false,
})

Dropdown:OnChanged(function(p475)
    GetMode = p475
end)
spawn(function()
    pcall(function()
        while task.wait(0.1) do
            if GetMode == 'Superhuman' and (getgenv().AutoGetMelee and World2) then
                local _LocalPlayer12 = game.Players.LocalPlayer
                local _Backpack = _LocalPlayer12.Backpack
                local _Character5 = _LocalPlayer12.Character
                local _Value = _LocalPlayer12.Data.Beli.Value
                local v480 = _LocalPlayer12.Data.Fragments and _LocalPlayer12.Data.Fragments.Value or 0

                if (_Backpack:FindFirstChild('Combat') or _Character5:FindFirstChild('Combat')) and _Value >= 150000 then
                    UnEquipWeapon('Combat')
                    task.wait(0.1)
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyBlackLeg')
                end
                if _Backpack:FindFirstChild('Superhuman') or _Character5:FindFirstChild('Superhuman') then
                    getgenv().SelectWeapon = 'Superhuman'
                end

                local v481, v482, v483 = ipairs({
                    {
                        'Black Leg',
                        300,
                        'BuyElectro',
                        300000,
                    },
                    {
                        'Electro',
                        300,
                        'BuyFishmanKarate',
                        750000,
                    },
                    {
                        'Fishman Karate',
                        300,
                        'DragonClaw',
                        1500,
                        'BlackbeardReward',
                    },
                    {
                        'Dragon Claw',
                        300,
                        'BuySuperhuman',
                        3000000,
                    },
                })

                while true do
                    local v484

                    v483, v484 = v481(v482, v483)

                    if v483 == nil then
                        break
                    end

                    local v485 = v484[1]
                    local v486 = v484[2]
                    local v487 = v484[3]
                    local v488 = v484[4]
                    local v489 = v484[5] == 'BlackbeardReward'
                    local v490 = _Backpack:FindFirstChild(v485) or _Character5:FindFirstChild(v485)

                    if v490 then
                        if v490.Level.Value >= v486 then
                            if v486 <= v490.Level.Value and (v489 and v488 <= v480 or not v489 and v488 <= _Value) then
                                UnEquipWeapon(v485)
                                task.wait(0.1)

                                if v489 then
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(v487, 'DragonClaw', '1')
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(v487, 'DragonClaw', '2')
                                else
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(v487)
                                end
                            end
                        else
                            getgenv().SelectWeapon = v485
                        end
                    end
                end
            end
        end
    end)
end)
spawn(function()
    pcall(function()
        while task.wait(0.1) do
            if GetMode == 'DeathStep' and (getgenv().AutoGetMelee and World2) then
                local _LocalPlayer13 = game:GetService('Players').LocalPlayer
                local _Backpack2 = _LocalPlayer13.Backpack
                local _Character6 = _LocalPlayer13.Character
                local v494 = _Backpack2:FindFirstChild('Black Leg') or _Character6:FindFirstChild('Black Leg')

                if v494 or (_Backpack2:FindFirstChild('Death Step') or _Character6:FindFirstChild('Death Step')) then
                    if v494 and v494.Level.Value >= 450 then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDeathStep')

                        getgenv().SelectWeapon = 'Death Step'
                    elseif v494 and v494.Level.Value < 450 then
                        getgenv().SelectWeapon = 'Black Leg'
                    end
                else
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyBlackLeg')
                end
            end
        end
    end)
end)
spawn(function()
    pcall(function()
        while true do
            if not task.wait(0.1) then
                return
            end
            if GetMode == 'Sharkman Karate' and (getgenv().AutoGetMelee and World2) then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyFishmanKarate')

                local v495 = string.find(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate'), 'keys')
                local _LocalPlayer14 = game:GetService('Players').LocalPlayer
                local _Backpack3 = _LocalPlayer14.Backpack
                local _Character7 = _LocalPlayer14.Character
                local v499 = _Character7:FindFirstChild('Water Key') or _Backpack3:FindFirstChild('Water Key')
                local _FishmanKarate = _Character7:FindFirstChild('Fishman Karate')

                if _FishmanKarate then
                    _FishmanKarate = _Character7:FindFirstChild('Fishman Karate').Level.Value >= 400
                end
                if v495 then
                    if v499 then
                        topos(CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365))
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate')
                    elseif not _FishmanKarate then
                        local _TideKeeper = game:GetService('Workspace').Enemies:FindFirstChild('Tide Keeper')

                        if _TideKeeper then
                            local _HumanoidRootPart6 = _TideKeeper:FindFirstChild('HumanoidRootPart')

                            if _HumanoidRootPart6 then
                                local _CFrame2 = _HumanoidRootPart6.CFrame

                                task.wait(0.1)
                                AutoHaki()
                                EquipWeapon(getgenv().SelectWeapon)

                                _HumanoidRootPart6.CanCollide = false
                                _HumanoidRootPart6.Parent.Humanoid.WalkSpeed = 0
                                _HumanoidRootPart6.CFrame = _CFrame2

                                topos(_HumanoidRootPart6.CFrame * CFrame.new(2, 20, 2))

                                if _HumanoidRootPart6.Parent and (_HumanoidRootPart6.Parent.Humanoid.Health > 0 and (getgenv().AutoGetMelee and not v499)) then
                                end
                            end
                        else
                            topos(CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857325999999999e-8, 0.885206044, 4.0332897e-9, 1, 1.35347511e-8, -0.885206044, -2.72606271e-9, 0.465199202))
                            task.wait(1)
                        end
                    end
                else
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate')
                end
            end
        end
    end)
end)
spawn(function()
    pcall(function()
        while task.wait(0.1) do
            local _LocalPlayer15 = game:GetService('Players').LocalPlayer
            local _Backpack4 = _LocalPlayer15.Backpack
            local _Character8 = _LocalPlayer15.Character
            local v507 = _Backpack4:FindFirstChild('Electro') or _Character8:FindFirstChild('Electro')

            if not _Backpack4:FindFirstChild('Electric Claw') then
                _Character8:FindFirstChild('Electric Claw')
            end

            local v508 = v507 and (v507.Level.Value or 0) or 0

            if GetMode == 'Electric Claw' and (getgenv().AutoGetMelee and World3) then
                if v507 and 400 <= v508 then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw')

                    getgenv().SelectWeapon = 'Electric Claw'
                elseif not v507 then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectro')
                end
            end
            if getgenv().AutoGetMelee and (v507 and 400 <= v508) then
                if getgenv().AutoFarm then
                    if getgenv().AutoFarm then
                        getgenv().AutoFarm = false

                        task.wait(1)

                        repeat
                            task.wait(1)
                            topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                        until not getgenv().AutoGetMelee or (_Character8.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10

                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw', 'Start')
                        task.wait(1)

                        repeat
                            task.wait(1)
                            topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                        until not getgenv().AutoGetMelee or (_Character8.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10

                        task.wait(1)

                        repeat
                            task.wait(1)
                            topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                        until not getgenv().AutoGetMelee or (_Character8.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10

                        task.wait(1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw')

                        getgenv().SelectWeapon = 'Electric Claw'

                        task.wait(0.1)

                        getgenv().AutoFarm = true
                    end
                else
                    repeat
                        task.wait(1)
                        topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                    until not getgenv().AutoGetMelee or (_Character8.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10

                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw', 'Start')
                    task.wait(1)

                    repeat
                        task.wait(1)
                        topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                    until not getgenv().AutoGetMelee or (_Character8.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10

                    task.wait(1)

                    repeat
                        task.wait(1)
                        topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                    until not getgenv().AutoGetMelee or (_Character8.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10

                    task.wait(1)
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw')
                end
            end
        end
    end)
end)
spawn(function()
    while task.wait(0.1) do
        local _LocalPlayer16 = game:GetService('Players').LocalPlayer
        local _Backpack5 = _LocalPlayer16.Backpack
        local _Character9 = _LocalPlayer16.Character
        local v512 = _Backpack5:FindFirstChild('Dragon Claw') or _Character9:FindFirstChild('Dragon Claw')

        if not _Backpack5:FindFirstChild('Dragon Talon') then
            _Character9:FindFirstChild('Dragon Talon')
        end

        local v513 = v512 and (v512.Level.Value or 0) or 0

        if GetMode == 'Dragon Talon' and (getgenv().AutoGetMelee and World3) then
            if v512 then
                if v513 >= 400 then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDragonTalon')

                    getgenv().SelectWeapon = 'Dragon Talon'
                elseif v513 <= 399 then
                    getgenv().SelectWeapon = 'Dragon Claw'
                end
            else
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'DragonClaw', '2')
            end
        end
    end
end)
spawn(function()
    pcall(function()
        while task.wait(0.1) do
            if GetMode == 'GodHuman' and (getgenv().AutoGetMelee and World3) then
                local _LocalPlayer17 = game.Players.LocalPlayer
                local _Backpack6 = _LocalPlayer17.Backpack
                local _Character10 = _LocalPlayer17.Character

                local function v520(p517, p518)
                    local v519 = _Backpack6:FindFirstChild(p517) or _Character10:FindFirstChild(p517)

                    if v519 then
                        v519 = p518 <= v519.Level.Value
                    end

                    return v519
                end

                if v520('Superhuman', 400) or (v520('Death Step', 400) or (v520('Sharkman Karate', 400) or (v520('Electric Claw', 400) or v520('Dragon Talon', 400)))) then
                    if v520('Superhuman', 400) then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDeathStep')
                        game.StarterGui:SetCore('SendNotification', {
                            Title = 'Superhuman Ready!',
                            Text = 'Buying Death Step...',
                            Duration = 5,
                        })
                    elseif v520('Death Step', 400) then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate')
                        game.StarterGui:SetCore('SendNotification', {
                            Title = 'Death Step Ready!',
                            Text = 'Buying Sharkman Karate...',
                            Duration = 5,
                        })
                    elseif v520('Sharkman Karate', 400) then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw')
                        game.StarterGui:SetCore('SendNotification', {
                            Title = 'Sharkman Karate Ready!',
                            Text = 'Buying Electric Claw...',
                            Duration = 5,
                        })
                    elseif v520('Electric Claw', 400) then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDragonTalon')
                        game.StarterGui:SetCore('SendNotification', {
                            Title = 'Electric Claw Ready!',
                            Text = 'Buying Dragon Talon...',
                            Duration = 5,
                        })
                    elseif v520('Dragon Talon', 400) then
                        local _BuyGodhuman = game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyGodhuman', true)

                        if string.find(_BuyGodhuman, 'Bring') then
                            game.StarterGui:SetCore('SendNotification', {
                                Title = 'Not Enough Material',
                                Text = 'You need more resources.',
                                Duration = 5,
                            })
                        else
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyGodhuman')
                            game.StarterGui:SetCore('SendNotification', {
                                Title = 'GodHuman Purchased!',
                                Text = 'Congratulations!',
                                Duration = 5,
                            })
                        end
                    end
                else
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySuperhuman')
                    game.StarterGui:SetCore('SendNotification', {
                        Title = 'Not Have SuperHuman!!',
                        Text = '',
                        Duration = 5,
                    })
                end
            end
        end
    end)
end)
Stack:AddToggle('Toggle', {
    Title = 'Auto Get Melee',
    Default = false,
}):OnChanged(function(p522)
    getgenv().AutoGetMelee = p522

    StopTween(getgenv().AutoGetMelee)
end)
Stack:AddToggle('Toggle', {
    Title = 'Teleport To Fruit',
    Default = false,
}):OnChanged(function(p523)
    getgenv().TeleportToFruit = p523

    StopTween(getgenv().TeleportToFruit)
end)

local _Workspace3 = game:GetService('Workspace')
local _StarterGui = game:GetService('StarterGui')

spawn(function()
    while task.wait(0.2) do
        if getgenv().TeleportToFruit then
            local v526 = _Workspace3
            local v527, v528, v529 = ipairs(v526:GetChildren())
            local v530 = false

            while true do
                local v531

                v529, v531 = v527(v528, v529)

                if v529 == nil then
                    break
                end
                if v531:IsA('Model') and (string.find(v531.Name, 'Fruit') and v531:FindFirstChild('Handle')) then
                    topos(v531.Handle.CFrame)

                    v530 = true

                    break
                end
            end

            if v530 then
                break
            end
        end
    end
end)
Stack:AddToggle('Toggle', {
    Title = 'Teleport To Fruit [ Hop Server ]',
    Default = false,
}):OnChanged(function(p532)
    getgenv().TeleportToFruitHop = p532
end)
spawn(function()
    while true do
        if not task.wait(0.5) then
            return
        end
        if getgenv().TeleportToFruit and getgenv().TeleportToFruitHop then
            local v533 = _Workspace3
            local v534, v535, v536 = ipairs(v533:GetChildren())
            local v537 = false

            while true do
                local v538

                v536, v538 = v534(v535, v536)

                if v536 == nil then
                    break
                end
                if v538:IsA('Model') and (string.find(v538.Name, 'Fruit') and v538:FindFirstChild('Handle')) then
                    topos(v538.Handle.CFrame)

                    v537 = true

                    break
                end
            end

            if not v537 then
                task.wait(1)
                _StarterGui:SetCore('SendNotification', {
                    Title = 'Server Hop..',
                    Text = '',
                    Duration = 5,
                })
                Hop()
            end
        end
    end
end)
Stack:AddToggle('Toggle', {
    Title = 'Auto New World',
    Default = false,
}):OnChanged(function(p539)
    getgenv().AutoNewWorld = p539

    StopTween(getgenv().AutoNewWorld)
end)
spawn(function()
    while task.wait(0.1) do
        if getgenv().AutoNewWorld and World1 then
            spawn(function()
                local _LocalPlayer18 = game:GetService('Players').LocalPlayer
                local _Workspace4 = game:GetService('Workspace')
                local _ReplicatedStorage4 = game:GetService('ReplicatedStorage')

                if _LocalPlayer18.Data.Level.Value >= 700 and World1 then
                    local _Door = _Workspace4.Map.Ice.Door

                    if _Door.CanCollide ~= false or _Door.Transparency ~= 1 then
                        if _Workspace4.Enemies:FindFirstChild('Ice Admiral [Lv. 700] [Boss]') then
                            local v544, v545, v546 = pairs(_Workspace4.Enemies:GetChildren())

                            while true do
                                local v547

                                v546, v547 = v544(v545, v546)

                                if v546 == nil then
                                    break
                                end
                                if v547.Name == 'Ice Admiral' and (v547:FindFirstChild('Humanoid') and v547:FindFirstChild('HumanoidRootPart')) then
                                    local _CFrame3 = v547.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait(0.05)
                                        AutoHaki()
                                        EquipWeapon(getgenv().SelectWeapon)

                                        v547.HumanoidRootPart.CanCollide = false
                                        v547.Humanoid.WalkSpeed = 0
                                        v547.Head.CanCollide = false
                                        v547.HumanoidRootPart.CFrame = _CFrame3

                                        topos(v547.HumanoidRootPart.CFrame * Pos)
                                    until not getgenv().AutoNewWorld or (not v547.Parent or v547.Humanoid.Health <= 0)
                                end
                            end
                        elseif _ReplicatedStorage4:FindFirstChild('Ice Admiral') then
                            topos(_ReplicatedStorage4:FindFirstChild('Ice Admiral').HumanoidRootPart.CFrame * CFrame.new(5, 10, 7))
                        else
                            _ReplicatedStorage4.Remotes.CommF_:InvokeServer('TravelDressrosa')
                        end
                    else
                        local v549 = CFrame.new(4849.29883, 5.65138149, 719.611877)

                        repeat
                            topos(v549)
                            task.wait(0.1)
                        until (v549.Position - _LocalPlayer18.Character.HumanoidRootPart.Position).Magnitude <= 3 or not getgenv().AutoNewWorld

                        task.wait(1.1)
                        _ReplicatedStorage4.Remotes.CommF_:InvokeServer('DressrosaQuestProgress', 'Detective')
                        task.wait(0.1)
                        EquipWeapon('Key')

                        local v550 = CFrame.new(1347.7124, 37.3751602, -1325.6488)

                        repeat
                            topos(v550)
                            task.wait(0.1)
                        until (v550.Position - _LocalPlayer18.Character.HumanoidRootPart.Position).Magnitude <= 3 or not getgenv().AutoNewWorld

                        task.wait(0.1)
                    end
                end
            end)
        end
    end
end)
Stack:AddToggle('Toggle', {
    Title = 'Auto Third World',
    Default = false,
}):OnChanged(function(p551)
    getgenv().AutoThirdSea = p551

    StopTween(getgenv().AutoThirdSea)
end)
spawn(function()
    while task.wait(0.1) do
        if getgenv().AutoThirdSea and World2 then
            pcall(function()
                local _LocalPlayer19 = game:GetService('Players').LocalPlayer
                local _ReplicatedStorage5 = game:GetService('ReplicatedStorage')
                local _Enemies = game:GetService('Workspace').Enemies

                if _LocalPlayer19.Data.Level.Value >= 1500 and World2 then
                    getgenv().AutoFarm = false

                    if _ReplicatedStorage5.Remotes.CommF_:InvokeServer('ZQuestProgress', 'General') == 0 then
                        topos(CFrame.new(-1926.322, 12.82, 1738.309))

                        if (CFrame.new(-1926.322, 12.82, 1738.309).Position - _LocalPlayer19.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                            task.wait(1.1)
                            _ReplicatedStorage5.Remotes.CommF_:InvokeServer('ZQuestProgress', 'Begin')
                        end

                        task.wait(1.3)

                        if _Enemies:FindFirstChild('rip_indra [Lv. 1500] [Boss]') then
                            local v555, v556, v557 = pairs(_Enemies:GetChildren())

                            while true do
                                local v558

                                v557, v558 = v555(v556, v557)

                                if v557 == nil then
                                    break
                                end
                                if v558.Name == 'rip_indra' and (v558:FindFirstChild('Humanoid') and (v558:FindFirstChild('HumanoidRootPart') and v558.Humanoid.Health > 0)) then
                                    local _CFrame4 = v558.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait(0.05)
                                        AutoHaki()
                                        EquipWeapon(getgenv().SelectWeapon)
                                        topos(v558.HumanoidRootPart.CFrame * Pos)

                                        v558.HumanoidRootPart.CFrame = _CFrame4
                                        v558.HumanoidRootPart.CanCollide = false
                                        v558.Humanoid.WalkSpeed = 0

                                        _ReplicatedStorage5.Remotes.CommF_:InvokeServer('TravelZou')
                                    until not getgenv().AutoThirdSea or (v558.Humanoid.Health <= 0 or not v558.Parent)
                                end
                            end
                        elseif not _Enemies:FindFirstChild('rip_indra') and (CFrame.new(-26880.934, 22.849, 473.19).Position - _LocalPlayer19.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                            topos(CFrame.new(-26880.934, 22.849, 473.19))
                        end
                    end
                end
            end)
        end
    end
end)
Stack:AddToggle('Toggle', {
    Title = 'Auto Factory',
    Default = false,
}):OnChanged(function(p560)
    getgenv().AutoFactory = p560

    StopTween(getgenv().AutoFactory)
end)
task.spawn(function()
    while task.wait(0.1) do
        if getgenv().AutoFactory and World2 then
            local _Core = game:GetService('Workspace').Enemies:FindFirstChild('Core')

            if _Core and _Core.Humanoid.Health > 0 then
                repeat
                    task.wait(0.1)
                    AutoHaki()
                    EquipWeapon(getgenv().SelectWeapon)
                    topos(_Core.HumanoidRootPart.CFrame)
                until _Core.Humanoid.Health <= 0 or not getgenv().AutoFactory
            else
                topos(CFrame.new(448.46756, 199.356781, -441.389252))
            end
        end
    end
end)
Stack:AddToggle('Toggle', {
    Title = 'Auto Pirate Raid',
    Default = false,
}):OnChanged(function(p562)
    getgenv().AutoPirateRaid = p562

    StopTween(getgenv().AutoPirateRaid)
end)
task.spawn(function()
    while task.wait(0.1) do
        if getgenv().AutoPirateRaid and World3 then
            pcall(function()
                local v563 = CFrame.new(-5496.17432, 313.768921, -2841.53027)
                local _LocalPlayer20 = game.Players.LocalPlayer
                local _Character11 = _LocalPlayer20.Character

                if _Character11 then
                    _Character11 = _LocalPlayer20.Character:FindFirstChild('HumanoidRootPart')
                end
                if _Character11 then
                    if (CFrame.new(-5539.311, 313.801, -2972.372).Position - _Character11.Position).Magnitude > 500 then
                        UnEquipWeapon(getgenv().SelectWeapon)

                        if BypassTP then
                            local _Magnitude5 = (_Character11.Position - v563.Position).Magnitude

                            if _Magnitude5 > 1500 then
                                BTP(v563)
                            elseif _Magnitude5 <= 1500 then
                                topos(v563)
                            end
                        end

                        topos(CFrame.new(-5122, 315, -2963))
                    else
                        local v567, v568, v569 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v570

                            v569, v570 = v567(v568, v569)

                            if v569 == nil then
                                break
                            end
                            if getgenv().AutoPirateRaid and (v570:FindFirstChild('HumanoidRootPart') and (v570:FindFirstChild('Humanoid') and (v570.Humanoid.Health > 0 and (v570.HumanoidRootPart.Position - _Character11.Position).Magnitude < 2000))) then
                                repeat
                                    task.wait(0.1)
                                    AutoHaki()
                                    EquipWeapon(getgenv().SelectWeapon)

                                    v570.HumanoidRootPart.CanCollide = false

                                    topos(v570.HumanoidRootPart.CFrame * Pos)

                                    getgenv().StartMagnet = true
                                until v570.Humanoid.Health <= 0 or not (v570.Parent and getgenv().AutoPirateRaid)
                            end
                        end
                    end
                end
            end)
        end
    end
end)
Stack:AddToggle('Toggle', {
    Title = 'Auto Elite Hunter',
    Default = false,
}):OnChanged(function(p571)
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')

    getgenv().AutoEliteHunter = p571

    StopTween(getgenv().AutoEliteHunter)
end)
Stack:AddToggle('Toggle', {
    Title = 'Hop Server Elite Hunter',
    Description = 'Find New Elite Hunter Server',
    Default = false,
}):OnChanged(function(p572)
    getgenv().AutoEliteHunterHop = p572
end)
spawn(function()
    while task.wait(0.3) do
        if getgenv().AutoEliteHunter and World3 then
            pcall(function()
                local _Quest = game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest

                if _Quest.Visible ~= true then
                    local _EliteHunter2 = game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter')

                    if getgenv().AutoEliteHunterHop and _EliteHunter2 == "I don't have anything for you right now. Come back later." then
                        Hop()
                    end
                else
                    local _ = _Quest.Container.QuestTitle.Title.Text
                    local v575, v576, v577 = pairs(game:GetService('Workspace').Enemies:GetChildren())
                    local v578 = {
                        'Diablo',
                        'Deandre',
                        'Urban',
                    }
                    local v579 = false

                    while true do
                        local v580

                        v577, v580 = v575(v576, v577)

                        if v577 == nil then
                            break
                        end
                        if table.find(v578, v580.Name) and (v580:FindFirstChild('Humanoid') and (v580:FindFirstChild('HumanoidRootPart') and v580.Humanoid.Health > 0)) then
                            v579 = true

                            task.wait(0.2)
                            AutoHaki()
                            EquipWeapon(getgenv().SelectWeapon)

                            if v580:FindFirstChild('HumanoidRootPart') then
                                v580.HumanoidRootPart.CanCollide = false
                                v580.Humanoid.WalkSpeed = 0

                                topos(v580.HumanoidRootPart.CFrame * Pos)
                            end
                            if not getgenv().AutoEliteHunter or (v580.Humanoid.Health <= 0 or not v580.Parent) then
                                break
                            end
                        end
                    end

                    if not v579 then
                        local v581, v582, v583 = pairs(v578)

                        while true do
                            local v584

                            v583, v584 = v581(v582, v583)

                            if v583 == nil then
                                break
                            end

                            local v585 = game:GetService('ReplicatedStorage'):FindFirstChild(v584)

                            if v585 and v585:FindFirstChild('HumanoidRootPart') then
                                topos(v585.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))

                                break
                            end
                        end
                    end
                end
            end)
        end
    end
end)
Stack:AddToggle('Toggle', {
    Title = 'Auto Touch Pad Haki',
    Default = false,
}):OnChanged(function(p586)
    getgenv().AutoTouchPadHaki = p586

    StopTween(getgenv().AutoTouchPadHaki)
end)
spawn(function()
    while task.wait(1) do
        pcall(function()
            if getgenv().AutoTouchPadHaki and World3 then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('activateColor', 'Winter Sky')
                task.wait(0.5)

                local v587 = CFrame.new(-5420.16602, 1084.9657, -2666.8208)

                repeat
                    topos(v587)
                    task.wait(0.2)
                until getgenv().StopTween == true or (getgenv().AutoTouchPadHaki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v587.Position).Magnitude <= 10)

                task.wait(0.5)
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('activateColor', 'Pure Red')
                task.wait(0.5)

                local v588 = CFrame.new(-5414.41357, 309.865753, -2212.45776)

                repeat
                    topos(v588)
                    task.wait(0.2)
                until getgenv().StopTween == true or (getgenv().AutoTouchPadHaki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v588.Position).Magnitude <= 10)

                task.wait(0.5)
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('activateColor', 'Snow White')
                task.wait(0.5)

                local v589 = CFrame.new(-4971.47559, 331.565765, -3720.02954)

                repeat
                    topos(v589)
                    task.wait(0.2)
                until getgenv().StopTween == true or (getgenv().AutoTouchPadHaki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v589.Position).Magnitude <= 10)

                task.wait(0.5)
                game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 600))
                task.wait(1)
                game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 600))
            end
        end)
    end
end)
Stack:AddToggle('Toggle', {
    Title = 'Auto Rip Indra',
    Default = false,
}):OnChanged(function(p590)
    getgenv().AutoRipIndra = p590

    StopTween(getgenv().AutoRipIndra)
end)
spawn(function()
    pcall(function()
        while true do
            if not task.wait(1) then
                return
            end
            if getgenv().AutoRipIndra and World3 then
                local _Enemies2 = game:GetService('Workspace').Enemies
                local _LocalPlayer21 = game:GetService('Players').LocalPlayer

                if _Enemies2:FindFirstChild('rip_indra True Form') or _Enemies2:FindFirstChild('rip_indra') then
                    local v593, v594, v595 = pairs(_Enemies2:GetChildren())

                    while true do
                        local u596

                        v595, u596 = v593(v594, v595)

                        if v595 == nil then
                            break
                        end
                        if (u596.Name == 'rip_indra True Form' or u596.Name == 'rip_indra') and (u596.Humanoid.Health > 0 and (u596:IsA('Model') and (u596:FindFirstChild('Humanoid') and u596:FindFirstChild('HumanoidRootPart')))) then
                            repeat
                                task.wait(0.3)
                                pcall(function()
                                    AutoHaki()
                                    EquipWeapon(getgenv().SelectWeapon)

                                    u596.HumanoidRootPart.CanCollide = false
                                    u596.Humanoid.WalkSpeed = 0

                                    topos(u596.HumanoidRootPart.CFrame * Pos)
                                end)
                            until getgenv().AutoRipIndra == false or u596.Humanoid.Health <= 0
                        end
                    end
                elseif _LocalPlayer21.Backpack:FindFirstChild("God's Chalice") or _LocalPlayer21.Character:FindFirstChild("God's Chalice") then
                    repeat
                        task.wait(0.3)
                        topos(CFrame.new(-5563.75048828125, 320.4276123046875, -2662.509521484375))
                        EquipWeapon("God's Chalice")
                    until not _LocalPlayer21.Backpack:FindFirstChild("God's Chalice")

                    if _LocalPlayer21.Character:FindFirstChild("God's Chalice") then
                    end
                else
                    if game:GetService('ReplicatedStorage'):FindFirstChild('rip_indra True Form') then
                        local _rip_indraTrueForm = game:GetService('ReplicatedStorage'):FindFirstChild('rip_indra True Form')

                        topos(_rip_indraTrueForm.HumanoidRootPart.CFrame * Pos)
                    end
                end
            end
        end
    end)
end)
Stack:AddToggle('Toggle', {
    Title = 'Auto Soul Reaper',
    Default = false,
}):OnChanged(function(p598)
    getgenv().AutoSoulReaper = p598

    StopTween(getgenv().AutoSoulReaper)
end)
spawn(function()
    while true do
        if getgenv().AutoSoulReaper and World3 then
            pcall(function()
                local _Enemies3 = game:GetService('Workspace').Enemies
                local _ReplicatedStorage6 = game:GetService('ReplicatedStorage')
                local _LocalPlayer22 = game:GetService('Players').LocalPlayer
                local _Backpack7 = _LocalPlayer22.Backpack
                local _Character12 = _LocalPlayer22.Character
                local v604

                if _Character12 then
                    v604 = _Character12:FindFirstChild('HumanoidRootPart')
                else
                    v604 = _Character12
                end
                if _Enemies3:FindFirstChild('Soul Reaper') then
                    local v605, v606, v607 = pairs(_Enemies3:GetChildren())

                    while true do
                        local v608

                        v607, v608 = v605(v606, v607)

                        if v607 == nil then
                            break
                        end
                        if string.find(v608.Name, 'Soul Reaper') then
                            repeat
                                task.wait(0.1)
                                AutoHaki()
                                EquipWeapon(getgenv().SelectWeapon)
                                topos(v608.HumanoidRootPart.CFrame * Pos)

                                v608.HumanoidRootPart.CanCollide = false
                                v608.Humanoid.WalkSpeed = 0
                                v608.HumanoidRootPart.Transparency = 1
                            until v608.Humanoid.Health <= 0 or not getgenv().AutoSoulReaper
                        end
                    end
                elseif _Backpack7:FindFirstChild('Hallow Essence') or _Character12:FindFirstChild('Hallow Essence') then
                    local v609 = CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)

                    repeat
                        topos(v609)
                        task.wait(0.1)
                    until (v609.Position - v604.Position).Magnitude <= 8

                    EquipWeapon('Hallow Essence')
                else
                    local _SoulReaper = _ReplicatedStorage6:FindFirstChild('Soul Reaper')

                    if _SoulReaper then
                        topos(_SoulReaper.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    end
                end
            end)
        end

        task.wait(0.1)
    end
end)
Stack:AddToggle('Toggle', {
    Title = 'Auto Pray',
    Default = false,
}):OnChanged(function(p611)
    getgenv().AutoPray = p611

    StopTween(getgenv().AutoPray)
end)
spawn(function()
    while wait(0.5) do
        if getgenv().AutoPray and World3 then
            local v612 = CFrame.new(-8652.99707, 143.450119, 6170.50879)

            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v612.Position).magnitude > 5 then
                topos(v612)
                wait(0.5)
            end

            pcall(function()
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 1)
            end)
        end
    end
end)
Stack:AddToggle('Toggle', {
    Title = 'Auto Try Luck',
    Default = false,
}):OnChanged(function(p613)
    getgenv().AutoTryLuck = p613

    StopTween(getgenv().AutoTryLuck)
end)
spawn(function()
    while wait(0.5) do
        if getgenv().AutoTryLuck and World3 then
            local v614 = CFrame.new(-8652.99707, 143.450119, 6170.50879)

            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v614.Position).magnitude > 5 then
                topos(v614)
                wait(0.5)
            end

            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 2)
        end
    end
end)
Stack:AddToggle('Toggle', {
    Title = 'Auto Dough King',
    Default = false,
}):OnChanged(function(p615)
    getgenv().AutoDoughKing = p615

    StopTween(getgenv().AutoDoughKing)
end)
spawn(function()
    game:GetService('RunService').Heartbeat:Connect(function()
        pcall(function()
            local v616, v617, v618 = pairs(game:GetService('Workspace').Enemies:GetChildren())

            while true do
                local v619

                v618, v619 = v616(v617, v618)

                if v618 == nil then
                    break
                end
                if getgenv().AutoDoughKing and (StartCakegetgenv().StartMagnet and (v619.Name == 'Cookie Crafter' or (v619.Name == 'Cake Guard' or (v619.Name == 'Baking Staff' or v619.Name == 'Head Baker')))) and (v619.HumanoidRootPart.Position - POSCAKE.Position).magnitude <= 300 then
                    v619.HumanoidRootPart.CFrame = POSCAKE
                    v619.HumanoidRootPart.CanCollide = false

                    if v619.Humanoid:FindFirstChild('Animator') then
                        v619.Humanoid.Animator:Destroy()
                    end

                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                end
            end
        end)
    end)
end)
spawn(function()
    while task.wait(0.2) do
        if getgenv().AutoDoughKing and World3 then
            pcall(function()
                if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                    if string.find(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SweetChaliceNpc'), 'Where') then
                        game.StarterGui:SetCore('SendNotification', {
                            Title = 'Notification',
                            Text = 'Not Have Enough Material',
                            Icon = 'http://www.roblox.com/asset/?id=',
                            Duration = 2.5,
                        })
                    else
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SweetChaliceNpc')
                    end
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild('Sweet Chalice') or game.Players.LocalPlayer.Character:FindFirstChild('Sweet Chalice') then
                    if string.find(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner'), 'Do you want to open the portal now?') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner')
                    elseif game.Workspace.Enemies:FindFirstChild('Baking Staff') or (game.Workspace.Enemies:FindFirstChild('Head Baker') or (game.Workspace.Enemies:FindFirstChild('Cake Guard') or game.Workspace.Enemies:FindFirstChild('Cookie Crafter'))) then
                        local v620, v621, v622 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v623

                            v622, v623 = v620(v621, v622)

                            if v622 == nil then
                                break
                            end
                            if (v623.Name == 'Baking Staff' or (v623.Name == 'Head Baker' or (v623.Name == 'Cake Guard' or v623.Name == 'Cookie Crafter'))) and v623.Humanoid.Health > 0 then
                                repeat
                                    task.wait(0.05)
                                    AutoHaki()
                                    EquipWeapon(getgenv().SelectWeapon)

                                    StartCakegetgenv().StartMagnet = true
                                    POSCAKE = v623.HumanoidRootPart.CFrame

                                    topos(v623.HumanoidRootPart.CFrame * Pos)
                                until getgenv().AutoDoughKing == false or (game:GetService('ReplicatedStorage'):FindFirstChild('Cake Prince') or (not v623.Parent or v623.Humanoid.Health <= 0))
                            end
                        end
                    else
                        StartCakegetgenv().StartMagnet = false

                        topos(CFrame.new(-1820.063, 210.748, -12297.496))
                    end
                elseif game.ReplicatedStorage:FindFirstChild('Dough King') or game:GetService('Workspace').Enemies:FindFirstChild('Dough King') then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Dough King') then
                        local v624, v625, v626 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v627

                            v626, v627 = v624(v625, v626)

                            if v626 == nil then
                                break
                            end
                            if v627.Name == 'Dough King' then
                                repeat
                                    task.wait(0.05)
                                    AutoHaki()
                                    EquipWeapon(getgenv().SelectWeapon)

                                    v627.HumanoidRootPart.CanCollide = false

                                    topos(v627.HumanoidRootPart.CFrame * Pos)
                                until getgenv().AutoDoughKing == false or (not v627.Parent or v627.Humanoid.Health <= 0)
                            end
                        end
                    else
                        topos(CFrame.new(-2009.28, 4532.972, -14937.308))
                    end
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild('Red Key') or game.Players.LocalPlayer.Character:FindFirstChild('Red Key') then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'CakeScientist',
                        'Check',
                    }))
                elseif game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true and (string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Diablo') or (string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Deandre') or string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Urban'))) and (game:GetService('Workspace').Enemies:FindFirstChild('Diablo') or (game:GetService('Workspace').Enemies:FindFirstChild('Deandre') or game:GetService('Workspace').Enemies:FindFirstChild('Urban'))) then
                    local v628, v629, v630 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v631

                        v630, v631 = v628(v629, v630)

                        if v630 == nil then
                            break
                        end
                        if (v631.Name == 'Diablo' or (v631.Name == 'Deandre' or v631.Name == 'Urban')) and (v631:FindFirstChild('Humanoid') and (v631:FindFirstChild('HumanoidRootPart') and v631.Humanoid.Health > 0)) then
                            repeat
                                task.wait(0.05)
                                AutoHaki()
                                EquipWeapon(getgenv().SelectWeapon)

                                v631.HumanoidRootPart.CanCollide = false
                                v631.Humanoid.WalkSpeed = 0

                                topos(v631.HumanoidRootPart.CFrame * Pos)
                                sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                            until getgenv().AutoDoughKing == false or (v631.Humanoid.Health <= 0 or not v631.Parent) or (game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice"))
                        end
                    end
                end
            end)
        end
    end
end)
Stack:AddToggle('Toggle', {
    Title = 'Auto Darkbeard',
    Default = false,
}):OnChanged(function(p632)
    getgenv().AutoDarkbeard = p632

    StopTween(getgenv().AutoDarkbeard)
end)
spawn(function()
    while task.wait(0.1) do
        if getgenv().AutoDarkbeard and World2 then
            pcall(function()
                local _Enemies4 = game:GetService('Workspace').Enemies
                local _LocalPlayer23 = game:GetService('Players').LocalPlayer

                if _Enemies4:FindFirstChild('Darkbeard') then
                    local v635, v636, v637 = pairs(_Enemies4:GetChildren())

                    while true do
                        local v638

                        v637, v638 = v635(v636, v637)

                        if v637 == nil then
                            break
                        end
                        if v638.Name == 'Darkbeard' and (v638:FindFirstChild('Humanoid') and (v638:FindFirstChild('HumanoidRootPart') and v638.Humanoid.Health > 0)) then
                            repeat
                                task.wait(0.05)
                                AutoHaki()
                                EquipWeapon(getgenv().SelectWeapon)

                                v638.HumanoidRootPart.CanCollide = false
                                v638.Humanoid.WalkSpeed = 0

                                topos(v638.HumanoidRootPart.CFrame * Pos)
                            until not getgenv().AutoDarkbeard or (not v638.Parent or v638.Humanoid.Health <= 0)
                        end
                    end
                end
                if _LocalPlayer23.Backpack:FindFirstChild('Fist of Darkness') or _LocalPlayer23.Character:FindFirstChild('Fist of Darkness') then
                    task.wait(0.1)
                    topos(CFrame.new(3778.584, 15.791, -3499.404))
                    EquipWeapon('Fist of Darkness')

                    if not getgenv().AutoDarkbeard then
                    end
                end
                if game:GetService('ReplicatedStorage'):FindFirstChild('Darkbeard') then
                    topos(game:GetService('ReplicatedStorage'):FindFirstChild('Darkbeard').HumanoidRootPart.CFrame * Pos)
                end
            end)
        end
    end
end)

Other = Window:AddTab({
    Title = 'Tab Farming Other',
    Icon = '',
})

Other:AddParagraph({
    Title = 'Quest Dragon',
    Content = '',
})
Other:AddButton({
    Title = 'Teleport To Dragon Dojo',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(5661.5322265625, 1013.0907592773438, -334.9649963378906))
        topos(CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938))
    end,
})
Other:AddToggle('Toggle', {
    Title = 'Auto Quest Dojo Trainer',
    Default = false,
}):OnChanged(function(p639)
    getgenv().DojoClaimQuest = p639

    StopTween(getgenv().DojoClaimQuest)
end)

local u640 = CFrame.new(5855.19629, 1208.32178, 872.713501, 0.606994748, -1.81058823e-9, -0.794705868, 5.72712722e-9, 1, 2.09605577e-9, 0.794705868, -5.8236762099999995e-9, 0.606994748)

spawn(function()
    while task.wait(0.2) do
        if getgenv().DojoClaimQuest and World3 then
            pcall(function()
                if BypassTP then
                    BTP(u640)
                else
                    topos(u640)
                end
                if (u640.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                    game:GetService('ReplicatedStorage').Modules.Net['RF/InteractDragonQuest']:InvokeServer({
                        NPC = 'Dojo Trainer',
                        Command = 'ClaimQuest',
                    })
                    task.wait(1)
                    game:GetService('ReplicatedStorage').Modules.Net['RF/InteractDragonQuest']:InvokeServer({
                        NPC = 'Dojo Trainer',
                        Command = 'RequestQuest',
                    })
                end
            end)
        end
    end
end)
Other:AddToggle('Toggle', {
    Title = 'Auto Upgrade Dragon Talon',
    Default = false,
}):OnChanged(function(p641)
    getgenv().DragonTalonUpgrade = p641

    StopTween(getgenv().DragonTalonUpgrade)
end)
spawn(function()
    while task.wait(0.2) do
        if getgenv().DragonTalonUpgrade and World3 then
            local v642 = CFrame.new(5661.89014, 1211.31909, 864.836731, 0.811413169, -1.36805838e-8, -0.584473014, 4.75227395e-8, 1, 4.25682458e-8, 0.584473014, -6.231619659999999e-8, 0.811413169)

            if (v642.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                game:GetService('ReplicatedStorage').Modules.Net['RF/InteractDragonQuest']:InvokeServer({
                    NPC = 'Uzoth',
                    Command = 'Upgrade',
                })
            else
                topos(v642)
            end
        end
    end
end)
Other:AddToggle('Toggle', {
    Title = 'Auto Attack Hydra Mob And Collect Ember',
    Default = false,
}):OnChanged(function(p643)
    getgenv().BlazeEmberFarm = p643

    StopTween(getgenv().BlazeEmberFarm)
end)
spawn(function()
    while task.wait(0.2) do
        if getgenv().BlazeEmberFarm and World3 then
            pcall(function()
                local _Enemies5 = game:GetService('Workspace').Enemies

                game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')

                if not (_Enemies5:FindFirstChild('Ghost') or (_Enemies5:FindFirstChild('Hydra Enforcer') or _Enemies5:FindFirstChild('Venomous Assailant'))) then
                    topos(CFrame.new(5394.36475, 1082.71057, 561.993958, -0.62453711, 3.17826405e-8, -0.780995131, 6.775309909999999e-8, 1, -1.34849545e-8, 0.780995131, -6.13366922e-8, -0.62453711))

                    return
                end

                local v645, v646, v647 = pairs(_Enemies5:GetChildren())

                while true do
                    local v648

                    v647, v648 = v645(v646, v647)

                    if v647 == nil then
                    end
                    if (v648.Name == 'Hydra Enforcer' or v648.Name == 'Venomous Assailant') and (v648:FindFirstChild('Humanoid') and (v648:FindFirstChild('HumanoidRootPart') and v648.Humanoid.Health > 0)) then
                    end
                end

                game:GetService('RunService').Heartbeat:wait()
                AutoHaki()
                EquipWeapon(getgenv().SelectWeapon)
                topos(v648.HumanoidRootPart.CFrame * Pos)

                getgenv().StartMagnet = true

                if v648.HumanoidRootPart.CanCollide then
                    v648.HumanoidRootPart.CanCollide = false
                end
                if v648.HumanoidRootPart.Size ~= Vector3.new(60, 60, 60) then
                    v648.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                end
                if v648.HumanoidRootPart.Transparency ~= 1 then
                    v648.HumanoidRootPart.Transparency = 1
                end

                MonFarm = v648.Name
                PosMon = v648.HumanoidRootPart.CFrame

                if getgenv().BlazeEmberFarm and v648.Humanoid.Health > 0 then
                else
                end
            end)
        end
    end
end)
Other:AddToggle('Toggle', {
    Title = 'Auto Collect FireFlower',
    Default = false,
}):OnChanged(function(p649)
    getgenv().AutoCollectFireFlowers = p649
end)
spawn(function()
    while wait() do
        local v650 = getgenv().AutoCollectFireFlowers and workspace:FindFirstChild('FireFlowers')

        if v650 then
            local v651, v652, v653 = pairs(v650:GetChildren())

            while true do
                local v654

                v653, v654 = v651(v652, v653)

                if v653 == nil then
                    break
                end
                if v654:IsA('Model') and v654.PrimaryPart then
                    local _Position4 = v654.PrimaryPart.Position

                    if (_Position4 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1 then
                        topos(CFrame.new(_Position4))
                    else
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 'E', false, game)
                        wait(1.5)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 'E', false, game)
                    end
                end
            end
        end
    end
end)
Other:AddParagraph({
    Title = 'Farm Chest',
    Content = string.rep('-', 21),
})

ToggleChest = Other:AddToggle('ToggleChest', {
    Title = 'Auto Chest',
    Default = false,
})

ToggleChest:OnChanged(function(p656)
    getgenv().AutoFarmChest = p656
end)
spawn(function()
    local v657 = nil

    while wait(0.2) do
        if getgenv().AutoFarmChest then
            local _LocalPlayer24 = game:GetService('Players').LocalPlayer
            local _Position5 = (_LocalPlayer24.Character or _LocalPlayer24.CharacterAdded:Wait()):GetPivot().Position
            local __ChestTagged = game:GetService('CollectionService'):GetTagged('_ChestTagged')
            local _huge3 = math.huge
            local v662, v663, v664 = ipairs(__ChestTagged)
            local v665 = nil

            while true do
                local v666

                v664, v666 = v662(v663, v664)

                if v664 == nil then
                    break
                end
                if not v666:GetAttribute('IsDisabled') then
                    local _Magnitude6 = (v666:GetPivot().Position - _Position5).Magnitude

                    if _Magnitude6 < _huge3 then
                        v665 = v666
                        _huge3 = _Magnitude6
                    end
                end
            end

            if v665 and v665 ~= v657 then
                topos(v665:GetPivot())

                v657 = v665
            end
        end
    end
end)
Other:AddToggle('Toggle', {
    Title = "Stop When Have God's Chalice& Fist Of Darkness",
    Default = false,
}):OnChanged(function(p668)
    getgenv().StopChest = p668
end)
spawn(function()
    while task.wait(0.5) do
        local u669 = false

        local function v670()
            u669 = true
        end

        local v671 = getgenv().StopChest and game.Players.LocalPlayer

        if v671 then
            local _Backpack8 = v671:FindFirstChild('Backpack')
            local _Character13 = v671.Character

            if _Backpack8 and (_Character13 and (_Backpack8:FindFirstChild('Fist of Darkness') or (_Character13:FindFirstChild('Fist of Darkness') or (_Backpack8:FindFirstChild("God's Chalice") or _Character13:FindFirstChild("God's Chalice"))))) then
                getgenv().AutoFarmChest = false

                if ToggleChest and typeof(ToggleChest.Set) == 'function' then
                    ToggleChest:Set(false)
                end

                v670()
            end
        end
        if u669 then
            break
        end
    end
end)
Other:AddParagraph({
    Title = 'Farm Observation',
    Content = string.rep('-', 21),
})

ObservationRange = Other:AddParagraph({
    Title = 'Observation Level',
    Content = '',
})

spawn(function()
    local _Value2 = game:GetService('Players').LocalPlayer.VisionRadius.Value

    while wait(0.1) do
        pcall(function()
            local _Value3 = game:GetService('Players').LocalPlayer.VisionRadius.Value

            if _Value3 ~= _Value2 then
                ObservationRange:SetDesc('Observation Range Level: ' .. math.floor(_Value3))

                _Value2 = _Value3
            end
        end)
    end
end)
Other:AddToggle('Toggle', {
    Title = 'Auto UP Observation V2',
    Default = false,
}):OnChanged(function(p676)
    getgenv().AutoObservationHakiV2 = p676

    StopTween(getgenv().AutoObservationHakiV2)
end)
spawn(function()
    local u677 = tick()

    while task.wait(0.1) do
        pcall(function()
            if not (getgenv().AutoObservationHakiV2 and World3) then
                return
            end
            if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                if tick() - u677 >= 1 then
                    topos(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625))

                    u677 = tick()
                end

                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress', 'Citizen')
                task.wait(1)
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', 'CitizenQuest', 1)
            end
            if string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Defeat 50 Forest Pirates') then
            end
            if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text ~= 'Defeat Captain Elephant (0/1)' or not game:GetService('Workspace').Enemies:FindFirstChild('Captain Elephant') then
                if game.Players.LocalPlayer.Backpack:FindFirstChild('Banana') and (game.Players.LocalPlayer.Backpack:FindFirstChild('Apple') and game.Players.LocalPlayer.Backpack:FindFirstChild('Pineapple')) then
                    if tick() - u677 >= 1 then
                        topos(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625))

                        u677 = tick()
                    end

                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress', 'Citizen')
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild('Fruit Bowl') or game.Players.LocalPlayer.Character:FindFirstChild('Fruit Bowl') then
                    if tick() - u677 >= 1 then
                        topos(CFrame.new(-10920.125, 624.20275878906, -10266.995117188))

                        u677 = tick()
                    end

                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('KenTalk2', 'Start')
                    task.wait(1)
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('KenTalk2', 'Buy')
                end
            end

            local v678, v679, v680 = pairs(game:GetService('Workspace').Enemies:GetChildren())
            local v681

            v680, v681 = v678(v679, v680)

            if v680 == nil then
            end
            if v681.Name ~= 'Captain Elephant' then
            end
            if not game:GetService('Workspace').Enemies:FindFirstChild('Forest Pirate') then
            end

            local v682, v683, v684 = pairs(game:GetService('Workspace').Enemies:GetChildren())
            local v685

            v684, v685 = v682(v683, v684)

            if v684 == nil then
            end
            if v685.Name ~= 'Forest Pirate' then
            end
            if not game.Players.LocalPlayer.Character:FindFirstChild('HasBuso') then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Buso')
            end

            EquipWeapon(getgenv().SelectWeapon)
            topos(v685.HumanoidRootPart.CFrame * Pos)

            PosHee = v685.HumanoidRootPart.CFrame
            v685.HumanoidRootPart.CFrame = v685.HumanoidRootPart.CFrame
            v685.HumanoidRootPart.CanCollide = false
            v685.Humanoid.WalkSpeed = 0
            v685.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

            if getgenv().AutoObservationHakiV2 == false or v685.Humanoid.Health <= 0 then
            else
            end
            if not game.Players.LocalPlayer.Character:FindFirstChild('HasBuso') then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Buso')
            end

            EquipWeapon(getgenv().SelectWeapon)
            topos(v681.HumanoidRootPart.CFrame * Pos)

            if sethiddenproperty then
                sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
            end

            v681.HumanoidRootPart.CFrame = v681.HumanoidRootPart.CFrame
            v681.HumanoidRootPart.CanCollide = false
            v681.Humanoid.WalkSpeed = 0
            v681.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

            if getgenv().AutoObservationHakiV2 == false or v681.Humanoid.Health <= 0 then
            end
        end)
    end
end)
spawn(function()
    local u686 = tick()

    while true do
        task.wait(0.1)
        pcall(function()
            if getgenv().AutoObservationHakiV2 and (World3 and (sethiddenproperty and tick() - u686 >= 1)) then
                sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)

                u686 = tick()
            end
        end)
    end
end)
spawn(function()
    game:GetService('RunService').Heartbeat:Connect(function()
        pcall(function()
            if getgenv().AutoObservationHakiV2 and World3 then
                local _Character14 = game:GetService('Players').LocalPlayer.Character

                if _Character14 and _Character14:FindFirstChild('Humanoid') then
                    local _Humanoid4 = _Character14.Humanoid

                    if _Humanoid4:GetState() ~= Enum.HumanoidStateType.Physics then
                        _Humanoid4:ChangeState(Enum.HumanoidStateType.Physics)
                    end
                end
            end
        end)
    end)
end)
spawn(function()
    pcall(function()
        game:GetService('RunService').Heartbeat:Connect(function()
            task.wait(0.1)

            if getgenv().AutoObservationHakiV2 and getgenv().StartMagnet then
                local v689 = game.Workspace.Enemies:GetChildren()
                local v690, v691, v692 = ipairs(v689)

                while true do
                    local v693

                    v692, v693 = v690(v691, v692)

                    if v692 == nil then
                        break
                    end
                    if v693.Name == 'Forest Pirate' and (v693:FindFirstChild('Humanoid') and v693.Humanoid.Health > 0) then
                        local _HumanoidRootPart7 = v693.HumanoidRootPart

                        if _HumanoidRootPart7.CanCollide ~= false then
                            _HumanoidRootPart7.CanCollide = false
                        end
                        if _HumanoidRootPart7.Size ~= Vector3.new(50, 50, 50) then
                            _HumanoidRootPart7.Size = Vector3.new(50, 50, 50)
                        end
                        if _HumanoidRootPart7.CFrame ~= PosHee then
                            _HumanoidRootPart7.CFrame = PosHee
                        end
                    end
                end
            end
        end)
    end)
end)
spawn(function()
    game:GetService('RunService').Heartbeat:Connect(function()
        pcall(function()
            if getgenv().AutoObservationHakiV2 and getgenv().StartMagnet then
                CheckQuest()

                local v695 = game.Workspace.Enemies:GetChildren()
                local v696, v697, v698 = ipairs(v695)

                while true do
                    local v699

                    v698, v699 = v696(v697, v698)

                    if v698 == nil then
                        break
                    end
                    if v699.Name == Ms and v699:FindFirstChild('Humanoid') then
                        local _Humanoid5 = v699.Humanoid

                        if _Humanoid5.Health > 0 then
                            _Humanoid5:ChangeState(11)
                            task.wait(0.1)
                            _Humanoid5:ChangeState(14)
                        end
                    end
                end
            end
        end)
    end)
end)
Other:AddToggle('Toggle', {
    Title = 'Farm Observation',
    Default = false,
}):OnChanged(function(p701)
    getgenv().AutoObservation = p701

    StopTween(getgenv().AutoObservation)
end)
spawn(function()
    pcall(function()
        while true do
            if not task.wait(0.1) then
                return
            end
            if getgenv().AutoObservation then
                if game:GetService('Players').LocalPlayer.VisionRadius.Value < 5000 then
                    local v702 = nil
                    local v703 = nil
                    local _LocalPlayer25 = game:GetService('Players').LocalPlayer
                    local _Enemies6 = game:GetService('Workspace').Enemies
                    local _ScreenGui = _LocalPlayer25.PlayerGui.ScreenGui

                    if World2 then
                        v703 = CFrame.new(-5478.39209, 15.9775667, -5246.9126)
                        v702 = 'Lava Pirate [Lv. 1200]'
                    elseif World1 then
                        v703 = CFrame.new(5533.29785, 88.1079102, 4852.3916)
                        v702 = 'Galley Captain'
                    elseif World3 then
                        v703 = CFrame.new(4638.78564453125, 1078.94091796875, 881.8002319335938)
                        v702 = 'Venomous Assailant'
                    end

                    local v707 = _Enemies6:FindFirstChild(v702)

                    if v707 then
                        if _ScreenGui:FindFirstChild('ImageLabel') then
                            task.wait(0.1)

                            _LocalPlayer25.Character.HumanoidRootPart.CFrame = v707.HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)

                            if getgenv().AutoObservation and _ScreenGui:FindFirstChild('ImageLabel') then
                            end
                        else
                            task.wait(0.1)

                            _LocalPlayer25.Character.HumanoidRootPart.CFrame = v707.HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)

                            if not _ScreenGui:FindFirstChild('ImageLabel') and getgenv().AutoObservation_Hop then
                                game:GetService('TeleportService'):Teleport(game.PlaceId, _LocalPlayer25)
                            end
                            if getgenv().AutoObservation and not _ScreenGui:FindFirstChild('ImageLabel') then
                            end
                        end
                    else
                        topos(v703)
                    end
                else
                    Alert:create('You Have Max Points')
                    task.wait(1)
                end
            end
        end
    end)
end)
Other:AddParagraph({
    Title = 'Auto Boss',
    Content = string.rep('-', 21),
})

if World1 then
    tableBoss = {
        'The Gorilla King',
        'Bobby',
        'Yeti',
        'Mob Leader',
        'Vice Admiral',
        'Warden',
        'Chief Warden',
        'Swan',
        'Magma Admiral',
        'Fishman Lord',
        'Wysper',
        'Thunder God',
        'Cyborg',
        'Saber Expert',
    }
elseif World2 then
    tableBoss = {
        'Diamond',
        'Jeremy',
        'Fajita',
        'Don Swan',
        'Smoke Admiral',
        'Cursed Captain',
        'Darkbeard',
        'Order',
        'Awakened Ice Admiral',
        'Tide Keeper',
    }
elseif World3 then
    tableBoss = {
        'Stone',
        'Island Empress',
        'Kilo Admiral',
        'Captain Elephant',
        'Beautiful Pirate',
        'rip_indra True Form',
        'Longma',
        'Soul Reaper',
        'Cake Queen',
        'Cake Prince',
        'Dough King',
    }
end

Dropdown = Other:AddDropdown('Dropdown', {
    Title = 'Select Boss',
    Values = tableBoss,
    Multi = false,
})

Dropdown:OnChanged(function(p708)
    getgenv().SelectBoss = p708
end)
Other:AddToggle('Toggle', {
    Title = 'Auto Kill Boss',
    Default = getgenv().AutoFarmBoss,
}):OnChanged(function(p709)
    getgenv().AutoFarmBoss = p709

    StopTween(getgenv().AutoFarmBoss)
end)
spawn(function()
    while task.wait(0.2) do
        if getgenv().AutoFarmBoss and getgenv().BypassTP then
            pcall(function()
                local _Enemies7 = game:GetService('Workspace').Enemies
                local _SelectBoss = getgenv().SelectBoss
                local _ = getgenv().SelectWeapon
                local _HumanoidRootPart8 = game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')

                if not _Enemies7:FindFirstChild(_SelectBoss) then
                    if game.ReplicatedStorage:FindFirstChild(_SelectBoss) then
                        local _HumanoidRootPart9 = game.ReplicatedStorage:FindFirstChild(_SelectBoss).HumanoidRootPart

                        if (_HumanoidRootPart9.CFrame.Position - _HumanoidRootPart8.Position).Magnitude > 1500 then
                            BTP(_HumanoidRootPart9.CFrame)
                        else
                            topos(_HumanoidRootPart9.CFrame)
                        end
                    end

                    return
                end

                local v714, v715, v716 = pairs(_Enemies7:GetChildren())
                local v717

                v716, v717 = v714(v715, v716)

                if v716 == nil then
                end
                if v717.Name ~= _SelectBoss or not (v717:FindFirstChild('Humanoid') and v717:FindFirstChild('HumanoidRootPart')) then
                else
                end

                local _Humanoid6 = v717.Humanoid
                local _HumanoidRootPart10 = v717.HumanoidRootPart

                if _Humanoid6.Health <= 0 then
                end

                task.wait()
                AutoHaki()
                EquipWeapon(getgenv().SelectWeapon)

                if _HumanoidRootPart10.CanCollide then
                    _HumanoidRootPart10.CanCollide = false
                end
                if _Humanoid6.WalkSpeed ~= 0 then
                    _Humanoid6.WalkSpeed = 0
                end
                if _HumanoidRootPart10.Size ~= Vector3.new(80, 80, 80) then
                    _HumanoidRootPart10.Size = Vector3.new(80, 80, 80)
                end

                topos(_HumanoidRootPart10.CFrame * Pos)

                if getgenv().AutoFarmBoss and (v717.Parent and _Humanoid6.Health > 0) then
                else
                end
            end)
        end
    end
end)
spawn(function()
    while task.wait(0.2) do
        if getgenv().AutoFarmBoss and not getgenv().BypassTP then
            pcall(function()
                local _Enemies8 = game:GetService('Workspace').Enemies
                local _SelectBoss2 = getgenv().SelectBoss
                local _ = getgenv().SelectWeapon

                if not _Enemies8:FindFirstChild(_SelectBoss2) then
                    local v722 = game:GetService('ReplicatedStorage'):FindFirstChild(_SelectBoss2)

                    if v722 then
                        topos(v722.HumanoidRootPart.CFrame * CFrame.new(5, 10, 7))
                    end

                    return
                end

                local v723, v724, v725 = pairs(_Enemies8:GetChildren())
                local v726

                v725, v726 = v723(v724, v725)

                if v725 == nil then
                end
                if v726.Name ~= _SelectBoss2 or not (v726:FindFirstChild('Humanoid') and v726:FindFirstChild('HumanoidRootPart')) then
                else
                end

                local _Humanoid7 = v726.Humanoid
                local _HumanoidRootPart11 = v726.HumanoidRootPart

                if _Humanoid7.Health <= 0 then
                end

                task.wait()
                AutoHaki()
                EquipWeapon(getgenv().SelectWeapon)

                if _HumanoidRootPart11.CanCollide then
                    _HumanoidRootPart11.CanCollide = false
                end
                if _Humanoid7.WalkSpeed ~= 0 then
                    _Humanoid7.WalkSpeed = 0
                end
                if _HumanoidRootPart11.Size ~= Vector3.new(80, 80, 80) then
                    _HumanoidRootPart11.Size = Vector3.new(80, 80, 80)
                end

                topos(_HumanoidRootPart11.CFrame * Pos)

                if getgenv().AutoFarmBoss and (v726.Parent and _Humanoid7.Health > 0) then
                else
                end
            end)
        end
    end
end)
Other:AddToggle('Toggle', {
    Title = 'Auto Kill All Boss',
    Default = false,
}):OnChanged(function(p729)
    getgenv().AutoFarmAllBoss = p729

    StopTween(getgenv().AutoFarmAllBoss)
end)
spawn(function()
    while task.wait(0.2) do
        if getgenv().AutoFarmAllBoss then
            pcall(function()
                local v730, v731, v732 = pairs(tableBoss)

                while true do
                    local v733

                    v732, v733 = v730(v731, v732)

                    if v732 == nil then
                        break
                    end
                    if game:GetService('Workspace').Enemies:FindFirstChild(v733) then
                        local v734, v735, v736 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v737

                            v736, v737 = v734(v735, v736)

                            if v736 == nil then
                                break
                            end
                            if v737.Name == v733 and (v737:FindFirstChild('Humanoid') and (v737:FindFirstChild('HumanoidRootPart') and v737.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(getgenv().SelectWeapon)

                                    v737.HumanoidRootPart.CanCollide = false
                                    v737.Humanoid.WalkSpeed = 0
                                    v737.HumanoidRootPart.Size = Vector3.new(80, 80, 80)

                                    topos(v737.HumanoidRootPart.CFrame * Pos)
                                until not getgenv().AutoFarmAllBoss or (not v737.Parent or v737.Humanoid.Health <= 0)
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild(v733) then
                        topos(game:GetService('ReplicatedStorage'):FindFirstChild(v733).HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                    end
                end
            end)
        end
    end
end)

Blog = Window:AddTab({
    Title = 'Tab Fruit And Raid',
    Icon = '',
})

Blog:AddToggle('Toggle', {
    Title = 'Random Devil Fruit',
    Default = false,
}):OnChanged(function(p738)
    getgenv().RandomFruit = p738
end)
spawn(function()
    while task.wait(0.2) do
        if getgenv().RandomFruit then
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Cousin', 'Buy')
        end
    end
end)
Blog:AddToggle('Toggle', {
    Title = 'Auto Store Fruit',
    Default = false,
}):OnChanged(function(p739)
    getgenv().AutoStoreFruit = p739
end)
spawn(function()
    while task.wait(0.2) do
        if getgenv().AutoStoreFruit then
            pcall(function()
                if getgenv().AutoStoreFruit then
                    local _LocalPlayer26 = game:GetService('Players').LocalPlayer
                    local _Character15 = _LocalPlayer26.Character
                    local _Backpack9 = _LocalPlayer26.Backpack
                    local v743, v744, v745 = ipairs({
                        {
                            'Rocket Fruit',
                            'Rocket-Rocket',
                        },
                        {
                            'Spin Fruit',
                            'Spin-Spin',
                        },
                        {
                            'Blade Fruit',
                            'Blade-Blade',
                        },
                        {
                            'Spring Fruit',
                            'Spring-Spring',
                        },
                        {
                            'Bomb Fruit',
                            'Bomb-Bomb',
                        },
                        {
                            'Smoke Fruit',
                            'Smoke-Smoke',
                        },
                        {
                            'Spike Fruit',
                            'Spike-Spike',
                        },
                        {
                            'Flame Fruit',
                            'Flame-Flame',
                        },
                        {
                            'Falcon Fruit',
                            'Falcon-Falcon',
                        },
                        {
                            'Ice Fruit',
                            'Ice-Ice',
                        },
                        {
                            'Sand Fruit',
                            'Sand-Sand',
                        },
                        {
                            'Dark Fruit',
                            'Dark-Dark',
                        },
                        {
                            'Diamond Fruit',
                            'Diamond-Diamond',
                        },
                        {
                            'Light Fruit',
                            'Light-Light',
                        },
                        {
                            'Rubber Fruit',
                            'Rubber-Rubber',
                        },
                        {
                            'Barrier Fruit',
                            'Barrier-Barrier',
                        },
                        {
                            'Ghost Fruit',
                            'Ghost-Ghost',
                        },
                        {
                            'Magma Fruit',
                            'Magma-Magma',
                        },
                        {
                            'Quake Fruit',
                            'Quake-Quake',
                        },
                        {
                            'Buddha Fruit',
                            'Buddha-Buddha',
                        },
                        {
                            'Love Fruit',
                            'Love-Love',
                        },
                        {
                            'Spider Fruit',
                            'Spider-Spider',
                        },
                        {
                            'Sound Fruit',
                            'Sound-Sound',
                        },
                        {
                            'Phoenix Fruit',
                            'Phoenix-Phoenix',
                        },
                        {
                            'Portal Fruit',
                            'Portal-Portal',
                        },
                        {
                            'Rumble Fruit',
                            'Rumble-Rumble',
                        },
                        {
                            'Pain Fruit',
                            'Pain-Pain',
                        },
                        {
                            'Blizzard Fruit',
                            'Blizzard-Blizzard',
                        },
                        {
                            'Gravity Fruit',
                            'Gravity-Gravity',
                        },
                        {
                            'Mammoth Fruit',
                            'Mammoth-Mammoth',
                        },
                        {
                            'T-Rex Fruit',
                            'T-Rex-T-Rex',
                        },
                        {
                            'Dough Fruit',
                            'Dough-Dough',
                        },
                        {
                            'Shadow Fruit',
                            'Shadow-Shadow',
                        },
                        {
                            'Venom Fruit',
                            'Venom-Venom',
                        },
                        {
                            'Gas Fruit',
                            'Gas-Gas',
                        },
                        {
                            'Control Fruit',
                            'Control-Control',
                        },
                        {
                            'Spirit Fruit',
                            'Spirit-Spirit',
                        },
                        {
                            'Leopard Fruit',
                            'Leopard-Leopard',
                        },
                        {
                            'Yeti Fruit',
                            'Yeti-Yeti',
                        },
                        {
                            'Kitsune Fruit',
                            'Kitsune-Kitsune',
                        },
                        {
                            'Dragon Fruit',
                            'Dragon-Dragon',
                        },
                    })

                    while true do
                        local v746

                        v745, v746 = v743(v744, v745)

                        if v745 == nil then
                            break
                        end

                        local v747 = v746[1]
                        local v748 = v746[2]

                        if _Character15:FindFirstChild(v747) or _Backpack9:FindFirstChild(v747) then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', v748, _Backpack9:FindFirstChild(v747))
                        end
                    end
                end
            end)
        end

        task.wait(0.1)
    end
end)

FruitList = {
    'Rocket-Rocket',
    'Spin-Spin',
    'Blade-Blade',
    'Spring-Spring',
    'Bomb-Bomb',
    'Smoke-Smoke',
    'Spike-Spike',
    'Flame-Flame',
    'Falcon-Falcon',
    'Ice-Ice',
    'Sand-Sand',
    'Dark-Dark',
    'Diamond-Diamond',
    'Light-Light',
    'Rubber-Rubber',
    'Barrier-Barrier',
    'Ghost-Ghost',
    'Magma-Magma',
    'Quake-Quake',
    'Buddha-Buddha',
    'Love-Love',
    'Spider-Spider',
    'Sound-Sound',
    'Phoenix-Phoenix',
    'Portal-Portal',
    'Rumble-Rumble',
    'Pain-Pain',
    'Blizzard-Blizzard',
    'Gravity-Gravity',
    'T-Rex-T-Rex',
    'Mammoth-Mammoth',
    'Dough-Dough',
    'Shadow-Shadow',
    'Venom-Venom',
    'Gas-Gas',
    'Control-Control',
    'Spirit-Spirit',
    'Leopard-Leopard',
    'Yeti-Yeti',
    'Kitsune-Kitsune',
    'Dragon-Dragon',
}
Dropdown = Blog:AddDropdown('Dropdown', {
    Title = 'Blox Fruit Sniper Shop',
    Values = FruitList,
    Multi = false,
})

Dropdown:OnChanged(function(p749)
    getgenv().SelectFruit = p749
end)
Blog:AddToggle('Toggle', {
    Title = 'Buy Blox Fruit Sniper Shop',
    Default = false,
}):OnChanged(function(p750)
    getgenv().AutoBuyFruitSniper = p750
end)
spawn(function()
    pcall(function()
        while task.wait(1) do
            if getgenv().AutoBuyFruitSniper then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GetFruits')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('PurchaseRawFruit', getgenv().SelectFruit)
            end
        end
    end)
end)
Blog:AddParagraph({
    Title = 'Raids',
    Content = string.rep('-', 21),
})

Dropdown = Blog:AddDropdown('Dropdown', {
    Title = 'Select Raid',
    Values = {
        'Dark',
        'Sand',
        'Magma',
        'Rumble',
        'Flame',
        'Ice',
        'Light',
        'Quake',
        'Buddha',
        'Spider',
        'Phoenix',
        'Dough',
    },
    Multi = false,
})

Dropdown:OnChanged(function(p751)
    getgenv().SelectChip = p751
end)
Blog:AddToggle('Toggle', {
    Title = 'Get Fruit In Inventory Low Beli',
    Default = false,
}):OnChanged(function(p752)
    getgenv().AutoGetFruit = p752
end)
spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if getgenv().AutoGetFruit then
                local v753, v754, v755 = ipairs({
                    'Rocket-Rocket',
                    'Spin-Spin',
                    'Chop-Chop',
                    'Spring-Spring',
                    'Bomb-Bomb',
                    'Smoke-Smoke',
                    'Spike-Spike',
                    'Flame-Flame',
                    'Falcon-Falcon',
                    'Ice-Ice',
                    'Sand-Sand',
                    'Dark-Dark',
                    'Ghost-Ghost',
                    'Diamond-Diamond',
                    'Light-Light',
                    'Rubber-Rubber',
                    'Barrier-Barrier',
                })

                while true do
                    local v756

                    v755, v756 = v753(v754, v755)

                    if v755 == nil then
                        break
                    end

                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LoadFruit',
                        v756,
                    }))
                end
            end
        end)
    end
end)
Blog:AddToggle('Toggle', {
    Title = 'Auto Raid',
    Default = false,
}):OnChanged(function(p757)
    getgenv().Auto_Dungeon = p757
end)
spawn(function()
    while true do
        if not task.wait(1) then
            return
        end
        if getgenv().Auto_Dungeon and not game.Players.LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible == false then
            local v758, v759, v760 = ipairs({
                'Island 5',
                'Island 4',
                'Island 3',
                'Island 2',
                'Island 1',
            })

            while true do
                local v761

                v760, v761 = v758(v759, v760)

                if v760 == nil then
                    break
                end

                local v762 = game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild(v761)

                if v762 then
                    topos(v762.CFrame * CFrame.new(0, 70, 100))

                    break
                end
            end
        end
    end
end)
spawn(function()
    while task.wait(1) do
        pcall(function()
            if getgenv().Auto_Dungeon and game:GetService('Players').LocalPlayer.PlayerGui.Main.Timer.Visible == false and (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Special Microchip') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Special Microchip')) then
                if World2 then
                    fireclickdetector(game:GetService('Workspace').Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                elseif World3 then
                    fireclickdetector(game:GetService('Workspace').Map['Boat Castle'].RaidSummon2.Button.Main.ClickDetector)
                end
            end
        end)
    end
end)
spawn(function()
    while task.wait(1) do
        if getgenv().Auto_Dungeon then
            local v763, v764, v765 = pairs(game.Workspace.Enemies:GetDescendants())

            while true do
                local u766

                v765, u766 = v763(v764, v765)

                if v765 == nil then
                    break
                end
                if u766:FindFirstChild('Humanoid') and (u766:FindFirstChild('HumanoidRootPart') and u766.Humanoid.Health > 0) then
                    pcall(function()
                        repeat
                            task.wait(0.001)

                            u766.Humanoid.Health = 0
                            u766.HumanoidRootPart.CanCollide = false

                            sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                        until not getgenv().Auto_Dungeon or (not u766.Parent or u766.Humanoid.Health <= 0)
                    end)
                end
            end
        end
    end
end)
spawn(function()
    while task.wait(1) do
        if getgenv().Auto_Dungeon then
            pcall(function()
                local v767 = {
                    'RaidsNpc',
                    'Select',
                    getgenv().SelectChip,
                }

                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(v767))
            end)
        end
    end
end)
spawn(function()
    while wait(1) do
        pcall(function()
            if getgenv().Auto_Dungeon and game:GetService('Players').LocalPlayer.PlayerGui.Main.Timer.Visible == false and (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Special Microchip') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Special Microchip')) then
                if World2 then
                    fireclickdetector(game:GetService('Workspace').Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                elseif World3 then
                    fireclickdetector(game:GetService('Workspace').Map['Boat Castle'].RaidSummon2.Button.Main.ClickDetector)
                end
            end
        end)
    end
end)
Blog:AddToggle('Toggle', {
    Title = 'Auto Awaken Fruit',
    Default = false,
}):OnChanged(function(p768)
    getgenv().AutoAwaken = p768
end)
spawn(function()
    pcall(function()
        while wait(1) do
            if getgenv().AutoAwaken then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Awakener', 'Check')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Awakener', 'Awaken')
            end
        end
    end)
end)

if World2 then
    Blog:AddButton({
        Title = 'Teleport To Lab',
        Description = '',
        Callback = function()
            topos(CFrame.new(-6438.73535, 250.645355, -4501.50684))
        end,
    })
end
if World3 then
    Blog:AddButton({
        Title = 'Teleport To Lab',
        Description = '',
        Callback = function()
            topos(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-8, -0.378151238, 4.55503146e-9, 1, 1.07377559e-7, 0.378151238, 9.7681621e-8, -0.925743818))
        end,
    })
end

Sea = Window:AddTab({
    Title = 'Tab Sea Event',
    Icon = '',
})
SetSpeedBoatSlider = Sea:AddSlider('SliderSpeedBoat', {
    Title = 'Ship Speed',
    Default = 300,
    Min = 0,
    Max = 1000,
    Rounding = 1,
    Callback = function(p769)
        SetSpeedBoat = p769
    end,
})

SetSpeedBoatSlider:OnChanged(function(p770)
    SetSpeedBoat = p770
end)
SetSpeedBoatSlider:SetValue(300)

ListSeaZone = {
    'Zone 1',
    'Zone 2',
    'Zone 3',
    'Zone 4',
    'Zone 5',
    'Zone 6',
}
zoneselect = Sea:AddDropdown('zoneselect', {
    Title = 'Select Zone',
    Values = ListSeaZone,
    Multi = false,
    Default = false,
})

zoneselect:OnChanged(function(p771)
    getgenv().SelectedZone = p771
end)

ListSeaBoat = {
    'Guardian',
    'PirateGrandBrigade',
    'MarineGrandBrigade',
    'PirateBrigade',
    'MarineBrigade',
    'PirateSloop',
    'MarineSloop',
    'BeastHunter',
}
selectthuyen = Sea:AddDropdown('selectthuyen', {
    Title = 'Select Boat',
    Values = ListSeaBoat,
    Multi = false,
    Default = false,
})

selectthuyen:OnChanged(function(p772)
    getgenv().SelectedBoat = p772
end)

boattween = Sea:AddDropdown('boattween', {
    Title = 'Speed Tween Boat',
    Values = {
        '180',
        '200',
        '250',
        '300',
        '325',
        '350',
    },
    Multi = false,
    Default = 300,
})

boattween:OnChanged(function(p773)
    getgenv().SpeedBoat = p773
end)
spawn(function()
    pcall(function()
        while wait() do
            if getgenv().SelectedZone ~= 'Zone 1' then
                if getgenv().SelectedZone ~= 'Zone 2' then
                    if getgenv().SelectedZone ~= 'Zone 3' then
                        if getgenv().SelectedZone ~= 'Zone 4' then
                            if getgenv().SelectedZone ~= 'Zone 5' then
                                if getgenv().SelectedZone == 'Zone 6' then
                                    CFrameSelectedZone = CFrame.new(-44541.7617, 30.0003204, -1244.8584, -0.0844199061, -0.00553312758, 0.9964149, -0.0654025897, 0.997858942, 2.02319411e-10, -0.99428153, -0.0651681125, -0.0846010372)
                                end
                            else
                                CFrameSelectedZone = CFrame.new(-38887.5547, 30.0004578, -2162.99023, -0.188895494, -0.00704088295, 0.981971979, -0.0372481011, 0.999306023, -1.39882339e-9, -0.981290519, -0.0365765914, -0.189026669)
                            end
                        else
                            CFrameSelectedZone = CFrame.new(-34054.6875, 30.2187767, -2560.12012, 0.0935864747, -0.00122954219, 0.995610416, 0.0624034069, 0.998040259, -0.00463332096, -0.993653536, 0.062563099, 0.0934797972)
                        end
                    else
                        CFrameSelectedZone = CFrame.new(-31171.957, 30.0001011, -2256.93774, 0.37637493, 0.0150483791, 0.926345229, -0.0399504974, 0.999201655, 2.70896673e-11, -0.925605655, -0.0370079502, 0.376675636)
                    end
                else
                    CFrameSelectedZone = CFrame.new(-26779.5215, 30.0005474, -822.858032, 0.307457417, 0.019647358, 0.951358974, -0.0637726262, 0.997964442, -4.15334017e-10, -0.949422479, -0.0606706589, 0.308084518)
                end
            else
                CFrameSelectedZone = CFrame.new(-21998.375, 30.0006084, -682.309143, 0.120013528, 0.00690158736, 0.99274826, -0.0574118942, 0.998350561, -2.3650920099999997e-10, -0.991110802, -0.0569955558, 0.120211802)
            end
        end
    end)
end)
Sea:AddToggle('Toggle', {
    Title = 'Auto Penetrate Rocks When Boat Runs',
    Default = true,
}):OnChanged(function(p774)
    getgenv().GoThroughRocks = p774
end)
spawn(function()
    while task.wait(1) do
        if getgenv().GoThroughRocks or getgenv().SailBoat then
            local v775, v776, v777 = ipairs(game:GetService('Workspace').Boats:GetChildren())

            while true do
                local v778

                v777, v778 = v775(v776, v777)

                if v777 == nil then
                    break
                end

                local v779, v780, v781 = ipairs(v778:GetDescendants())

                while true do
                    local v782

                    v781, v782 = v779(v780, v781)

                    if v781 == nil then
                        break
                    end
                    if v782:IsA('BasePart') then
                        v782.CanCollide = false
                    end
                end
            end
        else
            local v783, v784, v785 = ipairs(game:GetService('Workspace').Boats:GetChildren())

            while true do
                local v786

                v785, v786 = v783(v784, v785)

                if v785 == nil then
                    break
                end

                local v787, v788, v789 = ipairs(v786:GetDescendants())

                while true do
                    local v790

                    v789, v790 = v787(v788, v789)

                    if v789 == nil then
                        break
                    end
                    if v790:IsA('BasePart') then
                        v790.CanCollide = true
                    end
                end
            end
        end
    end
end)
Sea:AddToggle('Toggle', {
    Title = 'Auto Sea Event',
    Default = false,
}):OnChanged(function(p791)
    getgenv().SailBoat = p791

    StopTween(getgenv().SailBoat)
end)

function CheckBoat()
    local _Boats = game:GetService('Workspace'):FindFirstChild('Boats')
    local _SelectedBoat = getgenv().SelectedBoat

    if not (_Boats and _SelectedBoat) then
        return false
    end

    local v794, v795, v796 = pairs(_Boats:GetChildren())

    while true do
        local v797

        v796, v797 = v794(v795, v796)

        if v796 == nil then
            break
        end
        if v797.Name == _SelectedBoat and v797:FindFirstChild('MyBoatEsp') then
            return v797
        end
    end

    return false
end
function CheckEnemiesBoat()
    local _Enemies9 = game:GetService('Workspace'):FindFirstChild('Enemies')

    if _Enemies9 then
        return _Enemies9:FindFirstChild('FishBoat') or (_Enemies9:FindFirstChild('PirateBrigade') or _Enemies9:FindFirstChild('PirateGrandBrigade') and true or false)
    else
        return false
    end
end
function CheckShark()
    local _Enemies10 = game:GetService('Workspace'):FindFirstChild('Enemies')
    local _LocalPlayer27 = game.Players.LocalPlayer

    if _LocalPlayer27 then
        _LocalPlayer27 = _LocalPlayer27.Character
    end
    if _LocalPlayer27 then
        _LocalPlayer27 = _LocalPlayer27:FindFirstChild('HumanoidRootPart')
    end
    if not (_Enemies10 and _LocalPlayer27) then
        return false
    end

    local v801, v802, v803 = pairs(_Enemies10:GetChildren())

    while true do
        local v804

        v803, v804 = v801(v802, v803)

        if v803 == nil then
            break
        end

        local _Humanoid8 = v804:FindFirstChild('Humanoid')
        local _HumanoidRootPart12 = v804:FindFirstChild('HumanoidRootPart')

        if v804.Name == 'Shark' and (_Humanoid8 and (_HumanoidRootPart12 and (_Humanoid8.Health > 0 and (_HumanoidRootPart12.Position - _LocalPlayer27.Position).Magnitude <= 200))) then
            return true
        end
    end

    return false
end
function CheckPiranha()
    local _Enemies11 = game:GetService('Workspace'):FindFirstChild('Enemies')
    local _LocalPlayer28 = game.Players.LocalPlayer

    if _LocalPlayer28 then
        _LocalPlayer28 = _LocalPlayer28.Character
    end
    if _LocalPlayer28 then
        _LocalPlayer28 = _LocalPlayer28:FindFirstChild('HumanoidRootPart')
    end
    if not (_Enemies11 and _LocalPlayer28) then
        return false
    end

    local v809, v810, v811 = pairs(_Enemies11:GetChildren())

    while true do
        local v812

        v811, v812 = v809(v810, v811)

        if v811 == nil then
            break
        end

        local _Humanoid9 = v812:FindFirstChild('Humanoid')
        local _HumanoidRootPart13 = v812:FindFirstChild('HumanoidRootPart')

        if v812.Name == 'Piranha' and (_Humanoid9 and (_HumanoidRootPart13 and (_Humanoid9.Health > 0 and (_HumanoidRootPart13.Position - _LocalPlayer28.Position).Magnitude <= 200))) then
            return true
        end
    end

    return false
end
function AddEsp(p815, p816)
    if p816 and p816:IsA('Instance') then
        local _BillboardGui = Instance.new('BillboardGui')
        local _TextLabel = Instance.new('TextLabel')

        _BillboardGui.Name = p815
        _BillboardGui.Parent = p816
        _BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        _BillboardGui.AlwaysOnTop = true
        _BillboardGui.Size = UDim2.new(0, 200, 0, 50)
        _BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
        _TextLabel.Parent = _BillboardGui
        _TextLabel.BackgroundTransparency = 1
        _TextLabel.Size = UDim2.new(1, 0, 1, 0)
        _TextLabel.Font = Enum.Font.GothamBold
        _TextLabel.TextColor3 = Color3.new(1, 1, 1)
        _TextLabel.TextSize = 15
        _TextLabel.Text = 'YOUR BOAT IS HERE\u{2193}'

        return _BillboardGui
    end
end

spawn(function()
    while wait(0.2) do
        pcall(function()
            if getgenv().SailBoat then
                if CheckBoat() then
                    if CheckBoat() then
                        local v819, v820, v821 = pairs(game:GetService('Workspace').Boats:GetChildren())

                        while true do
                            local v822

                            v821, v822 = v819(v820, v821)

                            if v821 == nil then
                                break
                            end
                            if v822.Name == getgenv().SelectedBoat and v822:FindFirstChild('MyBoatEsp') then
                                if game.Players.LocalPlayer.Character:WaitForChild('Humanoid').Sit ~= false then
                                    repeat
                                        wait()

                                        stopboat = TPB(CFrameSelectedZone, v822.VehicleSeat)
                                    until CheckShark() and getgenv().AutoKillShark or (game:GetService('Workspace').Enemies:FindFirstChild('Terrorshark') and getgenv().AutoTerrorshark or CheckPiranha() and getgenv().AutoKillPiranha or (game:GetService('Workspace').Enemies:FindFirstChild('Fish Crew Member') and getgenv().AutoKillFishCrew or (game:GetService('Workspace').Enemies:FindFirstChild('FishBoat') and getgenv().RelzFishBoat or (game:GetService('Workspace').Enemies:FindFirstChild('PirateBrigade') and getgenv().RelzPirateBrigade or (game:GetService('Workspace').Enemies:FindFirstChild('PirateGrandBrigade') and getgenv().RelzPirateGrandBrigade or CheckSeaBeast() and getgenv().AutoSeaBest or (game.Players.LocalPlayer.Character:WaitForChild('Humanoid').Sit == false or getgenv().SailBoat == false))))))

                                    if stopboat then
                                        stopboat:Stop()
                                    end

                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 32, false, game)
                                    wait(0.1)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 32, false, game)
                                elseif CheckShark() and getgenv().AutoKillShark or (game:GetService('Workspace').Enemies:FindFirstChild('Terrorshark') and getgenv().AutoTerrorshark or CheckPiranha() and getgenv().AutoKillPiranha or (game:GetService('Workspace').Enemies:FindFirstChild('Fish Crew Member') and getgenv().AutoKillFishCrew or (game:GetService('Workspace').Enemies:FindFirstChild('FishBoat') and getgenv().RelzFishBoat or (game:GetService('Workspace').Enemies:FindFirstChild('PirateBrigade') and getgenv().RelzPirateBrigade or (game:GetService('Workspace').Enemies:FindFirstChild('PirateGrandBrigade') and getgenv().RelzPirateGrandBrigade or CheckSeaBeast() and getgenv().AutoSeaBest))))) then
                                    if stoppos then
                                        stoppos:Stop()
                                    end
                                else
                                    stoppos = topos(v822.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
                                end
                            end
                        end
                    end
                else
                    BuyBoatCFrame = CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781)

                    if (BuyBoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                        buyb = topos(BuyBoatCFrame)
                    else
                        topos(CFrame.new(-16224, 9, 439))
                    end
                    if (CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        if buyb then
                            buyb:Stop()
                        end

                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyBoat', getgenv().SelectedBoat)

                        local v823, v824, v825 = pairs(game:GetService('Workspace').Boats:GetChildren())

                        while true do
                            local v826

                            v825, v826 = v823(v824, v825)

                            if v825 == nil then
                                break
                            end
                            if v826.Name == getgenv().SelectedBoat and (v826.VehicleSeat.CFrame.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                AddEsp('MyBoatEsp', v826)
                            end
                        end
                    end
                end
            end
        end)
    end
end)
spawn(function()
    pcall(function()
        while task.wait(0.2) do
            if getgenv().SailBoat then
                local _Enemies12 = game:GetService('Workspace').Enemies

                if CheckShark() and getgenv().AutoKillShark and true or (_Enemies12:FindFirstChild('Terrorshark') and getgenv().AutoTerrorshark and true or (CheckPiranha() and getgenv().AutoKillPiranha and true or (_Enemies12:FindFirstChild('Fish Crew Member') and getgenv().AutoKillFishCrew and true or (_Enemies12:FindFirstChild('FishBoat') and getgenv().RelzFishBoat and true or (_Enemies12:FindFirstChild('PirateBrigade') and getgenv().RelzPirateBrigade and true or (_Enemies12:FindFirstChild('PirateGrandBrigade') and getgenv().RelzPirateGrandBrigade and true or (CheckSeaBeast() and getgenv().AutoSeaBest and true or false))))))) then
                    local _Humanoid10 = game.Players.LocalPlayer.Character:FindFirstChild('Humanoid')

                    if _Humanoid10 and _Humanoid10.Sit then
                        local _VirtualInputManager2 = game:GetService('VirtualInputManager')

                        _VirtualInputManager2:SendKeyEvent(true, 32, false, game)
                        task.wait(0.1)
                        _VirtualInputManager2:SendKeyEvent(false, 32, false, game)
                    end
                end
            end
        end
    end)
end)
spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if not getgenv().SailBoat then
                return
            end

            local v830 = game:GetService('Workspace').Enemies:GetChildren()

            if getgenv().AutoKillFishCrew then
            end
            if not getgenv().RelzFishBoat then
                return
            end

            local v831, v832, v833 = pairs(v830)

            while true do
                local v834

                v833, v834 = v831(v832, v833)

                if v833 == nil then
                end
                if not v834:FindFirstChild('Engine') then
                end

                local _CFrame5 = v834.Engine.CFrame

                task.wait()

                local _Position6 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position

                if (_CFrame5.Position - _Position6).Magnitude > 5 then
                    topos(_CFrame5)
                end

                getgenv().SeaSkill = (_CFrame5.Position - _Position6).Magnitude <= 50
                Skillaimbot = true
                AimBotSkillPosition = _CFrame5.Position + Vector3.new(0, -15, 0)

                if v834.Parent and (v834.Health >= 0 and getgenv().RelzFishBoat) then
                end

                Skillaimbot = false
                getgenv().SeaSkill = false
            end

            StartBring = true

            task.wait()
            AutoHaki()
            EquipWeapon(getgenv().SelectWeapon)

            local _Position7 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position

            if (v839.HumanoidRootPart.Position - _Position7).Magnitude > 5 then
                topos(v839.HumanoidRootPart.CFrame * Pos)
            end

            getgenv().SeaSkill = false

            if getgenv().AutoKillFishCrew and (v839.Parent and v839.Humanoid.Health > 0) then
            else
            end

            StartBring = false

            local v838, v839 = v840(v841, v838)

            if v838 == nil then
            end
            if v839.Name ~= 'Fish Crew Member' or (not v839:FindFirstChild('Humanoid') or (not v839:FindFirstChild('HumanoidRootPart') or v839.Humanoid.Health <= 0)) then
            else
            end

            local v840, v841

            v840, v841, v838 = pairs(v830)
        end)
    end
end)
spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if not getgenv().SailBoat then
                return
            end

            local v842 = game:GetService('Workspace').Enemies:GetChildren()

            if getgenv().AutoKillFishCrew then
                local v843, v844, v845 = pairs(v842)

                while true do
                    local v846

                    v845, v846 = v843(v844, v845)

                    if v845 == nil then
                        break
                    end
                    if v846.Name == 'Fish Crew Member' and (v846:FindFirstChild('Humanoid') and (v846:FindFirstChild('HumanoidRootPart') and v846.Humanoid.Health > 0)) then
                        getgenv().StartMagnet = true

                        repeat
                            task.wait()
                            AutoHaki()
                            EquipWeapon(getgenv().SelectWeapon)
                            topos(v846.HumanoidRootPart.CFrame * Pos)

                            getgenv().SeaSkill = false
                        until not getgenv().AutoKillFishCrew or (not v846.Parent or v846.Humanoid.Health <= 0)

                        getgenv().StartMagnet = false
                    end
                end
            end
            if not getgenv().RelzFishBoat then
                return
            end

            local v847, v848, v849 = pairs(v842)
            local _CFrame6 = v851.Engine.CFrame

            Skillaimbot = false
            getgenv().SeaSkill = false

            local v851

            v849, v851 = v847(v848, v849)

            if v849 == nil then
            end
            if v851:FindFirstChild('Engine') then
            else
            end

            task.wait()

            local _Position8 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position

            getgenv().SeaSkill = (_CFrame6.Position - _Position8).Magnitude <= 50

            if (_CFrame6.Position - _Position8).Magnitude > 5 then
                topos(_CFrame6)
            end

            Skillaimbot = true
            AimBotSkillPosition = _CFrame6.Position + Vector3.new(0, -15, 0)

            if v851.Parent and (v851.Health >= 0 and getgenv().RelzFishBoat) then
            else
            end
        end)
    end
end)
Sea:AddToggle('Toggle', {
    Title = 'Auto Shark',
    Default = false,
}):OnChanged(function(p853)
    getgenv().AutoKillShark = p853

    StopTween(getgenv().AutoKillShark)
end)
Sea:AddToggle('Toggle', {
    Title = 'Auto Piranha',
    Default = false,
}):OnChanged(function(p854)
    getgenv().AutoKillPiranha = p854

    StopTween(getgenv().AutoKillPiranha)
end)
Sea:AddToggle('Toggle', {
    Title = 'Auto Fish Crew',
    Default = false,
}):OnChanged(function(p855)
    getgenv().AutoKillFishCrew = p855

    StopTween(getgenv().AutoKillFishCrew)
end)
spawn(function()
    while task.wait(0.1) do
        pcall(function()
            local _LocalPlayer29 = game.Players.LocalPlayer

            if _LocalPlayer29 then
                _LocalPlayer29 = _LocalPlayer29.Character
            end

            local v857

            if _LocalPlayer29 then
                v857 = _LocalPlayer29:FindFirstChild('HumanoidRootPart')
            else
                v857 = _LocalPlayer29
            end
            if not v857 then
                return
            end

            local v858 = game:GetService('Workspace').Enemies:GetChildren()

            if getgenv().AutoKillShark and World3 then
                local v859, v860, v861 = pairs(v858)

                while true do
                    local v862

                    v861, v862 = v859(v860, v861)

                    if v861 == nil then
                        break
                    end
                    if v862.Name == 'Shark' and (v862:FindFirstChild('Humanoid') and (v862:FindFirstChild('HumanoidRootPart') and (v862.Humanoid.Health > 0 and (v862.HumanoidRootPart.Position - v857.Position).Magnitude <= 500))) then
                        EquipWeapon(getgenv().SelectWeapon)

                        repeat
                            task.wait(0.1)
                            AutoHaki()
                            EquipWeapon(getgenv().SelectWeapon)

                            v862.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                            v862.HumanoidRootPart.CanCollide = false

                            topos(v862.HumanoidRootPart.CFrame * Pos)
                        until not getgenv().AutoKillShark or (not v862.Parent or v862.Humanoid.Health <= 0)
                    end
                end
            end
            if getgenv().AutoKillPiranha and World3 then
                local v863, v864, v865 = pairs(v858)

                while true do
                    local v866

                    v865, v866 = v863(v864, v865)

                    if v865 == nil then
                        break
                    end
                    if v866.Name == 'Piranha' and (v866:FindFirstChild('Humanoid') and (v866:FindFirstChild('HumanoidRootPart') and (v866.Humanoid.Health > 0 and (v866.HumanoidRootPart.Position - v857.Position).Magnitude <= 500))) then
                        EquipWeapon(getgenv().SelectWeapon)

                        repeat
                            task.wait(0.1)
                            AutoHaki()
                            EquipWeapon(getgenv().SelectWeapon)

                            v866.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                            v866.HumanoidRootPart.CanCollide = false

                            topos(v866.HumanoidRootPart.CFrame * Pos)
                        until not getgenv().AutoKillPiranha or (not v866.Parent or v866.Humanoid.Health <= 0)
                    end
                end
            end
            if getgenv().AutoKillFishCrew and World3 then
                local v867, v868, v869 = pairs(v858)

                while true do
                    local v870

                    v869, v870 = v867(v868, v869)

                    if v869 == nil then
                        break
                    end
                    if v870.Name == 'Fish Crew Member' and (v870:FindFirstChild('Humanoid') and (v870:FindFirstChild('HumanoidRootPart') and (v870.Humanoid.Health > 0 and (v870.HumanoidRootPart.Position - v857.Position).Magnitude <= 500))) then
                        EquipWeapon(getgenv().SelectWeapon)

                        repeat
                            task.wait(0.1)
                            AutoHaki()
                            EquipWeapon(getgenv().SelectWeapon)

                            v870.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                            v870.HumanoidRootPart.CanCollide = false

                            topos(v870.HumanoidRootPart.CFrame * Pos)

                            MonFarm = v870.Name
                            PosMon = v870.HumanoidRootPart.CFrame
                        until not getgenv().AutoKillFishCrew or (not v870.Parent or v870.Humanoid.Health <= 0)
                    end
                end
            end
            if not (getgenv().AutoTerrorshark and World3) then
                return
            end

            local v871, v872, v873 = pairs(v858)
            local v874

            v873, v874 = v871(v872, v873)

            if v873 == nil then
            end
            if v874.Name ~= 'Terrorshark' or (not v874:FindFirstChild('Humanoid') or (not v874:FindFirstChild('HumanoidRootPart') or v874.Humanoid.Health <= 0)) then
            end

            EquipWeapon(getgenv().SelectWeapon)

            if true then
                task.wait(0.1)
                AutoHaki()
                EquipWeapon(getgenv().SelectWeapon)

                v874.HumanoidRootPart.CanCollide = false
                v874.Humanoid.WalkSpeed = 0
                v874.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                if _LocalPlayer29.Humanoid.Health >= 2000 then
                    topos(v874.HumanoidRootPart.CFrame * CFrame.new(0, 55, 0))
                else
                    fastpos(v874.HumanoidRootPart.CFrame * CFrame.new(0, 300, 0))
                    task.wait(1)
                end
            end

            TerrorSharkpos = v874.HumanoidRootPart.CFrame

            if getgenv().AutoTerrorshark and (v874.Parent and v874.Humanoid.Health > 0) then
            else
            end
        end)
    end
end)
spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if getgenv().AutoTerrorshark then
                local _LocalPlayer30 = game.Players.LocalPlayer

                if _LocalPlayer30 then
                    _LocalPlayer30 = _LocalPlayer30.Character
                end
                if _LocalPlayer30 then
                    _LocalPlayer30 = _LocalPlayer30:FindFirstChild('HumanoidRootPart')
                end
                if not _LocalPlayer30 then
                    return
                end

                local _Terrorshark = game:GetService('Workspace').Enemies:FindFirstChild('Terrorshark')

                if _Terrorshark and (_Terrorshark:FindFirstChild('HumanoidRootPart') and (_Terrorshark.HumanoidRootPart.Position - _LocalPlayer30.Position).Magnitude <= 150) then
                    repeat
                        task.wait()
                    until not getgenv().AutoTerrorshark
                end
            end
        end)
    end
end)

function UpDownPos(p877)
    if typeof(p877) == 'CFrame' then
        fastpos(p877 * CFrame.new(0, 40, 0))
        task.wait(1)
        fastpos(p877 * CFrame.new(0, 300, 0))
        task.wait(2)
    end
end

Sea:AddToggle('Toggle', {
    Title = 'Auto Ghost Ship',
    Default = false,
}):OnChanged(function(p878)
    getgenv().RelzFishBoat = p878

    StopTween(getgenv().RelzFishBoat)

    if not getgenv().RelzFishBoat then
        getgenv().SeaSkill = false
        Skillaimbot = false
    end
end)
Sea:AddToggle('Toggle', {
    Title = 'Auto Pirate Brigade',
    Default = false,
}):OnChanged(function(p879)
    getgenv().RelzPirateBrigade = p879

    StopTween(getgenv().RelzPirateBrigade)
end)
Sea:AddToggle('Toggle', {
    Title = 'Auto Pirate Grand Brigade',
    Default = false,
}):OnChanged(function(p880)
    getgenv().RelzPirateGrandBrigade = p880

    StopTween(getgenv().RelzPirateGrandBrigade)
end)
spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if not getgenv().RelzFishBoat then
                return
            end

            local v881, v882, v883 = pairs(game:GetService('Workspace').Enemies:GetChildren())

            while true do
                local v884

                v883, v884 = v881(v882, v883)

                if v883 == nil then
                    return
                end
                if v884.Name == 'FishBoat' and v884:FindFirstChild('Engine') then
                    repeat
                        task.wait(0.1)

                        local v885 = v884.Engine.CFrame * CFrame.new(0, 10, 0)
                        local _LocalPlayer31 = game.Players.LocalPlayer

                        if _LocalPlayer31 then
                            _LocalPlayer31 = _LocalPlayer31.Character
                        end
                        if _LocalPlayer31 then
                            _LocalPlayer31 = _LocalPlayer31:FindFirstChild('HumanoidRootPart')
                        end
                        if _LocalPlayer31 and (v884.Engine.Position - _LocalPlayer31.Position).Magnitude <= 50 then
                            getgenv().SeaSkill = true
                        else
                            getgenv().SeaSkill = false
                        end
                        if _LocalPlayer31 and (_LocalPlayer31.Position - v885.Position).Magnitude > 2 then
                            topos(v885)
                        end

                        Skillaimbot = true
                        AimBotSkillPosition = v884.Engine.Position
                    until not v884.Parent or v884.Health.Value <= 0 or not (game:GetService('Workspace').Enemies:FindFirstChild('FishBoat') and (v884:FindFirstChild('Engine') and getgenv().RelzFishBoat))

                    Skillaimbot = false
                    getgenv().SeaSkill = false
                end
            end
        end)
    end
end)
Sea:AddToggle('Toggle', {
    Title = 'Auto Terror Shark',
    Default = false,
}):OnChanged(function(p887)
    getgenv().AutoTerrorshark = p887

    StopTween(getgenv().AutoTerrorshark)
end)
Sea:AddToggle('Toggle', {
    Title = 'Auto Sea Beast',
    Default = false,
}):OnChanged(function(p888)
    getgenv().AutoSeaBest = p888

    StopTween(getgenv().AutoSeaBest)

    if not getgenv().AutoSeaBest then
        getgenv().SeaSkill = false
        Skillaimbot = false
    end
end)

function CheckSeaBeast()
    local _SeaBeasts = game:GetService('Workspace'):FindFirstChild('SeaBeasts')

    if not _SeaBeasts then
        return false
    end

    local v890, v891, v892 = ipairs(_SeaBeasts:GetChildren())

    while true do
        local v893

        v892, v893 = v890(v891, v892)

        if v892 == nil then
            break
        end

        local _Humanoid11 = v893:FindFirstChild('Humanoid')

        if _Humanoid11 and (v893:FindFirstChild('HumanoidRootPart') and _Humanoid11.Health > 0) then
            return true
        end
    end

    return false
end

task.spawn(function()
    while task.wait(0.5) do
        if getgenv().AutoSeaBest then
            pcall(function()
                local _Workspace5 = game:GetService('Workspace')
                local _LocalPlayer32 = game.Players.LocalPlayer

                if not _Workspace5:FindFirstChild('SeaBeasts') then
                    return
                end

                local v897, v898, v899 = pairs(_Workspace5.SeaBeasts:GetChildren())

                Skillaimbot = false
                getgenv().SeaSkill = false

                local v900

                v899, v900 = v897(v898, v899)

                if v899 == nil then
                end
                if not CheckSeaBeast() then
                end
                if true then
                    wait()

                    CFrameSeaBeast = v900.HumanoidRootPart.CFrame * CFrame.new(0, 400, 0)

                    if (CFrameSeaBeast.Position - _LocalPlayer32.Character.HumanoidRootPart.CFrame.Position).Magnitude > 50 then
                        getgenv().SeaSkill = false
                    else
                        getgenv().SeaSkill = true
                    end
                end

                Skillaimbot = true
                AimBotSkillPosition = v900.HumanoidRootPart.CFrame.Position

                topos(CFrameSeaBeast)

                if getgenv().AutoSeaBest and (v900:FindFirstChild('Humanoid') and (v900:FindFirstChild('HumanoidRootPart') and (v900.Humanoid.Health >= 0 and v900.Parent))) then
                else
                end
            end)
        end
    end
end)

local function u903(p901, p902)
    game:service('VirtualInputManager'):SendKeyEvent(true, p901, false, game)
    task.wait(p902)
    game:service('VirtualInputManager'):SendKeyEvent(false, p901, false, game)
end

task.spawn(function()
    while task.wait(1) do
        pcall(function()
            if getgenv().SeaSkill then
                local _LocalPlayer33 = game.Players.LocalPlayer
                local _Backpack10 = _LocalPlayer33.Backpack

                if getgenv().UseSeaFruitSkill and not DoneSkillFruit then
                    local v906, v907, v908 = pairs(_Backpack10:GetChildren())

                    while true do
                        local v909

                        v908, v909 = v906(v907, v908)

                        if v908 == nil then
                            break
                        end
                        if v909:IsA('Tool') and v909.ToolTip == 'Blox Fruit' then
                            _LocalPlayer33.Character.Humanoid:EquipTool(v909)
                        end
                    end

                    if getgenv().SkillFruitZ then
                        u903('Z', getgenv().SeaHoldSKillZ)
                    end
                    if getgenv().SkillFruitX then
                        u903('X', getgenv().SeaHoldSKillX)
                    end
                    if getgenv().SkillFruitC then
                        u903('C', getgenv().SeaHoldSKillC)
                    end
                    if getgenv().SkillFruitV then
                        u903('V', getgenv().SeaHoldSKillV)
                    end
                    if getgenv().SkillFruitF then
                        u903('F', getgenv().SeaHoldSKillF)
                    end

                    DoneSkillFruit = true
                end
                if getgenv().UseSeaMeleeSkill and not DoneSkillMelee then
                    local v910, v911, v912 = pairs(_Backpack10:GetChildren())

                    while true do
                        local v913

                        v912, v913 = v910(v911, v912)

                        if v912 == nil then
                            break
                        end
                        if v913:IsA('Tool') and v913.ToolTip == 'Melee' then
                            _LocalPlayer33.Character.Humanoid:EquipTool(v913)
                        end
                    end

                    if getgenv().SkillMeleeZ then
                        u903('Z', 0)
                    end
                    if getgenv().SkillMeleeX then
                        u903('X', 0)
                    end
                    if getgenv().SkillMeleeC then
                        u903('C', 0)
                    end

                    DoneSkillMelee = true
                end
                if getgenv().UseSeaSwordSkill and not DoneSkillSword then
                    local v914, v915, v916 = pairs(_Backpack10:GetChildren())

                    while true do
                        local v917

                        v916, v917 = v914(v915, v916)

                        if v916 == nil then
                            break
                        end
                        if v917:IsA('Tool') and v917.ToolTip == 'Sword' then
                            _LocalPlayer33.Character.Humanoid:EquipTool(v917)
                        end
                    end

                    if getgenv().SkillSwordZ then
                        u903('Z', 0)
                    end
                    if getgenv().SkillSwordX then
                        u903('X', 0)
                    end

                    DoneSkillSword = true
                end
                if getgenv().UseSeaGunSkill and not DoneSkillGun then
                    local v918, v919, v920 = pairs(_Backpack10:GetChildren())

                    while true do
                        local v921

                        v920, v921 = v918(v919, v920)

                        if v920 == nil then
                            break
                        end
                        if v921:IsA('Tool') and v921.ToolTip == 'Gun' then
                            _LocalPlayer33.Character.Humanoid:EquipTool(v921)
                        end
                    end

                    if getgenv().SkillGunZ then
                        u903('Z', 0.1)
                    end
                    if getgenv().SkillGunX then
                        u903('X', 0.1)
                    end

                    DoneSkillGun = true
                end

                task.wait(0.5)

                DoneSkillMelee = false
                DoneSkillFruit = false
                DoneSkillSword = false
                DoneSkillGun = false
            end
        end)
    end
end)
Sea:AddParagraph({
    Title = 'Kitsune Event',
    Content = string.rep('-', 21),
})
Sea:AddToggle('Toggle', {
    Title = 'Teleport To Kitsune Island',
    Default = false,
}):OnChanged(function(p922)
    getgenv().TweenToKitsune = p922

    StopTween(getgenv().TweenToKitsune)
end)
spawn(function()
    while wait() do
        local v923 = getgenv().TweenToKitsune and game:GetService('Workspace').Map:FindFirstChild('KitsuneIsland')

        if v923 then
            local _NeonShrinePart = v923.ShrineActive.NeonShrinePart

            topos(_NeonShrinePart.CFrame * CFrame.new(0, 0, 10))
        end
    end
end)
Sea:AddToggle('Toggle', {
    Title = 'Auto Summon Soul EmBer',
    Default = false,
}):OnChanged(function(p925)
    getgenv().SummonKitsume = p925
end)
spawn(function()
    while task.wait(0.6) do
        if getgenv().SummonKitsume and World3 then
            pcall(function()
                local _ReplicatedStorage7 = game:GetService('ReplicatedStorage')
                local _Modules = _ReplicatedStorage7:FindFirstChild('Modules')

                if _Modules then
                    _Modules = _ReplicatedStorage7.Modules:FindFirstChild('Net')
                end
                if _Modules then
                    _Modules = _Modules:FindFirstChild('RF/KitsuneStatuePray')
                end
                if _Modules then
                    _Modules:InvokeServer()
                end
            end)
        end
    end
end)
Sea:AddToggle('Toggle', {
    Title = 'Auto Collect Azure Wisp',
    Default = false,
}):OnChanged(function(p928)
    getgenv().CollectAzure = p928

    StopTween(getgenv().CollectAzure)
end)
task.spawn(function()
    while task.wait(1) do
        if getgenv().CollectAzure then
            pcall(function()
                local _AttachedAzureEmber = game:GetService('Workspace'):FindFirstChild('AttachedAzureEmber')
                local _EmberTemplate = game:GetService('Workspace'):FindFirstChild('EmberTemplate')

                if _AttachedAzureEmber and _EmberTemplate then
                    local _Part = _EmberTemplate:FindFirstChild('Part')

                    if _Part and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - _Part.Position).Magnitude > 10 then
                        fastpos(_Part.CFrame)
                    end
                end
            end)
        end
    end
end)

Slider = Sea:AddSlider('Slider', {
    Title = 'Set Azure Ember',
    Default = 20,
    Min = 0,
    Max = 25,
    Rounding = 5,
    Callback = function(p932)
        getgenv().SetToTradeAureEmber = p932
    end,
})

Sea:AddToggle('Toggle', {
    Title = 'Auto Trade Azure Ember',
    Default = false,
    Callback = function(p933)
        getgenv().TradeAureEmber = p933
    end,
})

function GetCountMaterials(p934)
    local _getInventory = game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('getInventory')
    local v936, v937, v938 = pairs(_getInventory)

    while true do
        local v939

        v938, v939 = v936(v937, v938)

        if v938 == nil then
            break
        end
        if v939.Name == p934 then
            return v939.Count
        end
    end

    return 0
end

task.spawn(function()
    while task.wait(3) do
        if getgenv().TradeAureEmber then
            pcall(function()
                if GetCountMaterials('Azure Ember') >= getgenv().SetToTradeAureEmber then
                    game:GetService('ReplicatedStorage').Modules.Net:FindFirstChild('RF/KitsuneStatuePray'):InvokeServer()
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('KitsuneStatuePray')
                    task.wait(5)
                end
            end)
        end
    end
end)
Sea:AddButton({
    Title = 'Trade Azure Wisp',
    Callback = function()
        game:GetService('ReplicatedStorage'):WaitForChild('Modules'):WaitForChild('Net'):WaitForChild('RF/KitsuneStatuePray'):InvokeServer()
    end,
})
Sea:AddParagraph({
    Title = 'Leviathan Event',
    Content = string.rep('-', 21),
})
Sea:AddButton({
    Title = 'Buy Spy',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('InfoLeviathan', '2')
    end,
})
Sea:AddToggle('Toggle', {
    Title = 'Teleport To Frozen Dimension',
    Default = false,
}):OnChanged(function(p940)
    getgenv().AutoFrozenDimension = p940
end)
task.spawn(function()
    while task.wait(1) do
        pcall(function()
            local v941 = getgenv().AutoFrozenDimension and World3 and game:GetService('Workspace').Map:FindFirstChild('FrozenDimension')

            if v941 then
                local _Position9 = v941.Center.Position

                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(_Position9.X, 500, _Position9.Z)).Magnitude > 10 then
                    topos(CFrame.new(_Position9.X, 500, _Position9.Z))
                end
            end
        end)
    end
end)
Sea:AddToggle('Toggle', {
    Title = 'Auto Attack Leviathan',
    Default = false,
}):OnChanged(function(p943)
    getgenv().KillLevi = p943
end)
task.spawn(function()
    while task.wait(0.5) do
        if getgenv().KillLevi and World3 then
            pcall(function()
                local v944, v945, v946 = pairs(game:GetService('Workspace').SeaBeasts:GetChildren())

                while true do
                    local v947

                    v946, v947 = v944(v945, v946)

                    if v946 == nil then
                        return
                    end
                    if v947.Name == 'Leviathan' and v947:FindFirstChild('HumanoidRootPart') then
                    end
                end

                task.wait(0.2)

                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v947.HumanoidRootPart.Position).Magnitude > 10 then
                    topos(v947.HumanoidRootPart.CFrame * CFrame.new(0, 500, 0))
                end
                if not getgenv().SeaSkill then
                    getgenv().SeaSkill = true
                end
                if not IsHakiActive() then
                    AutoHaki()
                end

                AimBotSkillPosition = v947.HumanoidRootPart
                Skillaimbot = true

                if v947:FindFirstChild('HumanoidRootPart') and getgenv().KillLevi then
                else
                end

                getgenv().SeaSkill = false
                Skillaimbot = false
            end)
        end
    end
end)

ChooseSkill = Window:AddTab({
    Title = 'Tab Setting Select Skill',
    Icon = '',
})

ChooseSkill:AddParagraph({
    Title = 'Setting Sea Event',
    Content = string.rep('-', 21),
})
ChooseSkill:AddParagraph({
    Title = 'Activating Skill Event,\nAnd Skill Leviathan Flawless Fusion',
})
ChooseSkill:AddToggle('Toggle', {
    Title = 'Select Use Fruit',
    Default = true,
}):OnChanged(function(p948)
    getgenv().UseSeaFruitSkill = p948
end)
ChooseSkill:AddToggle('Toggle', {
    Title = 'Select Use Melee',
    Default = true,
}):OnChanged(function(p949)
    getgenv().UseSeaMeleeSkill = p949
end)
ChooseSkill:AddToggle('Toggle', {
    Title = 'Select Use Sword',
    Default = true,
}):OnChanged(function(p950)
    getgenv().UseSeaSwordSkill = p950
end)
ChooseSkill:AddToggle('Toggle', {
    Title = 'Select Use Gun',
    Default = true,
}):OnChanged(function(p951)
    getgenv().UseSeaGunSkill = p951
end)
ChooseSkill:AddParagraph({
    Title = 'Activate Weapon Farm Event,\nClick to Activate',
})
ChooseSkill:AddParagraph({
    Title = 'Setting Skill Fruit',
    Content = string.rep('-', 21),
})
ChooseSkill:AddToggle('Toggle', {
    Title = 'Skill Fruit Z',
    Default = true,
}):OnChanged(function(p952)
    getgenv().SkillFruitZ = p952
end)
ChooseSkill:AddToggle('Toggle', {
    Title = 'Skill Fruit X',
    Default = true,
}):OnChanged(function(p953)
    getgenv().SkillFruitX = p953
end)
ChooseSkill:AddToggle('Toggle', {
    Title = 'Skill Fruit C',
    Default = true,
}):OnChanged(function(p954)
    getgenv().SkillFruitC = p954
end)
ChooseSkill:AddToggle('Toggle', {
    Title = 'Skill Fruit V',
    Default = false,
}):OnChanged(function(p955)
    getgenv().SkillFruitV = p955
end)
ChooseSkill:AddToggle('Toggle', {
    Title = 'Skill Fruit F',
    Default = false,
}):OnChanged(function(p956)
    getgenv().SkillFruitF = p956
end)
ChooseSkill:AddParagraph({
    Title = 'Use To Enable Skill Fruit,\nPlease Select Correct',
})
ChooseSkill:AddParagraph({
    Title = 'Setting Skill Melee',
    Content = string.rep('-', 21),
})
ChooseSkill:AddToggle('Toggle', {
    Title = 'Skill Melee Z',
    Default = true,
}):OnChanged(function(p957)
    getgenv().SkillMeleeZ = p957
end)
ChooseSkill:AddToggle('Toggle', {
    Title = 'Skill Melee X',
    Default = true,
}):OnChanged(function(p958)
    getgenv().SkillMeleeX = p958
end)
ChooseSkill:AddToggle('Toggle', {
    Title = 'Skill Melee C',
    Default = true,
}):OnChanged(function(p959)
    getgenv().SkillMeleeC = p959
end)
ChooseSkill:AddParagraph({
    Title = 'Use To Enable Skill Melee,\nPlease Select Correct',
})
ChooseSkill:AddParagraph({
    Title = 'Setting Skill Sword And Gun',
    Content = string.rep('-', 21),
})
ChooseSkill:AddToggle('Toggle', {
    Title = 'Sword And Gun Skill Z',
    Default = true,
}):OnChanged(function(p960)
    getgenv().SkillSwordZ = p960
    getgenv().SkillGunZ = p960
end)
ChooseSkill:AddToggle('Toggle', {
    Title = 'Sword And Gun Skill X',
    Default = true,
}):OnChanged(function(p961)
    getgenv().SkillSwordX = p961
    getgenv().SkillGunX = p961
end)
ChooseSkill:AddParagraph({
    Title = 'Use To Enable Skill Sword and Gun,\nPlease Select Correct',
})

local v962 = getrawmetatable(game)
local ___namecall = v962.__namecall

setreadonly(v962, false)

v962.__namecall = newcclosure(function(...)
    local v964 = getnamecallmethod()
    local v965 = {...}

    if tostring(v964) ~= 'FireServer' or (tostring(v965[1]) ~= 'RemoteEvent' or (tostring(v965[2]) == 'true' or (tostring(v965[2]) == 'false' or not Skillaimbot))) then
        return ___namecall(...)
    end

    v965[2] = AimBotSkillPosition

    return ___namecall(unpack(v965))
end)

local function u968(p966, p967)
    game:service('VirtualInputManager'):SendKeyEvent(true, p966, false, game)
    wait(p967 or 0.1)
    game:service('VirtualInputManager'):SendKeyEvent(false, p966, false, game)
end

task.spawn(function()
    while task.wait(0.5) do
        pcall(function()
            if u903 then
                local v969, v970, v971 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                while true do
                    local v972

                    v971, v972 = v969(v970, v971)

                    if v971 == nil then
                        break
                    end
                    if v972.Name == MonFarm and (v972:FindFirstChild('Humanoid') and (v972:FindFirstChild('HumanoidRootPart') and v972.Humanoid.Health <= v972.Humanoid.MaxHealth * getgenv().Kill_At / 100)) then
                        if getgenv().SkillZ then
                            u968('Z', getgenv().HoldSKillZ)
                        end
                        if getgenv().SkillX then
                            u968('X', getgenv().HoldSKillX)
                        end
                        if getgenv().SkillC then
                            u968('C', getgenv().HoldSKillC)
                        end
                    end
                end
            end
        end)
    end
end)
task.spawn(function()
    while task.wait(0.5) do
        pcall(function()
            if UseGunSkill then
                local v973, v974, v975 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                while true do
                    local v976

                    v975, v976 = v973(v974, v975)

                    if v975 == nil then
                        break
                    end
                    if v976.Name == MonFarm and (v976:FindFirstChild('Humanoid') and (v976:FindFirstChild('HumanoidRootPart') and (v976.Humanoid.Health <= v976.Humanoid.MaxHealth * getgenv().Kill_At / 100 and getgenv().SkillZ))) then
                        u968('Z', 0.1)
                    end
                end
            end
        end)
    end
end)

Volcanic = Window:AddTab({
    Title = 'Tab Volcanic Event',
    Icon = '',
})

Volcanic:AddButton({
    Title = 'Destroy Lava In Prehistoric Island',
    Callback = function()
        local v977, v978, v979 = pairs(game.Workspace:GetDescendants())

        while true do
            local v980

            v979, v980 = v977(v978, v979)

            if v979 == nil then
                break
            end
            if v980.Name == 'Lava' then
                v980:Destroy()
            end
        end

        local v981, v982, v983 = pairs(game.ReplicatedStorage:GetDescendants())

        while true do
            local v984

            v983, v984 = v981(v982, v983)

            if v983 == nil then
                break
            end
            if v984.Name == 'Lava' then
                v984:Destroy()
            end
        end
    end,
})
Volcanic:AddButton({
    Title = 'Crafting Volcanic Magnet',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'CraftItem',
            'Craft',
            'Volcanic Magnet',
        }))
    end,
})
Volcanic:AddToggle('MyToggle', {
    Title = 'Teleport Prehistoric Island',
    Default = false,
}):OnChanged(function(p985)
    getgenv().TweenPrehistoric = p985
end)
spawn(function()
    local v986 = nil

    while not v986 do
        v986 = game:GetService('Workspace').Map:FindFirstChild('PrehistoricIsland')

        wait()
    end
    while wait() do
        local v987 = getgenv().TweenPrehistoric and World3 and game:GetService('Workspace').Map:FindFirstChild('PrehistoricIsland')

        if v987 then
            local _Core2 = v987:FindFirstChild('Core')

            if _Core2 then
                _Core2 = v987.Core:FindFirstChild('PrehistoricRelic')
            end
            if _Core2 then
                _Core2 = _Core2:FindFirstChild('Skull')
            end
            if _Core2 then
                topos(CFrame.new(_Core2.Position))

                getgenv().TweenPrehistoric = false
            end
        end
    end
end)
Volcanic:AddToggle('Toggle', {
    Title = 'Auto Event Volcano Island Defense',
    Default = false,
}):OnChanged(function(p989)
    getgenv().AutoDefendVolcano = p989
end)

local function u991(p990)
    game:GetService('VirtualInputManager'):SendKeyEvent(true, p990, false, game)
    wait(0.1)
    game:GetService('VirtualInputManager'):SendKeyEvent(false, p990, false, game)
end
local function u998()
    pcall(function()
        local _InteriorLava = game.Workspace.Map.PrehistoricIsland.Core:FindFirstChild('InteriorLava')

        if _InteriorLava and _InteriorLava:IsA('Model') then
            _InteriorLava:Destroy()
        end

        local _PrehistoricIsland = game.Workspace.Map:FindFirstChild('PrehistoricIsland')

        if _PrehistoricIsland then
            local v994, v995, v996 = pairs(_PrehistoricIsland:GetDescendants())

            while true do
                local v997

                v996, v997 = v994(v995, v996)

                if v996 == nil then
                    break
                end
                if v997:IsA('Part') and v997.Name:lower():find('lava') then
                    v997:Destroy()
                end
                if v997:IsA('MeshPart') and v997.Name:lower():find('lava') then
                    v997:Destroy()
                end
            end
        end
    end)
end
local function u1006()
    local _VolcanoRocks = game.Workspace.Map.PrehistoricIsland.Core:FindFirstChild('VolcanoRocks')

    if not _VolcanoRocks then
        return nil
    end

    local v1000, v1001, v1002 = pairs(_VolcanoRocks:GetChildren())

    while true do
        local v1003

        v1002, v1003 = v1000(v1001, v1002)

        if v1002 == nil then
            break
        end
        if v1003:IsA('Model') then
            local _volcanorock = v1003:FindFirstChild('volcanorock')

            if _volcanorock and _volcanorock:IsA('MeshPart') then
                local _Color = _volcanorock.Color

                if _Color == Color3.fromRGB(185, 53, 56) or _Color == Color3.fromRGB(185, 53, 57) then
                    return _volcanorock
                end
            end
        end
    end

    return nil
end
local function u1018(p1007)
    local _LocalPlayer34 = game.Players.LocalPlayer
    local _Backpack11 = _LocalPlayer34:FindFirstChild('Backpack')

    if not _Backpack11 then
        return
    end

    local v1010, v1011, v1012 = pairs(_Backpack11:GetChildren())

    while true do
        local v1013

        v1012, v1013 = v1010(v1011, v1012)

        if v1012 == nil then
            break
        end
        if v1013:IsA('Tool') and v1013.ToolTip == p1007 then
            v1013.Parent = _LocalPlayer34.Character

            local v1014, v1015, v1016 = ipairs({
                'Z',
                'X',
                'C',
                'V',
                'F',
            })

            while true do
                local u1017

                v1016, u1017 = v1014(v1015, v1016)

                if v1016 == nil then
                    break
                end

                wait(0.1)
                pcall(function()
                    u991(u1017)
                end)
            end

            v1013.Parent = _Backpack11

            break
        end
    end
end

spawn(function()
    while wait(0.1) do
        if getgenv().AutoDefendVolcano then
            if typeof(AutoHaki) == 'function' then
                AutoHaki()
            end

            u998()

            local v1019 = u1006()

            if v1019 then
                local v1020 = CFrame.new(v1019.Position)

                if typeof(topos) == 'function' then
                    topos(v1020)
                end
                if v1019.Color == Color3.fromRGB(185, 53, 56) or v1019.Color == Color3.fromRGB(185, 53, 57) then
                    local _Character16 = game.Players.LocalPlayer.Character

                    if _Character16 then
                        _Character16 = _Character16:FindFirstChild('HumanoidRootPart')
                    end
                    if _Character16 and (_Character16.Position - v1019.Position).Magnitude <= 1 then
                        if getgenv().UseMelee then
                            u1018('Melee')
                        end
                        if getgenv().UseSword then
                            u1018('Sword')
                        end
                        if getgenv().UseGun then
                            u1018('Gun')
                        end
                    end

                    getgenv().TweenToPrehistoric = false
                else
                    u1006()
                end
            else
                getgenv().TweenToPrehistoric = true
            end
        end
    end
end)
Volcanic:AddToggle('Toggle', {
    Title = 'Auto Kill Aura Golems',
    Default = false,
}):OnChanged(function(p1022)
    getgenv().KillAura = p1022
end)
spawn(function()
    while wait(0.1) do
        if getgenv().KillAura then
            pcall(function()
                sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)

                local v1023, v1024, v1025 = pairs(game.Workspace.Enemies:GetChildren())

                while true do
                    local v1026

                    v1025, v1026 = v1023(v1024, v1025)

                    if v1025 == nil then
                        break
                    end

                    local _Humanoid12 = v1026:FindFirstChild('Humanoid')
                    local _HumanoidRootPart14 = v1026:FindFirstChild('HumanoidRootPart')

                    if _Humanoid12 and (_HumanoidRootPart14 and _Humanoid12.Health > 0) then
                        _Humanoid12.Health = 0
                        _HumanoidRootPart14.CanCollide = false
                    end
                end
            end)
        end
    end
end)
Volcanic:AddToggle('Toggle', {
    Title = 'Auto Collect Bone',
    Default = false,
}):OnChanged(function(p1029)
    getgenv().CollectBone = p1029
end)
spawn(function()
    repeat
        if not wait(0.1) then
            return
        end
    until getgenv().AutoCollectBone and World3

    local v1030, v1031, v1032 = ipairs(workspace:GetDescendants())
    local v1033 = {}

    while true do
        local v1034

        v1032, v1034 = v1030(v1031, v1032)

        if v1032 == nil then
            break
        end
        if v1034:IsA('BasePart') and v1034.Name == 'DinoBone' then
            table.insert(v1033, v1034)
        end
    end

    local v1035, v1036, v1037 = ipairs(v1033)

    topos(CFrame.new(v1039.Position))
    wait(0.2)

    local v1038 = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')

    if v1038 then
        v1038 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    end
    if v1038 and (v1038 - v1039.Position).Magnitude > 1 then
    end

    local v1039

    v1037, v1039 = v1035(v1036, v1037)

    if v1037 == nil then
    end
    if typeof(topos) ~= 'function' then
    else
    end
end)
Volcanic:AddToggle('Toggle', {
    Title = 'Auto Collect Egg',
    Default = false,
}):OnChanged(function(p1040)
    getgenv().CollectEgg = p1040
end)
spawn(function()
    repeat
        repeat
            repeat
                if not wait(0.1) then
                    return
                end
            until getgenv().CollectEgg and World3 and (workspace:FindFirstChild('Map') and (workspace.Map:FindFirstChild('PrehistoricIsland') and workspace.Map.PrehistoricIsland.Core:FindFirstChild('SpawnedDragonEggs')))

            local v1041 = workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs:GetChildren()
        until #v1041 > 0

        local v1042 = v1041[math.random(1, #v1041)]
    until v1042:IsA('Model') and (v1042.PrimaryPart and typeof(topos) == 'function')

    topos(v1042.PrimaryPart.CFrame)
    wait(0.2)

    local v1043 = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')

    if v1043 then
        v1043 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    end
    if v1043 and (v1043 - v1042.PrimaryPart.Position).Magnitude > 1 then
    else
    end

    game:GetService('VirtualInputManager'):SendKeyEvent(true, 'E', false, game)
    wait(1)
    game:GetService('VirtualInputManager'):SendKeyEvent(false, 'E', false, game)
end)
Volcanic:AddParagraph({
    Title = 'Setting Skill Volcano Island',
    Content = string.rep('-', 21),
})
Volcanic:AddToggle('Toggle', {
    Title = 'Auto Use Skill Melee',
    Default = false,
}):OnChanged(function(p1044)
    getgenv().UseMelee = p1044
end)
Volcanic:AddToggle('Toggle', {
    Title = 'Auto Use Skill Sword',
    Default = false,
}):OnChanged(function(p1045)
    getgenv().UseSword = p1045
end)
Volcanic:AddToggle('Toggle', {
    Title = 'Auto Use Skill Gun',
    Default = false,
}):OnChanged(function(p1046)
    getgenv().UseGun = p1046
end)

Race = Window:AddTab({
    Title = 'Tab Upgrade Race',
    Icon = '',
})

Race:AddParagraph({
    Title = 'Race Draco',
    Content = string.rep('-', 21),
})
game:GetService('RunService')
Race:AddToggle('Toggle', {
    Title = 'Teleport To The Draco Clan Trial Door',
    Default = false,
}):OnChanged(function(p1047)
    getgenv().TrialTeleportDraco = p1047
end)

local function u1049(p1048)
    if topos and typeof(p1048) == 'CFrame' then
        topos(p1048)
    end
end

spawn(function()
    local _PrehistoricIsland2 = workspace:WaitForChild('Map'):FindFirstChild('PrehistoricIsland')

    if _PrehistoricIsland2 then
        _PrehistoricIsland2 = _PrehistoricIsland2:FindFirstChild('TrialTeleport')
    end

    while task.wait(0.5) do
        if getgenv().TrialTeleportDraco and (_PrehistoricIsland2 and _PrehistoricIsland2:IsA('Part')) then
            u1049(CFrame.new(_PrehistoricIsland2.Position))
        end
    end
end)
Race:AddParagraph({
    Title = 'Race Normal',
    Content = string.rep('-', 21),
})
Race:AddToggle('Toggle', {
    Title = 'Auto Upgrade Race V2',
    Default = false,
}):OnChanged(function(p1051)
    getgenv().UpgradeRaceV2 = p1051
end)
spawn(function()
    pcall(function()
        while task.wait(0.2) do
            if getgenv().UpgradeRaceV2 and World2 then
                local _LocalPlayer35 = game:GetService('Players').LocalPlayer
                local _Character17 = _LocalPlayer35.Character

                if _Character17 then
                    _Character17 = _LocalPlayer35.Character:FindFirstChild('HumanoidRootPart')
                end

                local _Backpack12 = _LocalPlayer35.Backpack

                if not _LocalPlayer35.Data.Race:FindFirstChild('Evolved') then
                    local _Alchemist = game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '1')

                    if _Alchemist == 0 then
                        local v1056 = CFrame.new(-2779.83521, 72.9661407, -3574.02002)

                        if _Character17 and (v1056.Position - _Character17.Position).Magnitude > 4 then
                            topos(v1056)
                        else
                            task.wait(1.1)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '2')
                        end
                    elseif _Alchemist == 1 then
                        if _Backpack12:FindFirstChild('Flower 1') or _LocalPlayer35.Character:FindFirstChild('Flower 1') then
                            if _Backpack12:FindFirstChild('Flower 2') or _LocalPlayer35.Character:FindFirstChild('Flower 2') then
                                if not (_Backpack12:FindFirstChild('Flower 3') or _LocalPlayer35.Character:FindFirstChild('Flower 3')) then
                                    if game:GetService('Workspace').Enemies:FindFirstChild('Zombie') then
                                        local v1057, v1058, v1059 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                        while true do
                                            local v1060

                                            v1059, v1060 = v1057(v1058, v1059)

                                            if v1059 == nil then
                                                break
                                            end
                                            if v1060.Name == 'Zombie' and (v1060:FindFirstChild('HumanoidRootPart') and v1060:FindFirstChild('Humanoid')) then
                                                repeat
                                                    task.wait()
                                                    EquipWeapon(getgenv().SelectWeapon)
                                                    AutoHaki()
                                                    topos(v1060.HumanoidRootPart.CFrame * Pos)

                                                    v1060.HumanoidRootPart.CanCollide = false
                                                    v1060.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                                    game:GetService('VirtualUser'):CaptureController()
                                                    game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
                                                until _Backpack12:FindFirstChild('Flower 3') or (v1060.Humanoid.Health <= 0 or not (v1060.Parent and getgenv().UpgradeRaceV2))
                                            end
                                        end
                                    else
                                        topos(CFrame.new(-5685.923, 48.48, -853.237))
                                    end
                                end
                            else
                                topos(game:GetService('Workspace').Flower2.CFrame)
                            end
                        else
                            topos(game:GetService('Workspace').Flower1.CFrame)
                        end
                    elseif _Alchemist == 2 then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '3')
                    end
                end
            end
        end
    end)
end)
Race:AddToggle('Toggle', {
    Title = 'Auto Get Cyborg',
    Description = 'Buy Chip And Kill Order',
    Default = false,
}):OnChanged(function(p1061)
    getgenv().AutoCyborg = p1061
end)
spawn(function()
    pcall(function()
        while task.wait(0.5) do
            if getgenv().AutoCyborg and not (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Microchip') or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Microchip') or (game:GetService('Workspace').Enemies:FindFirstChild('Order') or game:GetService('ReplicatedStorage'):FindFirstChild('Order')))) then
                wait(0.3)
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Microchip', '1')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Microchip', '2')
            end
        end
    end)
end)
spawn(function()
    pcall(function()
        while task.wait(0.5) do
            if getgenv().AutoCyborg then
                if not game:GetService('Workspace').Enemies:FindFirstChild('Order') and (not game:GetService('ReplicatedStorage'):FindFirstChild('Order') and (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Microchip') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Microchip'))) then
                    fireclickdetector(game:GetService('Workspace').Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
                end
                if game:GetService('ReplicatedStorage'):FindFirstChild('Order') or game:GetService('Workspace').Enemies:FindFirstChild('Order') then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Order') then
                        local v1062, v1063, v1064 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v1065

                            v1064, v1065 = v1062(v1063, v1064)

                            if v1064 == nil then
                                break
                            end
                            if v1065.Name == 'Order' then
                                repeat
                                    task.wait(0.1)
                                    AutoHaki()
                                    EquipWeapon(getgenv().SelectWeapon)
                                    topos(v1065.HumanoidRootPart.CFrame * Pos)

                                    v1065.HumanoidRootPart.CanCollide = false
                                    v1065.HumanoidRootPart.Size = Vector3.new(120, 120, 120)
                                until not v1065.Parent or (v1065.Humanoid.Health <= 0 or getgenv().AutoCyborg == false)
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Order') then
                        topos(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875))
                    end
                end
            end
        end
    end)
end)
Race:AddToggle('Toggle', {
    Title = 'Auto Get Ghoul',
    Default = false,
}):OnChanged(function(p1066)
    getgenv().AutoGhoul = p1066
end)
spawn(function()
    while true do
        while true do
            if not (task.wait(0.1) and getgenv().AutoGhoul) then
                return
            end

            local _CursedCaptain = game:GetService('Workspace').Enemies:FindFirstChild('Cursed Captain')

            if not (_CursedCaptain and (_CursedCaptain:FindFirstChild('Humanoid') and _CursedCaptain:FindFirstChild('HumanoidRootPart'))) then
                break
            end

            local _Humanoid13 = _CursedCaptain.Humanoid
            local _HumanoidRootPart15 = _CursedCaptain.HumanoidRootPart

            if _Humanoid13.Health > 0 then
                _HumanoidRootPart15.CanCollide = false
                _Humanoid13.WalkSpeed = 0
                _HumanoidRootPart15.Size = Vector3.new(50, 50, 50)

                task.wait(0.05)
                AutoHaki()
                EquipWeapon(getgenv().SelectWeapon)
                topos(_HumanoidRootPart15.CFrame * CFrame.new(0, 10, 0))
                sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', 1000)

                if getgenv().AutoGhoul and (_Humanoid13.Health > 0 and _CursedCaptain.Parent) then
                end
            end
        end

        local _CursedCaptain2 = game:GetService('ReplicatedStorage'):FindFirstChild('Cursed Captain')

        if _CursedCaptain2 then
            topos(_CursedCaptain2.HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
        end
    end
end)
Race:AddParagraph({
    Title = 'Race V4',
    Content = string.rep('-', 21),
})
Race:AddToggle('Toggle', {
    Title = 'No Frog',
    Default = false,
}):OnChanged(function(p1071)
    getgenv().NoFrog = p1071
end)
spawn(function()
    while true do
        if getgenv().NoFrog then
            pcall(function()
                local _Lighting2 = game:GetService('Lighting')

                if _Lighting2:FindFirstChild('LightingLayers') then
                    _Lighting2.LightingLayers:Destroy()
                end
                if _Lighting2:FindFirstChild('Sky') then
                    _Lighting2.Sky:Destroy()
                end
            end)
        end

        wait(1)

        while not getgenv().NoFrog do
            wait(1)
        end
    end
end)
Race:AddToggle('Toggle', {
    Title = 'Teleport Ancient Clock',
    Default = false,
}):OnChanged(function(p1073)
    getgenv().TeleportAcientClock = p1073

    StopTween(getgenv().TeleportAcientClock)
end)
spawn(function()
    while true do
        repeat
            wait(0.5)
        until getgenv().TeleportAcientClock

        topos(CFrame.new(29549, 15069, -88))
    end
end)
Race:AddToggle('Toggle', {
    Title = 'Auto Buy Gear',
    Default = false,
}):OnChanged(function(p1074)
    getgenv().AutoBuyGear = p1074
end)
spawn(function()
    pcall(function()
        while task.wait(0.1) do
            if getgenv().AutoBuyGear and World3 then
                game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CommF_'):InvokeServer(unpack({
                    'UpgradeRace',
                    'Buy',
                }))
            else
                task.wait(1)

                if not getgenv().AutoBuyGear then
                    break
                end
            end
        end
    end)
end)
Race:AddToggle('Toggle', {
    Title = 'Auto Finish Train Quest',
    Default = false,
}):OnChanged(function(p1075)
    getgenv().Race_1 = p1075
    getgenv().QuestTrain_2 = p1075

    if not p1075 then
        StopTween(getgenv().QuestTrain_2)
    end
end)
task.spawn(function()
    while task.wait(0.5) do
        pcall(function()
            if getgenv().Race_1 and game.Players.LocalPlayer.Character then
                local _Character18 = game.Players.LocalPlayer.Character

                if _Character18:FindFirstChild('RaceTransformed') and _Character18.RaceTransformed.Value then
                    getgenv().QuestTrain_2 = false

                    topos(CFrame.new(-9507.03125, 713.654968, 6186.39453))
                end
            end
        end)
    end
end)
task.spawn(function()
    while task.wait(0.5) do
        pcall(function()
            if getgenv().QuestTrain_2 and (World3 and game.Players.LocalPlayer.Character) then
                local _Enemies13 = workspace:FindFirstChild('Enemies')

                if _Enemies13 then
                    local v1078, v1079, v1080 = pairs(_Enemies13:GetChildren())

                    while true do
                        local v1081

                        v1080, v1081 = v1078(v1079, v1080)

                        if v1080 == nil then
                            break
                        end
                        if v1081:IsA('Model') and (v1081.Name == 'Reborn Skeleton' or (v1081.Name == 'Living Zombie' or (v1081.Name == 'Demonic Soul' or v1081.Name == 'Posessed Mummy'))) and (v1081:FindFirstChild('Humanoid') and (v1081:FindFirstChild('HumanoidRootPart') and v1081.Humanoid.Health > 0)) then
                            repeat
                                task.wait(0.1)
                                AutoHaki()
                                EquipWeapon(getgenv().SelectWeapon)

                                v1081.HumanoidRootPart.CanCollide = false
                                v1081.Humanoid.WalkSpeed = 0
                                v1081.Head.CanCollide = false

                                topos(v1081.HumanoidRootPart.CFrame * Pos)

                                getgenv().BonesBring = true
                            until not getgenv().QuestTrain_2 or (v1081.Parent == nil or v1081.Humanoid.Health <= 0)
                        end
                    end
                end
                if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BonePos.Position).Magnitude <= 1500 then
                        topos(BonePos)
                    else
                        BTP(BonePos)
                    end
                else
                    topos(BonePos)
                end

                UnEquipWeapon(getgenv().SelectWeapon)

                getgenv().BonesBring = false

                topos(CFrame.new(-9507.03125, 713.654968, 6186.39453))

                local _ReplicatedStorage8 = game:GetService('ReplicatedStorage')
                local v1083, v1084, v1085 = pairs(_ReplicatedStorage8:GetChildren())

                while true do
                    local v1086

                    v1085, v1086 = v1083(v1084, v1085)

                    if v1085 == nil then
                        break
                    end
                    if v1086:IsA('Model') and (v1086.Name == 'Reborn Skeleton' or (v1086.Name == 'Living Zombie' or (v1086.Name == 'Demonic Soul' or v1086.Name == 'Posessed Mummy'))) and v1086:FindFirstChild('HumanoidRootPart') then
                        topos(v1086.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    end
                end
            end
        end)
    end
end)
task.spawn(function()
    while task.wait(0.5) do
        pcall(function()
            if getgenv().Race_1 and game.Players.LocalPlayer.Character then
                local _Character19 = game.Players.LocalPlayer.Character

                if _Character19:FindFirstChild('RaceTransformed') and not _Character19.RaceTransformed.Value then
                    getgenv().QuestTrain_2 = true
                end
            end
        end)
    end
end)
task.spawn(function()
    while task.wait(0.5) do
        pcall(function()
            if getgenv().Race_1 and game.Players.LocalPlayer.Character then
                local _Character20 = game.Players.LocalPlayer.Character

                if _Character20:FindFirstChild('RaceEnergy') and (_Character20.RaceEnergy.Value >= 1 and not _Character20.RaceTransformed.Value) then
                    local _VirtualInputManager3 = game:GetService('VirtualInputManager')

                    _VirtualInputManager3:SendKeyEvent(true, 'Y', false, game)
                    task.wait(0.1)
                    _VirtualInputManager3:SendKeyEvent(false, 'Y', false, game)
                end
            end
        end)
    end
end)

Pullever = Race:AddParagraph({
    Title = 'Pull Lever Done',
    Content = 'Status: ',
})

spawn(function()
    local v1090 = ''

    while task.wait(1) do
        local v1091, v1092 = pcall(function()
            return game.ReplicatedStorage.Remotes.CommF_:InvokeServer('templedoorcheck')
        end)

        if v1091 then
            local v1093 = v1092 and '\u{2705}' or '\u{274c}'

            if v1093 ~= v1090 then
                Pullever:SetDesc('Status: ' .. v1093)

                v1090 = v1093
            end
        end
    end
end)
Race:AddToggle('Toggle', {
    Title = 'Teleport To Migare Island',
    Default = false,
}):OnChanged(function(p1094)
    getgenv().TeleportMigare = p1094

    StopTween(getgenv().TeleportMigare)
end)
spawn(function()
    pcall(function()
        while wait(0.5) do
            if getgenv().TeleportMigare and World3 then
                local _MysticIsland = game:GetService('Workspace').Map:FindFirstChild('MysticIsland')

                if _MysticIsland and _MysticIsland:FindFirstChild('Center') then
                    local _Position10 = _MysticIsland.Center.Position
                    local v1097 = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')

                    if v1097 then
                        v1097 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                    end
                    if v1097 and (Vector3.new(_Position10.X, 500, _Position10.Z) - v1097).magnitude > 5 then
                        topos(CFrame.new(_Position10.X, 500, _Position10.Z))
                    end
                end
            end
        end
    end)
end)
Race:AddToggle('Toggle', {
    Title = 'Teleport To Highest Point',
    Default = false,
}):OnChanged(function(p1098)
    getgenv().Tweentohighestpoint = p1098

    if p1098 then
        spawn(function()
            while getgenv().Tweentohighestpoint do
                local v1099 = tweento_highestpoint()

                if v1099 and v1099:FindFirstChild('CFrame') then
                    local v1100 = v1099.CFrame * CFrame.new(0, 211.88, 0)
                    local v1101 = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')

                    if v1101 then
                        v1101 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                    end
                    if v1101 and (v1100.Position - v1101).magnitude > 5 then
                        topos(v1100)
                    end
                end

                wait(0.5)
            end
        end)
    end
end)
Race:AddToggle('Toggle', {
    Title = 'Teleport To Advanced Fruit Dealer',
    Default = false,
}):OnChanged(function(p1102)
    getgenv().TeleportAdvancedFruitDealer = p1102

    if p1102 then
        spawn(function()
            while true do
                if not (getgenv().TeleportAdvancedFruitDealer and wait(0.5)) then
                    return
                end
                if game:GetService('Workspace').Map:FindFirstChild('MysticIsland') then
                    local v1103, v1104, v1105 = pairs(game:GetService('Workspace').NPCs:GetChildren())
                    local v1106 = {}

                    while true do
                        local v1107

                        v1105, v1107 = v1103(v1104, v1105)

                        if v1105 == nil then
                            break
                        end

                        table.insert(v1106, v1107)
                    end

                    local v1108, v1109, v1110 = pairs(v1106)

                    while true do
                        local v1111

                        v1110, v1111 = v1108(v1109, v1110)

                        if v1110 == nil then
                            break
                        end
                        if v1111.Name == 'Advanced Fruit Dealer' and v1111:FindFirstChild('HumanoidRootPart') then
                            local _CFrame7 = v1111.HumanoidRootPart.CFrame
                            local v1113 = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')

                            if v1113 then
                                v1113 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                            end
                            if v1113 and (_CFrame7.Position - v1113).magnitude > 5 then
                                topos(_CFrame7)
                            end

                            break
                        end
                    end
                end
            end
        end)
    end
end)
Race:AddToggle('Toggle', {
    Title = 'Lock Moon And On Race V3',
    Default = false,
}):OnChanged(function(p1114)
    getgenv().LockMoonAndOnRaceV3 = p1114

    if p1114 then
        spawn(function()
            while getgenv().LockMoonAndOnRaceV3 and wait(0.5) do
                pcall(function()
                    if World3 then
                        local v1115 = game.Lighting:GetMoonDirection()

                        if v1115 and v1115.Magnitude > 0 then
                            local v1116 = game.Workspace.CurrentCamera.CFrame.p + v1115 * 100

                            game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, v1116)
                        end
                    end
                end)
            end
        end)
        spawn(function()
            while getgenv().LockMoonAndOnRaceV3 and wait(3) do
                pcall(function()
                    if World3 then
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 'T', false, game)
                        wait(0.1)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 'T', false, game)
                    end
                end)
            end
        end)
    end
end)
Race:AddToggle('Toggle', {
    Title = 'Teleport To Blue Gear',
    Default = false,
}):OnChanged(function(p1117)
    getgenv().TeleportToGear = p1117

    StopTween(getgenv().TeleportToGear)
end)
spawn(function()
    while task.wait(0.1) do
        local u1118 = false

        local function v1119()
            u1118 = true
        end

        if getgenv().TeleportToGear and World3 then
            local _MysticIsland2 = game:GetService('Workspace').Map:FindFirstChild('MysticIsland')

            if _MysticIsland2 then
                local v1121, v1122, v1123 = ipairs(_MysticIsland2:GetChildren())

                while true do
                    local v1124

                    v1123, v1124 = v1121(v1122, v1123)

                    if v1123 == nil then
                        break
                    end
                    if v1124:IsA('MeshPart') and v1124.Material == Enum.Material.Neon then
                        topos(v1124.CFrame)
                        v1119()
                    end
                end
            end
        end
        if u1118 then
            break
        end
    end
end)
Race:AddButton({
    Title = 'Teleport To Trial Door',
    Callback = function()
        local _LocalPlayer36 = game:GetService('Players').LocalPlayer

        if _LocalPlayer36 and _LocalPlayer36:FindFirstChild('Data') and _LocalPlayer36.Data:FindFirstChild('Race') then
            local _Value4 = _LocalPlayer36.Data.Race.Value
            local v1127 = {
                Human = CFrame.new(29221.822, 14890.975, -205.991),
                Skypiea = CFrame.new(28960.158, 14919.624, 235.039),
                Fishman = CFrame.new(28231.175, 14890.975, -211.641),
                Cyborg = CFrame.new(28502.681, 14895.975, -423.727),
                Ghoul = CFrame.new(28674.244, 14890.676, 445.431),
                Mink = CFrame.new(29012.341, 14890.975, -380.149),
            }

            if v1127[_Value4] and typeof(topos) == 'function' then
                topos(v1127[_Value4])
            end
        end
    end,
})
Race:AddToggle('Toggle', {
    Title = 'Auto Trial Race',
    Default = false,
}):OnChanged(function(p1128)
    getgenv().AutoTrialRace = p1128

    StopTween(getgenv().AutoTrialRace)
end)
spawn(function()
    local _LocalPlayer37 = game:GetService('Players').LocalPlayer
    local _Race = _LocalPlayer37.Data.Race
    local _VirtualInputManager4 = game:GetService('VirtualInputManager')

    while true do
        while true do
            if not getgenv().AutoTrialRace then
                return
            end

            wait(0.5)

            if _Race.Value == 'Human' then
                break
            end
            if _Race.Value ~= 'Skypiea' then
                if _Race.Value ~= 'Fishman' then
                    if _Race.Value ~= 'Cyborg' then
                        if _Race.Value ~= 'Ghoul' then
                            if _Race.Value == 'Mink' then
                                local v1132, v1133, v1134 = pairs(game:GetService('Workspace'):GetDescendants())

                                while true do
                                    local v1135

                                    v1134, v1135 = v1132(v1133, v1134)

                                    if v1134 == nil then
                                        break
                                    end
                                    if v1135.Name == 'StartPoint' then
                                        topos(v1135.CFrame * CFrame.new(0, 10, 0))

                                        break
                                    end
                                end
                            end
                        else
                            local v1136, v1137, v1138 = pairs(game.Workspace.Enemies:GetChildren())

                            while true do
                                local v1139, u1140 = v1136(v1137, v1138)

                                if v1139 == nil then
                                    break
                                end

                                v1138 = v1139

                                if u1140:FindFirstChild('Humanoid') and (u1140:FindFirstChild('HumanoidRootPart') and u1140.Humanoid.Health > 0) then
                                    pcall(function()
                                        repeat
                                            wait()

                                            u1140.Humanoid.Health = 0
                                            u1140.HumanoidRootPart.CanCollide = false

                                            sethiddenproperty(_LocalPlayer37, 'SimulationRadius', math.huge)
                                        until not getgenv().AutoTrialRace or (not u1140.Parent or u1140.Humanoid.Health <= 0)
                                    end)
                                end
                            end
                        end
                    else
                        topos(CFrame.new(28654, 14898.7832, -30))
                    end
                else
                    local _SeaBeast1 = game:GetService('Workspace').SeaBeasts:FindFirstChild('SeaBeast1')

                    if _SeaBeast1 then
                        local _HumanoidRootPart16 = _SeaBeast1:FindFirstChild('HumanoidRootPart')

                        if _HumanoidRootPart16 then
                            topos(_HumanoidRootPart16.CFrame)

                            local _Backpack13 = _LocalPlayer37.Backpack

                            local function v1150(p1144)
                                local v1145 = _Backpack13
                                local v1146, v1147, v1148 = pairs(v1145:GetChildren())

                                while true do
                                    local v1149

                                    v1148, v1149 = v1146(v1147, v1148)

                                    if v1148 == nil then
                                        break
                                    end
                                    if v1149:IsA('Tool') and v1149.ToolTip == p1144 then
                                        _LocalPlayer37.Character.Humanoid:EquipTool(v1149)
                                        wait(0.2)
                                        _VirtualInputManager4:SendKeyEvent(true, 122, false, game)
                                        _VirtualInputManager4:SendKeyEvent(false, 122, false, game)
                                        wait(0.2)
                                        _VirtualInputManager4:SendKeyEvent(true, 120, false, game)
                                        _VirtualInputManager4:SendKeyEvent(false, 120, false, game)
                                        wait(0.2)
                                        _VirtualInputManager4:SendKeyEvent(true, 99, false, game)
                                        _VirtualInputManager4:SendKeyEvent(false, 99, false, game)
                                    end
                                end
                            end

                            v1150('Melee')
                            v1150('Blox Fruit')
                            v1150('Sword')
                            v1150('Gun')
                        end
                    end
                end
            else
                local _Model = game:GetService('Workspace').Map.SkyTrial.Model

                if _Model then
                    local v1152, v1153, v1154 = pairs(_Model:GetDescendants())

                    while true do
                        local v1155

                        v1154, v1155 = v1152(v1153, v1154)

                        if v1154 == nil then
                            break
                        end
                        if v1155.Name == 'snowisland_Cylinder.081' then
                            BTPZ(v1155.CFrame)

                            break
                        end
                    end
                end
            end
        end

        local v1156, v1157, v1158 = pairs(game.Workspace.Enemies:GetChildren())

        while true do
            local v1159, u1160 = v1156(v1157, v1158)

            if v1159 == nil then
                break
            end

            v1158 = v1159

            if u1160:FindFirstChild('Humanoid') and (u1160:FindFirstChild('HumanoidRootPart') and u1160.Humanoid.Health > 0) then
                pcall(function()
                    repeat
                        wait()

                        u1160.Humanoid.Health = 0
                        u1160.HumanoidRootPart.CanCollide = false

                        sethiddenproperty(_LocalPlayer37, 'SimulationRadius', math.huge)
                    until not getgenv().AutoTrialRace or (not u1160.Parent or u1160.Humanoid.Health <= 0)
                end)
            end
        end
    end
end)
Race:AddToggle('Toggle', {
    Title = 'Auto Kill Player After Trial V4',
    Default = false,
}):OnChanged(function(p1161)
    getgenv().AutoKillPlayerAfterTrial = p1161

    StopTween(getgenv().AutoKillPlayerAfterTrial)
end)
spawn(function()
    while task.wait(0.2) do
        if getgenv().AutoKillPlayerAfterTrial and World3 then
            pcall(function()
                local _LocalPlayer38 = game.Players.LocalPlayer
                local _Character21 = _LocalPlayer38.Character

                if _Character21 and _Character21:FindFirstChild('HumanoidRootPart') then
                    local v1164, v1165, v1166 = ipairs(game.Workspace.Characters:GetChildren())

                    while true do
                        local u1167

                        v1166, u1167 = v1164(v1165, v1166)

                        if v1166 == nil then
                            break
                        end
                        if u1167.Name ~= _LocalPlayer38.Name and (u1167:FindFirstChild('Humanoid') and u1167:FindFirstChild('HumanoidRootPart')) then
                            local _Humanoid14 = u1167.Humanoid
                            local _HumanoidRootPart17 = u1167.HumanoidRootPart

                            if _Humanoid14.Health > 0 and (_Character21.HumanoidRootPart.Position - _HumanoidRootPart17.Position).Magnitude <= 230 then
                                task.spawn(function()
                                    AutoHaki()
                                    EquipWeapon(getgenv().SelectWeapon)
                                    topos(_HumanoidRootPart17.CFrame * CFrame.new(1, 1, 2))

                                    _HumanoidRootPart17.Size = Vector3.new(60, 60, 60)
                                    _HumanoidRootPart17.CanCollide = false

                                    if u1167:FindFirstChild('Head') then
                                        u1167.Head.CanCollide = false
                                    end

                                    _Humanoid14.WalkSpeed = 0

                                    sethiddenproperty(_LocalPlayer38, 'SimulationRadius', math.huge)

                                    while getgenv().AutoKillPlayerAfterTrial and (_Humanoid14.Health > 0 and (u1167.Parent and (_HumanoidRootPart17 and _Humanoid14))) do
                                        task.wait(0.1)
                                    end
                                end)
                            end
                        end
                    end
                end
            end)
        end
    end
end)

Get = Window:AddTab({
    Title = 'Tab Get Items And Buy',
    Icon = '',
})

Get:AddToggle('Toggle', {
    Title = 'Auto Trade Bone',
    Default = false,
}):OnChanged(function(p1170)
    getgenv().AutoTradeBone = p1170
end)
spawn(function()
    local v1171 = true
    local v1172 = 1

    while task.wait(0.5) do
        if getgenv().AutoTradeBone and (World3 and v1171) then
            local u1173 = {
                'Bones',
                'Buy',
                1,
                1,
            }
            local _CommF_10 = game:GetService('ReplicatedStorage').Remotes.CommF_

            if _CommF_10 then
                local _, _ = pcall(function()
                    _CommF_10:InvokeServer(unpack(u1173))
                end)
            end

            wait(v1172)

            v1171 = true
        end
    end
end)
Get:AddToggle('Toggle', {
    Title = 'Auto Buy Legendary Sword',
    Default = false,
}):OnChanged(function(p1175)
    getgenv().AutoBuyLegendarySword = p1175
end)
spawn(function()
    local v1176 = 0

    while task.wait(1) do
        if getgenv().AutoBuyLegendarySword and World2 then
            local v1177 = tick()

            if v1177 - v1176 >= 2 then
                pcall(function()
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LegendarySwordDealer',
                        '1',
                    }))
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LegendarySwordDealer',
                        '2',
                    }))
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LegendarySwordDealer',
                        '3',
                    }))
                end)

                v1176 = v1177
            end
        end
    end
end)
Get:AddToggle('Toggle', {
    Title = 'Auto Buy Haki Color',
    Default = false,
}):OnChanged(function(p1178)
    getgenv().Auto_Buy_Enchancement = p1178
end)
spawn(function()
    local v1179 = 0

    while true do
        local v1180

        if getgenv().Auto_Buy_Enchancement then
            v1180 = tick()

            if v1180 - v1179 < 2 then
                v1180 = v1179
            else
                local u1181 = {
                    'ColorsDealer',
                    '2',
                }

                pcall(function()
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(u1181))
                end)
            end
        else
            v1180 = v1179
        end

        wait(0.1)

        v1179 = v1180
    end
end)

local u1182 = false

Get:AddToggle('Toggle', {
    Title = 'Hop Server [ Haki color or Legendary Sword]',
    Default = false,
}):OnChanged(function(p1183)
    u1182 = p1183

    if u1182 then
        Hop()
    end
end)
Get:AddToggle('Toggle', {
    Title = 'Auto Get Rainbow Haki',
    Default = false,
}):OnChanged(function(p1184)
    getgenv().AutoRainbowHaki = p1184
end)
spawn(function()
    pcall(function()
        while task.wait(0.2) do
            local u1185 = false

            local function v1186()
                u1185 = true
            end

            if getgenv().AutoRainbowHaki and World3 then
                local _LocalPlayer39 = game:GetService('Players').LocalPlayer
                local _Character22 = _LocalPlayer39.Character

                if _Character22 then
                    _Character22 = _Character22:FindFirstChild('HumanoidRootPart')
                end

                local _Quest2 = _LocalPlayer39.PlayerGui.Main.Quest

                if _Character22 then
                    if _Quest2.Visible then
                        local _Text2 = _Quest2.Container.QuestTitle.Title.Text
                        local v1191 = {
                            Stone = Vector3.new(-1175, 53, 6811),
                            ['Island Empress'] = Vector3.new(5887, 1019, -114),
                            ['Kilo Admiral'] = Vector3.new(3014, 509, -7354),
                            ['Captain Elephant'] = Vector3.new(-13485.0283, 331.709259, -8012.4873),
                            ['Beautiful Pirate'] = Vector3.new(5377, 22, -62),
                        }
                        local v1192, v1193, v1194 = pairs(v1191)

                        while true do
                            local v1195

                            v1194, v1195 = v1192(v1193, v1194)

                            if v1194 == nil then
                                break
                            end
                            if string.find(_Text2, v1194) then
                                local v1196 = game:GetService('Workspace').Enemies:FindFirstChild(v1194)

                                if v1196 and v1196:FindFirstChild('HumanoidRootPart') then
                                    local _CFrame8 = v1196.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait()
                                        AutoHaki()
                                        EquipWeapon(getgenv().SelectWeapon)
                                        topos(v1196.HumanoidRootPart.CFrame * Pos)

                                        v1196.HumanoidRootPart.CanCollide = false
                                        v1196.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        v1196.HumanoidRootPart.CFrame = _CFrame8

                                        game:GetService('VirtualUser'):CaptureController()
                                        game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
                                    until not getgenv().AutoRainbowHaki or (v1196.Humanoid.Health <= 0 or not (v1196.Parent and _Quest2.Visible))
                                else
                                    topos(CFrame.new(v1195))
                                end

                                v1186()
                            end
                        end
                    else
                        local v1198 = Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875)

                        if (v1198 - _Character22.Position).Magnitude <= 30 then
                            task.wait(1.1)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('HornedMan', 'Bet')
                        else
                            topos(CFrame.new(v1198))
                        end
                    end
                end
            end
            if u1185 then
                break
            end
        end
    end)
end)
Get:AddToggle('Toggle', {
    Title = 'Auto Skull Guitar',
    Default = false,
}):OnChanged(function(p1199)
    getgenv().AutoSkullGuitar = p1199
end)
spawn(function()
    while task.wait() do
        if getgenv().AutoSkullGuitar then
            pcall(function()
                if GetWeaponInventory('Skull Guitar') then
                    if string.find(game:GetService('ReplicatedStorage').Remotes.CommF:InvokeServer('gravestoneEvent', 2), 'Error') then
                        topos(CFrame.new(-8653.206, 140.985, 6160.033))
                    elseif string.find(game:GetService('ReplicatedStorage').Remotes.CommF:InvokeServer('gravestoneEvent', 2), 'Nothing') then
                        topos('Wait Full Moon')
                    else
                        game:GetService('ReplicatedStorage').Remotes.CommF:InvokeServer('gravestoneEvent', 2, true)
                    end
                else
                    local _LocalPlayer40 = game:GetService('Players').LocalPlayer
                    local _Character23 = _LocalPlayer40.Character

                    if _Character23 then
                        _Character23 = _LocalPlayer40.Character:FindFirstChild('HumanoidRootPart')
                    end
                    if _Character23 and (Vector3.new(-9681.458, 6.139, 6341.372) - _Character23.Position).Magnitude <= 5000 then
                        if game:GetService('Workspace').NPCs:FindFirstChild('Skeleton Machine') then
                            game:GetService('ReplicatedStorage').Remotes.CommF:InvokeServer('soulGuitarBuy', true)
                        else
                            local _HauntedCastle = game:GetService('Workspace').Map:FindFirstChild('Haunted Castle')

                            if _HauntedCastle and _HauntedCastle.Candle1.Transparency == 0 then
                                local _Placard1 = _HauntedCastle:FindFirstChild('Placard1')

                                if _Placard1 and _Placard1.Left.Part.Transparency == 0 then
                                    Quest2 = true

                                    topos(CFrame.new(-8762.691, 176.847, 6171.308))
                                    task.wait(1)

                                    for v1204 = 7, 1, -1 do
                                        local v1205 = _HauntedCastle:FindFirstChild('Placard' .. v1204)

                                        if v1205 then
                                            if v1205:FindFirstChild('Left') then
                                                if v1205.Left:FindFirstChild('ClickDetector') then
                                                    fireclickdetector(v1205.Left.ClickDetector)
                                                    task.wait(0.5)
                                                end
                                            end
                                        end
                                    end
                                end
                            elseif _HauntedCastle and _HauntedCastle.Tablet and _HauntedCastle.Tablet:FindFirstChild('Segment1') then
                                local _LabPuzzle = _HauntedCastle:FindFirstChild('Lab Puzzle')

                                if _LabPuzzle and _LabPuzzle.ColorFloor.Model.Part1:FindFirstChild('ClickDetector') then
                                    Quest4 = true

                                    topos(CFrame.new(-9553.599, 65.623, 6041.588))
                                    task.wait(1)

                                    local v1207, v1208, v1209 = ipairs({
                                        3,
                                        4,
                                        4,
                                        4,
                                        6,
                                        6,
                                        8,
                                        10,
                                        10,
                                        10,
                                    })

                                    while true do
                                        local v1210

                                        v1209, v1210 = v1207(v1208, v1209)

                                        if v1209 == nil then
                                            break
                                        end

                                        local v1211 = _LabPuzzle.ColorFloor.Model:FindFirstChild('Part' .. v1210)

                                        if v1211 and v1211:FindFirstChild('ClickDetector') then
                                            topos(v1211.CFrame)
                                            task.wait(1)
                                            fireclickdetector(v1211.ClickDetector)
                                            task.wait(0.5)
                                        end
                                    end
                                else
                                    Quest3 = true
                                end
                            else
                                if game:GetService('Workspace').NPCs:FindFirstChild('Ghost') then
                                    game:GetService('ReplicatedStorage').Remotes.CommF:InvokeServer('GuitarPuzzleProgress', 'Ghost')
                                end

                                local _Enemies14 = game.Workspace:FindFirstChild('Enemies')

                                if _Enemies14 and _Enemies14:FindFirstChild('Living Zombie') then
                                    local v1213, v1214, v1215 = pairs(_Enemies14:GetChildren())

                                    while true do
                                        local v1216

                                        v1215, v1216 = v1213(v1214, v1215)

                                        if v1215 == nil then
                                            break
                                        end
                                        if v1216:FindFirstChild('HumanoidRootPart') and (v1216:FindFirstChild('Humanoid') and (v1216.Humanoid.Health > 0 and v1216.Name == 'Living Zombie')) then
                                            AutoHaki()
                                            EquipWeapon(getgenv().SelectWeapon)

                                            v1216.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v1216.HumanoidRootPart.Transparency = 1
                                            v1216.Humanoid.JumpPower = 0
                                            v1216.Humanoid.WalkSpeed = 0
                                            v1216.HumanoidRootPart.CanCollide = false
                                            v1216.HumanoidRootPart.CFrame = _Character23.CFrame * CFrame.new(0, 20, 0)

                                            topos(CFrame.new(-10160.787, 138.662, 5955.031))
                                            task.wait(0.5)

                                            local _VirtualUser2 = game:GetService('VirtualUser')

                                            _VirtualUser2:CaptureController()
                                            _VirtualUser2:Button1Down(Vector2.new(1280, 672))
                                        end
                                    end
                                else
                                    topos(CFrame.new(-10160.787, 138.662, 5955.031))
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)
Get:AddToggle('Toggle', {
    Title = 'Auto Get CDK',
    Description = 'Teleport To Claim CDK',
    Default = false,
}):OnChanged(function(p1218)
    getgenv().AutoGetCDK = p1218
end)
task.spawn(function()
    repeat
        task.wait()
    until getgenv().AutoGetCDK

    local _LocalPlayer41 = game.Players.LocalPlayer
    local _ReplicatedStorage9 = game:GetService('ReplicatedStorage')
    local _Workspace6 = game:GetService('Workspace')
    local _Enemies15 = _Workspace6.Enemies
    local u1223 = false

    while getgenv().AutoGetCDK do
        task.wait(0.2)
        pcall(function()
            _ReplicatedStorage9.Remotes.CommF_:InvokeServer('CDKQuest', 'Progress', 'Good')
            task.wait(0.2)
            _ReplicatedStorage9.Remotes.CommF_:InvokeServer('CDKQuest', 'Progress', 'Evil')
            task.wait(0.2)
            _ReplicatedStorage9.Remotes.CommF_:InvokeServer('CDKQuest', 'StartTrial', 'Boss')
            task.wait(0.2)

            if _Enemies15:FindFirstChild('Cursed Skeleton Boss') then
                local v1224 = _Enemies15
                local v1225, v1226, v1227 = pairs(v1224:GetChildren())

                while true do
                    local v1228

                    v1227, v1228 = v1225(v1226, v1227)

                    if v1227 == nil then
                        break
                    end
                    if v1228.Name == 'Cursed Skeleton Boss' and (v1228:FindFirstChild('Humanoid') and (v1228:FindFirstChild('HumanoidRootPart') and v1228.Humanoid.Health > 0)) then
                        local _Character24 = _LocalPlayer41.Character
                        local _Backpack14 = _LocalPlayer41.Backpack

                        if _Character24:FindFirstChild('Yama') or _Backpack14:FindFirstChild('Yama') then
                            EquipWeapon('Yama')
                        elseif _Character24:FindFirstChild('Tushita') or _Backpack14:FindFirstChild('Tushita') then
                            EquipWeapon('Tushita')
                        elseif not u1223 then
                            game.StarterGui:SetCore('SendNotification', {
                                Title = 'Hiru Hub',
                                Text = 'Use! - Yama or Tushita',
                                con = 'rbxassetid://11995210995',
                                Duration = 10,
                            })

                            u1223 = true
                        end

                        Buso()

                        v1228.HumanoidRootPart.CanCollide = false
                        v1228.Humanoid.WalkSpeed = 0

                        topos(v1228.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))

                        if syn and not getgenv().SimulationSet then
                            sethiddenproperty(_LocalPlayer41, 'SimulationRadius', math.huge)

                            getgenv().SimulationSet = true
                        end

                        repeat
                            task.wait()
                        until not getgenv().AutoGetCDK or (not v1228.Parent or v1228.Humanoid.Health <= 0)
                    end
                end
            else
                topos(CFrame.new(-12318.193, 601.951, -6538.662))
                task.wait(0.5)
                topos(_Workspace6.Map.Turtle.Cursed.BossDoor.CFrame)
            end
        end)
    end
end)
Get:AddToggle('Toggle', {
    Title = 'Auto Yama',
    Default = false,
}):OnChanged(function(p1231)
    getgenv().AutoYama = p1231
end)
spawn(function()
    while task.wait(1) do
        pcall(function()
            if getgenv().AutoYama then
                local _EliteHunter3 = game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter', 'Progress')

                if _EliteHunter3 and 30 <= _EliteHunter3 then
                    local _LocalPlayer42 = game:GetService('Players').LocalPlayer
                    local _Yama = _LocalPlayer42.Backpack:FindFirstChild('Yama')
                    local _Waterfall = game:GetService('Workspace').Map:FindFirstChild('Waterfall')
                    local v1236 = (not _Yama and (_Waterfall and _Waterfall:FindFirstChild('SealedKatana')) and true or false) and _Waterfall.SealedKatana.Handle:FindFirstChild('ClickDetector')

                    if v1236 then
                        repeat
                            task.wait(0.5)
                            fireclickdetector(v1236)
                        until _LocalPlayer42.Backpack:FindFirstChild('Yama') or not getgenv().AutoYama
                    end
                end
            end
        end)
    end
end)
Get:AddToggle('Toggle', {
    Title = 'Auto Tushita',
    Default = false,
}):OnChanged(function(p1237)
    getgenv().AutoTushita = p1237
end)
spawn(function()
    while task.wait(0.5) do
        if getgenv().AutoTushita and World3 then
            pcall(function()
                local _Enemies16 = game:GetService('Workspace').Enemies
                local _Longma = _Enemies16:FindFirstChild('Longma')
                local _LocalPlayer43 = game.Players.LocalPlayer
                local _Character25 = _LocalPlayer43.Character
                local v1242

                if _Character25 then
                    v1242 = _Character25:FindFirstChild('HumanoidRootPart')
                else
                    v1242 = _Character25
                end
                if not (_Longma and v1242) then
                    topos(CFrame.new(-10238.876, 389.791, -9549.794))

                    local _Longma2 = game:GetService('ReplicatedStorage'):FindFirstChild('Longma')

                    if _Longma2 and _Longma2:FindFirstChild('HumanoidRootPart') then
                        TP(_Longma2.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    end

                    return
                end

                local v1244, v1245, v1246 = pairs(_Enemies16:GetChildren())

                while true do
                    local v1247

                    v1246, v1247 = v1244(v1245, v1246)

                    if v1246 == nil then
                    end
                    if v1247.Name == 'Longma' and (v1247.Parent and (v1247:FindFirstChild('Humanoid') and v1247:FindFirstChild('HumanoidRootPart'))) then
                        local _Humanoid15 = v1247.Humanoid
                        local _HumanoidRootPart18 = v1247.HumanoidRootPart

                        if _Humanoid15.Health > 0 then
                            if not _Character25:FindFirstChild('Haki') then
                                AutoHaki()
                            end
                            if getgenv().SelectWeapon and not _Character25:FindFirstChild(getgenv().SelectWeapon) then
                                EquipWeapon(getgenv().SelectWeapon)
                            end

                            while true do
                                task.wait(0.1)

                                _HumanoidRootPart18.CanCollide = false
                                _Humanoid15.WalkSpeed = 0

                                if (_HumanoidRootPart18.Position - v1242.Position).Magnitude > 5 then
                                    topos(_HumanoidRootPart18.CFrame * Pos)
                                end

                                pcall(function()
                                    sethiddenproperty(_LocalPlayer43, 'SimulationRadius', math.huge)
                                end)

                                if not getgenv().AutoTushita or (not v1247.Parent or _Humanoid15.Health <= 0) then
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)
Get:AddToggle('Toggle', {
    Title = 'Auto Saber',
    Default = false,
}):OnChanged(function(p1250)
    getgenv().AutoSaber = p1250
end)
spawn(function()
    while task.wait(0.5) do
        if getgenv().AutoSaber and game.Players.LocalPlayer.Data.Level.Value >= 200 then
            pcall(function()
                local _LocalPlayer44 = game.Players.LocalPlayer
                local _Character26 = _LocalPlayer44.Character
                local v1253

                if _Character26 then
                    v1253 = _Character26:FindFirstChild('HumanoidRootPart')
                else
                    v1253 = _Character26
                end
                if v1253 then
                    local _Jungle = game:GetService('Workspace').Map.Jungle
                    local _Desert = game:GetService('Workspace').Map.Desert
                    local v1256 = CFrame.new(-1404.91, 29.97, 3.8)

                    if _Jungle.Final.Part.Transparency ~= 0 then
                        local v1257 = game:GetService('Workspace').Enemies:FindFirstChild('Saber Expert') or game:GetService('ReplicatedStorage'):FindFirstChild('Saber Expert')

                        if v1257 then
                            repeat
                                task.wait()
                                EquipWeapon(getgenv().SelectWeapon)
                                topos(v1257.HumanoidRootPart.CFrame)

                                v1257.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v1257.HumanoidRootPart.Transparency = 1
                                v1257.Humanoid.JumpPower = 0
                                v1257.Humanoid.WalkSpeed = 0
                                v1257.HumanoidRootPart.CanCollide = false

                                game:GetService('VirtualUser'):CaptureController()
                                game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
                            until v1257.Humanoid.Health <= 0 or not getgenv().AutoSaber

                            if v1257.Humanoid.Health <= 0 then
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'PlaceRelic')
                            end
                        end
                    elseif _Jungle.QuestPlates.Door.Transparency ~= 0 then
                        if _Desert.Burn.Part.Transparency ~= 0 then
                            local _CommF_11 = game:GetService('ReplicatedStorage').Remotes.CommF_

                            if _CommF_11:InvokeServer('ProQuestProgress', 'SickMan') == 0 then
                                if _CommF_11:InvokeServer('ProQuestProgress', 'RichSon') ~= nil then
                                    if _CommF_11:InvokeServer('ProQuestProgress', 'RichSon') ~= 0 then
                                        if _CommF_11:InvokeServer('ProQuestProgress', 'RichSon') == 1 then
                                            _CommF_11:InvokeServer('ProQuestProgress', 'RichSon')
                                            task.wait(0.1)
                                            EquipWeapon('Relic')
                                            task.wait(0.1)
                                            topos(v1256)
                                        end
                                    else
                                        local v1259 = game:GetService('Workspace').Enemies:FindFirstChild('Mob Leader') or game:GetService('ReplicatedStorage'):FindFirstChild('Mob Leader')

                                        if v1259 then
                                            topos(v1259.HumanoidRootPart.CFrame)

                                            repeat
                                                task.wait()
                                                AutoHaki()
                                                EquipWeapon(getgenv().SelectWeapon)

                                                v1259.HumanoidRootPart.CanCollide = false
                                                v1259.Humanoid.WalkSpeed = 0

                                                topos(v1259.HumanoidRootPart.CFrame)
                                                game:GetService('VirtualUser'):CaptureController()
                                                game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
                                                sethiddenproperty(_LocalPlayer44, 'SimulationRadius', math.huge)
                                            until v1259.Humanoid.Health <= 0 or not getgenv().AutoSaber
                                        end
                                    end
                                else
                                    _CommF_11:InvokeServer('ProQuestProgress', 'RichSon')
                                end
                            else
                                _CommF_11:InvokeServer('ProQuestProgress', 'GetCup')
                                task.wait(0.1)
                                EquipWeapon('Cup')
                                task.wait(0.1)
                                _CommF_11:InvokeServer('ProQuestProgress', 'FillCup', _Character26:FindFirstChild('Cup'))
                                task.wait(0.1)
                                _CommF_11:InvokeServer('ProQuestProgress', 'SickMan')
                            end
                        elseif _LocalPlayer44.Backpack:FindFirstChild('Torch') or _Character26:FindFirstChild('Torch') then
                            EquipWeapon('Torch')
                            topos(CFrame.new(1114.61, 5.04, 4350.22))
                        else
                            topos(CFrame.new(-1610, 11.5, 164))
                        end
                    else
                        local v1260 = CFrame.new(-1612.55, 36.97, 148.71)

                        if (v1260.Position - v1253.Position).Magnitude > 100 then
                            topos(v1260)
                        else
                            for v1261 = 1, 5 do
                                local v1262 = _Jungle.QuestPlates:FindFirstChild('Plate' .. v1261)

                                if v1262 then
                                    if v1262:FindFirstChild('Button') then
                                        v1253.CFrame = v1262.Button.CFrame

                                        task.wait(0.5)
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

ESP = Window:AddTab({
    Title = 'Tab ESP',
    Icon = '',
})

local _RunService = game:GetService('RunService')
local _LocalPlayer45 = game:GetService('Players').LocalPlayer
local u1265 = false
local u1266 = nil

function UpdateIslandESP()
    if _LocalPlayer45 and _LocalPlayer45.Character and _LocalPlayer45.Character:FindFirstChild('Head') then
        local _Position11 = _LocalPlayer45.Character.Head.Position
        local v1268 = game:GetService('Workspace')._WorldOrigin.Locations:GetChildren()
        local v1269, v1270, v1271 = ipairs(v1268)

        while true do
            local v1272

            v1271, v1272 = v1269(v1270, v1271)

            if v1271 == nil then
                break
            end
            if v1272.Name ~= 'Sea' then
                if u1265 then
                    local _NameEsp = v1272:FindFirstChild('NameEsp')

                    if not _NameEsp then
                        _NameEsp = Instance.new('BillboardGui')
                        _NameEsp.Name = 'NameEsp'
                        _NameEsp.ExtentsOffset = Vector3.new(0, 1, 0)
                        _NameEsp.Size = UDim2.new(1, 200, 1, 30)
                        _NameEsp.Adornee = v1272
                        _NameEsp.AlwaysOnTop = true
                        _NameEsp.Parent = v1272

                        local _TextLabel2 = Instance.new('TextLabel', _NameEsp)

                        _TextLabel2.Font = Enum.Font.GothamBold
                        _TextLabel2.TextSize = 14
                        _TextLabel2.TextWrapped = true
                        _TextLabel2.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel2.TextYAlignment = Enum.TextYAlignment.Top
                        _TextLabel2.BackgroundTransparency = 1
                        _TextLabel2.TextStrokeTransparency = 0.5
                        _TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
                        _TextLabel2.Parent = _NameEsp
                    end

                    local _TextLabel3 = _NameEsp:FindFirstChildOfClass('TextLabel')

                    if _TextLabel3 then
                        local v1276 = (_Position11 - v1272.Position).Magnitude / 3

                        _TextLabel3.Text = string.format('%s\n%d Distance', v1272.Name, math.floor(v1276 + 0.5))
                    end
                else
                    local _NameEsp2 = v1272:FindFirstChild('NameEsp')

                    if _NameEsp2 then
                        _NameEsp2:Destroy()
                    end
                end
            end
        end
    end
end

ESP:AddToggle('Toggle', {
    Title = 'ESP Island',
    Default = false,
}):OnChanged(function(p1278)
    u1265 = p1278

    if u1265 then
        if not u1266 then
            u1266 = _RunService.Heartbeat:Connect(UpdateIslandESP)
        end
    else
        if u1266 then
            u1266:Disconnect()

            u1266 = nil
        end

        local v1279, v1280, v1281 = ipairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

        while true do
            local v1282

            v1281, v1282 = v1279(v1280, v1281)

            if v1281 == nil then
                break
            end

            local _NameEsp3 = v1282:FindFirstChild('NameEsp')

            if _NameEsp3 then
                _NameEsp3:Destroy()
            end
        end
    end
end)

local _RunService2 = game:GetService('RunService')
local _LocalPlayer46 = game:GetService('Players').LocalPlayer
local u1286 = false
local u1287 = nil
local u1288 = math.random(1, 1000000)

function UpdateDevilChams()
    if _LocalPlayer46 and _LocalPlayer46.Character and _LocalPlayer46.Character:FindFirstChild('Head') then
        local _Position12 = _LocalPlayer46.Character.Head.Position
        local v1290, v1291, v1292 = ipairs(game.Workspace:GetChildren())

        while true do
            local u1293

            v1292, u1293 = v1290(v1291, v1292)

            if v1292 == nil then
                break
            end

            pcall(function()
                if u1293:IsA('Model') and string.find(u1293.Name, 'Fruit') and u1293:FindFirstChild('Handle') then
                    local _Handle = u1293.Handle

                    if u1286 then
                        local v1295 = _Handle:FindFirstChild('NameEsp' .. u1288)

                        if not v1295 then
                            v1295 = Instance.new('BillboardGui')
                            v1295.Name = 'NameEsp' .. u1288
                            v1295.ExtentsOffset = Vector3.new(0, 1, 0)
                            v1295.Size = UDim2.new(1, 200, 1, 30)
                            v1295.Adornee = _Handle
                            v1295.AlwaysOnTop = true
                            v1295.Parent = _Handle

                            local _TextLabel4 = Instance.new('TextLabel', v1295)

                            _TextLabel4.Font = Enum.Font.GothamSemibold
                            _TextLabel4.TextSize = 14
                            _TextLabel4.TextWrapped = true
                            _TextLabel4.Size = UDim2.new(1, 0, 1, 0)
                            _TextLabel4.TextYAlignment = Enum.TextYAlignment.Top
                            _TextLabel4.BackgroundTransparency = 1
                            _TextLabel4.TextStrokeTransparency = 0.5
                            _TextLabel4.TextColor3 = Color3.fromRGB(255, 255, 255)
                            _TextLabel4.Parent = v1295
                        end

                        local _TextLabel5 = v1295:FindFirstChildOfClass('TextLabel')

                        if _TextLabel5 then
                            local v1298 = (_Position12 - _Handle.Position).Magnitude / 3

                            _TextLabel5.Text = string.format('%s\n%d Distance', u1293.Name, math.floor(v1298 + 0.5))
                        end
                    else
                        local v1299 = _Handle:FindFirstChild('NameEsp' .. u1288)

                        if v1299 then
                            v1299:Destroy()
                        end
                    end
                end
            end)
        end
    end
end

ESP:AddToggle('Toggle', {
    Title = 'ESP Fruit',
    Default = false,
}):OnChanged(function(p1300)
    u1286 = p1300

    if u1286 then
        if not u1287 then
            u1287 = _RunService2.Heartbeat:Connect(UpdateDevilChams)
        end
    else
        if u1287 then
            u1287:Disconnect()

            u1287 = nil
        end

        local v1301, v1302, v1303 = ipairs(game.Workspace:GetChildren())

        while true do
            local v1304

            v1303, v1304 = v1301(v1302, v1303)

            if v1303 == nil then
                break
            end
            if v1304:IsA('Model') and (string.find(v1304.Name, 'Fruit') and v1304:FindFirstChild('Handle')) then
                local v1305 = v1304.Handle:FindFirstChild('NameEsp' .. u1288)

                if v1305 then
                    v1305:Destroy()
                end
            end
        end
    end
end)

local _RunService3 = game:GetService('RunService')
local _LocalPlayer47 = game:GetService('Players').LocalPlayer
local u1308 = false
local u1309 = nil
local u1310 = math.random(1, 1000000)

function UpdatePlayerChams()
    if _LocalPlayer47 and _LocalPlayer47.Character and _LocalPlayer47.Character:FindFirstChild('Head') then
        local _Position13 = _LocalPlayer47.Character.Head.Position
        local v1312, v1313, v1314 = ipairs(game:GetService('Players'):GetPlayers())

        while true do
            local u1315

            v1314, u1315 = v1312(v1313, v1314)

            if v1314 == nil then
                break
            end

            pcall(function()
                if u1315 ~= _LocalPlayer47 and u1315.Character and (u1315.Character:FindFirstChild('Head') and u1315.Character:FindFirstChild('Humanoid')) then
                    local _Head2 = u1315.Character.Head
                    local _Humanoid16 = u1315.Character.Humanoid
                    local v1318 = _Head2:FindFirstChild('NameEsp' .. u1310)

                    if u1308 then
                        if not v1318 then
                            v1318 = Instance.new('BillboardGui')
                            v1318.Name = 'NameEsp' .. u1310
                            v1318.ExtentsOffset = Vector3.new(0, 1, 0)
                            v1318.Size = UDim2.new(1, 200, 1, 30)
                            v1318.Adornee = _Head2
                            v1318.AlwaysOnTop = true
                            v1318.Parent = _Head2

                            local _TextLabel6 = Instance.new('TextLabel', v1318)

                            _TextLabel6.Font = Enum.Font.GothamSemibold
                            _TextLabel6.TextSize = 14
                            _TextLabel6.TextWrapped = true
                            _TextLabel6.Size = UDim2.new(1, 0, 1, 0)
                            _TextLabel6.TextYAlignment = Enum.TextYAlignment.Top
                            _TextLabel6.BackgroundTransparency = 1
                            _TextLabel6.TextStrokeTransparency = 0.5
                            _TextLabel6.Parent = v1318
                        end

                        local _TextLabel7 = v1318:FindFirstChildOfClass('TextLabel')

                        if _TextLabel7 then
                            local v1321 = math.floor((_Position13 - _Head2.Position).Magnitude / 3 + 0.5)
                            local v1322 = math.floor(_Humanoid16.Health / _Humanoid16.MaxHealth * 100 + 0.5)

                            _TextLabel7.Text = string.format('%s\n%d Distance\nHealth: %d%%', u1315.Name, v1321, v1322)

                            if u1315.Team ~= _LocalPlayer47.Team then
                                _TextLabel7.TextColor3 = Color3.fromRGB(255, 0, 0)
                            else
                                _TextLabel7.TextColor3 = Color3.fromRGB(0, 255, 0)
                            end
                        end
                    elseif v1318 then
                        v1318:Destroy()
                    end
                end
            end)
        end
    end
end

ESP:AddToggle('Toggle', {
    Title = 'ESP Player',
    Default = false,
}):OnChanged(function(p1323)
    u1308 = p1323

    if u1308 then
        if not u1309 then
            u1309 = _RunService3.Heartbeat:Connect(UpdatePlayerChams)
        end
    else
        if u1309 then
            u1309:Disconnect()

            u1309 = nil
        end

        local v1324, v1325, v1326 = ipairs(game:GetService('Players'):GetPlayers())

        while true do
            local v1327

            v1326, v1327 = v1324(v1325, v1326)

            if v1326 == nil then
                break
            end
            if v1327 ~= _LocalPlayer47 and v1327.Character and v1327.Character:FindFirstChild('Head') then
                local v1328 = v1327.Character.Head:FindFirstChild('NameEsp' .. u1310)

                if v1328 then
                    v1328:Destroy()
                end
            end
        end
    end
end)

PVP = Window:AddTab({
    Title = 'Tab PVP',
    Icon = '',
})

local v1329, v1330, v1331 = ipairs(game.Players:GetPlayers())
local v1332 = {}

while true do
    local v1333

    v1331, v1333 = v1329(v1330, v1331)

    if v1331 == nil then
        break
    end

    v1332[v1331] = v1333.Name
end

Dropdown = PVP:AddDropdown('Dropdown', {
    Title = 'Select Player PVP',
    Values = v1332,
    Multi = false,
    Default = false,
})

Dropdown:OnChanged(function(p1334)
    getgenv().SelectPlayer = p1334
end)
PVP:AddToggle('MyToggle', {
    Title = 'Teleport Player',
    Default = false,
}):OnChanged(function(p1335)
    getgenv().TeleportPlayer = p1335

    if getgenv().TeleportPlayer then
        task.spawn(function()
            while getgenv().TeleportPlayer do
                local v1336 = game:GetService('Players'):FindFirstChild(getgenv().SelectPlayer)
                local v1337 = v1336 and v1336.Character and v1336.Character:FindFirstChild('HumanoidRootPart')

                if v1337 then
                    topos(v1337.CFrame)
                end

                task.wait(0.1)
            end
        end)
    end
end)
PVP:AddToggle('Toggle', {
    Title = 'Auto Aimbot',
    Default = false,
}):OnChanged(function(p1338)
    getgenv().Aimbot = p1338
end)
spawn(function()
    pcall(function()
        while task.wait(0.1) do
            if getgenv().Aimbot and getgenv().SelectPlayer then
                local v1339 = game.Players:FindFirstChild(getgenv().SelectPlayer)
                local _Character27 = game.Players.LocalPlayer.Character

                if _Character27 then
                    _Character27 = _Character27:FindFirstChildOfClass('Tool')
                end
                if v1339 and (v1339.Character and _Character27) then
                    local _RemoteEvent = _Character27:FindFirstChild('RemoteEvent')
                    local _MousePos = _Character27:FindFirstChild('MousePos')
                    local _HumanoidRootPart19 = v1339.Character:FindFirstChild('HumanoidRootPart')

                    if _RemoteEvent and (_MousePos and _HumanoidRootPart19) then
                        _RemoteEvent:FireServer(_HumanoidRootPart19.Position)
                    end
                end
            end
        end
    end)
end)
PVP:AddToggle('Toggle', {
    Title = 'Auto Aimbot Gun',
    Default = false,
}):OnChanged(function(p1344)
    getgenv().AimbotGun = p1344
end)
spawn(function()
    while task.wait(0.1) do
        if getgenv().AimbotGun and SelectWeaponGun then
            local _LocalPlayer48 = game:GetService('Players').LocalPlayer

            if _LocalPlayer48 then
                _LocalPlayer48 = _LocalPlayer48.Character
            end
            if _LocalPlayer48 then
                _LocalPlayer48 = _LocalPlayer48:FindFirstChild(SelectWeaponGun)
            end

            local u1346 = game:GetService('Players'):FindFirstChild(getgenv().SelectPlayer)

            if u1346 then
                u1346 = u1346.Character
            end
            if u1346 then
                u1346 = u1346:FindFirstChild('HumanoidRootPart')
            end
            if _LocalPlayer48 and u1346 then
                pcall(function()
                    _LocalPlayer48.Cooldown.Value = 0

                    local v1347 = {
                        u1346.Position,
                        u1346,
                    }

                    _LocalPlayer48.RemoteFunctionShoot:InvokeServer(unpack(v1347))
                    game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
                end)
            end
        end
    end
end)
PVP:AddToggle('Toggle', {
    Title = 'Safe Modes',
    Default = false,
}):OnChanged(function(p1348)
    getgenv().SafeMode = p1348
end)
spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if getgenv().SafeMode then
                local _Character28 = game.Players.LocalPlayer.Character

                if _Character28 and (_Character28:FindFirstChild('Humanoid') and _Character28:FindFirstChild('HumanoidRootPart')) then
                    local v1350 = _Character28.Humanoid.MaxHealth * (getgenv().Safe / 100)

                    if _Character28.Humanoid.Health <= v1350 then
                        while getgenv().SafeMode and _Character28.Humanoid.Health <= v1350 do
                            task.wait(0.1)

                            _Character28.HumanoidRootPart.CFrame = _Character28.HumanoidRootPart.CFrame + Vector3.new(0, 50, 0)
                        end
                    end
                end
            end
        end)
    end
end)

Slider = PVP:AddSlider('Slider', {
    Title = 'Safe Mode At',
    Default = 30,
    Min = 0,
    Max = 100,
    Rounding = 5,
    Callback = function(p1351)
        getgenv().Safe = p1351
    end,
})

PVP:AddToggle('Toggle', {
    Title = 'Walk On Water',
    Default = true,
}):OnChanged(function(p1352)
    getgenv().WalkWater = p1352

    local _WaterBasePlane = game:GetService('Workspace').Map['WaterBase-Plane']

    if getgenv().WalkWater then
        _WaterBasePlane.Size = Vector3.new(1000, 112, 1000)
    else
        _WaterBasePlane.Size = Vector3.new(1000, 80, 1000)
    end
end)
PVP:AddToggle('Toggle', {
    Title = 'No Clip',
    Default = false,
}):OnChanged(function(p1354)
    getgenv().NoClip = p1354

    if getgenv().NoClipConnection then
        getgenv().NoClipConnection:Disconnect()
    end
    if p1354 then
        getgenv().NoClipConnection = game:GetService('RunService').Stepped:Connect(function()
            local v1355, v1356, v1357 = ipairs(game.Players.LocalPlayer.Character:GetDescendants())

            while true do
                local v1358

                v1357, v1358 = v1355(v1356, v1357)

                if v1357 == nil then
                    break
                end
                if v1358:IsA('BasePart') then
                    v1358.CanCollide = false
                end
            end
        end)
    else
        local v1359, v1360, v1361 = ipairs(game.Players.LocalPlayer.Character:GetDescendants())

        while true do
            local v1362

            v1361, v1362 = v1359(v1360, v1361)

            if v1361 == nil then
                break
            end
            if v1362:IsA('BasePart') then
                v1362.CanCollide = true
            end
        end
    end
end)

local _LocalPlayer49 = game:GetService('Players').LocalPlayer

getgenv().WalkSpeed = 16

local _Toggle3 = PVP:AddToggle('Toggle', {
    Title = 'Change WalkSpeed',
    Default = false,
})
local u1365 = nil

local function u1368()
    if _Toggle3.Value then
        local _Character29 = _LocalPlayer49.Character
        local u1367 = _Character29 and _Character29:FindFirstChildOfClass('Humanoid')

        if u1367 then
            u1367.WalkSpeed = getgenv().WalkSpeed

            if u1365 then
                u1365:Disconnect()
            end

            u1365 = u1367:GetPropertyChangedSignal('WalkSpeed'):Connect(function()
                if _Toggle3.Value then
                    u1367.WalkSpeed = getgenv().WalkSpeed
                end
            end)
        end
    end
end

local v1369 = _Toggle3

_Toggle3.OnChanged(v1369, function(p1370)
    if p1370 then
        u1368()
        _LocalPlayer49.CharacterAdded:Connect(u1368)
    else
        if u1365 then
            u1365:Disconnect()

            u1365 = nil
        end

        local _Character30 = _LocalPlayer49.Character
        local v1372 = _Character30 and _Character30:FindFirstChildOfClass('Humanoid')

        if v1372 then
            v1372.WalkSpeed = 16
        end
    end
end)

Input = PVP:AddInput('Input', {
    Title = 'Input WalkSpeed',
    Default = 100,
    Placeholder = 'Input',
    Numeric = true,
    Finished = true,
    Callback = function(p1373)
        getgenv().WalkSpeed = p1373
    end,
})

game.StarterGui:SetCore('SendNotification', {
    Title = 'Yes Or No',
    Text = 'U want reset Config?',
    Icon = 'rbxassetid://5009915795',
    Duration = 100000,
    Button1 = 'Yes',
    Button2 = 'No',
})

local _ScreenGui2 = Instance.new('ScreenGui')
local _Frame = Instance.new('Frame')
local _ImageLabel = Instance.new('ImageLabel')
local _UICorner = Instance.new('UICorner')
local _TextButton = Instance.new('TextButton')

_ScreenGui2.Parent = game:GetService('CoreGui')
_ScreenGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
_Frame.Parent = _ScreenGui2
_Frame.AnchorPoint = Vector2.new(0.1, 0.1)
_Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_Frame.BackgroundTransparency = 0
_Frame.BorderColor3 = Color3.fromRGB(27, 42, 53)
_Frame.BorderSizePixel = 1
_Frame.Position = UDim2.new(0, 20, 0.1, -6)
_Frame.Size = UDim2.new(0, 50, 0, 50)
_Frame.Name = 'dut dit'
_ImageLabel.Parent = _Frame
_ImageLabel.Name = 'Banana Test'
_ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
_ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
_ImageLabel.Size = UDim2.new(0, 40, 0, 40)
_ImageLabel.BackgroundColor3 = Color3.fromRGB(163, 162, 165)
_ImageLabel.BackgroundTransparency = 1
_ImageLabel.BorderSizePixel = 1
_ImageLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
_ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
_ImageLabel.Image = 'http://www.roblox.com/asset/?id= 5009915795'
_UICorner.CornerRadius = UDim.new(1, 0)
_UICorner.Parent = _Frame
_TextButton.Name = 'TextButton'
_TextButton.Parent = _Frame
_TextButton.AnchorPoint = Vector2.new(0, 0)
_TextButton.Position = UDim2.new(0, 0, 0, 0)
_TextButton.Size = UDim2.new(1, 0, 1, 0)
_TextButton.BackgroundColor3 = Color3.fromRGB(163, 162, 165)
_TextButton.BackgroundTransparency = 1
_TextButton.BorderSizePixel = 1
_TextButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
_TextButton.TextColor3 = Color3.fromRGB(27, 42, 53)
_TextButton.Text = ''
_TextButton.Font = Enum.Font.SourceSans
_TextButton.TextSize = 8
_TextButton.TextTransparency = 0

local _TweenService4 = game:GetService('TweenService')
local _VirtualInputManager5 = game:GetService('VirtualInputManager')
local u1381 = false
local u1382 = UDim2.new(0, 40, 0, 40)
local u1383 = UDim2.new(0, 30, 0, 30)
local u1384 = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local u1385 = false
local v1386 = _TweenService4
local u1387 = _TweenService4.Create(v1386, _Frame, u1384, {BackgroundTransparency = 0.25})
local v1388 = _TweenService4
local u1389 = _TweenService4.Create(v1388, _Frame, u1384, {BackgroundTransparency = 0})

_TextButton.MouseButton1Down:Connect(function()
    if u1381 then
        _TweenService4:Create(_ImageLabel, u1384, {Size = u1382}):Play()
    else
        _TweenService4:Create(_ImageLabel, u1384, {Size = u1383}):Play()
    end

    u1381 = not u1381

    if u1385 then
        u1389:Play()
    else
        u1387:Play()
    end

    u1385 = not u1385

    _VirtualInputManager5:SendKeyEvent(true, 'LeftControl', false, game)
end)
print('--[[Hop Server If You Meet Game Admin]]--')

local u1390 = {
    red_game43 = true,
    rip_indra = true,
    Axiore = true,
    Polkster = true,
    wenlocktoad = true,
    Daigrock = true,
    toilamvidamme = true,
    oofficialnoobie = true,
    Uzoth = true,
    Azarth = true,
    arlthmetic = true,
    Death_King = true,
    Lunoven = true,
    TheGreateAced = true,
    rip_fud = true,
    drip_mama = true,
    layandikit12 = true,
    Hingoi = true,
}

spawn(function()
    while true do
        wait(1)

        local v1391, v1392, v1393 = pairs(game.Players:GetPlayers())

        while true do
            local v1394

            v1393, v1394 = v1391(v1392, v1393)

            if v1393 == nil then
                break
            end
            if u1390[v1394.Name] then
                Hop()
            end
        end
    end
end)

local _ = 10 > tick() - 0
local _RunService4 = game:GetService('RunService')
local _ = game:GetService('Players').LocalPlayer

pcall(function()
    setfpscap(120)
end)

local _ScreenGui3 = Instance.new('ScreenGui')

_ScreenGui3.Name = 'RainbowFPS'
_ScreenGui3.ResetOnSpawn = false
_ScreenGui3.DisplayOrder = 1000
_ScreenGui3.IgnoreGuiInset = true
_ScreenGui3.Parent = game:GetService('CoreGui')

local _Frame2 = Instance.new('Frame')

_Frame2.Size = UDim2.new(0, 150, 0, 60)
_Frame2.Position = UDim2.new(0, 10, 0, 10)
_Frame2.BackgroundTransparency = 1
_Frame2.Active = true
_Frame2.Draggable = true
_Frame2.Parent = _ScreenGui3

local _TextLabel8 = Instance.new('TextLabel')

_TextLabel8.Size = UDim2.new(1, 0, 0.5, 0)
_TextLabel8.Position = UDim2.new(0, 0, 0, 0)
_TextLabel8.Font = Enum.Font.FredokaOne
_TextLabel8.TextScaled = true
_TextLabel8.BackgroundTransparency = 1
_TextLabel8.TextStrokeTransparency = 0.2
_TextLabel8.Text = 'FPS: 0'
_TextLabel8.Parent = _Frame2

local _TextLabel9 = Instance.new('TextLabel')

_TextLabel9.Size = UDim2.new(1, 0, 0.5, 0)
_TextLabel9.Position = UDim2.new(0, 0, 0.5, 0)
_TextLabel9.Font = Enum.Font.FredokaOne
_TextLabel9.TextScaled = true
_TextLabel9.BackgroundTransparency = 1
_TextLabel9.TextStrokeTransparency = 0.5
_TextLabel9.TextColor3 = Color3.new(1, 1, 1)
_TextLabel9.Text = ''
_TextLabel9.Parent = _Frame2

task.spawn(function()
    local v1400 = 0

    while true do
        v1400 = (v1400 + 0.005) % 1

        local v1401 = Color3.fromHSV(v1400, 1, 1)

        _TextLabel8.TextColor3 = v1401
        _TextLabel9.TextColor3 = v1401

        _RunService4.RenderStepped:Wait()
    end
end)

local u1402 = 0
local u1403 = tick()

_RunService4.RenderStepped:Connect(function()
    u1402 = u1402 + 1

    local v1404 = tick()

    if v1404 - u1403 >= 1 then
        local v1405 = math.floor(u1402 / (v1404 - u1403))

        _TextLabel8.Text = 'FPS: ' .. tostring(v1405)
        u1402 = 0
        u1403 = v1404
    end
end)

local _Lighting3 = game:GetService('Lighting')
local _Terrain2 = workspace:FindFirstChildOfClass('Terrain')
local v1408, v1409, v1410 = ipairs(workspace:GetDescendants())

while true do
    local v1411

    v1410, v1411 = v1408(v1409, v1410)

    if v1410 == nil then
        break
    end
    if v1411:IsA('ParticleEmitter') or (v1411:IsA('Trail') or v1411:IsA('Explosion')) then
        v1411:Destroy()
    elseif v1411:IsA('Decal') or v1411:IsA('Texture') then
        v1411.Transparency = 1
    end
end

_Lighting3.GlobalShadows = false
_Lighting3.FogEnd = 1000000
_Lighting3.Brightness = 1

local v1412, v1413, v1414 = ipairs(workspace:GetDescendants())

while true do
    local v1415

    v1414, v1415 = v1412(v1413, v1414)

    if v1414 == nil then
        break
    end
    if v1415:IsA('MeshPart') or v1415:IsA('Part') then
        v1415.Material = Enum.Material.SmoothPlastic
        v1415.Reflectance = 0
    end
end

if _Terrain2 then
    _Terrain2.WaterWaveSize = 0
    _Terrain2.WaterWaveSpeed = 0
    _Terrain2.WaterReflectance = 0
    _Terrain2.WaterTransparency = 1
end

settings().Rendering.QualityLevel = Enum.QualityLevel.Level01

pcall(function()
    setfpscap(30)
end)

local v1416, v1417, v1418 = ipairs(game:GetDescendants())

while true do
    local v1419

    v1418, v1419 = v1416(v1417, v1418)

    if v1418 == nil then
        break
    end
    if v1419:IsA('Sound') and v1419.Looped then
        v1419.Volume = 0
    end
end

print('\u{2705} Anti-Lag script activated! FPS boosted.')

local _Lighting4 = game:GetService('Lighting')
local _Terrain3 = workspace:FindFirstChildOfClass('Terrain')

_Lighting4.GlobalShadows = false
_Lighting4.FogEnd = 10000000
_Lighting4.Brightness = 1
_Lighting4.ClockTime = 14
_Lighting4.OutdoorAmbient = Color3.fromRGB(127, 127, 127)
_Lighting4.Ambient = Color3.fromRGB(127, 127, 127)

local v1422, v1423, v1424 = ipairs(workspace:GetDescendants())

while true do
    local v1425

    v1424, v1425 = v1422(v1423, v1424)

    if v1424 == nil then
        break
    end
    if v1425:IsA('ParticleEmitter') or (v1425:IsA('Trail') or (v1425:IsA('Explosion') or (v1425:IsA('Smoke') or (v1425:IsA('Fire') or v1425:IsA('Sparkles'))))) then
        v1425:Destroy()
    elseif v1425:IsA('Decal') or v1425:IsA('Texture') then
        v1425.Transparency = 0.8
    elseif v1425:IsA('MeshPart') or v1425:IsA('Part') then
        v1425.Material = Enum.Material.SmoothPlastic
        v1425.Reflectance = 0
    end
end

if _Terrain3 then
    _Terrain3.WaterWaveSize = 0
    _Terrain3.WaterWaveSpeed = 0
    _Terrain3.WaterReflectance = 0
    _Terrain3.WaterTransparency = 0.9
end

settings().Rendering.QualityLevel = Enum.QualityLevel.Level02

pcall(function()
    setfpscap(120)
end)

local v1426, v1427, v1428 = ipairs(game:GetDescendants())

while true do
    local v1429

    v1428, v1429 = v1426(v1427, v1428)

    if v1428 == nil then
        break
    end
    if v1429:IsA('Sound') and v1429.Looped then
        v1429.Volume = 0.2
    end
end

print('\u{2705} Smooth + Stable Anti-Lag Activated - Made by Chiriku Roblox')
game.StarterGui:SetCore('SendNotification', {
    Title = 'UPDATE!',
    Text = 'Reduce Lag And Fixed Some Functions\u{2705}',
    Icon = 'rbxassetid://5009915795',
    Duration = 8,
})
