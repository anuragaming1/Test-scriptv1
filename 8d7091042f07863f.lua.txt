-- ts file was generated at discord.gg/25ms

hookfunction(require(game:GetService('ReplicatedStorage').Effect.Container.Death), function() end)
hookfunction(require(game:GetService('ReplicatedStorage').Effect.Container.Respawn), function() end)

if game.PlaceId ~= 2753915549 then
    if game.PlaceId ~= 4442272183 then
        if game.PlaceId == 7449423635 then
            World3 = true
        end
    else
        World2 = true
    end
else
    World1 = true
end

function MaterialMon()
    if _G.SelectMaterial == 'Radiactive Material' then
        MMon = 'Factory Staff'
        MPos = CFrame.new(-105.889565, 72.8076935, -670.247986, -0.965929747, 0, -0.258804798, 0, 1, 0, 0.258804798, 0, -0.965929747)
        SP = 'Bar'
    elseif _G.SelectMaterial == 'Leather + Scrap Metal' then
        if game.PlaceId ~= 2753915549 then
            if game.PlaceId == 4442272183 then
                MMon = 'Mercenary'
                MPos = CFrame.new(-986.774475, 72.8755951, 1088.44653, -0.656062722, 0, 0.754706323, 0, 1, 0, -0.754706323, 0, -0.656062722)
                SP = 'DressTown'
            elseif game.PlaceId == 7449423635 then
                MMon = 'Pirate Millionaire'
                MPos = CFrame.new(-118.809372, 55.4874573, 5649.17041, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
                SP = 'Default'
            end
        else
            MMon = 'Pirate'
            MPos = CFrame.new(-967.433105, 13.5999937, 4034.24707, -0.258864403, 0, -0.965913713, 0, 1, 0, 0.965913713, 0, -0.258864403)
            SP = 'Pirate'
            MMon = 'Brute'
            MPos = CFrame.new(-1191.41235, 15.5999985, 4235.50928, 0.629286051, 0, -0.777173758, 0, 1, 0, 0.777173758, 0, 0.629286051)
            SP = 'Pirate'
        end
    elseif _G.SelectMaterial == 'Magma Ore' then
        if game.PlaceId ~= 2753915549 then
            if game.PlaceId == 4442272183 then
                MMon = 'Lava Pirate'
                MPos = CFrame.new(-5158.77051, 14.4791956, -4654.2627, -0.848060489, 0, -0.529899538, 0, 1, 0, 0.529899538, 0, -0.848060489)
                SP = 'CircleIslandFire'
            end
        else
            MMon = 'Military Soldier'
            MPos = CFrame.new(-5565.60156, 9.10001755, 8327.56934, -0.838688731, 0, -0.544611216, 0, 1, 0, 0.544611216, 0, -0.838688731)
            SP = 'Magma'
            MMon = 'Military Spy'
            MPos = CFrame.new(-5806.70068, 78.5000458, 8904.46973, 0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, 0.707134247)
            SP = 'Magma'
        end
    elseif _G.SelectMaterial == 'Fish Tail' then
        if game.PlaceId ~= 2753915549 then
            if game.PlaceId == 7449423635 then
                MMon = 'Fishman Captain'
                MPos = CFrame.new(-10828.1064, 331.825989, -9049.14648, -0.0912091732, 0, 0.995831788, 0, 1, 0, -0.995831788, 0, -0.0912091732)
                SP = 'PineappleTown'
            end
        else
            MMon = 'Fishman Warrior'
            MPos = CFrame.new(60943.9023, 17.9492188, 1744.11133, 0.826706648, 0, -0.562633216, 0, 1, 0, 0.562633216, 0, 0.826706648)
            SP = 'Underwater City'
            MMon = 'Fishman Commando'
            MPos = CFrame.new(61760.8984, 18.0800781, 1460.11133, -0.632549644, 0, -0.774520278, 0, 1, 0, 0.774520278, 0, -0.632549644)
            SP = 'Underwater City'
        end
    elseif _G.SelectMaterial ~= 'Angel Wings' then
        if _G.SelectMaterial ~= 'Mystic Droplet' then
            if _G.SelectMaterial ~= 'Vampire Fang' then
                if _G.SelectMaterial ~= 'Gunpowder' then
                    if _G.SelectMaterial == 'Mini Tusk' then
                        MMon = 'Mythological Pirate'
                        MPos = CFrame.new(-13456.0498, 469.433228, -7039.96436, 0, 0, 1, 0, 1, 0, -1, 0, 0)
                        SP = 'BigMansion'
                    elseif _G.SelectMaterial == 'Conjured Cocoa' then
                        MMon = 'Chocolate Bar Battler'
                        MPos = CFrame.new(582.828674, 25.5824986, -12550.7041, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
                        SP = 'Chocolate'
                    end
                else
                    MMon = 'Pistol Billionaire'
                    MPos = CFrame.new(-185.693283, 84.7088699, 6103.62744, 0.90629667, 0, -0.422642082, 0, 1, 0, 0.422642082, 0, 0.90629667)
                    SP = 'Mansion'
                end
            else
                MMon = 'Vampire'
                MPos = CFrame.new(-6132.39453, 9.00769424, -1466.16919, -0.927179813, 0, -0.374617696, 0, 1, 0, 0.374617696, 0, -0.927179813)
                SP = 'Graveyard'
            end
        else
            MMon = 'Water Fighter'
            MPos = CFrame.new(-3331.70459, 239.138336, -10553.3564, -0.29242146, 0, 0.95628953, 0, 1, 0, -0.95628953, 0, -0.29242146)
            SP = 'ForgottenIsland'
        end
    else
        MMon = 'Royal Soldier'
        MPos = CFrame.new(-7759.45898, 5606.93652, -1862.70276, -0.866007447, 0, -0.500031412, 0, 1, 0, 0.500031412, 0, -0.866007447)
        SP = 'SkyArea2'
    end
end
function CheckQuest()
    MyLevel = game:GetService('Players').LocalPlayer.Data.Level.Value

    if World1 then
        if (MyLevel < 1 or MyLevel > 9) and SelectMonster ~= 'Bandit' then
            if (MyLevel < 10 or MyLevel > 14) and SelectMonster ~= 'Monkey' then
                if (MyLevel < 15 or MyLevel > 29) and SelectMonster ~= 'Gorilla' then
                    if (MyLevel < 30 or MyLevel > 39) and SelectMonster ~= 'Pirate' then
                        if (MyLevel < 40 or MyLevel > 59) and SelectMonster ~= 'Brute' then
                            if (MyLevel < 60 or MyLevel > 74) and SelectMonster ~= 'Desert Bandit' then
                                if (MyLevel < 75 or MyLevel > 89) and SelectMonster ~= 'Desert Officer' then
                                    if (MyLevel < 90 or MyLevel > 99) and SelectMonster ~= 'Snow Bandit' then
                                        if (MyLevel < 100 or MyLevel > 119) and SelectMonster ~= 'Snowman' then
                                            if (MyLevel < 120 or MyLevel > 149) and SelectMonster ~= 'Chief Petty Officer' then
                                                if (MyLevel < 150 or MyLevel > 174) and SelectMonster ~= 'Sky Bandit' then
                                                    if (MyLevel < 175 or MyLevel > 189) and SelectMonster ~= 'Dark Master' then
                                                        if (MyLevel < 190 or MyLevel > 209) and SelectMonster ~= 'Prisoner' then
                                                            if (MyLevel < 210 or MyLevel > 249) and SelectMonster ~= 'Dangerous Prisone' then
                                                                if (MyLevel < 250 or MyLevel > 274) and SelectMonster ~= 'Toga Warrior' then
                                                                    if (MyLevel < 275 or MyLevel > 299) and SelectMonster ~= 'Gladiator' then
                                                                        if (MyLevel < 300 or MyLevel > 324) and SelectMonster ~= 'Military Soldier' then
                                                                            if (MyLevel < 325 or MyLevel > 374) and SelectMonster ~= 'Military Spy' then
                                                                                if (MyLevel < 375 or MyLevel > 399) and SelectMonster ~= 'Fishman Warrior' then
                                                                                    if (MyLevel < 400 or MyLevel > 449) and SelectMonster ~= 'Fishman Commando' then
                                                                                        if (MyLevel < 450 or MyLevel > 474) and SelectMonster ~= "God's Guard" then
                                                                                            if (MyLevel < 475 or MyLevel > 524) and SelectMonster ~= 'Shanda' then
                                                                                                if (MyLevel < 525 or MyLevel > 549) and SelectMonster ~= 'Royal Squad' then
                                                                                                    if (MyLevel < 550 or MyLevel > 624) and SelectMonster ~= 'Royal Soldier' then
                                                                                                        if (MyLevel < 625 or MyLevel > 649) and SelectMonster ~= 'Galley Pirate' then
                                                                                                            if MyLevel >= 650 or SelectMonster == 'Galley Captain' then
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

                                                                                                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
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

                                                                                            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
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

                                                                                        if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
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

                                                                                    if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
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
        if (MyLevel < 700 or MyLevel > 724) and SelectMonster ~= 'Raider' then
            if (MyLevel < 725 or MyLevel > 774) and SelectMonster ~= 'Mercenary' then
                if (MyLevel < 775 or MyLevel > 799) and SelectMonster ~= 'Swan Pirate' then
                    if (MyLevel < 800 or MyLevel > 874) and SelectMonster ~= 'Factory Staff' then
                        if (MyLevel < 875 or MyLevel > 899) and SelectMonster ~= 'Marine Lieutenant' then
                            if (MyLevel < 900 or MyLevel > 949) and SelectMonster ~= 'Marine Captain' then
                                if (MyLevel < 950 or MyLevel > 974) and SelectMonster ~= 'Zombie' then
                                    if (MyLevel < 975 or MyLevel > 999) and SelectMonster ~= 'Vampire' then
                                        if (MyLevel < 1000 or MyLevel > 1049) and SelectMonster ~= 'Snow Trooper' then
                                            if (MyLevel < 1050 or MyLevel > 1099) and SelectMonster ~= 'Winter Warrior' then
                                                if (MyLevel < 1100 or MyLevel > 1124) and SelectMonster ~= 'Lab Subordinate' then
                                                    if (MyLevel < 1125 or MyLevel > 1174) and SelectMonster ~= 'Horned Warrior' then
                                                        if (MyLevel < 1175 or MyLevel > 1199) and SelectMonster ~= 'Magma Ninja' then
                                                            if (MyLevel < 1200 or MyLevel > 1249) and SelectMonster ~= 'Lava Pirate' then
                                                                if (MyLevel < 1250 or MyLevel > 1274) and SelectMonster ~= 'Ship Deckhand' then
                                                                    if (MyLevel < 1275 or MyLevel > 1299) and SelectMonster ~= 'Ship Engineer' then
                                                                        if (MyLevel < 1300 or MyLevel > 1324) and SelectMonster ~= 'Ship Steward' then
                                                                            if (MyLevel < 1325 or MyLevel > 1349) and SelectMonster ~= 'Ship Officer' then
                                                                                if (MyLevel < 1350 or MyLevel > 1374) and SelectMonster ~= 'Arctic Warrior' then
                                                                                    if (MyLevel < 1375 or MyLevel > 1424) and SelectMonster ~= 'Snow Lurker' then
                                                                                        if (MyLevel < 1425 or MyLevel > 1449) and SelectMonster ~= 'Sea Soldier' then
                                                                                            if MyLevel >= 1450 or SelectMonster == 'Water Fighter' then
                                                                                                Mon = 'Water Fighter'
                                                                                                LevelQuest = 2
                                                                                                NameQuest = 'ForgottenQuest'
                                                                                                NameMon = 'Water Fighter'
                                                                                                CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, -0, 1, -0, 0.13915664, -0, 0.990270376)
                                                                                                CFrameMon = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
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

                                                                                    if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
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

                                                                                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
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

                                                                            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
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

                                                                        if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
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

                                                                    if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
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
        if (MyLevel < 1500 or MyLevel > 1524) and SelectMonster ~= 'Pirate Millionaire' then
            if (MyLevel < 1525 or MyLevel > 1574) and SelectMonster ~= 'Pistol Billionaire' then
                if (MyLevel < 1575 or MyLevel > 1599) and SelectMonster ~= 'Dragon Crew Warrior' then
                    if (MyLevel < 1600 or MyLevel > 1624) and SelectMonster ~= 'Dragon Crew Archer' then
                        if (MyLevel < 1625 or MyLevel > 1649) and SelectMonster ~= 'Hydra Enforcer' then
                            if (MyLevel < 1650 or MyLevel > 1699) and SelectMonster ~= 'Venomous Assailant' then
                                if (MyLevel < 1700 or MyLevel > 1724) and SelectMonster ~= 'Marine Commodore' then
                                    if (MyLevel < 1725 or MyLevel > 1774) and SelectMonster ~= 'Marine Rear Admiral' then
                                        if (MyLevel < 1775 or MyLevel > 1799) and SelectMonster ~= 'Fishman Raider' then
                                            if (MyLevel < 1800 or MyLevel > 1824) and SelectMonster ~= 'Fishman Captain' then
                                                if (MyLevel < 1825 or MyLevel > 1849) and SelectMonster ~= 'Forest Pirate' then
                                                    if (MyLevel < 1850 or MyLevel > 1899) and SelectMonster ~= 'Mythological Pirate' then
                                                        if (MyLevel < 1900 or MyLevel > 1924) and SelectMonster ~= 'Jungle Pirate' then
                                                            if (MyLevel < 1925 or MyLevel > 1974) and SelectMonster ~= 'Musketeer Pirate' then
                                                                if (MyLevel < 1975 or MyLevel > 1999) and SelectMonster ~= 'Reborn Skeleton' then
                                                                    if (MyLevel < 2000 or MyLevel > 2024) and SelectMonster ~= 'Living Zombie' then
                                                                        if (MyLevel < 2025 or MyLevel > 2049) and SelectMonster ~= 'Demonic Soul' then
                                                                            if (MyLevel < 2050 or MyLevel > 2074) and SelectMonster ~= 'Posessed Mummy' then
                                                                                if (MyLevel < 2075 or MyLevel > 2099) and SelectMonster ~= 'Peanut Scout' then
                                                                                    if (MyLevel < 2100 or MyLevel > 2124) and SelectMonster ~= 'Peanut President' then
                                                                                        if (MyLevel < 2125 or MyLevel > 2149) and SelectMonster ~= 'Ice Cream Chef' then
                                                                                            if (MyLevel < 2150 or MyLevel > 2199) and SelectMonster ~= 'Ice Cream Commander' then
                                                                                                if (MyLevel < 2200 or MyLevel > 2224) and SelectMonster ~= 'Cookie Crafter' then
                                                                                                    if (MyLevel < 2225 or MyLevel > 2249) and SelectMonster ~= 'Cake Guard' then
                                                                                                        if (MyLevel < 2250 or MyLevel > 2274) and SelectMonster ~= 'Baking Staff' then
                                                                                                            if (MyLevel < 2275 or MyLevel > 2299) and SelectMonster ~= 'Head Baker' then
                                                                                                                if (MyLevel < 2300 or MyLevel > 2324) and SelectMonster ~= 'Cocoa Warrior' then
                                                                                                                    if (MyLevel < 2325 or MyLevel > 2349) and SelectMonster ~= 'Chocolate Bar Battler' then
                                                                                                                        if (MyLevel < 2350 or MyLevel > 2374) and SelectMonster ~= 'Sweet Thief' then
                                                                                                                            if (MyLevel < 2375 or MyLevel > 2399) and SelectMonster ~= 'Candy Rebel' then
                                                                                                                                if (MyLevel < 2400 or MyLevel > 2424) and SelectMonster ~= 'Candy Pirate' then
                                                                                                                                    if (MyLevel < 2425 or MyLevel > 2449) and SelectMonster ~= 'Snow Demon' then
                                                                                                                                        if (MyLevel < 2450 or MyLevel > 2474) and SelectMonster ~= 'Isle Outlaw' then
                                                                                                                                            if (MyLevel < 2475 or MyLevel > 2524) and SelectMonster ~= 'Island Boy' then
                                                                                                                                                if (MyLevel < 2525 or MyLevel > 2550) and SelectMonster ~= 'Isle Champion' then
                                                                                                                                                    if (MyLevel < 2550 or MyLevel > 2574) and SelectMonster ~= 'Serpent Hunter' then
                                                                                                                                                        if MyLevel >= 2575 or SelectMonster == 'Skull Slayer' then
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
                                        LevelQuest = 2
                                        NameQuest = 'MarineTreeIsland'
                                        NameMon = 'Marine Rear Admiral'
                                        CFrameQuest = CFrame.new(2481.09228515625, 74.27049255371094, -6779.640625)
                                        CFrameMon = CFrame.new(3761.81006, 123.912003, -6823.52197, 0.961273968, -0, 0.275594592, -0, 1, -0, -0.275594592, -0, 0.961273968)
                                    end
                                else
                                    Mon = 'Marine Commodore'
                                    LevelQuest = 1
                                    NameQuest = 'MarineTreeIsland'
                                    NameMon = 'Marine Commodore'
                                    CFrameQuest = CFrame.new(2481.09228515625, 74.27049255371094, -6779.640625)
                                    CFrameMon = CFrame.new(2577.25391, 75.6100006, -7739.87207, 0.499959469, -0, 0.866048813, -0, 1, -0, -0.866048813, -0, 0.499959469)
                                end
                            else
                                Mon = 'Venomous Assailant'
                                NameQuest = 'VenomCrewQuest'
                                LevelQuest = 2
                                NameMon = 'Venomous Assailant'
                                CFrameQuest = CFrame.new(5206.40185546875, 1004.10498046875, 748.3504638671875)
                                CFrameMon = CFrame.new(4674.92676, 1134.82654, 996.308838, 0.731321394, -0, -0.682033002, -0, 1, -0, 0.682033002, -0, 0.731321394)
                            end
                        else
                            Mon = 'Hydra Enforcer'
                            NameQuest = 'VenomCrewQuest'
                            LevelQuest = 1
                            NameMon = 'Hydra Enforcer'
                            CFrameQuest = CFrame.new(5206.40185546875, 1004.10498046875, 748.3504638671875)
                            CFrameMon = CFrame.new(4547.11523, 1003.10217, 334.194824, 0.388810456, -0, -0.921317935, -0, 1, -0, 0.921317935, -0, 0.388810456)
                        end
                    else
                        Mon = 'Dragon Crew Archer'
                        NameQuest = 'DragonCrewQuest'
                        LevelQuest = 2
                        NameMon = 'Dragon Crew Archer'
                        CFrameQuest = CFrame.new(6750.4931640625, 127.44916534423828, -711.0308837890625)
                        CFrameMon = CFrame.new(6668.76172, 481.376923, 329.12207, -0.121787429, -0, -0.992556155, -0, 1, -0, 0.992556155, -0, -0.121787429)
                    end
                else
                    Mon = 'Dragon Crew Warrior'
                    LevelQuest = 1
                    NameQuest = 'DragonCrewQuest'
                    NameMon = 'Dragon Crew Warrior'
                    CFrameQuest = CFrame.new(6750.4931640625, 127.44916534423828, -711.0308837890625)
                    CFrameMon = CFrame.new(6709.76367, 52.3442993, -1139.02966, -0.763515472, -0, 0.645789504, -0, 1, -0, -0.645789504, -0, -0.763515472)
                end
            else
                Mon = 'Pistol Billionaire'
                LevelQuest = 2
                NameQuest = 'PiratePortQuest'
                NameMon = 'Pistol Billionaire'
                CFrameQuest = CFrame.new(-450.104645, 107.681458, 5950.72607, 0.957107544, -0, -0.289732844, -0, 1, -0, 0.289732844, -0, 0.957107544)
                CFrameMon = CFrame.new(-54.8110352, 83.7698746, 5947.84082, -0.965929747, -0, 0.258804798, -0, 1, -0, -0.258804798, -0, -0.965929747)
            end
        else
            Mon = 'Pirate Millionaire'
            LevelQuest = 1
            NameQuest = 'PiratePortQuest'
            NameMon = 'Pirate Millionaire'
            CFrameQuest = CFrame.new(-450.104645, 107.681458, 5950.72607, 0.957107544, -0, -0.289732844, -0, 1, -0, 0.289732844, -0, 0.957107544)
            CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
        end
    end
end
function Hop()
    local _PlaceId = game.PlaceId
    local u2 = {}
    local u3 = ''
    local _hour = os.date('!*t').hour

    function TPReturner()
        local v5

        if u3 == '' then
            v5 = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. _PlaceId .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            v5 = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. _PlaceId .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. u3))
        end
        if v5.nextPageCursor and (v5.nextPageCursor ~= 'null' and v5.nextPageCursor ~= 'null') then
            u3 = v5.nextPageCursor
        end

        local v6, v7, v8 = pairs(v5.data)
        local v9 = 0

        while true do
            local v10

            v8, v10 = v6(v7, v8)

            if v8 == nil then
                break
            end

            local v11 = true
            local u12 = tostring(v10.id)

            if tonumber(v10.maxPlayers) > tonumber(v10.playing) then
                local v13, v14, v15 = pairs(u2)

                while true do
                    local v16

                    v15, v16 = v13(v14, v15)

                    if v15 == nil then
                        break
                    end
                    if v9 == 0 then
                        if tonumber(_hour) ~= tonumber(v16) then
                            pcall(function()
                                u2 = {}

                                table.insert(u2, _hour)
                            end)
                        end
                    elseif u12 == tostring(v16) then
                        v11 = false
                    end

                    v9 = v9 + 1
                end

                if v11 == true then
                    table.insert(u2, u12)
                    wait(0.1)
                    pcall(function()
                        wait()
                        game:GetService('TeleportService'):TeleportToPlaceInstance(_PlaceId, u12, game.Players.LocalPlayer)
                    end)
                    wait(0.1)
                end
            end
        end
    end
    function Teleport()
        while wait(0.1) do
            pcall(function()
                TPReturner()

                if u3 ~= '' then
                    TPReturner()
                end
            end)
        end
    end

    Teleport()
end
function CheckItem(p17)
    local v18, v19, v20 = pairs(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('getInventory'))

    while true do
        local v21

        v20, v21 = v18(v19, v20)

        if v20 == nil then
            break
        end
        if v21.Name == p17 then
            return v21
        end
    end
end
function UpdateIslandESP()
    local v22, v23, v24 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

    while true do
        local v25

        v24, v25 = v22(v23, v24)

        if v24 == nil then
            break
        end

        local u26 = v25

        pcall(function()
            if IslandESP then
                if u26.Name ~= 'Sea' then
                    if u26:FindFirstChild('NameEsp') then
                        u26.NameEsp.TextLabel.Text = u26.Name .. '   \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - u26.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui = Instance.new('BillboardGui', u26)

                        _BillboardGui.Name = 'NameEsp'
                        _BillboardGui.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui.Adornee = u26
                        _BillboardGui.AlwaysOnTop = true

                        local _TextLabel = Instance.new('TextLabel', _BillboardGui)

                        _TextLabel.Font = 'GothamSemibold'
                        _TextLabel.FontSize = 'Size14'
                        _TextLabel.TextWrapped = true
                        _TextLabel.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel.TextYAlignment = 'Top'
                        _TextLabel.BackgroundTransparency = 1
                        _TextLabel.TextStrokeTransparency = 0.5
                        _TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                    end
                end
            elseif u26:FindFirstChild('NameEsp') then
                u26:FindFirstChild('NameEsp'):Destroy()
            end
        end)
    end
end
function isnil(p29)
    local _ = p29 == nil

    return true
end

local function u31(p30)
    return math.floor(tonumber(p30) + 0.5)
end

Number = math.random(1, 1000000)

function UpdatePlayerChams()
    local v32, v33, v34 = pairs(game:GetService('Players'):GetChildren())

    while true do
        local v35

        v34, v35 = v32(v33, v34)

        if v34 == nil then
            break
        end

        local u36 = v35

        pcall(function()
            if not isnil(u36.Character) then
                if ESPPlayer then
                    if isnil(u36.Character.Head) or u36.Character.Head:FindFirstChild('NameEsp' .. Number) then
                        u36.Character.Head['NameEsp' .. Number].TextLabel.Text = u36.Name .. ' | ' .. u31((game:GetService('Players').LocalPlayer.Character.Head.Position - u36.Character.Head.Position).Magnitude / 3) .. ' Distance\nHealth : ' .. u31(u36.Character.Humanoid.Health * 100 / u36.Character.Humanoid.MaxHealth) .. '%'
                    else
                        local _BillboardGui2 = Instance.new('BillboardGui', u36.Character.Head)

                        _BillboardGui2.Name = 'NameEsp' .. Number
                        _BillboardGui2.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui2.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui2.Adornee = u36.Character.Head
                        _BillboardGui2.AlwaysOnTop = true

                        local _TextLabel2 = Instance.new('TextLabel', _BillboardGui2)

                        _TextLabel2.Font = Enum.Font.GothamSemibold
                        _TextLabel2.FontSize = 'Size14'
                        _TextLabel2.TextWrapped = true
                        _TextLabel2.Text = u36.Name .. ' \n' .. u31((game:GetService('Players').LocalPlayer.Character.Head.Position - u36.Character.Head.Position).Magnitude / 3) .. ' Distance'
                        _TextLabel2.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel2.TextYAlignment = 'Top'
                        _TextLabel2.BackgroundTransparency = 1
                        _TextLabel2.TextStrokeTransparency = 0.5

                        if u36.Team ~= game.Players.LocalPlayer.Team then
                            _TextLabel2.TextColor3 = Color3.new(255, 0, 0)
                        else
                            _TextLabel2.TextColor3 = Color3.new(0, 255, 0)
                        end
                    end
                elseif u36.Character.Head:FindFirstChild('NameEsp' .. Number) then
                    u36.Character.Head:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end
function UpdateChestESP()
    local v39, v40, v41 = pairs(game:GetService('CollectionService'):GetTagged('_ChestTagged'))

    while true do
        local v42

        v41, v42 = v39(v40, v41)

        if v41 == nil then
            break
        end

        local u43 = v42

        pcall(function()
            if _G.ChestESP then
                if not u43:GetAttribute('IsDisabled') then
                    if u43:FindFirstChild('ChestEsp') then
                        local v44 = u43
                        local v45 = u31((game:GetService('Players').LocalPlayer.Character.Head.Position - v44:GetPivot().Position).Magnitude / 3)

                        u43.ChestEsp.TextLabel.Text = 'Chest\n' .. v45 .. ' M'
                    else
                        local _BillboardGui3 = Instance.new('BillboardGui', u43)

                        _BillboardGui3.Name = 'ChestEsp'
                        _BillboardGui3.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui3.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui3.Adornee = u43
                        _BillboardGui3.AlwaysOnTop = true

                        local _TextLabel3 = Instance.new('TextLabel', _BillboardGui3)

                        _TextLabel3.Font = 'Code'
                        _TextLabel3.FontSize = 'Size14'
                        _TextLabel3.TextWrapped = true
                        _TextLabel3.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel3.TextYAlignment = 'Top'
                        _TextLabel3.BackgroundTransparency = 1
                        _TextLabel3.TextStrokeTransparency = 0.5
                        _TextLabel3.TextColor3 = Color3.fromRGB(255, 215, 0)
                    end
                end
            elseif u43:FindFirstChild('ChestEsp') then
                u43:FindFirstChild('ChestEsp'):Destroy()
            end
        end)
    end
end

u31 = function(p48)
    return math.floor(p48 + 0.5)
end

function UpdateDevilChams()
    local v49, v50, v51 = pairs(game.Workspace:GetChildren())

    while true do
        local v52

        v51, v52 = v49(v50, v51)

        if v51 == nil then
            break
        end

        local u53 = v52

        pcall(function()
            if DevilFruitESP then
                if string.find(u53.Name, 'Fruit') then
                    if u53.Handle:FindFirstChild('NameEsp' .. Number) then
                        u53.Handle['NameEsp' .. Number].TextLabel.Text = u53.Name .. '   \n' .. u31((game:GetService('Players').LocalPlayer.Character.Head.Position - u53.Handle.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui4 = Instance.new('BillboardGui', u53.Handle)

                        _BillboardGui4.Name = 'NameEsp' .. Number
                        _BillboardGui4.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui4.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui4.Adornee = u53.Handle
                        _BillboardGui4.AlwaysOnTop = true

                        local _TextLabel4 = Instance.new('TextLabel', _BillboardGui4)

                        _TextLabel4.Font = Enum.Font.GothamSemibold
                        _TextLabel4.FontSize = 'Size14'
                        _TextLabel4.TextWrapped = true
                        _TextLabel4.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel4.TextYAlignment = 'Top'
                        _TextLabel4.BackgroundTransparency = 1
                        _TextLabel4.TextStrokeTransparency = 0.5
                        _TextLabel4.TextColor3 = Color3.fromRGB(255, 255, 255)
                        _TextLabel4.Text = u53.Name .. ' \n' .. u31((game:GetService('Players').LocalPlayer.Character.Head.Position - u53.Handle.Position).Magnitude / 3) .. ' Distance'
                    end
                end
            elseif u53.Handle:FindFirstChild('NameEsp' .. Number) then
                u53.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end)
    end
end
function UpdateFlowerChams()
    local v56, v57, v58 = pairs(game.Workspace:GetChildren())

    while true do
        local v59

        v58, v59 = v56(v57, v58)

        if v58 == nil then
            break
        end

        local u60 = v59

        pcall(function()
            if u60.Name == 'Flower2' or u60.Name == 'Flower1' then
                if FlowerESP then
                    if u60:FindFirstChild('NameEsp' .. Number) then
                        u60['NameEsp' .. Number].TextLabel.Text = u60.Name .. '   \n' .. u31((game:GetService('Players').LocalPlayer.Character.Head.Position - u60.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui5 = Instance.new('BillboardGui', u60)

                        _BillboardGui5.Name = 'NameEsp' .. Number
                        _BillboardGui5.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui5.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui5.Adornee = u60
                        _BillboardGui5.AlwaysOnTop = true

                        local _TextLabel5 = Instance.new('TextLabel', _BillboardGui5)

                        _TextLabel5.Font = Enum.Font.GothamSemibold
                        _TextLabel5.FontSize = 'Size14'
                        _TextLabel5.TextWrapped = true
                        _TextLabel5.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel5.TextYAlignment = 'Top'
                        _TextLabel5.BackgroundTransparency = 1
                        _TextLabel5.TextStrokeTransparency = 0.5
                        _TextLabel5.TextColor3 = Color3.fromRGB(255, 0, 0)

                        if u60.Name == 'Flower1' then
                            _TextLabel5.Text = 'Blue Flower' .. ' \n' .. u31((game:GetService('Players').LocalPlayer.Character.Head.Position - u60.Position).Magnitude / 3) .. ' Distance'
                            _TextLabel5.TextColor3 = Color3.fromRGB(0, 0, 255)
                        end
                        if u60.Name == 'Flower2' then
                            _TextLabel5.Text = 'Red Flower' .. ' \n' .. u31((game:GetService('Players').LocalPlayer.Character.Head.Position - u60.Position).Magnitude / 3) .. ' Distance'
                            _TextLabel5.TextColor3 = Color3.fromRGB(255, 0, 0)
                        end
                    end
                elseif u60:FindFirstChild('NameEsp' .. Number) then
                    u60:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end
function UpdateRealFruitChams()
    local v63, v64, v65 = pairs(game.Workspace.AppleSpawner:GetChildren())

    while true do
        local v66

        v65, v66 = v63(v64, v65)

        if v65 == nil then
            break
        end
        if v66:IsA('Tool') then
            if RealFruitESP then
                if v66.Handle:FindFirstChild('NameEsp' .. Number) then
                    v66.Handle['NameEsp' .. Number].TextLabel.Text = v66.Name .. ' ' .. u31((game:GetService('Players').LocalPlayer.Character.Head.Position - v66.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui6 = Instance.new('BillboardGui', v66.Handle)

                    _BillboardGui6.Name = 'NameEsp' .. Number
                    _BillboardGui6.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui6.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui6.Adornee = v66.Handle
                    _BillboardGui6.AlwaysOnTop = true

                    local _TextLabel6 = Instance.new('TextLabel', _BillboardGui6)

                    _TextLabel6.Font = Enum.Font.GothamSemibold
                    _TextLabel6.FontSize = 'Size14'
                    _TextLabel6.TextWrapped = true
                    _TextLabel6.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel6.TextYAlignment = 'Top'
                    _TextLabel6.BackgroundTransparency = 1
                    _TextLabel6.TextStrokeTransparency = 0.5
                    _TextLabel6.TextColor3 = Color3.fromRGB(255, 0, 0)
                    _TextLabel6.Text = v66.Name .. ' \n' .. u31((game:GetService('Players').LocalPlayer.Character.Head.Position - v66.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v66.Handle:FindFirstChild('NameEsp' .. Number) then
                v66.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end

    local v69, v70, v71 = pairs(game.Workspace.PineappleSpawner:GetChildren())

    while true do
        local v72

        v71, v72 = v69(v70, v71)

        if v71 == nil then
            break
        end
        if v72:IsA('Tool') then
            if RealFruitESP then
                if v72.Handle:FindFirstChild('NameEsp' .. Number) then
                    v72.Handle['NameEsp' .. Number].TextLabel.Text = v72.Name .. ' ' .. u31((game:GetService('Players').LocalPlayer.Character.Head.Position - v72.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui7 = Instance.new('BillboardGui', v72.Handle)

                    _BillboardGui7.Name = 'NameEsp' .. Number
                    _BillboardGui7.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui7.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui7.Adornee = v72.Handle
                    _BillboardGui7.AlwaysOnTop = true

                    local _TextLabel7 = Instance.new('TextLabel', _BillboardGui7)

                    _TextLabel7.Font = Enum.Font.GothamSemibold
                    _TextLabel7.FontSize = 'Size14'
                    _TextLabel7.TextWrapped = true
                    _TextLabel7.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel7.TextYAlignment = 'Top'
                    _TextLabel7.BackgroundTransparency = 1
                    _TextLabel7.TextStrokeTransparency = 0.5
                    _TextLabel7.TextColor3 = Color3.fromRGB(255, 174, 0)
                    _TextLabel7.Text = v72.Name .. ' \n' .. u31((game:GetService('Players').LocalPlayer.Character.Head.Position - v72.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v72.Handle:FindFirstChild('NameEsp' .. Number) then
                v72.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end

    local v75, v76, v77 = pairs(game.Workspace.BananaSpawner:GetChildren())

    while true do
        local v78

        v77, v78 = v75(v76, v77)

        if v77 == nil then
            break
        end
        if v78:IsA('Tool') then
            if RealFruitESP then
                if v78.Handle:FindFirstChild('NameEsp' .. Number) then
                    v78.Handle['NameEsp' .. Number].TextLabel.Text = v78.Name .. ' ' .. u31((game:GetService('Players').LocalPlayer.Character.Head.Position - v78.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui8 = Instance.new('BillboardGui', v78.Handle)

                    _BillboardGui8.Name = 'NameEsp' .. Number
                    _BillboardGui8.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui8.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui8.Adornee = v78.Handle
                    _BillboardGui8.AlwaysOnTop = true

                    local _TextLabel8 = Instance.new('TextLabel', _BillboardGui8)

                    _TextLabel8.Font = Enum.Font.GothamSemibold
                    _TextLabel8.FontSize = 'Size14'
                    _TextLabel8.TextWrapped = true
                    _TextLabel8.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel8.TextYAlignment = 'Top'
                    _TextLabel8.BackgroundTransparency = 1
                    _TextLabel8.TextStrokeTransparency = 0.5
                    _TextLabel8.TextColor3 = Color3.fromRGB(251, 255, 0)
                    _TextLabel8.Text = v78.Name .. ' \n' .. u31((game:GetService('Players').LocalPlayer.Character.Head.Position - v78.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v78.Handle:FindFirstChild('NameEsp' .. Number) then
                v78.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end
end
function UpdateIslandESP()
    local v81, v82, v83 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

    while true do
        local v84

        v83, v84 = v81(v82, v83)

        if v83 == nil then
            break
        end

        local u85 = v84

        pcall(function()
            if IslandESP then
                if u85.Name ~= 'Sea' then
                    if u85:FindFirstChild('NameEsp') then
                        u85.NameEsp.TextLabel.Text = u85.Name .. '   \n' .. u31((game:GetService('Players').LocalPlayer.Character.Head.Position - u85.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui9 = Instance.new('BillboardGui', u85)

                        _BillboardGui9.Name = 'NameEsp'
                        _BillboardGui9.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui9.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui9.Adornee = u85
                        _BillboardGui9.AlwaysOnTop = true

                        local _TextLabel9 = Instance.new('TextLabel', _BillboardGui9)

                        _TextLabel9.Font = 'GothamSemibold'
                        _TextLabel9.FontSize = 'Size14'
                        _TextLabel9.TextWrapped = true
                        _TextLabel9.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel9.TextYAlignment = 'Top'
                        _TextLabel9.BackgroundTransparency = 1
                        _TextLabel9.TextStrokeTransparency = 0.5
                        _TextLabel9.TextColor3 = Color3.fromRGB(8, 247, 255)
                    end
                end
            elseif u85:FindFirstChild('NameEsp') then
                u85:FindFirstChild('NameEsp'):Destroy()
            end
        end)
    end
end
function isnil(p88)
    local _ = p88 == nil

    return true
end

local function u90(p89)
    return math.floor(tonumber(p89) + 0.5)
end

Number = math.random(1, 1000000)

function UpdatePlayerChams()
    local v91, v92, v93 = pairs(game:GetService('Players'):GetChildren())

    while true do
        local v94

        v93, v94 = v91(v92, v93)

        if v93 == nil then
            break
        end

        local u95 = v94

        pcall(function()
            if not isnil(u95.Character) then
                if ESPPlayer then
                    if isnil(u95.Character.Head) or u95.Character.Head:FindFirstChild('NameEsp' .. Number) then
                        u95.Character.Head['NameEsp' .. Number].TextLabel.Text = u95.Name .. ' | ' .. u90((game:GetService('Players').LocalPlayer.Character.Head.Position - u95.Character.Head.Position).Magnitude / 3) .. ' Distance\nHealth : ' .. u90(u95.Character.Humanoid.Health * 100 / u95.Character.Humanoid.MaxHealth) .. '%'
                    else
                        local _BillboardGui10 = Instance.new('BillboardGui', u95.Character.Head)

                        _BillboardGui10.Name = 'NameEsp' .. Number
                        _BillboardGui10.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui10.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui10.Adornee = u95.Character.Head
                        _BillboardGui10.AlwaysOnTop = true

                        local _TextLabel10 = Instance.new('TextLabel', _BillboardGui10)

                        _TextLabel10.Font = Enum.Font.GothamSemibold
                        _TextLabel10.FontSize = 'Size14'
                        _TextLabel10.TextWrapped = true
                        _TextLabel10.Text = u95.Name .. ' \n' .. u90((game:GetService('Players').LocalPlayer.Character.Head.Position - u95.Character.Head.Position).Magnitude / 3) .. ' Distance'
                        _TextLabel10.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel10.TextYAlignment = 'Top'
                        _TextLabel10.BackgroundTransparency = 1
                        _TextLabel10.TextStrokeTransparency = 0.5

                        if u95.Team ~= game.Players.LocalPlayer.Team then
                            _TextLabel10.TextColor3 = Color3.new(255, 0, 0)
                        else
                            _TextLabel10.TextColor3 = Color3.new(0, 255, 0)
                        end
                    end
                elseif u95.Character.Head:FindFirstChild('NameEsp' .. Number) then
                    u95.Character.Head:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end
function UpdateChestESP()
    local v98, v99, v100 = pairs(game:GetService('CollectionService'):GetTagged('_ChestTagged'))

    while true do
        local v101

        v100, v101 = v98(v99, v100)

        if v100 == nil then
            break
        end

        local u102 = v101

        pcall(function()
            if _G.ChestESP then
                if not u102:GetAttribute('IsDisabled') then
                    if u102:FindFirstChild('ChestEsp') then
                        local v103 = u102
                        local v104 = u90((game:GetService('Players').LocalPlayer.Character.Head.Position - v103:GetPivot().Position).Magnitude / 3)

                        u102.ChestEsp.TextLabel.Text = 'Chest\n' .. v104 .. ' M'
                    else
                        local _BillboardGui11 = Instance.new('BillboardGui', u102)

                        _BillboardGui11.Name = 'ChestEsp'
                        _BillboardGui11.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui11.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui11.Adornee = u102
                        _BillboardGui11.AlwaysOnTop = true

                        local _TextLabel11 = Instance.new('TextLabel', _BillboardGui11)

                        _TextLabel11.Font = 'Code'
                        _TextLabel11.FontSize = 'Size14'
                        _TextLabel11.TextWrapped = true
                        _TextLabel11.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel11.TextYAlignment = 'Top'
                        _TextLabel11.BackgroundTransparency = 1
                        _TextLabel11.TextStrokeTransparency = 0.5
                        _TextLabel11.TextColor3 = Color3.fromRGB(255, 215, 0)
                    end
                end
            elseif u102:FindFirstChild('ChestEsp') then
                u102:FindFirstChild('ChestEsp'):Destroy()
            end
        end)
    end
end

u90 = function(p107)
    return math.floor(p107 + 0.5)
end

function UpdateDevilChams()
    local v108, v109, v110 = pairs(game.Workspace:GetChildren())

    while true do
        local v111

        v110, v111 = v108(v109, v110)

        if v110 == nil then
            break
        end

        local u112 = v111

        pcall(function()
            if DevilFruitESP then
                if string.find(u112.Name, 'Fruit') then
                    if u112.Handle:FindFirstChild('NameEsp' .. Number) then
                        u112.Handle['NameEsp' .. Number].TextLabel.Text = u112.Name .. '   \n' .. u90((game:GetService('Players').LocalPlayer.Character.Head.Position - u112.Handle.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui12 = Instance.new('BillboardGui', u112.Handle)

                        _BillboardGui12.Name = 'NameEsp' .. Number
                        _BillboardGui12.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui12.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui12.Adornee = u112.Handle
                        _BillboardGui12.AlwaysOnTop = true

                        local _TextLabel12 = Instance.new('TextLabel', _BillboardGui12)

                        _TextLabel12.Font = Enum.Font.GothamSemibold
                        _TextLabel12.FontSize = 'Size14'
                        _TextLabel12.TextWrapped = true
                        _TextLabel12.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel12.TextYAlignment = 'Top'
                        _TextLabel12.BackgroundTransparency = 1
                        _TextLabel12.TextStrokeTransparency = 0.5
                        _TextLabel12.TextColor3 = Color3.fromRGB(255, 255, 255)
                        _TextLabel12.Text = u112.Name .. ' \n' .. u90((game:GetService('Players').LocalPlayer.Character.Head.Position - u112.Handle.Position).Magnitude / 3) .. ' Distance'
                    end
                end
            elseif u112.Handle:FindFirstChild('NameEsp' .. Number) then
                u112.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end)
    end
end
function UpdateFlowerChams()
    local v115, v116, v117 = pairs(game.Workspace:GetChildren())

    while true do
        local v118

        v117, v118 = v115(v116, v117)

        if v117 == nil then
            break
        end

        local u119 = v118

        pcall(function()
            if u119.Name == 'Flower2' or u119.Name == 'Flower1' then
                if FlowerESP then
                    if u119:FindFirstChild('NameEsp' .. Number) then
                        u119['NameEsp' .. Number].TextLabel.Text = u119.Name .. '   \n' .. u90((game:GetService('Players').LocalPlayer.Character.Head.Position - u119.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui13 = Instance.new('BillboardGui', u119)

                        _BillboardGui13.Name = 'NameEsp' .. Number
                        _BillboardGui13.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui13.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui13.Adornee = u119
                        _BillboardGui13.AlwaysOnTop = true

                        local _TextLabel13 = Instance.new('TextLabel', _BillboardGui13)

                        _TextLabel13.Font = Enum.Font.GothamSemibold
                        _TextLabel13.FontSize = 'Size14'
                        _TextLabel13.TextWrapped = true
                        _TextLabel13.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel13.TextYAlignment = 'Top'
                        _TextLabel13.BackgroundTransparency = 1
                        _TextLabel13.TextStrokeTransparency = 0.5
                        _TextLabel13.TextColor3 = Color3.fromRGB(255, 0, 0)

                        if u119.Name == 'Flower1' then
                            _TextLabel13.Text = 'Blue Flower' .. ' \n' .. u90((game:GetService('Players').LocalPlayer.Character.Head.Position - u119.Position).Magnitude / 3) .. ' Distance'
                            _TextLabel13.TextColor3 = Color3.fromRGB(0, 0, 255)
                        end
                        if u119.Name == 'Flower2' then
                            _TextLabel13.Text = 'Red Flower' .. ' \n' .. u90((game:GetService('Players').LocalPlayer.Character.Head.Position - u119.Position).Magnitude / 3) .. ' Distance'
                            _TextLabel13.TextColor3 = Color3.fromRGB(255, 0, 0)
                        end
                    end
                elseif u119:FindFirstChild('NameEsp' .. Number) then
                    u119:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end
function UpdateRealFruitChams()
    local v122, v123, v124 = pairs(game.Workspace.AppleSpawner:GetChildren())

    while true do
        local v125

        v124, v125 = v122(v123, v124)

        if v124 == nil then
            break
        end
        if v125:IsA('Tool') then
            if RealFruitESP then
                if v125.Handle:FindFirstChild('NameEsp' .. Number) then
                    v125.Handle['NameEsp' .. Number].TextLabel.Text = v125.Name .. ' ' .. u90((game:GetService('Players').LocalPlayer.Character.Head.Position - v125.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui14 = Instance.new('BillboardGui', v125.Handle)

                    _BillboardGui14.Name = 'NameEsp' .. Number
                    _BillboardGui14.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui14.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui14.Adornee = v125.Handle
                    _BillboardGui14.AlwaysOnTop = true

                    local _TextLabel14 = Instance.new('TextLabel', _BillboardGui14)

                    _TextLabel14.Font = Enum.Font.GothamSemibold
                    _TextLabel14.FontSize = 'Size14'
                    _TextLabel14.TextWrapped = true
                    _TextLabel14.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel14.TextYAlignment = 'Top'
                    _TextLabel14.BackgroundTransparency = 1
                    _TextLabel14.TextStrokeTransparency = 0.5
                    _TextLabel14.TextColor3 = Color3.fromRGB(255, 0, 0)
                    _TextLabel14.Text = v125.Name .. ' \n' .. u90((game:GetService('Players').LocalPlayer.Character.Head.Position - v125.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v125.Handle:FindFirstChild('NameEsp' .. Number) then
                v125.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end

    local v128, v129, v130 = pairs(game.Workspace.PineappleSpawner:GetChildren())

    while true do
        local v131

        v130, v131 = v128(v129, v130)

        if v130 == nil then
            break
        end
        if v131:IsA('Tool') then
            if RealFruitESP then
                if v131.Handle:FindFirstChild('NameEsp' .. Number) then
                    v131.Handle['NameEsp' .. Number].TextLabel.Text = v131.Name .. ' ' .. u90((game:GetService('Players').LocalPlayer.Character.Head.Position - v131.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui15 = Instance.new('BillboardGui', v131.Handle)

                    _BillboardGui15.Name = 'NameEsp' .. Number
                    _BillboardGui15.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui15.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui15.Adornee = v131.Handle
                    _BillboardGui15.AlwaysOnTop = true

                    local _TextLabel15 = Instance.new('TextLabel', _BillboardGui15)

                    _TextLabel15.Font = Enum.Font.GothamSemibold
                    _TextLabel15.FontSize = 'Size14'
                    _TextLabel15.TextWrapped = true
                    _TextLabel15.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel15.TextYAlignment = 'Top'
                    _TextLabel15.BackgroundTransparency = 1
                    _TextLabel15.TextStrokeTransparency = 0.5
                    _TextLabel15.TextColor3 = Color3.fromRGB(255, 174, 0)
                    _TextLabel15.Text = v131.Name .. ' \n' .. u90((game:GetService('Players').LocalPlayer.Character.Head.Position - v131.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v131.Handle:FindFirstChild('NameEsp' .. Number) then
                v131.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end

    local v134, v135, v136 = pairs(game.Workspace.BananaSpawner:GetChildren())

    while true do
        local v137

        v136, v137 = v134(v135, v136)

        if v136 == nil then
            break
        end
        if v137:IsA('Tool') then
            if RealFruitESP then
                if v137.Handle:FindFirstChild('NameEsp' .. Number) then
                    v137.Handle['NameEsp' .. Number].TextLabel.Text = v137.Name .. ' ' .. u90((game:GetService('Players').LocalPlayer.Character.Head.Position - v137.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui16 = Instance.new('BillboardGui', v137.Handle)

                    _BillboardGui16.Name = 'NameEsp' .. Number
                    _BillboardGui16.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui16.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui16.Adornee = v137.Handle
                    _BillboardGui16.AlwaysOnTop = true

                    local _TextLabel16 = Instance.new('TextLabel', _BillboardGui16)

                    _TextLabel16.Font = Enum.Font.GothamSemibold
                    _TextLabel16.FontSize = 'Size14'
                    _TextLabel16.TextWrapped = true
                    _TextLabel16.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel16.TextYAlignment = 'Top'
                    _TextLabel16.BackgroundTransparency = 1
                    _TextLabel16.TextStrokeTransparency = 0.5
                    _TextLabel16.TextColor3 = Color3.fromRGB(251, 255, 0)
                    _TextLabel16.Text = v137.Name .. ' \n' .. u90((game:GetService('Players').LocalPlayer.Character.Head.Position - v137.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v137.Handle:FindFirstChild('NameEsp' .. Number) then
                v137.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end
end
function UpdateIslandESP()
    local v140, v141, v142 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

    while true do
        local v143

        v142, v143 = v140(v141, v142)

        if v142 == nil then
            break
        end

        local u144 = v143

        pcall(function()
            if IslandESP then
                if u144.Name ~= 'Sea' then
                    if u144:FindFirstChild('NameEsp') then
                        u144.NameEsp.TextLabel.Text = u144.Name .. '   \n' .. u90((game:GetService('Players').LocalPlayer.Character.Head.Position - u144.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui17 = Instance.new('BillboardGui', u144)

                        _BillboardGui17.Name = 'NameEsp'
                        _BillboardGui17.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui17.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui17.Adornee = u144
                        _BillboardGui17.AlwaysOnTop = true

                        local _TextLabel17 = Instance.new('TextLabel', _BillboardGui17)

                        _TextLabel17.Font = 'GothamSemibold'
                        _TextLabel17.FontSize = 'Size14'
                        _TextLabel17.TextWrapped = true
                        _TextLabel17.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel17.TextYAlignment = 'Top'
                        _TextLabel17.BackgroundTransparency = 1
                        _TextLabel17.TextStrokeTransparency = 0.5
                        _TextLabel17.TextColor3 = Color3.fromRGB(8, 247, 255)
                    end
                end
            elseif u144:FindFirstChild('NameEsp') then
                u144:FindFirstChild('NameEsp'):Destroy()
            end
        end)
    end
end
function isnil(p147)
    local _ = p147 == nil

    return true
end

local function u149(p148)
    return math.floor(tonumber(p148) + 0.5)
end

Number = math.random(1, 1000000)

function UpdatePlayerChams()
    local v150, v151, v152 = pairs(game:GetService('Players'):GetChildren())

    while true do
        local v153

        v152, v153 = v150(v151, v152)

        if v152 == nil then
            break
        end

        local u154 = v153

        pcall(function()
            if not isnil(u154.Character) then
                if ESPPlayer then
                    if isnil(u154.Character.Head) or u154.Character.Head:FindFirstChild('NameEsp' .. Number) then
                        u154.Character.Head['NameEsp' .. Number].TextLabel.Text = u154.Name .. ' | ' .. u149((game:GetService('Players').LocalPlayer.Character.Head.Position - u154.Character.Head.Position).Magnitude / 3) .. ' Distance\nHealth : ' .. u149(u154.Character.Humanoid.Health * 100 / u154.Character.Humanoid.MaxHealth) .. '%'
                    else
                        local _BillboardGui18 = Instance.new('BillboardGui', u154.Character.Head)

                        _BillboardGui18.Name = 'NameEsp' .. Number
                        _BillboardGui18.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui18.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui18.Adornee = u154.Character.Head
                        _BillboardGui18.AlwaysOnTop = true

                        local _TextLabel18 = Instance.new('TextLabel', _BillboardGui18)

                        _TextLabel18.Font = Enum.Font.GothamSemibold
                        _TextLabel18.FontSize = 'Size14'
                        _TextLabel18.TextWrapped = true
                        _TextLabel18.Text = u154.Name .. ' \n' .. u149((game:GetService('Players').LocalPlayer.Character.Head.Position - u154.Character.Head.Position).Magnitude / 3) .. ' Distance'
                        _TextLabel18.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel18.TextYAlignment = 'Top'
                        _TextLabel18.BackgroundTransparency = 1
                        _TextLabel18.TextStrokeTransparency = 0.5

                        if u154.Team == game.Players.LocalPlayer.Team then
                            _TextLabel18.TextColor3 = Color3.new(0, 255, 0)
                        else
                            _TextLabel18.TextColor3 = Color3.new(255, 0, 0)
                        end
                    end
                elseif u154.Character.Head:FindFirstChild('NameEsp' .. Number) then
                    u154.Character.Head:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end
function UpdateChestESP()
    local v157, v158, v159 = pairs(game:GetService('CollectionService'):GetTagged('_ChestTagged'))

    while true do
        local v160

        v159, v160 = v157(v158, v159)

        if v159 == nil then
            break
        end

        local u161 = v160

        pcall(function()
            if _G.ChestESP then
                if not u161:GetAttribute('IsDisabled') then
                    if u161:FindFirstChild('ChestEsp') then
                        local v162 = u161
                        local v163 = u149((game:GetService('Players').LocalPlayer.Character.Head.Position - v162:GetPivot().Position).Magnitude / 3)

                        u161.ChestEsp.TextLabel.Text = 'Chest\n' .. v163 .. ' M'
                    else
                        local _BillboardGui19 = Instance.new('BillboardGui', u161)

                        _BillboardGui19.Name = 'ChestEsp'
                        _BillboardGui19.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui19.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui19.Adornee = u161
                        _BillboardGui19.AlwaysOnTop = true

                        local _TextLabel19 = Instance.new('TextLabel', _BillboardGui19)

                        _TextLabel19.Font = 'Code'
                        _TextLabel19.FontSize = 'Size14'
                        _TextLabel19.TextWrapped = true
                        _TextLabel19.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel19.TextYAlignment = 'Top'
                        _TextLabel19.BackgroundTransparency = 1
                        _TextLabel19.TextStrokeTransparency = 0.5
                        _TextLabel19.TextColor3 = Color3.fromRGB(255, 215, 0)
                    end
                end
            elseif u161:FindFirstChild('ChestEsp') then
                u161:FindFirstChild('ChestEsp'):Destroy()
            end
        end)
    end
end

u149 = function(p166)
    return math.floor(p166 + 0.5)
end

function UpdateDevilChams()
    local v167, v168, v169 = pairs(game.Workspace:GetChildren())

    while true do
        local v170

        v169, v170 = v167(v168, v169)

        if v169 == nil then
            break
        end

        local u171 = v170

        pcall(function()
            if DevilFruitESP then
                if string.find(u171.Name, 'Fruit') then
                    if u171.Handle:FindFirstChild('NameEsp' .. Number) then
                        u171.Handle['NameEsp' .. Number].TextLabel.Text = u171.Name .. '   \n' .. u149((game:GetService('Players').LocalPlayer.Character.Head.Position - u171.Handle.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui20 = Instance.new('BillboardGui', u171.Handle)

                        _BillboardGui20.Name = 'NameEsp' .. Number
                        _BillboardGui20.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui20.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui20.Adornee = u171.Handle
                        _BillboardGui20.AlwaysOnTop = true

                        local _TextLabel20 = Instance.new('TextLabel', _BillboardGui20)

                        _TextLabel20.Font = Enum.Font.GothamSemibold
                        _TextLabel20.FontSize = 'Size14'
                        _TextLabel20.TextWrapped = true
                        _TextLabel20.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel20.TextYAlignment = 'Top'
                        _TextLabel20.BackgroundTransparency = 1
                        _TextLabel20.TextStrokeTransparency = 0.5
                        _TextLabel20.TextColor3 = Color3.fromRGB(255, 255, 255)
                        _TextLabel20.Text = u171.Name .. ' \n' .. u149((game:GetService('Players').LocalPlayer.Character.Head.Position - u171.Handle.Position).Magnitude / 3) .. ' Distance'
                    end
                end
            elseif u171.Handle:FindFirstChild('NameEsp' .. Number) then
                u171.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end)
    end
end
function UpdateFlowerChams()
    local v174, v175, v176 = pairs(game.Workspace:GetChildren())

    while true do
        local v177

        v176, v177 = v174(v175, v176)

        if v176 == nil then
            break
        end

        local u178 = v177

        pcall(function()
            if u178.Name == 'Flower2' or u178.Name == 'Flower1' then
                if FlowerESP then
                    if u178:FindFirstChild('NameEsp' .. Number) then
                        u178['NameEsp' .. Number].TextLabel.Text = u178.Name .. '   \n' .. u149((game:GetService('Players').LocalPlayer.Character.Head.Position - u178.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui21 = Instance.new('BillboardGui', u178)

                        _BillboardGui21.Name = 'NameEsp' .. Number
                        _BillboardGui21.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui21.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui21.Adornee = u178
                        _BillboardGui21.AlwaysOnTop = true

                        local _TextLabel21 = Instance.new('TextLabel', _BillboardGui21)

                        _TextLabel21.Font = Enum.Font.GothamSemibold
                        _TextLabel21.FontSize = 'Size14'
                        _TextLabel21.TextWrapped = true
                        _TextLabel21.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel21.TextYAlignment = 'Top'
                        _TextLabel21.BackgroundTransparency = 1
                        _TextLabel21.TextStrokeTransparency = 0.5
                        _TextLabel21.TextColor3 = Color3.fromRGB(255, 0, 0)

                        if u178.Name == 'Flower1' then
                            _TextLabel21.Text = 'Blue Flower' .. ' \n' .. u149((game:GetService('Players').LocalPlayer.Character.Head.Position - u178.Position).Magnitude / 3) .. ' Distance'
                            _TextLabel21.TextColor3 = Color3.fromRGB(0, 0, 255)
                        end
                        if u178.Name == 'Flower2' then
                            _TextLabel21.Text = 'Red Flower' .. ' \n' .. u149((game:GetService('Players').LocalPlayer.Character.Head.Position - u178.Position).Magnitude / 3) .. ' Distance'
                            _TextLabel21.TextColor3 = Color3.fromRGB(255, 0, 0)
                        end
                    end
                elseif u178:FindFirstChild('NameEsp' .. Number) then
                    u178:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end
function UpdateRealFruitChams()
    local v181, v182, v183 = pairs(game.Workspace.AppleSpawner:GetChildren())

    while true do
        local v184

        v183, v184 = v181(v182, v183)

        if v183 == nil then
            break
        end
        if v184:IsA('Tool') then
            if RealFruitESP then
                if v184.Handle:FindFirstChild('NameEsp' .. Number) then
                    v184.Handle['NameEsp' .. Number].TextLabel.Text = v184.Name .. ' ' .. u149((game:GetService('Players').LocalPlayer.Character.Head.Position - v184.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui22 = Instance.new('BillboardGui', v184.Handle)

                    _BillboardGui22.Name = 'NameEsp' .. Number
                    _BillboardGui22.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui22.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui22.Adornee = v184.Handle
                    _BillboardGui22.AlwaysOnTop = true

                    local _TextLabel22 = Instance.new('TextLabel', _BillboardGui22)

                    _TextLabel22.Font = Enum.Font.GothamSemibold
                    _TextLabel22.FontSize = 'Size14'
                    _TextLabel22.TextWrapped = true
                    _TextLabel22.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel22.TextYAlignment = 'Top'
                    _TextLabel22.BackgroundTransparency = 1
                    _TextLabel22.TextStrokeTransparency = 0.5
                    _TextLabel22.TextColor3 = Color3.fromRGB(255, 0, 0)
                    _TextLabel22.Text = v184.Name .. ' \n' .. u149((game:GetService('Players').LocalPlayer.Character.Head.Position - v184.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v184.Handle:FindFirstChild('NameEsp' .. Number) then
                v184.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end

    local v187, v188, v189 = pairs(game.Workspace.PineappleSpawner:GetChildren())

    while true do
        local v190

        v189, v190 = v187(v188, v189)

        if v189 == nil then
            break
        end
        if v190:IsA('Tool') then
            if RealFruitESP then
                if v190.Handle:FindFirstChild('NameEsp' .. Number) then
                    v190.Handle['NameEsp' .. Number].TextLabel.Text = v190.Name .. ' ' .. u149((game:GetService('Players').LocalPlayer.Character.Head.Position - v190.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui23 = Instance.new('BillboardGui', v190.Handle)

                    _BillboardGui23.Name = 'NameEsp' .. Number
                    _BillboardGui23.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui23.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui23.Adornee = v190.Handle
                    _BillboardGui23.AlwaysOnTop = true

                    local _TextLabel23 = Instance.new('TextLabel', _BillboardGui23)

                    _TextLabel23.Font = Enum.Font.GothamSemibold
                    _TextLabel23.FontSize = 'Size14'
                    _TextLabel23.TextWrapped = true
                    _TextLabel23.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel23.TextYAlignment = 'Top'
                    _TextLabel23.BackgroundTransparency = 1
                    _TextLabel23.TextStrokeTransparency = 0.5
                    _TextLabel23.TextColor3 = Color3.fromRGB(255, 174, 0)
                    _TextLabel23.Text = v190.Name .. ' \n' .. u149((game:GetService('Players').LocalPlayer.Character.Head.Position - v190.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v190.Handle:FindFirstChild('NameEsp' .. Number) then
                v190.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end

    local v193, v194, v195 = pairs(game.Workspace.BananaSpawner:GetChildren())

    while true do
        local v196

        v195, v196 = v193(v194, v195)

        if v195 == nil then
            break
        end
        if v196:IsA('Tool') then
            if RealFruitESP then
                if v196.Handle:FindFirstChild('NameEsp' .. Number) then
                    v196.Handle['NameEsp' .. Number].TextLabel.Text = v196.Name .. ' ' .. u149((game:GetService('Players').LocalPlayer.Character.Head.Position - v196.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui24 = Instance.new('BillboardGui', v196.Handle)

                    _BillboardGui24.Name = 'NameEsp' .. Number
                    _BillboardGui24.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui24.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui24.Adornee = v196.Handle
                    _BillboardGui24.AlwaysOnTop = true

                    local _TextLabel24 = Instance.new('TextLabel', _BillboardGui24)

                    _TextLabel24.Font = Enum.Font.GothamSemibold
                    _TextLabel24.FontSize = 'Size14'
                    _TextLabel24.TextWrapped = true
                    _TextLabel24.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel24.TextYAlignment = 'Top'
                    _TextLabel24.BackgroundTransparency = 1
                    _TextLabel24.TextStrokeTransparency = 0.5
                    _TextLabel24.TextColor3 = Color3.fromRGB(251, 255, 0)
                    _TextLabel24.Text = v196.Name .. ' \n' .. u149((game:GetService('Players').LocalPlayer.Character.Head.Position - v196.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v196.Handle:FindFirstChild('NameEsp' .. Number) then
                v196.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end
end
function UpdateIslandESP()
    local v199, v200, v201 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

    while true do
        local v202

        v201, v202 = v199(v200, v201)

        if v201 == nil then
            break
        end

        local u203 = v202

        pcall(function()
            if IslandESP then
                if u203.Name ~= 'Sea' then
                    if u203:FindFirstChild('NameEsp') then
                        u203.NameEsp.TextLabel.Text = u203.Name .. '   \n' .. u149((game:GetService('Players').LocalPlayer.Character.Head.Position - u203.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui25 = Instance.new('BillboardGui', u203)

                        _BillboardGui25.Name = 'NameEsp'
                        _BillboardGui25.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui25.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui25.Adornee = u203
                        _BillboardGui25.AlwaysOnTop = true

                        local _TextLabel25 = Instance.new('TextLabel', _BillboardGui25)

                        _TextLabel25.Font = 'GothamSemibold'
                        _TextLabel25.FontSize = 'Size14'
                        _TextLabel25.TextWrapped = true
                        _TextLabel25.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel25.TextYAlignment = 'Top'
                        _TextLabel25.BackgroundTransparency = 1
                        _TextLabel25.TextStrokeTransparency = 0.5
                        _TextLabel25.TextColor3 = Color3.fromRGB(255, 255, 255)
                    end
                end
            elseif u203:FindFirstChild('NameEsp') then
                u203:FindFirstChild('NameEsp'):Destroy()
            end
        end)
    end
end
function isnil(p206)
    local _ = p206 == nil

    return true
end

local function u208(p207)
    return math.floor(tonumber(p207) + 0.5)
end

Number = math.random(1, 1000000)

function UpdatePlayerChams()
    local v209, v210, v211 = pairs(game:GetService('Players'):GetChildren())

    while true do
        local v212

        v211, v212 = v209(v210, v211)

        if v211 == nil then
            break
        end

        local u213 = v212

        pcall(function()
            if not isnil(u213.Character) then
                if ESPPlayer then
                    if isnil(u213.Character.Head) or u213.Character.Head:FindFirstChild('NameEsp' .. Number) then
                        u213.Character.Head['NameEsp' .. Number].TextLabel.Text = u213.Name .. ' | ' .. u208((game:GetService('Players').LocalPlayer.Character.Head.Position - u213.Character.Head.Position).Magnitude / 3) .. ' Distance\nHealth : ' .. u208(u213.Character.Humanoid.Health * 100 / u213.Character.Humanoid.MaxHealth) .. '%'
                    else
                        local _BillboardGui26 = Instance.new('BillboardGui', u213.Character.Head)

                        _BillboardGui26.Name = 'NameEsp' .. Number
                        _BillboardGui26.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui26.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui26.Adornee = u213.Character.Head
                        _BillboardGui26.AlwaysOnTop = true

                        local _TextLabel26 = Instance.new('TextLabel', _BillboardGui26)

                        _TextLabel26.Font = Enum.Font.GothamSemibold
                        _TextLabel26.FontSize = 'Size14'
                        _TextLabel26.TextWrapped = true
                        _TextLabel26.Text = u213.Name .. ' \n' .. u208((game:GetService('Players').LocalPlayer.Character.Head.Position - u213.Character.Head.Position).Magnitude / 3) .. ' Distance'
                        _TextLabel26.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel26.TextYAlignment = 'Top'
                        _TextLabel26.BackgroundTransparency = 1
                        _TextLabel26.TextStrokeTransparency = 0.5

                        if u213.Team ~= game.Players.LocalPlayer.Team then
                            _TextLabel26.TextColor3 = Color3.new(255, 0, 0)
                        else
                            _TextLabel26.TextColor3 = Color3.new(0, 255, 0)
                        end
                    end
                elseif u213.Character.Head:FindFirstChild('NameEsp' .. Number) then
                    u213.Character.Head:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end
function UpdateChestESP()
    local v216, v217, v218 = pairs(game:GetService('CollectionService'):GetTagged('_ChestTagged'))

    while true do
        local v219

        v218, v219 = v216(v217, v218)

        if v218 == nil then
            break
        end

        local u220 = v219

        pcall(function()
            if _G.ChestESP then
                if not u220:GetAttribute('IsDisabled') then
                    if u220:FindFirstChild('ChestEsp') then
                        local v221 = u220
                        local v222 = u208((game:GetService('Players').LocalPlayer.Character.Head.Position - v221:GetPivot().Position).Magnitude / 3)

                        u220.ChestEsp.TextLabel.Text = 'Chest\n' .. v222 .. ' M'
                    else
                        local _BillboardGui27 = Instance.new('BillboardGui', u220)

                        _BillboardGui27.Name = 'ChestEsp'
                        _BillboardGui27.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui27.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui27.Adornee = u220
                        _BillboardGui27.AlwaysOnTop = true

                        local _TextLabel27 = Instance.new('TextLabel', _BillboardGui27)

                        _TextLabel27.Font = 'Code'
                        _TextLabel27.FontSize = 'Size14'
                        _TextLabel27.TextWrapped = true
                        _TextLabel27.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel27.TextYAlignment = 'Top'
                        _TextLabel27.BackgroundTransparency = 1
                        _TextLabel27.TextStrokeTransparency = 0.5
                        _TextLabel27.TextColor3 = Color3.fromRGB(255, 215, 0)
                    end
                end
            elseif u220:FindFirstChild('ChestEsp') then
                u220:FindFirstChild('ChestEsp'):Destroy()
            end
        end)
    end
end

u208 = function(p225)
    return math.floor(p225 + 0.5)
end

function UpdateDevilChams()
    local v226, v227, v228 = pairs(game.Workspace:GetChildren())

    while true do
        local v229

        v228, v229 = v226(v227, v228)

        if v228 == nil then
            break
        end

        local u230 = v229

        pcall(function()
            if DevilFruitESP then
                if string.find(u230.Name, 'Fruit') then
                    if u230.Handle:FindFirstChild('NameEsp' .. Number) then
                        u230.Handle['NameEsp' .. Number].TextLabel.Text = u230.Name .. '   \n' .. u208((game:GetService('Players').LocalPlayer.Character.Head.Position - u230.Handle.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui28 = Instance.new('BillboardGui', u230.Handle)

                        _BillboardGui28.Name = 'NameEsp' .. Number
                        _BillboardGui28.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui28.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui28.Adornee = u230.Handle
                        _BillboardGui28.AlwaysOnTop = true

                        local _TextLabel28 = Instance.new('TextLabel', _BillboardGui28)

                        _TextLabel28.Font = Enum.Font.GothamSemibold
                        _TextLabel28.FontSize = 'Size14'
                        _TextLabel28.TextWrapped = true
                        _TextLabel28.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel28.TextYAlignment = 'Top'
                        _TextLabel28.BackgroundTransparency = 1
                        _TextLabel28.TextStrokeTransparency = 0.5
                        _TextLabel28.TextColor3 = Color3.fromRGB(255, 255, 255)
                        _TextLabel28.Text = u230.Name .. ' \n' .. u208((game:GetService('Players').LocalPlayer.Character.Head.Position - u230.Handle.Position).Magnitude / 3) .. ' Distance'
                    end
                end
            elseif u230.Handle:FindFirstChild('NameEsp' .. Number) then
                u230.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end)
    end
end
function UpdateFlowerChams()
    local v233, v234, v235 = pairs(game.Workspace:GetChildren())

    while true do
        local v236

        v235, v236 = v233(v234, v235)

        if v235 == nil then
            break
        end

        local u237 = v236

        pcall(function()
            if u237.Name == 'Flower2' or u237.Name == 'Flower1' then
                if FlowerESP then
                    if u237:FindFirstChild('NameEsp' .. Number) then
                        u237['NameEsp' .. Number].TextLabel.Text = u237.Name .. '   \n' .. u208((game:GetService('Players').LocalPlayer.Character.Head.Position - u237.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui29 = Instance.new('BillboardGui', u237)

                        _BillboardGui29.Name = 'NameEsp' .. Number
                        _BillboardGui29.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui29.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui29.Adornee = u237
                        _BillboardGui29.AlwaysOnTop = true

                        local _TextLabel29 = Instance.new('TextLabel', _BillboardGui29)

                        _TextLabel29.Font = Enum.Font.GothamSemibold
                        _TextLabel29.FontSize = 'Size14'
                        _TextLabel29.TextWrapped = true
                        _TextLabel29.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel29.TextYAlignment = 'Top'
                        _TextLabel29.BackgroundTransparency = 1
                        _TextLabel29.TextStrokeTransparency = 0.5
                        _TextLabel29.TextColor3 = Color3.fromRGB(255, 0, 0)

                        if u237.Name == 'Flower1' then
                            _TextLabel29.Text = 'Blue Flower' .. ' \n' .. u208((game:GetService('Players').LocalPlayer.Character.Head.Position - u237.Position).Magnitude / 3) .. ' Distance'
                            _TextLabel29.TextColor3 = Color3.fromRGB(0, 0, 255)
                        end
                        if u237.Name == 'Flower2' then
                            _TextLabel29.Text = 'Red Flower' .. ' \n' .. u208((game:GetService('Players').LocalPlayer.Character.Head.Position - u237.Position).Magnitude / 3) .. ' Distance'
                            _TextLabel29.TextColor3 = Color3.fromRGB(255, 0, 0)
                        end
                    end
                elseif u237:FindFirstChild('NameEsp' .. Number) then
                    u237:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end
function UpdateRealFruitChams()
    local v240, v241, v242 = pairs(game.Workspace.AppleSpawner:GetChildren())

    while true do
        local v243

        v242, v243 = v240(v241, v242)

        if v242 == nil then
            break
        end
        if v243:IsA('Tool') then
            if RealFruitESP then
                if v243.Handle:FindFirstChild('NameEsp' .. Number) then
                    v243.Handle['NameEsp' .. Number].TextLabel.Text = v243.Name .. ' ' .. u208((game:GetService('Players').LocalPlayer.Character.Head.Position - v243.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui30 = Instance.new('BillboardGui', v243.Handle)

                    _BillboardGui30.Name = 'NameEsp' .. Number
                    _BillboardGui30.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui30.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui30.Adornee = v243.Handle
                    _BillboardGui30.AlwaysOnTop = true

                    local _TextLabel30 = Instance.new('TextLabel', _BillboardGui30)

                    _TextLabel30.Font = Enum.Font.GothamSemibold
                    _TextLabel30.FontSize = 'Size14'
                    _TextLabel30.TextWrapped = true
                    _TextLabel30.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel30.TextYAlignment = 'Top'
                    _TextLabel30.BackgroundTransparency = 1
                    _TextLabel30.TextStrokeTransparency = 0.5
                    _TextLabel30.TextColor3 = Color3.fromRGB(255, 0, 0)
                    _TextLabel30.Text = v243.Name .. ' \n' .. u208((game:GetService('Players').LocalPlayer.Character.Head.Position - v243.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v243.Handle:FindFirstChild('NameEsp' .. Number) then
                v243.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end

    local v246, v247, v248 = pairs(game.Workspace.PineappleSpawner:GetChildren())

    while true do
        local v249

        v248, v249 = v246(v247, v248)

        if v248 == nil then
            break
        end
        if v249:IsA('Tool') then
            if RealFruitESP then
                if v249.Handle:FindFirstChild('NameEsp' .. Number) then
                    v249.Handle['NameEsp' .. Number].TextLabel.Text = v249.Name .. ' ' .. u208((game:GetService('Players').LocalPlayer.Character.Head.Position - v249.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui31 = Instance.new('BillboardGui', v249.Handle)

                    _BillboardGui31.Name = 'NameEsp' .. Number
                    _BillboardGui31.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui31.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui31.Adornee = v249.Handle
                    _BillboardGui31.AlwaysOnTop = true

                    local _TextLabel31 = Instance.new('TextLabel', _BillboardGui31)

                    _TextLabel31.Font = Enum.Font.GothamSemibold
                    _TextLabel31.FontSize = 'Size14'
                    _TextLabel31.TextWrapped = true
                    _TextLabel31.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel31.TextYAlignment = 'Top'
                    _TextLabel31.BackgroundTransparency = 1
                    _TextLabel31.TextStrokeTransparency = 0.5
                    _TextLabel31.TextColor3 = Color3.fromRGB(255, 174, 0)
                    _TextLabel31.Text = v249.Name .. ' \n' .. u208((game:GetService('Players').LocalPlayer.Character.Head.Position - v249.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v249.Handle:FindFirstChild('NameEsp' .. Number) then
                v249.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end

    local v252, v253, v254 = pairs(game.Workspace.BananaSpawner:GetChildren())

    while true do
        local v255

        v254, v255 = v252(v253, v254)

        if v254 == nil then
            break
        end
        if v255:IsA('Tool') then
            if RealFruitESP then
                if v255.Handle:FindFirstChild('NameEsp' .. Number) then
                    v255.Handle['NameEsp' .. Number].TextLabel.Text = v255.Name .. ' ' .. u208((game:GetService('Players').LocalPlayer.Character.Head.Position - v255.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui32 = Instance.new('BillboardGui', v255.Handle)

                    _BillboardGui32.Name = 'NameEsp' .. Number
                    _BillboardGui32.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui32.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui32.Adornee = v255.Handle
                    _BillboardGui32.AlwaysOnTop = true

                    local _TextLabel32 = Instance.new('TextLabel', _BillboardGui32)

                    _TextLabel32.Font = Enum.Font.GothamSemibold
                    _TextLabel32.FontSize = 'Size14'
                    _TextLabel32.TextWrapped = true
                    _TextLabel32.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel32.TextYAlignment = 'Top'
                    _TextLabel32.BackgroundTransparency = 1
                    _TextLabel32.TextStrokeTransparency = 0.5
                    _TextLabel32.TextColor3 = Color3.fromRGB(251, 255, 0)
                    _TextLabel32.Text = v255.Name .. ' \n' .. u208((game:GetService('Players').LocalPlayer.Character.Head.Position - v255.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v255.Handle:FindFirstChild('NameEsp' .. Number) then
                v255.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end
end
function UpdateIslandESP()
    local v258, v259, v260 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

    while true do
        local v261

        v260, v261 = v258(v259, v260)

        if v260 == nil then
            break
        end

        local u262 = v261

        pcall(function()
            if IslandESP then
                if u262.Name ~= 'Sea' then
                    if u262:FindFirstChild('NameEsp') then
                        u262.NameEsp.TextLabel.Text = u262.Name .. '   \n' .. u208((game:GetService('Players').LocalPlayer.Character.Head.Position - u262.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui33 = Instance.new('BillboardGui', u262)

                        _BillboardGui33.Name = 'NameEsp'
                        _BillboardGui33.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui33.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui33.Adornee = u262
                        _BillboardGui33.AlwaysOnTop = true

                        local _TextLabel33 = Instance.new('TextLabel', _BillboardGui33)

                        _TextLabel33.Font = 'GothamSemibold'
                        _TextLabel33.FontSize = 'Size14'
                        _TextLabel33.TextWrapped = true
                        _TextLabel33.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel33.TextYAlignment = 'Top'
                        _TextLabel33.BackgroundTransparency = 1
                        _TextLabel33.TextStrokeTransparency = 0.5
                        _TextLabel33.TextColor3 = Color3.fromRGB(8, 247, 255)
                    end
                end
            elseif u262:FindFirstChild('NameEsp') then
                u262:FindFirstChild('NameEsp'):Destroy()
            end
        end)
    end
end
function isnil(p265)
    local _ = p265 == nil

    return true
end

local function u267(p266)
    return math.floor(tonumber(p266) + 0.5)
end

Number = math.random(1, 1000000)

function UpdatePlayerChams()
    local v268, v269, v270 = pairs(game:GetService('Players'):GetChildren())

    while true do
        local v271

        v270, v271 = v268(v269, v270)

        if v270 == nil then
            break
        end

        local u272 = v271

        pcall(function()
            if not isnil(u272.Character) then
                if ESPPlayer then
                    if isnil(u272.Character.Head) or u272.Character.Head:FindFirstChild('NameEsp' .. Number) then
                        u272.Character.Head['NameEsp' .. Number].TextLabel.Text = u272.Name .. ' | ' .. u267((game:GetService('Players').LocalPlayer.Character.Head.Position - u272.Character.Head.Position).Magnitude / 3) .. ' Distance\nHealth : ' .. u267(u272.Character.Humanoid.Health * 100 / u272.Character.Humanoid.MaxHealth) .. '%'
                    else
                        local _BillboardGui34 = Instance.new('BillboardGui', u272.Character.Head)

                        _BillboardGui34.Name = 'NameEsp' .. Number
                        _BillboardGui34.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui34.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui34.Adornee = u272.Character.Head
                        _BillboardGui34.AlwaysOnTop = true

                        local _TextLabel34 = Instance.new('TextLabel', _BillboardGui34)

                        _TextLabel34.Font = Enum.Font.GothamSemibold
                        _TextLabel34.FontSize = 'Size14'
                        _TextLabel34.TextWrapped = true
                        _TextLabel34.Text = u272.Name .. ' \n' .. u267((game:GetService('Players').LocalPlayer.Character.Head.Position - u272.Character.Head.Position).Magnitude / 3) .. ' Distance'
                        _TextLabel34.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel34.TextYAlignment = 'Top'
                        _TextLabel34.BackgroundTransparency = 1
                        _TextLabel34.TextStrokeTransparency = 0.5

                        if u272.Team == game.Players.LocalPlayer.Team then
                            _TextLabel34.TextColor3 = Color3.new(0, 255, 0)
                        else
                            _TextLabel34.TextColor3 = Color3.new(255, 0, 0)
                        end
                    end
                elseif u272.Character.Head:FindFirstChild('NameEsp' .. Number) then
                    u272.Character.Head:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end
function UpdateChestESP()
    local v275, v276, v277 = pairs(game:GetService('CollectionService'):GetTagged('_ChestTagged'))

    while true do
        local v278

        v277, v278 = v275(v276, v277)

        if v277 == nil then
            break
        end

        local u279 = v278

        pcall(function()
            if _G.ChestESP then
                if not u279:GetAttribute('IsDisabled') then
                    if u279:FindFirstChild('ChestEsp') then
                        local v280 = u279
                        local v281 = u267((game:GetService('Players').LocalPlayer.Character.Head.Position - v280:GetPivot().Position).Magnitude / 3)

                        u279.ChestEsp.TextLabel.Text = 'Chest\n' .. v281 .. ' M'
                    else
                        local _BillboardGui35 = Instance.new('BillboardGui', u279)

                        _BillboardGui35.Name = 'ChestEsp'
                        _BillboardGui35.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui35.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui35.Adornee = u279
                        _BillboardGui35.AlwaysOnTop = true

                        local _TextLabel35 = Instance.new('TextLabel', _BillboardGui35)

                        _TextLabel35.Font = 'Code'
                        _TextLabel35.FontSize = 'Size14'
                        _TextLabel35.TextWrapped = true
                        _TextLabel35.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel35.TextYAlignment = 'Top'
                        _TextLabel35.BackgroundTransparency = 1
                        _TextLabel35.TextStrokeTransparency = 0.5
                        _TextLabel35.TextColor3 = Color3.fromRGB(255, 215, 0)
                    end
                end
            elseif u279:FindFirstChild('ChestEsp') then
                u279:FindFirstChild('ChestEsp'):Destroy()
            end
        end)
    end
end

u267 = function(p284)
    return math.floor(p284 + 0.5)
end

function UpdateDevilChams()
    local v285, v286, v287 = pairs(game.Workspace:GetChildren())

    while true do
        local v288

        v287, v288 = v285(v286, v287)

        if v287 == nil then
            break
        end

        local u289 = v288

        pcall(function()
            if DevilFruitESP then
                if string.find(u289.Name, 'Fruit') then
                    if u289.Handle:FindFirstChild('NameEsp' .. Number) then
                        u289.Handle['NameEsp' .. Number].TextLabel.Text = u289.Name .. '   \n' .. u267((game:GetService('Players').LocalPlayer.Character.Head.Position - u289.Handle.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui36 = Instance.new('BillboardGui', u289.Handle)

                        _BillboardGui36.Name = 'NameEsp' .. Number
                        _BillboardGui36.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui36.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui36.Adornee = u289.Handle
                        _BillboardGui36.AlwaysOnTop = true

                        local _TextLabel36 = Instance.new('TextLabel', _BillboardGui36)

                        _TextLabel36.Font = Enum.Font.GothamSemibold
                        _TextLabel36.FontSize = 'Size14'
                        _TextLabel36.TextWrapped = true
                        _TextLabel36.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel36.TextYAlignment = 'Top'
                        _TextLabel36.BackgroundTransparency = 1
                        _TextLabel36.TextStrokeTransparency = 0.5
                        _TextLabel36.TextColor3 = Color3.fromRGB(255, 255, 255)
                        _TextLabel36.Text = u289.Name .. ' \n' .. u267((game:GetService('Players').LocalPlayer.Character.Head.Position - u289.Handle.Position).Magnitude / 3) .. ' Distance'
                    end
                end
            elseif u289.Handle:FindFirstChild('NameEsp' .. Number) then
                u289.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end)
    end
end
function UpdateFlowerChams()
    local v292, v293, v294 = pairs(game.Workspace:GetChildren())

    while true do
        local v295

        v294, v295 = v292(v293, v294)

        if v294 == nil then
            break
        end

        local u296 = v295

        pcall(function()
            if u296.Name == 'Flower2' or u296.Name == 'Flower1' then
                if FlowerESP then
                    if u296:FindFirstChild('NameEsp' .. Number) then
                        u296['NameEsp' .. Number].TextLabel.Text = u296.Name .. '   \n' .. u267((game:GetService('Players').LocalPlayer.Character.Head.Position - u296.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui37 = Instance.new('BillboardGui', u296)

                        _BillboardGui37.Name = 'NameEsp' .. Number
                        _BillboardGui37.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui37.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui37.Adornee = u296
                        _BillboardGui37.AlwaysOnTop = true

                        local _TextLabel37 = Instance.new('TextLabel', _BillboardGui37)

                        _TextLabel37.Font = Enum.Font.GothamSemibold
                        _TextLabel37.FontSize = 'Size14'
                        _TextLabel37.TextWrapped = true
                        _TextLabel37.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel37.TextYAlignment = 'Top'
                        _TextLabel37.BackgroundTransparency = 1
                        _TextLabel37.TextStrokeTransparency = 0.5
                        _TextLabel37.TextColor3 = Color3.fromRGB(255, 0, 0)

                        if u296.Name == 'Flower1' then
                            _TextLabel37.Text = 'Blue Flower' .. ' \n' .. u267((game:GetService('Players').LocalPlayer.Character.Head.Position - u296.Position).Magnitude / 3) .. ' Distance'
                            _TextLabel37.TextColor3 = Color3.fromRGB(0, 0, 255)
                        end
                        if u296.Name == 'Flower2' then
                            _TextLabel37.Text = 'Red Flower' .. ' \n' .. u267((game:GetService('Players').LocalPlayer.Character.Head.Position - u296.Position).Magnitude / 3) .. ' Distance'
                            _TextLabel37.TextColor3 = Color3.fromRGB(255, 0, 0)
                        end
                    end
                elseif u296:FindFirstChild('NameEsp' .. Number) then
                    u296:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end
function UpdateRealFruitChams()
    local v299, v300, v301 = pairs(game.Workspace.AppleSpawner:GetChildren())

    while true do
        local v302

        v301, v302 = v299(v300, v301)

        if v301 == nil then
            break
        end
        if v302:IsA('Tool') then
            if RealFruitESP then
                if v302.Handle:FindFirstChild('NameEsp' .. Number) then
                    v302.Handle['NameEsp' .. Number].TextLabel.Text = v302.Name .. ' ' .. u267((game:GetService('Players').LocalPlayer.Character.Head.Position - v302.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui38 = Instance.new('BillboardGui', v302.Handle)

                    _BillboardGui38.Name = 'NameEsp' .. Number
                    _BillboardGui38.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui38.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui38.Adornee = v302.Handle
                    _BillboardGui38.AlwaysOnTop = true

                    local _TextLabel38 = Instance.new('TextLabel', _BillboardGui38)

                    _TextLabel38.Font = Enum.Font.GothamSemibold
                    _TextLabel38.FontSize = 'Size14'
                    _TextLabel38.TextWrapped = true
                    _TextLabel38.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel38.TextYAlignment = 'Top'
                    _TextLabel38.BackgroundTransparency = 1
                    _TextLabel38.TextStrokeTransparency = 0.5
                    _TextLabel38.TextColor3 = Color3.fromRGB(255, 0, 0)
                    _TextLabel38.Text = v302.Name .. ' \n' .. u267((game:GetService('Players').LocalPlayer.Character.Head.Position - v302.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v302.Handle:FindFirstChild('NameEsp' .. Number) then
                v302.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end

    local v305, v306, v307 = pairs(game.Workspace.PineappleSpawner:GetChildren())

    while true do
        local v308

        v307, v308 = v305(v306, v307)

        if v307 == nil then
            break
        end
        if v308:IsA('Tool') then
            if RealFruitESP then
                if v308.Handle:FindFirstChild('NameEsp' .. Number) then
                    v308.Handle['NameEsp' .. Number].TextLabel.Text = v308.Name .. ' ' .. u267((game:GetService('Players').LocalPlayer.Character.Head.Position - v308.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui39 = Instance.new('BillboardGui', v308.Handle)

                    _BillboardGui39.Name = 'NameEsp' .. Number
                    _BillboardGui39.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui39.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui39.Adornee = v308.Handle
                    _BillboardGui39.AlwaysOnTop = true

                    local _TextLabel39 = Instance.new('TextLabel', _BillboardGui39)

                    _TextLabel39.Font = Enum.Font.GothamSemibold
                    _TextLabel39.FontSize = 'Size14'
                    _TextLabel39.TextWrapped = true
                    _TextLabel39.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel39.TextYAlignment = 'Top'
                    _TextLabel39.BackgroundTransparency = 1
                    _TextLabel39.TextStrokeTransparency = 0.5
                    _TextLabel39.TextColor3 = Color3.fromRGB(255, 174, 0)
                    _TextLabel39.Text = v308.Name .. ' \n' .. u267((game:GetService('Players').LocalPlayer.Character.Head.Position - v308.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v308.Handle:FindFirstChild('NameEsp' .. Number) then
                v308.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end

    local v311, v312, v313 = pairs(game.Workspace.BananaSpawner:GetChildren())

    while true do
        local v314

        v313, v314 = v311(v312, v313)

        if v313 == nil then
            break
        end
        if v314:IsA('Tool') then
            if RealFruitESP then
                if v314.Handle:FindFirstChild('NameEsp' .. Number) then
                    v314.Handle['NameEsp' .. Number].TextLabel.Text = v314.Name .. ' ' .. u267((game:GetService('Players').LocalPlayer.Character.Head.Position - v314.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui40 = Instance.new('BillboardGui', v314.Handle)

                    _BillboardGui40.Name = 'NameEsp' .. Number
                    _BillboardGui40.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui40.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui40.Adornee = v314.Handle
                    _BillboardGui40.AlwaysOnTop = true

                    local _TextLabel40 = Instance.new('TextLabel', _BillboardGui40)

                    _TextLabel40.Font = Enum.Font.GothamSemibold
                    _TextLabel40.FontSize = 'Size14'
                    _TextLabel40.TextWrapped = true
                    _TextLabel40.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel40.TextYAlignment = 'Top'
                    _TextLabel40.BackgroundTransparency = 1
                    _TextLabel40.TextStrokeTransparency = 0.5
                    _TextLabel40.TextColor3 = Color3.fromRGB(251, 255, 0)
                    _TextLabel40.Text = v314.Name .. ' \n' .. u267((game:GetService('Players').LocalPlayer.Character.Head.Position - v314.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v314.Handle:FindFirstChild('NameEsp' .. Number) then
                v314.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end
end
function UpdateIslandESP()
    local v317, v318, v319 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

    while true do
        local v320

        v319, v320 = v317(v318, v319)

        if v319 == nil then
            break
        end

        local u321 = v320

        pcall(function()
            if IslandESP then
                if u321.Name ~= 'Sea' then
                    if u321:FindFirstChild('NameEsp') then
                        u321.NameEsp.TextLabel.Text = u321.Name .. '   \n' .. u267((game:GetService('Players').LocalPlayer.Character.Head.Position - u321.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui41 = Instance.new('BillboardGui', u321)

                        _BillboardGui41.Name = 'NameEsp'
                        _BillboardGui41.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui41.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui41.Adornee = u321
                        _BillboardGui41.AlwaysOnTop = true

                        local _TextLabel41 = Instance.new('TextLabel', _BillboardGui41)

                        _TextLabel41.Font = 'GothamSemibold'
                        _TextLabel41.FontSize = 'Size14'
                        _TextLabel41.TextWrapped = true
                        _TextLabel41.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel41.TextYAlignment = 'Top'
                        _TextLabel41.BackgroundTransparency = 1
                        _TextLabel41.TextStrokeTransparency = 0.5
                        _TextLabel41.TextColor3 = Color3.fromRGB(8, 247, 255)
                    end
                end
            elseif u321:FindFirstChild('NameEsp') then
                u321:FindFirstChild('NameEsp'):Destroy()
            end
        end)
    end
end
function isnil(p324)
    local _ = p324 == nil

    return true
end

local function u326(p325)
    return math.floor(tonumber(p325) + 0.5)
end

Number = math.random(1, 1000000)

function UpdatePlayerChams()
    local v327, v328, v329 = pairs(game:GetService('Players'):GetChildren())

    while true do
        local v330

        v329, v330 = v327(v328, v329)

        if v329 == nil then
            break
        end

        local u331 = v330

        pcall(function()
            if not isnil(u331.Character) then
                if ESPPlayer then
                    if isnil(u331.Character.Head) or u331.Character.Head:FindFirstChild('NameEsp' .. Number) then
                        u331.Character.Head['NameEsp' .. Number].TextLabel.Text = u331.Name .. ' | ' .. u326((game:GetService('Players').LocalPlayer.Character.Head.Position - u331.Character.Head.Position).Magnitude / 3) .. ' Distance\nHealth : ' .. u326(u331.Character.Humanoid.Health * 100 / u331.Character.Humanoid.MaxHealth) .. '%'
                    else
                        local _BillboardGui42 = Instance.new('BillboardGui', u331.Character.Head)

                        _BillboardGui42.Name = 'NameEsp' .. Number
                        _BillboardGui42.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui42.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui42.Adornee = u331.Character.Head
                        _BillboardGui42.AlwaysOnTop = true

                        local _TextLabel42 = Instance.new('TextLabel', _BillboardGui42)

                        _TextLabel42.Font = Enum.Font.GothamSemibold
                        _TextLabel42.FontSize = 'Size14'
                        _TextLabel42.TextWrapped = true
                        _TextLabel42.Text = u331.Name .. ' \n' .. u326((game:GetService('Players').LocalPlayer.Character.Head.Position - u331.Character.Head.Position).Magnitude / 3) .. ' Distance'
                        _TextLabel42.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel42.TextYAlignment = 'Top'
                        _TextLabel42.BackgroundTransparency = 1
                        _TextLabel42.TextStrokeTransparency = 0.5

                        if u331.Team == game.Players.LocalPlayer.Team then
                            _TextLabel42.TextColor3 = Color3.new(0, 255, 0)
                        else
                            _TextLabel42.TextColor3 = Color3.new(255, 0, 0)
                        end
                    end
                elseif u331.Character.Head:FindFirstChild('NameEsp' .. Number) then
                    u331.Character.Head:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end
function UpdateChestESP()
    local v334, v335, v336 = pairs(game:GetService('CollectionService'):GetTagged('_ChestTagged'))

    while true do
        local v337

        v336, v337 = v334(v335, v336)

        if v336 == nil then
            break
        end

        local u338 = v337

        pcall(function()
            if _G.ChestESP then
                if not u338:GetAttribute('IsDisabled') then
                    if u338:FindFirstChild('ChestEsp') then
                        local v339 = u338
                        local v340 = u326((game:GetService('Players').LocalPlayer.Character.Head.Position - v339:GetPivot().Position).Magnitude / 3)

                        u338.ChestEsp.TextLabel.Text = 'Chest\n' .. v340 .. ' M'
                    else
                        local _BillboardGui43 = Instance.new('BillboardGui', u338)

                        _BillboardGui43.Name = 'ChestEsp'
                        _BillboardGui43.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui43.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui43.Adornee = u338
                        _BillboardGui43.AlwaysOnTop = true

                        local _TextLabel43 = Instance.new('TextLabel', _BillboardGui43)

                        _TextLabel43.Font = 'Code'
                        _TextLabel43.FontSize = 'Size14'
                        _TextLabel43.TextWrapped = true
                        _TextLabel43.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel43.TextYAlignment = 'Top'
                        _TextLabel43.BackgroundTransparency = 1
                        _TextLabel43.TextStrokeTransparency = 0.5
                        _TextLabel43.TextColor3 = Color3.fromRGB(255, 215, 0)
                    end
                end
            elseif u338:FindFirstChild('ChestEsp') then
                u338:FindFirstChild('ChestEsp'):Destroy()
            end
        end)
    end
end

u326 = function(p343)
    return math.floor(p343 + 0.5)
end

function UpdateDevilChams()
    local v344, v345, v346 = pairs(game.Workspace:GetChildren())

    while true do
        local v347

        v346, v347 = v344(v345, v346)

        if v346 == nil then
            break
        end

        local u348 = v347

        pcall(function()
            if DevilFruitESP then
                if string.find(u348.Name, 'Fruit') then
                    if u348.Handle:FindFirstChild('NameEsp' .. Number) then
                        u348.Handle['NameEsp' .. Number].TextLabel.Text = u348.Name .. '   \n' .. u326((game:GetService('Players').LocalPlayer.Character.Head.Position - u348.Handle.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui44 = Instance.new('BillboardGui', u348.Handle)

                        _BillboardGui44.Name = 'NameEsp' .. Number
                        _BillboardGui44.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui44.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui44.Adornee = u348.Handle
                        _BillboardGui44.AlwaysOnTop = true

                        local _TextLabel44 = Instance.new('TextLabel', _BillboardGui44)

                        _TextLabel44.Font = Enum.Font.GothamSemibold
                        _TextLabel44.FontSize = 'Size14'
                        _TextLabel44.TextWrapped = true
                        _TextLabel44.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel44.TextYAlignment = 'Top'
                        _TextLabel44.BackgroundTransparency = 1
                        _TextLabel44.TextStrokeTransparency = 0.5
                        _TextLabel44.TextColor3 = Color3.fromRGB(255, 255, 255)
                        _TextLabel44.Text = u348.Name .. ' \n' .. u326((game:GetService('Players').LocalPlayer.Character.Head.Position - u348.Handle.Position).Magnitude / 3) .. ' Distance'
                    end
                end
            elseif u348.Handle:FindFirstChild('NameEsp' .. Number) then
                u348.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end)
    end
end
function UpdateFlowerChams()
    local v351, v352, v353 = pairs(game.Workspace:GetChildren())

    while true do
        local v354

        v353, v354 = v351(v352, v353)

        if v353 == nil then
            break
        end

        local u355 = v354

        pcall(function()
            if u355.Name == 'Flower2' or u355.Name == 'Flower1' then
                if FlowerESP then
                    if u355:FindFirstChild('NameEsp' .. Number) then
                        u355['NameEsp' .. Number].TextLabel.Text = u355.Name .. '   \n' .. u326((game:GetService('Players').LocalPlayer.Character.Head.Position - u355.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui45 = Instance.new('BillboardGui', u355)

                        _BillboardGui45.Name = 'NameEsp' .. Number
                        _BillboardGui45.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui45.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui45.Adornee = u355
                        _BillboardGui45.AlwaysOnTop = true

                        local _TextLabel45 = Instance.new('TextLabel', _BillboardGui45)

                        _TextLabel45.Font = Enum.Font.GothamSemibold
                        _TextLabel45.FontSize = 'Size14'
                        _TextLabel45.TextWrapped = true
                        _TextLabel45.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel45.TextYAlignment = 'Top'
                        _TextLabel45.BackgroundTransparency = 1
                        _TextLabel45.TextStrokeTransparency = 0.5
                        _TextLabel45.TextColor3 = Color3.fromRGB(255, 0, 0)

                        if u355.Name == 'Flower1' then
                            _TextLabel45.Text = 'Blue Flower' .. ' \n' .. u326((game:GetService('Players').LocalPlayer.Character.Head.Position - u355.Position).Magnitude / 3) .. ' Distance'
                            _TextLabel45.TextColor3 = Color3.fromRGB(0, 0, 255)
                        end
                        if u355.Name == 'Flower2' then
                            _TextLabel45.Text = 'Red Flower' .. ' \n' .. u326((game:GetService('Players').LocalPlayer.Character.Head.Position - u355.Position).Magnitude / 3) .. ' Distance'
                            _TextLabel45.TextColor3 = Color3.fromRGB(255, 0, 0)
                        end
                    end
                elseif u355:FindFirstChild('NameEsp' .. Number) then
                    u355:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end
function UpdateRealFruitChams()
    local v358, v359, v360 = pairs(game.Workspace.AppleSpawner:GetChildren())

    while true do
        local v361

        v360, v361 = v358(v359, v360)

        if v360 == nil then
            break
        end
        if v361:IsA('Tool') then
            if RealFruitESP then
                if v361.Handle:FindFirstChild('NameEsp' .. Number) then
                    v361.Handle['NameEsp' .. Number].TextLabel.Text = v361.Name .. ' ' .. u326((game:GetService('Players').LocalPlayer.Character.Head.Position - v361.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui46 = Instance.new('BillboardGui', v361.Handle)

                    _BillboardGui46.Name = 'NameEsp' .. Number
                    _BillboardGui46.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui46.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui46.Adornee = v361.Handle
                    _BillboardGui46.AlwaysOnTop = true

                    local _TextLabel46 = Instance.new('TextLabel', _BillboardGui46)

                    _TextLabel46.Font = Enum.Font.GothamSemibold
                    _TextLabel46.FontSize = 'Size14'
                    _TextLabel46.TextWrapped = true
                    _TextLabel46.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel46.TextYAlignment = 'Top'
                    _TextLabel46.BackgroundTransparency = 1
                    _TextLabel46.TextStrokeTransparency = 0.5
                    _TextLabel46.TextColor3 = Color3.fromRGB(255, 0, 0)
                    _TextLabel46.Text = v361.Name .. ' \n' .. u326((game:GetService('Players').LocalPlayer.Character.Head.Position - v361.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v361.Handle:FindFirstChild('NameEsp' .. Number) then
                v361.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end

    local v364, v365, v366 = pairs(game.Workspace.PineappleSpawner:GetChildren())

    while true do
        local v367

        v366, v367 = v364(v365, v366)

        if v366 == nil then
            break
        end
        if v367:IsA('Tool') then
            if RealFruitESP then
                if v367.Handle:FindFirstChild('NameEsp' .. Number) then
                    v367.Handle['NameEsp' .. Number].TextLabel.Text = v367.Name .. ' ' .. u326((game:GetService('Players').LocalPlayer.Character.Head.Position - v367.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui47 = Instance.new('BillboardGui', v367.Handle)

                    _BillboardGui47.Name = 'NameEsp' .. Number
                    _BillboardGui47.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui47.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui47.Adornee = v367.Handle
                    _BillboardGui47.AlwaysOnTop = true

                    local _TextLabel47 = Instance.new('TextLabel', _BillboardGui47)

                    _TextLabel47.Font = Enum.Font.GothamSemibold
                    _TextLabel47.FontSize = 'Size14'
                    _TextLabel47.TextWrapped = true
                    _TextLabel47.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel47.TextYAlignment = 'Top'
                    _TextLabel47.BackgroundTransparency = 1
                    _TextLabel47.TextStrokeTransparency = 0.5
                    _TextLabel47.TextColor3 = Color3.fromRGB(255, 174, 0)
                    _TextLabel47.Text = v367.Name .. ' \n' .. u326((game:GetService('Players').LocalPlayer.Character.Head.Position - v367.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v367.Handle:FindFirstChild('NameEsp' .. Number) then
                v367.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end

    local v370, v371, v372 = pairs(game.Workspace.BananaSpawner:GetChildren())

    while true do
        local v373

        v372, v373 = v370(v371, v372)

        if v372 == nil then
            break
        end
        if v373:IsA('Tool') then
            if RealFruitESP then
                if v373.Handle:FindFirstChild('NameEsp' .. Number) then
                    v373.Handle['NameEsp' .. Number].TextLabel.Text = v373.Name .. ' ' .. u326((game:GetService('Players').LocalPlayer.Character.Head.Position - v373.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui48 = Instance.new('BillboardGui', v373.Handle)

                    _BillboardGui48.Name = 'NameEsp' .. Number
                    _BillboardGui48.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui48.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui48.Adornee = v373.Handle
                    _BillboardGui48.AlwaysOnTop = true

                    local _TextLabel48 = Instance.new('TextLabel', _BillboardGui48)

                    _TextLabel48.Font = Enum.Font.GothamSemibold
                    _TextLabel48.FontSize = 'Size14'
                    _TextLabel48.TextWrapped = true
                    _TextLabel48.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel48.TextYAlignment = 'Top'
                    _TextLabel48.BackgroundTransparency = 1
                    _TextLabel48.TextStrokeTransparency = 0.5
                    _TextLabel48.TextColor3 = Color3.fromRGB(251, 255, 0)
                    _TextLabel48.Text = v373.Name .. ' \n' .. u326((game:GetService('Players').LocalPlayer.Character.Head.Position - v373.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v373.Handle:FindFirstChild('NameEsp' .. Number) then
                v373.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end
end

spawn(function()
    while wait() do
        pcall(function()
            if MobESP then
                local v376, v377, v378 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                while true do
                    local v379

                    v378, v379 = v376(v377, v378)

                    if v378 == nil then
                        break
                    end
                    if v379:FindFirstChild('HumanoidRootPart') then
                        if not v379:FindFirstChild('MobEap') then
                            local _BillboardGui49 = Instance.new('BillboardGui')
                            local _TextLabel49 = Instance.new('TextLabel')

                            _BillboardGui49.Parent = v379
                            _BillboardGui49.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            _BillboardGui49.Active = true
                            _BillboardGui49.Name = 'MobEap'
                            _BillboardGui49.AlwaysOnTop = true
                            _BillboardGui49.LightInfluence = 1
                            _BillboardGui49.Size = UDim2.new(0, 200, 0, 50)
                            _BillboardGui49.StudsOffset = Vector3.new(0, 2.5, 0)
                            _TextLabel49.Parent = _BillboardGui49
                            _TextLabel49.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            _TextLabel49.BackgroundTransparency = 1
                            _TextLabel49.Size = UDim2.new(0, 200, 0, 50)
                            _TextLabel49.Font = Enum.Font.GothamBold
                            _TextLabel49.TextColor3 = Color3.fromRGB(7, 236, 240)
                            _TextLabel49.Text.Size = 35
                        end

                        local v382 = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v379.HumanoidRootPart.Position).Magnitude)

                        v379.MobEap.TextLabel.Text = v379.Name .. ' - ' .. v382 .. ' Distance'
                    end
                end
            else
                local v383, v384, v385 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                while true do
                    local v386

                    v385, v386 = v383(v384, v385)

                    if v385 == nil then
                        break
                    end
                    if v386:FindFirstChild('MobEap') then
                        v386.MobEap:Destroy()
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if SeaESP then
                local v387, v388, v389 = pairs(game:GetService('Workspace').SeaBeasts:GetChildren())

                while true do
                    local v390

                    v389, v390 = v387(v388, v389)

                    if v389 == nil then
                        break
                    end
                    if v390:FindFirstChild('HumanoidRootPart') then
                        if not v390:FindFirstChild('Seaesps') then
                            local _BillboardGui50 = Instance.new('BillboardGui')
                            local _TextLabel50 = Instance.new('TextLabel')

                            _BillboardGui50.Parent = v390
                            _BillboardGui50.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            _BillboardGui50.Active = true
                            _BillboardGui50.Name = 'Seaesps'
                            _BillboardGui50.AlwaysOnTop = true
                            _BillboardGui50.LightInfluence = 1
                            _BillboardGui50.Size = UDim2.new(0, 200, 0, 50)
                            _BillboardGui50.StudsOffset = Vector3.new(0, 2.5, 0)
                            _TextLabel50.Parent = _BillboardGui50
                            _TextLabel50.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            _TextLabel50.BackgroundTransparency = 1
                            _TextLabel50.Size = UDim2.new(0, 200, 0, 50)
                            _TextLabel50.Font = Enum.Font.GothamBold
                            _TextLabel50.TextColor3 = Color3.fromRGB(7, 236, 240)
                            _TextLabel50.Text.Size = 35
                        end

                        local v393 = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v390.HumanoidRootPart.Position).Magnitude)

                        v390.Seaesps.TextLabel.Text = v390.Name .. ' - ' .. v393 .. ' Distance'
                    end
                end
            else
                local v394, v395, v396 = pairs(game:GetService('Workspace').SeaBeasts:GetChildren())

                while true do
                    local v397

                    v396, v397 = v394(v395, v396)

                    if v396 == nil then
                        break
                    end
                    if v397:FindFirstChild('Seaesps') then
                        v397.Seaesps:Destroy()
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if NpcESP then
                local v398, v399, v400 = pairs(game:GetService('Workspace').NPCs:GetChildren())

                while true do
                    local v401

                    v400, v401 = v398(v399, v400)

                    if v400 == nil then
                        break
                    end
                    if v401:FindFirstChild('HumanoidRootPart') then
                        if not v401:FindFirstChild('NpcEspes') then
                            local _BillboardGui51 = Instance.new('BillboardGui')
                            local _TextLabel51 = Instance.new('TextLabel')

                            _BillboardGui51.Parent = v401
                            _BillboardGui51.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            _BillboardGui51.Active = true
                            _BillboardGui51.Name = 'NpcEspes'
                            _BillboardGui51.AlwaysOnTop = true
                            _BillboardGui51.LightInfluence = 1
                            _BillboardGui51.Size = UDim2.new(0, 200, 0, 50)
                            _BillboardGui51.StudsOffset = Vector3.new(0, 2.5, 0)
                            _TextLabel51.Parent = _BillboardGui51
                            _TextLabel51.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            _TextLabel51.BackgroundTransparency = 1
                            _TextLabel51.Size = UDim2.new(0, 200, 0, 50)
                            _TextLabel51.Font = Enum.Font.GothamBold
                            _TextLabel51.TextColor3 = Color3.fromRGB(7, 236, 240)
                            _TextLabel51.Text.Size = 35
                        end

                        local v404 = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v401.HumanoidRootPart.Position).Magnitude)

                        v401.NpcEspes.TextLabel.Text = v401.Name .. ' - ' .. v404 .. ' Distance'
                    end
                end
            else
                local v405, v406, v407 = pairs(game:GetService('Workspace').NPCs:GetChildren())

                while true do
                    local v408

                    v407, v408 = v405(v406, v407)

                    if v407 == nil then
                        break
                    end
                    if v408:FindFirstChild('NpcEspes') then
                        v408.NpcEspes:Destroy()
                    end
                end
            end
        end)
    end
end)

function isnil(p409)
    local _ = p409 == nil

    return true
end

local function u411(p410)
    return math.floor(tonumber(p410) + 0.5)
end

Number = math.random(1, 1000000)

function UpdateIslandMirageESP()
    local v412, v413, v414 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

    while true do
        local v415

        v414, v415 = v412(v413, v414)

        if v414 == nil then
            break
        end

        local u416 = v415

        pcall(function()
            if MirageIslandESP then
                if u416.Name == 'Mirage Island' then
                    if u416:FindFirstChild('NameEsp') then
                        u416.NameEsp.TextLabel.Text = u416.Name .. '   \n' .. u411((game:GetService('Players').LocalPlayer.Character.Head.Position - u416.Position).Magnitude / 3) .. ' M'
                    else
                        local _BillboardGui52 = Instance.new('BillboardGui', u416)

                        _BillboardGui52.Name = 'NameEsp'
                        _BillboardGui52.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui52.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui52.Adornee = u416
                        _BillboardGui52.AlwaysOnTop = true

                        local _TextLabel52 = Instance.new('TextLabel', _BillboardGui52)

                        _TextLabel52.Font = 'Code'
                        _TextLabel52.FontSize = 'Size14'
                        _TextLabel52.TextWrapped = true
                        _TextLabel52.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel52.TextYAlignment = 'Top'
                        _TextLabel52.BackgroundTransparency = 1
                        _TextLabel52.TextStrokeTransparency = 0.5
                        _TextLabel52.TextColor3 = Color3.fromRGB(80, 245, 245)
                    end
                end
            elseif u416:FindFirstChild('NameEsp') then
                u416:FindFirstChild('NameEsp'):Destroy()
            end
        end)
    end
end
function UpdatePrehistoricIslandESP()
    local v419, v420, v421 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

    while true do
        local v422

        v421, v422 = v419(v420, v421)

        if v421 == nil then
            break
        end

        local u423 = v422

        pcall(function()
            if PrehistoricIslandESP then
                if u423.Name == 'PrehistoricIsland' then
                    if u423:FindFirstChild('NameEsp') then
                        u423.NameEsp.TextLabel.Text = u423.Name .. '   \n' .. u411((game:GetService('Players').LocalPlayer.Character.Head.Position - u423.Position).Magnitude / 3) .. ' M'
                    else
                        local _BillboardGui53 = Instance.new('BillboardGui', u423)

                        _BillboardGui53.Name = 'NameEsp'
                        _BillboardGui53.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui53.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui53.Adornee = u423
                        _BillboardGui53.AlwaysOnTop = true

                        local _TextLabel53 = Instance.new('TextLabel', _BillboardGui53)

                        _TextLabel53.Font = 'Code'
                        _TextLabel53.FontSize = 'Size14'
                        _TextLabel53.TextWrapped = true
                        _TextLabel53.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel53.TextYAlignment = 'Top'
                        _TextLabel53.BackgroundTransparency = 1
                        _TextLabel53.TextStrokeTransparency = 0.5
                        _TextLabel53.TextColor3 = Color3.fromRGB(80, 245, 245)
                    end
                end
            elseif u423:FindFirstChild('NameEsp') then
                u423:FindFirstChild('NameEsp'):Destroy()
            end
        end)
    end
end
function UpdateAfdESP()
    local v426, v427, v428 = pairs(game:GetService('Workspace').NPCs:GetChildren())

    while true do
        local v429

        v428, v429 = v426(v427, v428)

        if v428 == nil then
            break
        end

        local u430 = v429

        pcall(function()
            if AfdESP then
                if u430.Name == 'Advanced Fruit Dealer' then
                    if u430:FindFirstChild('NameEsp') then
                        u430.NameEsp.TextLabel.Text = u430.Name .. '   \n' .. u411((game:GetService('Players').LocalPlayer.Character.Head.Position - u430.Position).Magnitude / 3) .. ' M'
                    else
                        local _BillboardGui54 = Instance.new('BillboardGui', u430)

                        _BillboardGui54.Name = 'NameEsp'
                        _BillboardGui54.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui54.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui54.Adornee = u430
                        _BillboardGui54.AlwaysOnTop = true

                        local _TextLabel54 = Instance.new('TextLabel', _BillboardGui54)

                        _TextLabel54.Font = 'Code'
                        _TextLabel54.FontSize = 'Size14'
                        _TextLabel54.TextWrapped = true
                        _TextLabel54.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel54.TextYAlignment = 'Top'
                        _TextLabel54.BackgroundTransparency = 1
                        _TextLabel54.TextStrokeTransparency = 0.5
                        _TextLabel54.TextColor3 = Color3.fromRGB(80, 245, 245)
                    end
                end
            elseif u430:FindFirstChild('NameEsp') then
                u430:FindFirstChild('NameEsp'):Destroy()
            end
        end)
    end
end
function UpdateAuraESP()
    local v433, v434, v435 = pairs(game:GetService('Workspace').NPCs:GetChildren())

    while true do
        local v436

        v435, v436 = v433(v434, v435)

        if v435 == nil then
            break
        end

        local u437 = v436

        pcall(function()
            if AuraESP then
                if u437.Name == 'Master of Enhancement' then
                    if u437:FindFirstChild('NameEsp') then
                        u437.NameEsp.TextLabel.Text = u437.Name .. '   \n' .. u411((game:GetService('Players').LocalPlayer.Character.Head.Position - u437.Position).Magnitude / 3) .. ' M'
                    else
                        local _BillboardGui55 = Instance.new('BillboardGui', u437)

                        _BillboardGui55.Name = 'NameEsp'
                        _BillboardGui55.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui55.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui55.Adornee = u437
                        _BillboardGui55.AlwaysOnTop = true

                        local _TextLabel55 = Instance.new('TextLabel', _BillboardGui55)

                        _TextLabel55.Font = 'Code'
                        _TextLabel55.FontSize = 'Size14'
                        _TextLabel55.TextWrapped = true
                        _TextLabel55.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel55.TextYAlignment = 'Top'
                        _TextLabel55.BackgroundTransparency = 1
                        _TextLabel55.TextStrokeTransparency = 0.5
                        _TextLabel55.TextColor3 = Color3.fromRGB(80, 245, 245)
                    end
                end
            elseif u437:FindFirstChild('NameEsp') then
                u437:FindFirstChild('NameEsp'):Destroy()
            end
        end)
    end
end
function UpdateLSDESP()
    local v440, v441, v442 = pairs(game:GetService('Workspace').NPCs:GetChildren())

    while true do
        local v443

        v442, v443 = v440(v441, v442)

        if v442 == nil then
            break
        end

        local u444 = v443

        pcall(function()
            if LADESP then
                if u444.Name == 'Legendary Sword Dealer' then
                    if u444:FindFirstChild('NameEsp') then
                        u444.NameEsp.TextLabel.Text = u444.Name .. '   \n' .. u411((game:GetService('Players').LocalPlayer.Character.Head.Position - u444.Position).Magnitude / 3) .. ' M'
                    else
                        local _BillboardGui56 = Instance.new('BillboardGui', u444)

                        _BillboardGui56.Name = 'NameEsp'
                        _BillboardGui56.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui56.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui56.Adornee = u444
                        _BillboardGui56.AlwaysOnTop = true

                        local _TextLabel56 = Instance.new('TextLabel', _BillboardGui56)

                        _TextLabel56.Font = 'Code'
                        _TextLabel56.FontSize = 'Size14'
                        _TextLabel56.TextWrapped = true
                        _TextLabel56.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel56.TextYAlignment = 'Top'
                        _TextLabel56.BackgroundTransparency = 1
                        _TextLabel56.TextStrokeTransparency = 0.5
                        _TextLabel56.TextColor3 = Color3.fromRGB(80, 245, 245)
                    end
                end
            elseif u444:FindFirstChild('NameEsp') then
                u444:FindFirstChild('NameEsp'):Destroy()
            end
        end)
    end
end

spawn(function()
    while wait() do
        if InfAbility then
            InfAb()
        end
    end
end)

function InfAb()
    if InfAbility then
        if not game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('Agility') then
            local _ParticleEmitter = Instance.new('ParticleEmitter')

            _ParticleEmitter.Acceleration = Vector3.new(0, 0, 0)
            _ParticleEmitter.Archivable = true
            _ParticleEmitter.Drag = 20
            _ParticleEmitter.EmissionDirection = Enum.NormalId.Top
            _ParticleEmitter.Enabled = true
            _ParticleEmitter.Lifetime = NumberRange.new(0, 0)
            _ParticleEmitter.LightInfluence = 0
            _ParticleEmitter.LockedToPart = true
            _ParticleEmitter.Name = 'Agility'
            _ParticleEmitter.Rate = 500

            local v448 = {
                NumberSequenceKeypoint.new(0, 0),
                NumberSequenceKeypoint.new(1, 4),
            }

            _ParticleEmitter.Size = NumberSequence.new(v448)
            _ParticleEmitter.RotSpeed = NumberRange.new(9999, 99999)
            _ParticleEmitter.Rotation = NumberRange.new(0, 0)
            _ParticleEmitter.Speed = NumberRange.new(30, 30)
            _ParticleEmitter.SpreadAngle = Vector2.new(0, 0, 0, 0)
            _ParticleEmitter.Texture = ''
            _ParticleEmitter.VelocityInheritance = 0
            _ParticleEmitter.ZOffset = 2
            _ParticleEmitter.Transparency = NumberSequence.new(0)
            _ParticleEmitter.Color = ColorSequence.new(Color3.fromRGB(0, 0, 0), Color3.fromRGB(0, 0, 0))
            _ParticleEmitter.Parent = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
        end
    elseif game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('Agility') then
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('Agility'):Destroy()
    end
end
function UpdateGeaESP()
    local v449, v450, v451 = pairs(game:GetService('Workspace').Map.MysticIsland:GetChildren())

    while true do
        local v452

        v451, v452 = v449(v450, v451)

        if v451 == nil then
            break
        end

        local u453 = v452

        pcall(function()
            if GearESP then
                if u453.Name == 'MeshPart' then
                    if u453:FindFirstChild('NameEsp') then
                        u453.NameEsp.TextLabel.Text = u453.Name .. '   \n' .. u411((game:GetService('Players').LocalPlayer.Character.Head.Position - u453.Position).Magnitude / 3) .. ' M'
                    else
                        local _BillboardGui57 = Instance.new('BillboardGui', u453)

                        _BillboardGui57.Name = 'NameEsp'
                        _BillboardGui57.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui57.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui57.Adornee = u453
                        _BillboardGui57.AlwaysOnTop = true

                        local _TextLabel57 = Instance.new('TextLabel', _BillboardGui57)

                        _TextLabel57.Font = 'Code'
                        _TextLabel57.FontSize = 'Size14'
                        _TextLabel57.TextWrapped = true
                        _TextLabel57.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel57.TextYAlignment = 'Top'
                        _TextLabel57.BackgroundTransparency = 1
                        _TextLabel57.TextStrokeTransparency = 0.5
                        _TextLabel57.TextColor3 = Color3.fromRGB(80, 245, 245)
                    end
                end
            elseif u453:FindFirstChild('NameEsp') then
                u453:FindFirstChild('NameEsp'):Destroy()
            end
        end)
    end
end
function UpdateBerriesESP()
    local _BerryBush = game:GetService('CollectionService'):GetTagged('BerryBush')
    local v457, v458, v459 = pairs(_BerryBush)

    while true do
        local v460

        v459, v460 = v457(v458, v459)

        if v459 == nil then
            break
        end

        local u461 = v460

        pcall(function()
            local v462 = u461
            local v463, v464, v465 = pairs(v462:GetAttributes())

            while true do
                local v466

                v465, v466 = v463(v464, v465)

                if v465 == nil then
                    break
                end
                if v466 then
                    if not u461.Parent:FindFirstChild('BerryESP') then
                        local _BillboardGui58 = Instance.new('BillboardGui', u461.Parent)

                        _BillboardGui58.Name = 'BerryESP'
                        _BillboardGui58.ExtentsOffset = Vector3.new(0, 2, 0)
                        _BillboardGui58.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui58.Adornee = u461.Parent
                        _BillboardGui58.AlwaysOnTop = true

                        local _TextLabel58 = Instance.new('TextLabel', _BillboardGui58)

                        _TextLabel58.Font = Enum.Font.GothamSemibold
                        _TextLabel58.TextSize = 14
                        _TextLabel58.TextWrapped = true
                        _TextLabel58.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel58.TextYAlignment = Enum.TextYAlignment.Top
                        _TextLabel58.BackgroundTransparency = 1
                        _TextLabel58.TextStrokeTransparency = 0.5
                        _TextLabel58.TextColor3 = Color3.fromRGB(255, 255, 0)
                        _TextLabel58.Text = v466
                    end
                    if u461.Parent:FindFirstChild('BerryESP') then
                        local _LocalPlayer = game.Players.LocalPlayer

                        if _LocalPlayer and _LocalPlayer.Character and _LocalPlayer.Character:FindFirstChild('Head') then
                            local _Position = _LocalPlayer.Character.Head.Position
                            local _Magnitude = (u461.Parent:GetPivot().Position - _Position).Magnitude

                            u461.Parent.BerryESP.TextLabel.Text = v466 .. '\n' .. math.floor(_Magnitude) .. 'm'
                        end
                    end
                elseif u461.Parent:FindFirstChild('NameEsp') then
                    u461.Parent:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end
function UpdateIslandKisuneESP()
    local v472, v473, v474 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

    while true do
        local v475

        v474, v475 = v472(v473, v474)

        if v474 == nil then
            break
        end

        local u476 = v475

        pcall(function()
            if KitsuneIslandEsp then
                if u476.Name == 'Kitsune Island' then
                    if u476:FindFirstChild('NameEsp') then
                        u476.NameEsp.TextLabel.Text = u476.Name .. '   \n' .. u411((game:GetService('Players').LocalPlayer.Character.Head.Position - u476.Position).Magnitude / 3) .. ' M'
                    else
                        local _BillboardGui59 = Instance.new('BillboardGui', u476)

                        _BillboardGui59.Name = 'NameEsp'
                        _BillboardGui59.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui59.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui59.Adornee = u476
                        _BillboardGui59.AlwaysOnTop = true

                        local _TextLabel59 = Instance.new('TextLabel', _BillboardGui59)

                        _TextLabel59.Font = 'Code'
                        _TextLabel59.FontSize = 'Size14'
                        _TextLabel59.TextWrapped = true
                        _TextLabel59.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel59.TextYAlignment = 'Top'
                        _TextLabel59.BackgroundTransparency = 1
                        _TextLabel59.TextStrokeTransparency = 0.5
                        _TextLabel59.TextColor3 = Color3.fromRGB(80, 245, 245)
                    end
                end
            elseif u476:FindFirstChild('NameEsp') then
                u476:FindFirstChild('NameEsp'):Destroy()
            end
        end)
    end
end
function AutoHaki()
    local _Character = game:GetService('Players').LocalPlayer.Character
    local v480 = _Character and not _Character:FindFirstChild('HasBuso') and game:GetService('ReplicatedStorage').Remotes.CommF_

    if v480 then
        v480:InvokeServer('Buso')
    end
end
function UnEquipWeapon(p481)
    if game.Players.LocalPlayer.Character:FindFirstChild(p481) then
        _G.NotAutoEquip = true

        wait(0.5)

        game.Players.LocalPlayer.Character:FindFirstChild(p481).Parent = game.Players.LocalPlayer.Backpack

        wait(0.1)

        _G.NotAutoEquip = false
    end
end
function EquipWeapon(p482)
    if not _G.NotAutoEquip and game.Players.LocalPlayer.Backpack:FindFirstChild(p482) then
        Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(p482)

        wait(0.1)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
    end
end

spawn(function()
    local v483 = getrawmetatable(game)
    local ___namecall = v483.__namecall

    setreadonly(v483, false)

    v483.__namecall = newcclosure(function(...)
        local v485 = getnamecallmethod()
        local v486 = {...}

        if tostring(v485) ~= 'FireServer' or (tostring(v486[1]) ~= 'RemoteEvent' or (tostring(v486[2]) == 'true' or (tostring(v486[2]) == 'false' or not _G.UseSkill))) then
            return ___namecall(...)
        end
        if type(v486[2]) == 'vector' then
            v486[2] = PositionSkillMasteryDevilFruit
        else
            v486[2] = CFrame.new(PositionSkillMasteryDevilFruit)
        end

        return ___namecall(unpack(v486))
    end)
end)
spawn(function()
    pcall(function()
        while task.wait() do
            local v487, v488, v489 = pairs(game:GetService('Players').LocalPlayer.Backpack:GetChildren())

            while true do
                local v490

                v489, v490 = v487(v488, v489)

                if v489 == nil then
                    break
                end
                if v490:IsA('Tool') and v490:FindFirstChild('RemoteFunctionShoot') then
                    CurrentEquipGun = v490.Name
                end
            end
        end
    end)
end)

function StopTween(p491)
    local _Character2 = game:GetService('Players').LocalPlayer.Character

    if not p491 then
        _G.StopTween = true

        wait(0.2)
        topos(_Character2.HumanoidRootPart.CFrame)
        wait(0.2)

        if _Character2.HumanoidRootPart:FindFirstChild('BodyClip') then
            _Character2.HumanoidRootPart.BodyClip:Destroy()
        end
        if _Character2:FindFirstChild('Block') then
            _Character2.Block:Destroy()
        end

        _G.StopTween = false
        _G.Clip = false
    end
    if _Character2:FindFirstChild('Highlight') then
        _Character2.Highlight:Destroy()
    end
end
function LockTween()
    if not _G.LockTween then
        _G.LockTween = true

        wait()

        local _Character3 = game.Players.LocalPlayer.Character
        local v494 = _Character3 and _Character3:IsDescendantOf(game.Workspace) and _Character3:WaitForChild('HumanoidRootPart')

        if v494 then
            v494.CFrame = v494.CFrame
        end

        wait()

        if _Character3:FindFirstChild('BodyClip') then
            _Character3.BodyClip:Destroy()
        end
        if _Character3:FindFirstChild('PartTele') then
            _Character3.Block:Destroy()
        end

        _G.LockTween = false
    end
end
function BringMob(p495)
    local v496, v497, v498 = pairs(WS.Enemies:GetChildren())

    while true do
        local v499

        v498, v499 = v496(v497, v498)

        if v498 == nil then
            break
        end
        if v499.Name == p495 and (v499.Parent and (v499:FindFirstChild('HumanoidRootPart') and (v499:FindFirstChild('Humanoid') and (v499.Humanoid.Health > 0 and (v499.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 350)))) then
            v499.HumanoidRootPart.CFrame = BringPos
            v499.Humanoid.JumpPower = 0
            v499.Humanoid.WalkSpeed = 0
            v499.HumanoidRootPart.Transparency = 1
            v499.HumanoidRootPart.CanCollide = false
            v499.Head.CanCollide = false

            if v499.Humanoid:FindFirstChild('Animator') then
                v499.Humanoid.Animator:Destroy()
            end
            if not v499.HumanoidRootPart:FindFirstChild('Lock') then
                local _BodyVelocity = Instance.new('BodyVelocity')

                _BodyVelocity.Parent = v499.HumanoidRootPart
                _BodyVelocity.Name = 'Lock'
                _BodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
                _BodyVelocity.Velocity = Vector3.new(0, 0, 0)
            end

            sethiddenproperty(plr, 'SimulationRadius', math.huge)
            v499.Humanoid:ChangeState(11)
        end
    end
end
function CancelTween23()
    if plr.Character.Head:FindFirstChild('BodyVelocity') then
        plr.Character.Head:FindFirstChild('BodyVelocity'):Destroy()
    end
    if plr.Character:FindFirstChild('PartTele') then
        plr.Character:FindFirstChild('PartTele'):Destroy()
    end

    NoClip = false

    return Tween23(plr.Character.HumanoidRootPart.CFrame)
end
function KillMob(p501, p502)
    pcall(function()
        thismob = DetectMob2(p501)

        if thismob:FindFirstChild('HumanoidRootPart') and thismob.Parent and (thismob:FindFirstChild('Humanoid') and thismob.Humanoid.Health > 0) then
            repeat
                task.wait()
                Buso()
                EquipWeapon()
                Tween23(thismob.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0))

                BringPos = thismob.HumanoidRootPart.CFrame

                BringMob(p501)

                NoClip = true
            until not thismob.Parent or (not thismob:FindFirstChild('Humanoid') or (thismob:FindFirstChild('Humanoid').Health <= 0 or (not thismob:FindFirstChild('HumanoidRootPart') or p502())))

            NoClip = false

            CancelTween23()
        end
    end)
end

spawn(function()
    while wait() do
        pcall(function()
            if NoClip == true then
                if not plr.Character.Head:FindFirstChild('Nigga') then
                    local _BodyVelocity2 = Instance.new('BodyVelocity', plr.Character.Head)

                    _BodyVelocity2.P = 1500
                    _BodyVelocity2.Name = 'Nigga'
                    _BodyVelocity2.MaxForce = Vector3.new(0, 100000, 0)
                    _BodyVelocity2.Velocity = Vector3.new(0, 0, 0)
                end

                local v504, v505, v506 = pairs(plr.Character:GetDescendants())

                while true do
                    local v507

                    v506, v507 = v504(v505, v506)

                    if v506 == nil then
                        break
                    end
                    if v507:IsA('BasePart') then
                        v507.CanCollide = false
                    end
                end
            elseif plr.Character.Head:FindFirstChild('Nigga') then
                plr.Character.Head:FindFirstChild('Nigga'):Destroy()
            end
        end)
    end
end)
spawn(function()
    while task.wait() do
        pcall(function()
            local _Character4 = game:GetService('Players').LocalPlayer.Character
            local _HumanoidRootPart = _Character4:FindFirstChild('HumanoidRootPart')

            if (_Character4.Humanoid.Health <= 0 or not _HumanoidRootPart) and _Character4:FindFirstChild('Block') then
                _Character4.Block:Destroy()
            end
        end)
    end
end)
spawn(function()
    while task.wait() do
        pcall(function()
            local _Character5 = game:GetService('Players').LocalPlayer.Character
            local _HumanoidRootPart2 = _Character5:FindFirstChild('HumanoidRootPart')

            if _Character5:FindFirstChild('Block') and (_HumanoidRootPart2.Position - _Character5.Block.Position).Magnitude >= 100 then
                _Character5.Block:Destroy()
            end
        end)
    end
end)

function enableNoclip()
    if not game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('BodyClip') then
        local _BodyVelocity3 = Instance.new('BodyVelocity')

        _BodyVelocity3.Name = 'BodyClip'
        _BodyVelocity3.Parent = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
        _BodyVelocity3.MaxForce = Vector3.new(100000, 100000, 100000)
        _BodyVelocity3.Velocity = Vector3.new(0, 0, 0)
    end
end
function disableNoclip()
    local _BodyClip = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('BodyClip')

    if _BodyClip then
        _BodyClip:Destroy()
    end
end
function disableCollisions()
    local v514, v515, v516 = pairs(game:GetService('Players').LocalPlayer.Character:GetDescendants())

    while true do
        local v517

        v516, v517 = v514(v515, v516)

        if v516 == nil then
            break
        end
        if v517:IsA('BasePart') then
            v517.CanCollide = false
        end
    end
end

local _, _ = pcall(function()
    return getgenv().Module
end)

spawn(function()
    pcall(function()
        while task.wait(0.2) do
            if getgenv().Module or (_G.DefendVolcano or getgenv().AutoFarm) then
                enableNoclip()
                disableCollisions()
            else
                disableNoclip()
            end
        end
    end)
end)

function EquipAllWeapon()
    pcall(function()
        local v518, v519, v520 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

        while true do
            local v521

            v520, v521 = v518(v519, v520)

            if v520 == nil then
                break
            end
            if v521:IsA('Tool') and (v521.Name ~= 'Summon Sea Beast' and (v521.Name ~= 'Water Body' and v521.Name ~= 'Awakening')) then
                local v522 = game.Players.LocalPlayer.Backpack:FindFirstChild(v521.Name)

                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v522)
                wait(1)
            end
        end
    end)
end

local u523 = false

function WaitHRP(p524)
    if p524 then
        local _ = p524.Character.WaitForChild
    end
end
function CheckNearestTeleporter(p525)
    local _Position2 = p525.Position
    local _huge = math.huge
    local v528 = nil
    local _PlaceId2 = game.PlaceId
    local v530 = {}
    local v531

    if _PlaceId2 == 2753915549 then
        v531 = {
            Sky3 = Vector3.new(-7894, 5547, -380),
            Sky3Exit = Vector3.new(-4607, 874, -1667),
            UnderWater = Vector3.new(61163, 11, 1819),
            ['Underwater City'] = Vector3.new(61165.19140625, 0.18704631924629211, 1897.379150390625),
            ['Pirate Village'] = Vector3.new(-1242.4625244140625, 4.787059783935547, 3901.282958984375),
            UnderwaterExit = Vector3.new(4050, -1, -1814),
        }
    elseif _PlaceId2 == 4442272183 then
        v531 = {
            ['Swan Mansion'] = Vector3.new(-390, 332, 673),
            ['Swan Room'] = Vector3.new(2285, 15, 905),
            ['Cursed Ship'] = Vector3.new(923, 126, 32852),
            ['Zombie Island'] = Vector3.new(-6509, 83, -133),
        }
    else
        v531 = _PlaceId2 == 7449423635 and {
            ['Floating Turtle'] = Vector3.new(-12462, 375, -7552),
            ['Hydra Island'] = Vector3.new(5657.88623046875, 1013.0790405273438, -335.4996337890625),
            Mansion = Vector3.new(-12462, 375, -7552),
            Castle = Vector3.new(-5036, 315, -3179),
            ['Dimensional Shift'] = Vector3.new(-2097.3447265625, 4776.24462890625, -15013.4990234375),
            ['Beautiful Pirate'] = Vector3.new(5319, 23, -93),
            ['Beautiful Room'] = Vector3.new(5314.58203, 22.5364361, -125.942276, 1, 2.14762768e-8, -1.99111154e-13, -2.14762768e-8, 1, -3.0510602e-8, 1.98455903e-13, 3.0510602e-8, 1),
            ['Temple of Time'] = Vector3.new(28286, 14897, 103),
        } or v530
    end

    local v532, v533, v534 = pairs(v531)

    while true do
        local v535

        v534, v535 = v532(v533, v534)

        if v534 == nil then
            break
        end

        local _Magnitude2 = (v535 - _Position2).Magnitude

        if _Magnitude2 < _huge then
            v528 = v535
            _huge = _Magnitude2
        end
    end

    if _huge <= (_Position2 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude then
        return v528
    end
end
function requestEntrance(p537)
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer('requestEntrance', p537)

    local _HumanoidRootPart3 = game.Players.LocalPlayer.Character.HumanoidRootPart

    _HumanoidRootPart3.CFrame = _HumanoidRootPart3.CFrame + Vector3.new(0, 50, 0)

    task.wait(0.5)
end
function TelePPlayer(p539)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p539
end
function topos(p540)
    local _LocalPlayer2 = game.Players.LocalPlayer

    if _LocalPlayer2.Character and _LocalPlayer2.Character.Humanoid.Health > 0 and _LocalPlayer2.Character:FindFirstChild('HumanoidRootPart') then
        local _Magnitude3 = (p540.Position - _LocalPlayer2.Character.HumanoidRootPart.Position).Magnitude

        if not p540 then
            return
        end

        local v543 = CheckNearestTeleporter(p540)

        if v543 then
            requestEntrance(v543)
        end
        if not _LocalPlayer2.Character:FindFirstChild('PartTele') then
            local _Part = Instance.new('Part', _LocalPlayer2.Character)

            _Part.Size = Vector3.new(10, 1, 10)
            _Part.Name = 'PartTele'
            _Part.Anchored = true
            _Part.Transparency = 1
            _Part.CanCollide = true
            _Part.CFrame = WaitHRP(_LocalPlayer2).CFrame

            local u545 = _Part
            local v546 = u545

            u545.GetPropertyChangedSignal(v546, 'CFrame'):Connect(function()
                if u523 then
                    task.wait()

                    if _LocalPlayer2.Character and _LocalPlayer2.Character:FindFirstChild('HumanoidRootPart') then
                        WaitHRP(_LocalPlayer2).CFrame = u545.CFrame
                    end
                end
            end)
        end

        u523 = true

        local v547 = game:GetService('TweenService'):Create(_LocalPlayer2.Character.PartTele, TweenInfo.new(_Magnitude3 / 360, Enum.EasingStyle.Linear), {CFrame = p540})

        v547:Play()
        v547.Completed:Connect(function(p548)
            if p548 == Enum.PlaybackState.Completed then
                if _LocalPlayer2.Character:FindFirstChild('PartTele') then
                    _LocalPlayer2.Character.PartTele:Destroy()
                end

                u523 = false
            end
        end)
    end
end
function stopTeleport()
    u523 = false

    local _LocalPlayer3 = game.Players.LocalPlayer

    if _LocalPlayer3.Character:FindFirstChild('PartTele') then
        _LocalPlayer3.Character.PartTele:Destroy()
    end
end

spawn(function()
    while task.wait() do
        if not u523 then
            stopTeleport()
        end
    end
end)
spawn(function()
    local _LocalPlayer4 = game.Players.LocalPlayer

    while task.wait() do
        pcall(function()
            if _LocalPlayer4.Character:FindFirstChild('PartTele') and (_LocalPlayer4.Character.HumanoidRootPart.Position - _LocalPlayer4.Character.PartTele.Position).Magnitude >= 100 then
                stopTeleport()
            end
        end)
    end
end)

local _LocalPlayer5 = game.Players.LocalPlayer

local function v553(p552)
    p552:WaitForChild('Humanoid').Died:Connect(function()
        stopTeleport()
    end)
end

_LocalPlayer5.CharacterAdded:Connect(v553)

if _LocalPlayer5.Character then
    v553(_LocalPlayer5.Character)
end

function TP1(p554)
    topos(p554)
end

spawn(function()
    while wait() do
        if _G.SpinPos then
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
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.FarmBone or (_G.AutoFarm or (_G.Pray or (_G.Trylux or (_G.Hallow or (_G.FarmCake or (_G.FarmDaiBan or (_G.Greybeard or (_G.CursedCaptain or (_G.AutoDarkBoss or (_G.ChiefWarden or (_G.Trident or (_G.Longsword or (_G.GravityBlade or (_G.SwodsFlail or (_G.AutoRengoku or (_G.SwodsDRTrident or (_G.SwodCanvande or (_G.SwodsBuddy or (_G.FarmBlazeEM or (_G.AutoFindPrehistoric or (_G.TweenVolcano or (_G.DefendVolcano or (_G.KillGolem or (_G.SwodTwinHooks or (_G.Fullykatakuri or (_G.AutoBoss or (_G.SwodCanvander or (_G.AutoFarmMaterial or (_G.AutoSecondSea or (_G.Autosaw or (_G.ChiefWarden or (_G.Trident or (_G.AutoSaber or (_G.ThirdSea or (_G.AutoBartilo or (_G.AutoFactory or (_G.Longsword or (_G.GravityBlade or (_G.SwodsFlail or (_G.AutoRengoku or (_G.SwodsDRTrident or (_G.SwodTwinHooks or (_G.SwodCanvander or (_G.AutoRaidPirate or (_G.AutoQuestYama or (_G.AutoYamaQuest or (_G.AutoSaber or (_G.DefendVolcano or (_G.TPB or (_G.SailBoat or (_G.Autoterrorshark or (_G.KillShark or (_G.KillPiranha or (_G.KillFishCrew or (_G.AutoQuestRace or (_G.Dungeon or (_G.AutoLawRaid or (_G.Tweenfruit or (ProjectTrialPro or (_G.TweenMGear or (_G.AutoMysticIsland or (AutoUpgradeRace or (AutoRaceEvo1 or (_G.AutoFarmFruits or (_G.Autopole or (_G.Autosaw or (_G.AutoElitehunter or (FarmMtrFruit or (_G.AutoNear or (_G.CollectBerry or (_G.RipIndraKill or (_G.FarmChocola or (SoulGuitar or (_G.AutoHolyTorch or (_G.AutoGetTushita or (_G.AutoYama or (_G.AutoMobDragon or (_G.AutoHydraTree or (_G.TweenToKitsune or (_G.AutoDooHee or (_G.AutoAzuerEmber or (_G.TweenVolcano or (_G.Dungeon or (_G.AutoLawRaid or (_G.TweenFruit or (_G.Grabfruit or (_G.TeleportIsland or (_G.TeleportNPC or (_G.SafeMode or (_G.AutoPlayerHunter or (_G.AutoKillPlayer or (_G.TeleportPly or (_G.AutoQuestBoss or (_G.AutoAllBoss or (_G.AutoFarmLevelNew or (_G.FarmSummer or _G.BossPain)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) then
                if not game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('BodyClip') then
                    local _BodyVelocity4 = Instance.new('BodyVelocity')

                    _BodyVelocity4.Name = 'BodyClip'
                    _BodyVelocity4.Parent = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
                    _BodyVelocity4.MaxForce = Vector3.new(100000, 100000, 100000)
                    _BodyVelocity4.Velocity = Vector3.new(0, 0, 0)
                end
            else
                game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('BodyClip'):Destroy()
            end
        end)
    end
end)
spawn(function()
    pcall(function()
        game:GetService('RunService').Stepped:Connect(function()
            if _G.FarmBone or (_G.AutoFarm or (_G.Pray or (_G.Trylux or (_G.Hallow or (_G.FarmCake or (_G.FarmDaiBan or (_G.Fullykatakuri or (_G.AutoBoss or (_G.AutoMateria or (_G.AutoSecondSea or (_G.Autosaw or (_G.ChiefWarden or (_G.Trident or (_G.AutoSaber or (_G.Greybeard or (_G.CursedCaptain or (_G.AutoDarkBoss or (_G.ChiefWarden or (_G.Trident or (_G.Longsword or (_G.GravityBlade or (_G.SwodsFlail or (_G.AutoRengoku or (_G.SwodsDRTrident or (_G.SwodCanvande or (_G.SwodTwinHooks or (_G.ThirdSea or (_G.AutoBartilo or (_G.AutoFactory or (_G.Longsword or (_G.GravityBlade or (_G.SwodsFlail or (_G.AutoRengoku or (_G.SwodsDRTrident or (_G.SwodTwinHooks or (_G.SwodCanvander or (_G.SwodsBuddy or (_G.FarmBlazeEM or (_G.AutoFindPrehistoric or (_G.TweenVolcano or (_G.DefendVolcano or (_G.KillGolem or (_G.AutoRaidPirate or (_G.AutoQuestYama or (_G.AutoYamaQuest or (_G.AutoElitehunter or (FarmMtrFruit or (AutoUpgradeRace or (_G.AutoFarmMaterial or (AutoRaceEvo1 or (AutoSaber or (_G.Autopole or (_G.SwodCanvander or (_G.DefendVolcano or (_G.SailBoat or (_G.Autoterrorshark or (_G.KillShark or (_G.KillPiranha or (_G.KillFishCrew or (_G.AutoQuestRace or (_G.Dungeon or (_G.AutoLawRaid or (_G.Tweenfruit or (ProjectTrialPro or (_G.AutoMysticIsland or (_G.TweenMGear or (_G.Autosaw or (_G.AutoNear or (_G.AutoFarmFruits or (_G.CollectBerry or (_G.RipIndraKill or (_G.FarmChocola or (SoulGuitar or (_G.AutoHolyTorch or (_G.AutoGetTushita or (_G.AutoYama or (_G.AutoMobDragon or (_G.AutoHydraTree or (_G.TweenToKitsune or (_G.AutoDooHee or (_G.AutoAzuerEmber or (_G.TweenVolcano or (_G.Dungeon or (_G.AutoLawRaid or (_G.TweenFruit or (_G.Grabfruit or (_G.TeleportIsland or (_G.TeleportNPC or (_G.SafeMode or (_G.AutoPlayerHunter or (_G.AutoKillPlayer or (_G.TeleportPly or (_G.AutoQuestBoss or (_G.AutoAllBoss or (_G.AutoFarmLevelNew or (_G.FarmSummer or _G.BossPain)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) then
                local v556, v557, v558 = pairs(game:GetService('Players').LocalPlayer.Character:GetDescendants())

                while true do
                    local v559

                    v558, v559 = v556(v557, v558)

                    if v558 == nil then
                        break
                    end
                    if v559:IsA('BasePart') then
                        v559.CanCollide = false
                    end
                end
            end
        end)
    end)
end)

local u560 = {}

function TP13(p561)
    local _Magnitude4 = (p561.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    local u563 = game:GetService('TweenService'):Create(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(_Magnitude4 / TweenSpeed, Enum.EasingStyle.Linear), {CFrame = p561}):Play()

    function u560.Stop(_)
        u563:Cancel()
    end

    return u560
end
function fastpos(p564)
    Distance = (p564.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    Speed = 1000

    game:GetService('TweenService'):Create(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear), {CFrame = p564}):Play()
end
function slowpos(p565)
    Distance = (p565.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    Speed = 150

    game:GetService('TweenService'):Create(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear), {CFrame = p565}):Play()
end
function BTP(p566)
    pcall(function()
        if (p566.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 and (not Auto_Raid and game.Players.LocalPlayer.Character.Humanoid.Health > 0) then
            repeat
                wait()

                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p566

                wait(0.05)
                game.Players.LocalPlayer.Character.Head:Destroy()

                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p566
            until (p566.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0
        end
    end)
end
function TelePPlayer(p567)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p567
end
function TPB(p568)
    local _TweenService = game:service('TweenService')
    local v570 = TweenInfo.new((game:GetService('Workspace').Boats.PirateBrigade.VehicleSeat.CFrame.Position - p568.Position).Magnitude / 300, Enum.EasingStyle.Linear)

    tween = _TweenService:Create(game:GetService('Workspace').Boats.PirateBrigade.VehicleSeat, v570, {CFrame = p568})

    tween:Play()

    return {
        Stop = function(_)
            tween:Cancel()
        end,
    }
end
function TPP(p571)
    if game.Players.LocalPlayer.Character:WaitForChild('Humanoid').Health > 0 and game:GetService('Players').LocalPlayer.Character:WaitForChild('Humanoid') then
        local _TweenService2 = game:service('TweenService')
        local v573 = TweenInfo.new((game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - p571.Position).Magnitude / 325, Enum.EasingStyle.Linear)

        tween = _TweenService2:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, v573, {CFrame = p571})

        tween:Play()

        return {
            Stop = function(_)
                tween:Cancel()
            end,
        }
    end

    tween:Cancel()

    repeat
        wait()
    until game:GetService('Players').LocalPlayer.Character:WaitForChild('Humanoid') and game:GetService('Players').LocalPlayer.Character:WaitForChild('Humanoid').Health > 0

    wait(7)
end
function StopTween(p574)
    if not p574 then
        _G.StopTween = true

        wait()
        topos(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()

        if game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('BodyClip') then
            game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('BodyClip'):Destroy()
        end

        _G.StopTween = false
        _G.Clip = false
    end
end

spawn(function()
    pcall(function()
        while wait() do
            local v575, v576, v577 = pairs(game:GetService('Players').LocalPlayer.Backpack:GetChildren())

            while true do
                local v578

                v577, v578 = v575(v576, v577)

                if v577 == nil then
                    break
                end
                if v578:IsA('Tool') and v578:FindFirstChild('RemoteFunctionShoot') then
                    _G.SelectWeaponGun = v578.Name
                end
            end
        end
    end)
end)
game:GetService('Players').LocalPlayer.Idled:connect(function()
    game:GetService('VirtualUser'):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    wait(1)
    game:GetService('VirtualUser'):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)

function CheckColorRipIndra()
    mmb = {}

    local v579 = next
    local v580, v581 = game:GetService('Workspace').Map['Boat Castle'].Summoner.Circle:GetChildren()

    while true do
        local v582

        v581, v582 = v579(v580, v581)

        if v581 == nil then
            break
        end
        if v582:IsA('Part') and (v582:FindFirstChild('Part') and v582.Part.BrickColor.Name == 'Dark stone grey') then
            mmb[v582.BrickColor.Name] = v582
        end
    end

    return mmb
end
function ActivateColor(p583)
    haki = {
        ['Hot pink'] = 'Winter Sky',
        ['Really red'] = 'Pure Red',
        Oyster = 'Snow White',
    }
    runnay = haki[p583]

    if runnay then
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('activateColor', runnay)
    end
end
function AutoActiveColorRip_Indra()
    local v584, v585, v586 = pairs(CheckColorRipIndra())

    while true do
        local v587

        v586, v587 = v584(v585, v586)

        if v586 == nil then
            break
        end

        ActivateColor(v586)
        topos(v587.CFrame)
        firetouchinterest(v587.TouchInterest)
    end
end
function CheckRace()
    local _Wenlocktoad = game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Wenlocktoad', '1')
    local _Alchemist = game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '1')

    if game.Players.LocalPlayer.Character:FindFirstChild('RaceTransformed') then
        return game:GetService('Players').LocalPlayer.Data.Race.Value .. ' V4'
    elseif _Wenlocktoad == -2 then
        return game:GetService('Players').LocalPlayer.Data.Race.Value .. ' V3'
    elseif _Alchemist == -2 then
        return game:GetService('Players').LocalPlayer.Data.Race.Value .. ' V2'
    else
        return game:GetService('Players').LocalPlayer.Data.Race.Value .. ' V1'
    end
end

_G.TargTrial = 'TargTrial'

function targettrial()
    if _G.TargTrial ~= 'TargTrial' then
        return
    else
        local v590, v591, v592 = pairs(game.Players:GetChildren())
        local v593 = 450
        local v594 = nil

        while true do
            local v595

            v592, v595 = v590(v591, v592)

            if v592 == nil then
                break
            end

            c = (v595.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude

            if c <= v593 and v595 ~= game.Players.LocalPlayer then
                v593 = c
                v594 = v595
            end
        end

        if v594 == 'c' then
            return
        elseif _G.TargTrial == 'c' then
            _G.TargTrial = v594
        end
    end
end
function CheckPirateBoat()
    local v596 = next
    local v597, v598 = game:GetService('Workspace').Enemies:GetChildren()
    local v599 = {
        'PirateBrigade',
        'PirateBrigade',
    }

    while true do
        local v600

        v598, v600 = v596(v597, v598)

        if v598 == nil then
            break
        end
        if table.find(v599, v600.Name) and (v600:FindFirstChild('Health') and v600.Health.Value > 0) then
            return v600
        end
    end
end
function CheckPirateBoat()
    local v601 = next
    local v602, v603 = game:GetService('Workspace').Enemies:GetChildren()
    local v604 = {
        'FishBoat',
    }

    while true do
        local v605

        v603, v605 = v601(v602, v603)

        if v603 == nil then
            break
        end
        if table.find(v604, v605.Name) and (v605:FindFirstChild('Health') and v605.Health.Value > 0) then
            return v605
        end
    end
end
function StoreFruit()
    local v606, v607, v608 = pairs(thelocal.Backpack:GetChildren())

    while true do
        local v609

        v608, v609 = v606(v607, v608)

        if v608 == nil then
            break
        end
        if v609:IsA('Tool') and string.find(v609.Name, 'Fruit') then
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', v609:GetAttribute('OriginalName'), v609)
        end
    end
end
function TpEntrance(p610)
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer('requestEntrance', p610)

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)

    wait(0.5)
end
function CheckItemBPCRBPCR(p611)
    chbp = {
        game.Players.LocalPlayer.Character,
        game.Players.LocalPlayer.Backpack,
    }

    local v612, v613, v614 = pairs(chbp)

    while true do
        local v615

        v614, v615 = v612(v613, v614)

        if v614 == nil then
            break
        end
        if v615:FindFirstChild(p611) then
            return v615:FindFirstChild(p611)
        end
    end
end

local u616 = loadstring(game:HttpGet('https://raw.githubusercontent.com/AnhDangNhoEm/UiRedz/refs/heads/main/RedzUiV.txt'))():MakeWindow({
    Title = 'redz Hub : Blox Fruits',
    SubTitle = 'by real_redz',
    SaveFolder = 'Redz | redz lib v5.lua',
})
local _ScreenGui = Instance.new('ScreenGui')

_ScreenGui.Name = 'ControlGUI'
_ScreenGui.Parent = game.CoreGui

local _ImageButton = Instance.new('ImageButton')

_ImageButton.Size = UDim2.new(0, 50, 0, 50)
_ImageButton.Position = UDim2.new(0.15, 0, 0.15, 0)
_ImageButton.Image = 'rbxassetid:// 73372685000295'
_ImageButton.BackgroundTransparency = 1
_ImageButton.Parent = _ScreenGui

local _UICorner = Instance.new('UICorner')

_UICorner.CornerRadius = UDim.new(0.25, 0)
_UICorner.Parent = _ImageButton

local _UIStroke = Instance.new('UIStroke')

_UIStroke.Thickness = 2
_UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_UIStroke.Parent = _ImageButton

local u621 = {
    Color3.fromRGB(255, 0, 0),
    Color3.fromRGB(255, 127, 0),
    Color3.fromRGB(255, 255, 0),
    Color3.fromRGB(0, 255, 0),
    Color3.fromRGB(0, 255, 255),
    Color3.fromRGB(0, 0, 255),
    Color3.fromRGB(139, 0, 255),
}

task.spawn(function()
    local v622 = 1

    while true do
        _UIStroke.Color = u621[v622]
        v622 = v622 % #u621 + 1

        task.wait(0.3)
    end
end)

local u623 = true
local u624 = nil
local u625 = nil
local u626 = nil
local u627 = nil

local function u630(p628)
    local v629 = p628.Position - u626

    _ImageButton.Position = UDim2.new(u627.X.Scale, u627.X.Offset + v629.X, u627.Y.Scale, u627.Y.Offset + v629.Y)
end

_ImageButton.InputBegan:Connect(function(p631)
    if p631.UserInputType == Enum.UserInputType.Touch or p631.UserInputType == Enum.UserInputType.MouseButton1 then
        u624 = true
        u626 = p631.Position
        u627 = _ImageButton.Position

        p631.Changed:Connect(function()
            if p631.UserInputState == Enum.UserInputState.End then
                u624 = false
            end
        end)
    end
end)
_ImageButton.InputChanged:Connect(function(p632)
    if p632.UserInputType == Enum.UserInputType.Touch or p632.UserInputType == Enum.UserInputType.MouseMovement then
        u625 = p632
    end
end)
game:GetService('UserInputService').InputChanged:Connect(function(p633)
    if u624 and p633 == u625 then
        u630(p633)
    end
end)
_ImageButton.MouseButton1Click:Connect(function()
    u623 = not u623

    if u623 then
        u616:Minimize(false)
    else
        u616:Minimize(true)
    end
end)

local v634 = u616
local v635 = u616.MakeTab(v634, {
    'Th\u{f4}ng Tin | Info',
    'info',
})
local v636 = u616
local v637 = u616.MakeTab(v636, {
    'Farming',
    'home',
})
local v638 = u616
local v639 = u616.MakeTab(v638, {
    'Auto Fishing',
    'rbxassetid://127664059821666',
})
local v640 = u616
local v641 = u616.MakeTab(v640, {
    'Quest | Items',
    'swords',
})
local v642 = u616
local v643 = u616.MakeTab(v642, {
    'Volcano Dojo',
    'cake',
})
local v644 = u616
local v645 = u616.MakeTab(v644, {
    'Sea Event',
    'waves',
})
local v646 = u616
local v647 = u616.MakeTab(v646, {
    'Race V4',
    'crown',
})
local v648 = u616
local v649 = u616.MakeTab(v648, {
    'Raid Fruits',
    'cherry',
})
local v650 = u616
local v651 = u616.MakeTab(v650, {
    'Fruits | Check Stock',
    'apple',
})
local v652 = u616
local v653 = u616.MakeTab(v652, {
    'Teleport',
    'locate',
})
local v654 = u616
local v655 = u616.MakeTab(v654, {
    'PvP,Player',
    'user',
})
local v656 = u616
local v657 = u616.MakeTab(v656, {
    'Shop',
    'shoppingCart',
})
local v658 = u616
local v659 = u616.MakeTab(v658, {
    'Settings',
    'settings',
})

v635:AddDiscordInvite({
    Name = 'Tham Gia Discord',
    Description = 'Link Sever Discord',
    Logo = 'rbxassetid://73372685000295',
    Invite = 'https://discord.com/invite/6Zv652ntHK',
})
v635:AddDiscordInvite({
    Name = 'REDZ HUB',
    Description = 'Facebook Group',
    Logo = 'rbxassetid:// 73372685000295',
    Invite = 'https://www.facebook.com/groups/3405219299690000/?ref=share&mibextid=NSMWBT',
})
v635:AddDiscordInvite({
    Name = 'REDZ HUB',
    Description = 'YouTube Chanel',
    Logo = 'rbxassetid:// 73372685000295',
    Invite = 'https://youtube.com/@chirobloxne?si=neWfXTwzJCVr3VGu',
})
v635:AddDiscordInvite({
    Name = 'REDZ HUB',
    Description = 'Discod Group',
    Logo = 'rbxassetid:// 73372685000295',
    Invite = 'https://discord.com/invite/6Zv652ntHK',
})
v637:AddSection({
    'Select Melee,Sword,Gun,Fruit',
})

_G.SelectWeapon = 'Melee'

task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.SelectWeapon == 'Melee' then
                local v660, v661, v662 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                while true do
                    local v663

                    v662, v663 = v660(v661, v662)

                    if v662 == nil then
                        break
                    end
                    if v663.ToolTip == 'Melee' then
                        _G.SelectWeapon = v663.Name
                    end
                end
            elseif _G.SelectWeapon == 'Sword' then
                local v664, v665, v666 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                while true do
                    local v667

                    v666, v667 = v664(v665, v666)

                    if v666 == nil then
                        break
                    end
                    if v667.ToolTip == 'Sword' then
                        _G.SelectWeapon = v667.Name
                    end
                end
            elseif _G.SelectWeapon ~= 'Gun' then
                if _G.SelectWeapon == 'Fruit' or _G.SelectWeapon == 'Blox Fruit' then
                    local v668, v669, v670 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                    while true do
                        local v671

                        v670, v671 = v668(v669, v670)

                        if v670 == nil then
                            break
                        end
                        if v671.ToolTip == 'Blox Fruit' then
                            _G.SelectWeapon = v671.Name
                        end
                    end
                end
            else
                local v672, v673, v674 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                while true do
                    local v675

                    v674, v675 = v672(v673, v674)

                    if v674 == nil then
                        break
                    end
                    if v675.ToolTip == 'Gun' then
                        _G.SelectWeapon = v675.Name
                    end
                end
            end
        end)
    end
end)
v637:AddDropdown({
    Name = 'Ch\u{1ecd}n C\u{f4}ng C\u{1ee5}',
    Description = 'Ch\u{1ecd}n c\u{f4}ng c\u{1ee5} b\u{1ea1}n mu\u{1ed1}n s\u{1eed} d\u{1ee5}ng',
    Options = {
        'Melee',
        'Sword',
        'Gun',
        'Blox Fruit',
    },
    Default = 'Melee',
    Flag = 'WeaponType',
    Callback = function(p676)
        _G.SelectWeapon = p676
    end,
})
v637:AddSection({
    'Main Farm',
})
v637:AddToggle({
    Name = 'Auto Farm Level 1-2650',
    Description = 'T\u{1ef1} \u{111}\u{1ed9}ng farm c\u{1ea5}p',
    Default = false,
    Callback = function(p677)
        _G.AutoFarm = p677

        StopTween(_G.AutoFarm)
    end,
})
spawn(function()
    while task.wait() do
        if _G.AutoFarm then
            pcall(function()
                local _Text = game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text

                CheckQuest()

                if not string.find(_Text, NameMon) then
                    StartBring = false

                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                end
                if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    StartBring = false

                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 1500 then
                            TP1(CFrameQuest)
                        else
                            TP1(CFrameQuest)
                        end
                    else
                        TP1(CFrameQuest)
                    end
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 20 then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', NameQuest, LevelQuest)
                    end
                elseif game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if string.find(_Text, 'kissed') then
                        local v679, v680, v681 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v682

                            v681, v682 = v679(v680, v681)

                            if v681 == nil then
                                break
                            end
                            if string.find(v682.Name, 'kissed Warrior') then
                                if v682:FindFirstChild('HumanoidRootPart') and (v682:FindFirstChild('Humanoid') and v682.Humanoid.Health > 0) then
                                    if string.find(_Text, NameMon) then
                                        repeat
                                            task.wait()
                                            EquipWeapon(_G.SelectWeapon)

                                            PosMon = v682.HumanoidRootPart.CFrame

                                            topos(v682.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))

                                            v682.HumanoidRootPart.CanCollide = false
                                            v682.Humanoid.WalkSpeed = 0
                                            v682.Head.CanCollide = false
                                            v682.HumanoidRootPart.Size = Vector3.new(70, 70, 70)
                                            StartBring = true
                                            MonFarm = v682.Name

                                            game:GetService('VirtualUser'):CaptureController()
                                            game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
                                        until not _G.AutoFarm or (v682.Humanoid.Health <= 0 or not v682.Parent) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    else
                                        StartBring = false

                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                                    end
                                end
                            else
                                TP1(CFrameMon)

                                StartBring = false

                                if game:GetService('ReplicatedStorage'):FindFirstChild(Mon) then
                                    TP1(game:GetService('ReplicatedStorage'):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                                end
                            end
                        end
                    elseif game:GetService('Workspace').Enemies:FindFirstChild(Mon) then
                        local v683, v684, v685 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v686

                            v685, v686 = v683(v684, v685)

                            if v685 == nil then
                                break
                            end
                            if v686:FindFirstChild('HumanoidRootPart') and (v686:FindFirstChild('Humanoid') and (v686.Humanoid.Health > 0 and v686.Name == Mon)) then
                                if string.find(_Text, NameMon) then
                                    repeat
                                        task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        AutoHaki()

                                        PosMon = v686.HumanoidRootPart.CFrame

                                        topos(v686.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))

                                        v686.HumanoidRootPart.CanCollide = false
                                        v686.Humanoid.WalkSpeed = 0
                                        v686.Head.CanCollide = false
                                        v686.HumanoidRootPart.Size = Vector3.new(70, 70, 70)
                                        StartBring = true
                                        MonFarm = v686.Name

                                        game:GetService('VirtualUser'):CaptureController()
                                        game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
                                    until not _G.AutoFarm or (v686.Humanoid.Health <= 0 or not v686.Parent) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                else
                                    StartBring = false

                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                                end
                            end
                        end
                    else
                        TP1(CFrameMon)

                        StartBring = false

                        if game:GetService('ReplicatedStorage'):FindFirstChild(Mon) then
                            TP1(game:GetService('ReplicatedStorage'):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                        end
                    end
                end
            end)
        end
    end
end)
v637:AddToggle({
    Title = 'Farm Level New 2650 - 2750',
    Description = 'C\u{e0}y C\u{1ea5}p \u{1ede} \u{110}\u{1ea3}o M\u{1edb}i',
    Value = false,
    Callback = function(p687)
        _G.AutoFarmLevelNew = p687

        StopTween(_G.AutoFarmLevelNew)
    end,
})

function CheckQuestNew()
    local _Value = game.Players.LocalPlayer.Data.Level.Value

    if 2600 <= _Value and _Value <= 2624 then
        MonNew = 'Reef Bandit'
        LevelQuestNew = 1
        NameQuestNew = 'SubmergedQuest1'
        NameMonNew = 'Reef Bandit'
        CFrameQuestNew = CFrame.new(10882.264, -2086.322, 10034.226)
        CFrameMonNew = CFrame.new(10736.6191, -2087.8439, 9338.4882)
    elseif _Value < 2625 or 2649 < _Value then
        if 2650 <= _Value and _Value <= 2674 then
            MonNew = 'Sea Chanter'
            LevelQuestNew = 1
            NameQuestNew = 'SubmergedQuest2'
            NameMonNew = 'Sea Chanter'
            CFrameQuestNew = CFrame.new(10882.264, -2086.322, 10034.226)
            CFrameMonNew = CFrame.new(10621.0342, -2087.844, 10102.0332)
        elseif 2675 <= _Value and _Value <= 2750 then
            MonNew = 'Ocean Prophet'
            LevelQuestNew = 2
            NameQuestNew = 'SubmergedQuest2'
            NameMonNew = 'Ocean Prophet'
            CFrameQuestNew = CFrame.new(10882.264, -2086.322, 10034.226)
            CFrameMonNew = CFrame.new(11056.1445, -2001.6717, 10117.4493)
        end
    else
        MonNew = 'Coral Pirate'
        LevelQuestNew = 2
        NameQuestNew = 'SubmergedQuest1'
        NameMonNew = 'Coral Pirate'
        CFrameQuestNew = CFrame.new(10882.264, -2086.322, 10034.226)
        CFrameMonNew = CFrame.new(10965.1025, -2158.8842, 9177.2597)
    end
end

spawn(function()
    while task.wait() do
        if _G.AutoFarmLevelNew then
            pcall(function()
                local _Quest = game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest

                CheckQuestNew()

                if _Quest.Visible ~= false then
                    local v690, v691, v692 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v693

                        v692, v693 = v690(v691, v692)

                        if v692 == nil then
                            break
                        end
                        if v693.Name == MonNew and (v693:FindFirstChild('HumanoidRootPart') and (v693:FindFirstChild('Humanoid') and v693.Humanoid.Health > 0)) then
                            if string.find(_Quest.Container.QuestTitle.Title.Text, NameMonNew) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()
                                    topos(v693.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))

                                    v693.HumanoidRootPart.CanCollide = false
                                    v693.Humanoid.WalkSpeed = 0
                                    v693.Head.CanCollide = false
                                    v693.HumanoidRootPart.Size = Vector3.new(70, 70, 70)
                                    StartBring = true
                                    MonFarmNew = v693.Name

                                    game:GetService('VirtualUser'):CaptureController()
                                    game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
                                until not _G.AutoFarmLevelNew or (v693.Humanoid.Health <= 0 or (not v693.Parent or _Quest.Visible == false))
                            else
                                StartBring = false

                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                            end
                        end
                    end

                    if not game:GetService('Workspace').Enemies:FindFirstChild(MonNew) then
                        TP1(CFrameMonNew)

                        StartBring = false
                    end
                else
                    StartBring = false

                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuestNew.Position).Magnitude <= 20 then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', NameQuestNew, LevelQuestNew)
                    else
                        TP1(CFrameQuestNew)
                    end
                end
            end)
        end
    end
end)
v637:AddToggle({
    Name = 'Auto Kill Near | Mob Aura',
    Description = '\u{110}\u{e1}nh Qu\u{e1}i G\u{1ea7}n',
    Default = false,
    Callback = function(p694)
        _G.AutoNear = p694

        StopTween(_G.AutoNear)
    end,
})
spawn(function()
    while wait() do
        if _G.AutoNear then
            pcall(function()
                local v695, v696, v697 = pairs(game.Workspace.Enemies:GetChildren())

                while true do
                    local v698

                    v697, v698 = v695(v696, v697)

                    if v697 == nil then
                        break
                    end
                    if v698:FindFirstChild('Humanoid') and (v698:FindFirstChild('HumanoidRootPart') and (v698.Humanoid.Health > 0 and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v698.HumanoidRootPart.Position).Magnitude <= 5000)) then
                        repeat
                            wait(_G.Fast_Delay)

                            StartBring = true

                            AutoHaki()
                            EquipWeapon(_G.SelectWeapon)
                            topos(v698.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))

                            v698.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            v698.HumanoidRootPart.Transparency = 1
                            v698.Humanoid.JumpPower = 0
                            v698.Humanoid.WalkSpeed = 0
                            v698.HumanoidRootPart.CanCollide = false
                            FarmPos = v698.HumanoidRootPart.CFrame
                            MonFarm = v698.Name
                        until not _G.AutoNear or (not v698.Parent or v698.Humanoid.Health <= 0) or not game.Workspace.Enemies:FindFirstChild(v698.Name)

                        StartBring = false
                    end
                end
            end)
        end
    end
end)
v637:AddSection({
    'Farm Summer Token New',
})
v637:AddToggle({
    Name = 'Auto Farm Summer Token',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng Di Chuy\u{1ec3}n \u{110}\u{1ebf}n V\u{1ecb} Tr\u{ed} Summer Token Theo Sea V\u{e0} Farm Qu\u{e1}i [Electrified]',
    Default = false,
    Callback = function(p699)
        _G.FarmSummer = p699

        StopTween(_G.FarmSummer)
    end,
})

local function u702(p700)
    pcall(function()
        if type(topos) == 'function' then
            topos(p700)
        else
            local _LocalPlayer6 = game:GetService('Players').LocalPlayer

            if _LocalPlayer6 and _LocalPlayer6.Character and _LocalPlayer6.Character:FindFirstChild('HumanoidRootPart') then
                _LocalPlayer6.Character.HumanoidRootPart.CFrame = p700
            end
        end
    end)
end
local function u704()
    local _ = game:GetService('Players').LocalPlayer
    local _PlaceId3 = game.PlaceId

    if _PlaceId3 == 2753915549 then
        return CFrame.new(924.405, 6.366, 4476.727)
    elseif _PlaceId3 == 4442272183 then
        return CFrame.new(-5246.478, 66.381, -6015.48)
    elseif _PlaceId3 == 7449423635 then
        return CFrame.new(-10334.821, 390.837, -8572.301)
    else
        return nil
    end
end

spawn(function()
    while task.wait() do
        if _G.FarmSummer then
            pcall(function()
                local v705 = u704()

                if not v705 then
                    return
                end

                u702(v705 + Vector3.new(0, 50, 0))

                local v706, v707, v708 = pairs(game.Workspace.Enemies:GetChildren())

                task.wait()
                AutoHaki()
                EquipWeapon(_G.SelectWeapon)

                _HumanoidRootPart4.CanCollide = false
                _Humanoid.WalkSpeed = 0

                if v709:FindFirstChild('Head') then
                    v709.Head.CanCollide = false
                end

                u702(_HumanoidRootPart4.CFrame * CFrame.new(0, 30, 0))
                game:GetService('VirtualUser'):CaptureController()
                game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))

                if _G.FarmSummer and (v709.Parent and _Humanoid.Health > 0) then
                end

                local v709

                v708, v709 = v706(v707, v708)

                if v708 == nil then
                end

                local _Humanoid = v709:FindFirstChild('Humanoid')
                local _HumanoidRootPart4 = v709:FindFirstChild('HumanoidRootPart')

                if _Humanoid and (_HumanoidRootPart4 and _Humanoid.Health > 0) and _Humanoid.DisplayName:find('%[Electrified%]') then
                else
                end
            end)
        end
    end
end)
v637:AddSection({
    'Event Boss Pain New',
})

local v712 = World1 and {
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
} or (World2 and {
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
} or (World3 and {
    '',
    'Stone',
    'Island Empress',
    'Hydra Leader',
    'Kilo Admiral',
    'Captain Elephant',
    'Beautiful Pirate',
    'rip_indra True Form',
    'Longma',
    'Soul Reaper',
    'Cake Queen',
} or {}))

v637:AddDropdown({
    Name = 'Auto Select Boss',
    Description = 'Ch\u{1ecd}n Boss C\u{1ea7}n Farm',
    Options = v712,
    Default = v712[1],
    Callback = function(p713)
        _G.SelectBoss = p713
    end,
})
v637:AddToggle({
    Name = 'Farm Boss Pain',
    Description = 'Farm Boss \u{110}\u{e3} Ch\u{1ecd}n',
    Default = false,
    Callback = function(p714)
        _G.BossPain = p714

        StopTween(_G.BossPain)
    end,
})
task.spawn(function()
    while task.wait() do
        if _G.BossPain and _G.SelectBoss then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild(_G.SelectBoss) then
                    local v715, v716, v717 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v718

                        v717, v718 = v715(v716, v717)

                        if v717 == nil then
                            break
                        end
                        if v718.Name == _G.SelectBoss and (v718:FindFirstChild('Humanoid') and (v718:FindFirstChild('HumanoidRootPart') and v718.Humanoid.Health > 0)) then
                            repeat
                                task.wait()
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)

                                v718.HumanoidRootPart.CanCollide = false
                                v718.Humanoid.WalkSpeed = 0
                                v718.HumanoidRootPart.Size = Vector3.new(80, 80, 80)

                                topos(v718.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                            until not _G.BossPain or (not v718.Parent or v718.Humanoid.Health <= 0)
                        end
                    end
                elseif game:GetService('ReplicatedStorage'):FindFirstChild(_G.SelectBoss) then
                    topos(game:GetService('ReplicatedStorage'):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                end
            end)
        end
    end
end)
v637:AddSection({
    'AutoRaidPirate',
})
v637:AddToggle({
    Name = 'Farm Pirate',
    Description = '\u{110}\u{e1}nh H\u{1ea3}i T\u{1eb7}c Tr\u{ea}n Ph\u{e1}o \u{110}\u{e0}i Bi\u{1ec3}n',
    Default = false,
    Callback = function(p719)
        _G.AutoRaidPirate = p719

        StopTween(_G.AutoRaidPirate)
    end,
})
spawn(function()
    while wait() do
        if _G.AutoRaidPirate then
            pcall(function()
                local v720 = CFrame.new(-5496.17432, 313.768921, -2841.53027, 0.924894512, 7.37058015e-9, 0.380223751, 3.5881019e-8, 1, -1.06665446e-7, -0.380223751, 1.12297109e-7, 0.924894512)

                if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
                    if (v720.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 1500 then
                        TP1(v720)
                    else
                        TP1(v720)
                    end
                else
                    local v721, v722, v723 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v724

                        v723, v724 = v721(v722, v723)

                        if v723 == nil then
                            break
                        end
                        if _G.AutoRaidPirate and (v724:FindFirstChild('HumanoidRootPart') and (v724:FindFirstChild('Humanoid') and (v724.Humanoid.Health > 0 and (v724.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000))) then
                            repeat
                                wait()
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)

                                NeedAttacking = true
                                StartMagnet = true
                                v724.HumanoidRootPart.CanCollide = false
                                v724.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                topos(v724.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                            until v724.Humanoid.Health <= 0 or (not v724.Parent or _G.AutoRaidPirate == false)

                            NeedAttacking = false
                            StartMagnet = false
                        end
                    end
                end
            end)
        end
    end
end)
v637:AddSection({
    'TyrantoftheSkies',
})

local u725 = v637:AddParagraph({
    Title = 'Check Eyes Status',
    Content = 'Loading...',
})

task.spawn(function()
    while task.wait(1) do
        pcall(function()
            local v726 = {
                workspace.Map.TikiOutpost.IslandModel:FindFirstChild('Eye1'),
                workspace.Map.TikiOutpost.IslandModel:FindFirstChild('Eye2'),
                workspace.Map.TikiOutpost.IslandModel:FindFirstChild('Eye3'),
                workspace.Map.TikiOutpost.IslandModel:FindFirstChild('Eye4'),
            }
            local v727, v728, v729 = ipairs(v726)
            local v730 = 0

            while true do
                local v731

                v729, v731 = v727(v728, v729)

                if v729 == nil then
                    break
                end
                if v731 and (v731:IsA('BasePart') and v731.Transparency == 0) then
                    v730 = v730 + 1
                end
            end

            u725:Set('Status: ' .. v730 .. ' Eye(s)' .. (v730 == 4 and ' \u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}' or ''))
        end)
    end
end)
v637:AddToggle({
    Name = 'Auto Farm Tyrant',
    Description = 'Farm Qu\u{e1}i V\u{e0} \u{110}\u{e1}nh Boss Chim',
    Default = false,
    Callback = function(p732)
        _G.FarmDaiBan = p732

        StopTween(_G.FarmDaiBan)
    end,
})

local u733 = CFrame.new(-16194.0048828125, 155.21844482421875, 1420.719970703125)
local _ = game:GetService('Workspace').Enemies

task.spawn(function()
    while task.wait() do
        if _G.FarmDaiBan then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('Tyrant of the Skies') then
                    local v734, v735, v736 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v737

                        v736, v737 = v734(v735, v736)

                        if v736 == nil then
                            break
                        end
                        if v737.Name == 'Tyrant of the Skies' and (v737:FindFirstChild('Humanoid') and (v737:FindFirstChild('HumanoidRootPart') and v737.Humanoid.Health > 0)) then
                            repeat
                                task.wait()
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)

                                v737.HumanoidRootPart.CanCollide = false
                                v737.Humanoid.WalkSpeed = 0
                                v737.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                topos(v737.HumanoidRootPart.CFrame * CFrame.new(0, 40, 0))

                                NeedAttacking = true
                            until not _G.FarmDaiBan or (not v737.Parent or v737.Humanoid.Health <= 0)

                            wait(1)
                        end
                    end

                    return
                end

                local v738, v739, v740 = pairs({
                    'Isle Outlaw',
                    'Island Boy',
                    'Isle Champion',
                    'Serpent Hunter',
                    'Skull Slayer',
                })
                local v741 = false

                while true do
                    local v742

                    v740, v742 = v738(v739, v740)

                    if v740 == nil then
                        break
                    end
                    if game:GetService('Workspace').Enemies:FindFirstChild(v742) then
                        v741 = true

                        break
                    end
                end

                if not v741 then
                    local v743 = math.random(1, 3)

                    if v743 == 1 then
                        topos(CFrame.new(-1436.86011, 167.753616, -12296.9512))
                    elseif v743 == 2 then
                        topos(CFrame.new(-2383.78979, 150.450592, -12126.4961))
                    elseif v743 == 3 then
                        topos(CFrame.new(-2231.2793, 168.256653, -12845.7559))
                    end
                end

                local v744, v745, v746 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                DamageAura = false

                local v747

                v746, v747 = v744(v745, v746)

                if v746 == nil then
                    if BypassTP then
                        if (playerPos - u733.Position).Magnitude <= 1500 then
                            topos(u733)
                        else
                            BTP(u733)
                        end
                    else
                        topos(u733)
                    end

                    UnEquipWeapon(_G.Selectweapon)
                    topos(CFrame.new(-16194.0048828125, 155.21844482421875, 1420.719970703125))
                end
                if v747.Name ~= 'Isle Outlaw' and (v747.Name ~= 'Island Boy' and (v747.Name ~= 'Isle Champion' and (v747.Name ~= 'Serpent Hunter' and v747.Name ~= 'Skull Slayer'))) or (not v747:FindFirstChild('Humanoid') or (not v747:FindFirstChild('HumanoidRootPart') or v747.Humanoid.Health <= 0)) then
                end
                if true then
                    task.wait()
                    AutoHaki()
                    EquipWeapon(_G.SelectWeapon)

                    v747.HumanoidRootPart.CanCollide = false
                    v747.Humanoid.WalkSpeed = 0
                    StartBring = true
                    v747.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                    PosMon = v747.HumanoidRootPart.CFrame
                    MonFarm = v747.Name
                    v747.Head.CanCollide = false

                    topos(v747.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))

                    NeedAttacking = true

                    if v747.Name == 'Isle Outlaw' then
                        Bring(v747.Name, CFrame.new(-16442.814453125, 116.13899993896484, -264.4637756347656))
                    elseif v747.Name ~= 'Island Boy' then
                        if v747.Name == 'Isle Champion' then
                            Bring(v747.Name, CFrame.new(-16641.6796875, 235.7825469970703, 1031.282958984375))
                        elseif v747.Name == 'Serpent Hunter' then
                            Bring(v747.Name, CFrame.new(-16521.0625, 106.09285, 1488.78467, 0.469467044, 0, 0.882950008, 0, 1, 0, -0.882950008, 0, 0.469467044))
                        elseif v747.Name == 'Skull Slayer' then
                            Bring(v747.Name, CFrame.new(-16855.043, 122.457253, 1478.15308, -0.999392271, 0, -0.0348687991, 0, 1, 0, 0.0348687991, 0, -0.999392271))
                        end
                    else
                        Bring(v747.Name, CFrame.new(-16901.26171875, 84.06756591796875, -192.88906860351563))
                    end
                end
                if _G.FarmDaiBan and (v747.Parent and v747.Humanoid.Health > 0) and (game:GetService('Workspace').Map.CakeLoaf.BigMirror.Other.Transparency ~= 0 and not (game:GetService('ReplicatedStorage'):FindFirstChild('Tyrant of the Skies [Lv. 2600] [Raid Boss]') or game:GetService('Workspace').Enemies:FindFirstChild('Tyrant of the Skies [Lv. 2600] [Raid Boss]'))) then
                else
                end
            end)
        end
    end
end)
v637:AddToggle({
    Name = 'Summon Tyrant Of The Skies',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng Ph\u{e1} B\u{ec}nh \u{110}\u{1ec3} Tri\u{1ec7}u H\u{1ed3}i Boss',
    Default = false,
    Callback = function(p748)
        _G.Farm8Binhs = p748

        StopTween(_G.Farm8Binhs)
    end,
})

local u749 = {
    CFrame.new(-16250.2354, 158.167007, 1313.01904, 0.999388874, 0, 0.0349550731, 0, 1, 0, -0.0349550731, 0, 0.999388874),
    CFrame.new(-16250.2354, 158.167007, 1313.01904, 0.999388874, 0, 0.0349550731, 0, 1, 0, -0.0349550731, 0, 0.999388874),
    CFrame.new(-16297.0596, 159.322998, 1317.224, -0.463313937, 0, 0.886194229, 0, 1, 0, -0.886194229, 0, -0.463313937),
    CFrame.new(-16335.0967, 159.334, 1324.88599, 0.999388874, 0, 0.0349550731, 0, 1, 0, -0.0349550731, 0, 0.999388874),
    CFrame.new(-16288.6094, 158.167007, 1470.36804, 0.999388874, 0, 0.0349550731, 0, 1, 0, -0.0349550731, 0, 0.999388874),
    CFrame.new(-16258.001, 156.761002, 1461.40405, 0.999388874, 0, 0.0349550731, 0, 1, 0, -0.0349550731, 0, 0.999388874),
    CFrame.new(-16245.4121, 158.436996, 1463.36597, -0.993159413, 0, 0.116766132, 0, 1, 0, -0.116766132, 0, -0.993159413),
    CFrame.new(-16212.4688, 158.167007, 1466.34399, 0.999388874, 0, 0.0349550731, 0, 1, 0, -0.0349550731, 0, 0.999388874),
}

function TweenToPosition(p750)
    local _Character6 = game.Players.LocalPlayer.Character

    if _Character6 then
        _Character6 = _Character6:FindFirstChild('HumanoidRootPart')
    end
    if _Character6 then
        local _TweenService3 = game:GetService('TweenService')
        local v753 = (_Character6.Position - p750.Position).Magnitude / 300
        local v754 = _TweenService3:Create(_Character6, TweenInfo.new(v753, Enum.EasingStyle.Linear), {CFrame = p750})

        v754:Play()
        v754.Completed:Wait()
    end
end
function Skill(p755)
    local _VirtualInputManager = game:GetService('VirtualInputManager')

    _VirtualInputManager:SendKeyEvent(true, Enum.KeyCode[p755], false, game)
    task.wait(0.05)
    _VirtualInputManager:SendKeyEvent(false, Enum.KeyCode[p755], false, game)
end
function Click()
    local _VirtualInputManager2 = game:GetService('VirtualInputManager')

    _VirtualInputManager2:SendMouseButtonEvent(0, 0, 0, true, game, 1)
    task.wait(0.05)
    _VirtualInputManager2:SendMouseButtonEvent(0, 0, 0, false, game, 1)
end
function FindWeapon(p758)
    local _Backpack = game.Players.LocalPlayer.Backpack
    local v760, v761, v762 = ipairs(_Backpack:GetChildren())

    while true do
        local v763

        v762, v763 = v760(v761, v762)

        if v762 == nil then
            break
        end
        if v763:IsA('Tool') then
            if p758 == 'Melee' and (v763.ToolTip == 'Melee' or v763.Name == 'Combat') then
                return v763.Name
            end
            if p758 == 'Sword' and v763.ToolTip == 'Sword' then
                return v763.Name
            end
            if p758 == 'Gun' and v763.ToolTip == 'Gun' then
                return v763.Name
            end
            if p758 == 'Fruit' and v763.ToolTip == 'Blox Fruit' then
                return v763.Name
            end
        end
    end

    return nil
end
function EquipWeapon(p764)
    if p764 then
        local _LocalPlayer7 = game.Players.LocalPlayer
        local v766 = _LocalPlayer7:WaitForChild('Backpack'):FindFirstChild(p764)

        if v766 then
            _LocalPlayer7.Character.Humanoid:EquipTool(v766)
        end
    end
end
function AttackAllSkills()
    local _Melee = FindWeapon('Melee')
    local _Sword = FindWeapon('Sword')
    local _Fruit = FindWeapon('Fruit')
    local _Gun = FindWeapon('Gun')

    if _Melee then
        EquipWeapon(_Melee)
        Skill('Z')
        Skill('X')
        Skill('C')
        Skill('V')
        Click()
    end
    if _Sword then
        EquipWeapon(_Sword)
        Skill('Z')
        Skill('X')
        Click()
    end
    if _Fruit then
        EquipWeapon(_Fruit)
        Skill('Z')
        Skill('X')
        Skill('C')
        Skill('F')
        Click()
    end
    if _Gun then
        EquipWeapon(_Gun)
        Skill('Z')
        Skill('X')
        Click()
    end
end

task.spawn(function()
    while task.wait(1) do
        if _G.Farm8Binhs then
            local v771, v772, v773 = ipairs(u749)

            while true do
                local v774

                v773, v774 = v771(v772, v773)

                if v773 == nil or not _G.Farm8Binhs then
                    break
                end

                TweenToPosition(v774 * CFrame.new(0, 5, 0))
                task.wait(0.5)
                AttackAllSkills()
                task.wait(3)
            end
        end
    end
end)
v637:AddSection({
    'X\u{1b0}\u{1a1}ng',
})

local u775 = v637:AddParagraph({
    Title = 'Check Bone',
    Content = 'Loading...',
})

task.spawn(function()
    while task.wait(1) do
        pcall(function()
            local _Bones = game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Bones', 'Check')

            u775:Set('You Have: ' .. tostring(_Bones) .. ' Bones')
        end)
    end
end)
v637:AddToggle({
    Name = 'Fram Bone',
    Description = 'Fram S\u{1b0}\u{1a1}ng',
    Default = false,
    Callback = function(p777)
        _G.FarmBone = p777

        StopTween(_G.FarmBone)
    end,
})
spawn(function()
    while wait() do
        local u778 = CFrame.new(-9508.5673828125, 142.1398468017578, 5737.3603515625)

        if _G.FarmBone and World3 then
            pcall(function()
                if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - u778.Position).Magnitude <= 2000 then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - u778.Position).Magnitude < 2000 then
                            TP1(u778)
                        end
                    else
                        TP1(u778)
                        wait(0.1)

                        for _ = 1, 8 do
                            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(u778)

                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SetSpawnPoint')
                            wait(0.1)
                        end
                    end
                else
                    TP1(u778)
                end
                if game:GetService('Workspace').Enemies:FindFirstChild('Reborn Skeleton') or (game:GetService('Workspace').Enemies:FindFirstChild('Living Zombie') or (game:GetService('Workspace').Enemies:FindFirstChild('Demonic Soul') or game:GetService('Workspace').Enemies:FindFirstChild('Posessed Mummy'))) then
                    local v779, v780, v781 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v782

                        v781, v782 = v779(v780, v781)

                        if v781 == nil then
                            break
                        end
                        if (v782.Name == 'Reborn Skeleton' or (v782.Name == 'Living Zombie' or (v782.Name == 'Demonic Soul' or v782.Name == 'Posessed Mummy'))) and (v782:FindFirstChild('Humanoid') and (v782:FindFirstChild('HumanoidRootPart') and v782.Humanoid.Health > 0)) then
                            repeat
                                task.wait()
                                AutoHaki()

                                NoAttackAnimation = true
                                NeedAttacking = true

                                EquipWeapon(_G.SelectWeapon)

                                v782.HumanoidRootPart.CanCollide = false
                                v782.Humanoid.WalkSpeed = 0
                                v782.Head.CanCollide = false
                                StartBring = true
                                MonFarm = v782.Name
                                PosMon = v782.HumanoidRootPart.CFrame

                                topos(v782.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                            until not _G.FarmBone or (not v782.Parent or v782.Humanoid.Health <= 0)
                        end
                    end
                else
                    StartBring = false

                    topos(CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375))

                    local v783, v784, v785 = pairs(game:GetService('ReplicatedStorage'):GetChildren())

                    while true do
                        local v786

                        v785, v786 = v783(v784, v785)

                        if v785 == nil then
                            break
                        end
                        if v786.Name ~= 'Reborn Skeleton' then
                            if v786.Name == 'Living Zombie' then
                                topos(v786.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                            elseif v786.Name == 'Demonic Soul' then
                                topos(v786.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                            elseif v786.Name == 'Posessed Mummy' then
                                topos(v786.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                            end
                        else
                            topos(v786.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end
            end)
        end
    end
end)
v637:AddToggle({
    Name = 'Seperator Hallow Scythe',
    Description = 'Tri\u{1ec7}u h\u{1ed3}i v\u{e0} ti\u{ea}u di\u{1ec7}t Soul Reaper',
    Default = false,
    Callback = function(p787)
        _G.Hallow = p787

        StopTween(_G.Hallow)
    end,
})
spawn(function()
    while wait() do
        if _G.Hallow then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('Soul Reaper') then
                    local v788, v789, v790 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v791

                        v790, v791 = v788(v789, v790)

                        if v790 == nil then
                            break
                        end
                        if string.find(v791.Name, 'Soul Reaper') then
                            repeat
                                task.wait()
                                EquipWeapon(_G.SelectWeapon)
                                AutoHaki()

                                v791.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                topos(v791.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                game:GetService('VirtualUser'):CaptureController()
                                game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 670))

                                v791.HumanoidRootPart.Transparency = 1
                            until v791.Humanoid.Health <= 0 or _G.Hallow == false
                        end
                    end
                elseif game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Hallow Essence') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Hallow Essence') then
                    repeat
                        TP1(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
                        wait()
                    until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8

                    EquipWeapon('Hallow Essence')
                elseif game:GetService('ReplicatedStorage'):FindFirstChild('Soul Reaper') then
                    TP1(game:GetService('ReplicatedStorage'):FindFirstChild('Soul Reaper').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                end
            end)
        end
    end
end)
v637:AddToggle({
    Name = 'Trade Bone',
    Description = 'T\u{1ef1} \u{111}\u{1ed9}ng \u{111}\u{1ed5}i x\u{1b0}\u{1a1}ng l\u{1ea5}y ph\u{1ea7}n th\u{1b0}\u{1edf}ng',
    Default = false,
    Callback = function(p792)
        _G.Rdbone = p792

        StopTween(_G.Rdbone)
    end,
})
spawn(function()
    while wait(0.1) do
        if _G.Rdbone then
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Bones', 'Buy', 1, 1)
        end
    end
end)
v637:AddToggle({
    Name = 'Auto Pray',
    Description = '',
    Default = false,
    Callback = function(p793)
        _G.Pray = p793

        StopTween(_G.Pray)
    end,
})
spawn(function()
    pcall(function()
        while wait(0.1) do
            if _G.Pray then
                TP1(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115, -2.48005533e-10, 0.18326205, -1.78910387e-9, 1, -8.24392288e-9, -0.18326205, -8.43218029e-9, -0.983064115))
                wait()
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 1)
            end
        end
    end)
end)
v637:AddToggle({
    Name = 'Auto Try Luck',
    Description = '',
    Default = false,
    Callback = function(p794)
        _G.Trylux = p794

        StopTween(_G.Trylux)
    end,
})
spawn(function()
    pcall(function()
        while wait(0.1) do
            if _G.Trylux then
                TP1(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115, -2.48005533e-10, 0.18326205, -1.78910387e-9, 1, -8.24392288e-9, -0.18326205, -8.43218029e-9, -0.983064115))
                wait()
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 2)
            end
        end
    end)
end)
v637:AddSection({
    'Katakuri',
})

local u795 = v637:AddParagraph({
    Title = 'Check Cake Prince',
    Content = 'Loading...',
})

task.spawn(function()
    while task.wait(1) do
        pcall(function()
            local _CakePrinceSpawner = game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner')

            if string.len(_CakePrinceSpawner) ~= 88 then
                if string.len(_CakePrinceSpawner) == 87 then
                    u795:Set('Killed : ' .. string.sub(_CakePrinceSpawner, 39, 40) .. ' / 500')
                elseif string.len(_CakePrinceSpawner) ~= 86 then
                    u795:Set('Prince King Spawned \u{2705}')
                else
                    u795:Set('Killed : ' .. string.sub(_CakePrinceSpawner, 39, 39) .. ' / 500')
                end
            else
                u795:Set('Killed : ' .. string.sub(_CakePrinceSpawner, 39, 41) .. ' / 500')
            end
        end)
    end
end)
v637:AddToggle({
    Name = 'Farm Katakuri',
    Description = 'Fram Qu\u{e1}i V\u{e0} \u{110}\u{e1}nh Ho\u{e0}ng T\u{1eed} B\u{1ed9}t V1',
    Default = false,
    Callback = function(p797)
        _G.FarmCake = p797

        StopTween(_G.FarmCake)
    end,
})

local u798 = CFrame.new(-2130.80712890625, 69.95634460449219, -12327.83984375)
local _ = game:GetService('Workspace').Enemies

task.spawn(function()
    while task.wait() do
        if _G.FarmCake then
            pcall(function()
                if not game:GetService('Workspace').Enemies:FindFirstChild('Cake Prince') then
                end

                local v799, v800, v801 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                while true do
                    local v802

                    v801, v802 = v799(v800, v801)

                    if v801 == nil then
                        return
                    end
                    if v802.Name == 'Cake Prince' and (v802:FindFirstChild('Humanoid') and (v802:FindFirstChild('HumanoidRootPart') and v802.Humanoid.Health > 0)) then
                        repeat
                            if true then
                                task.wait()
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)

                                v802.HumanoidRootPart.CanCollide = false
                                v802.Humanoid.WalkSpeed = 0
                                v802.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                if game:GetService('Workspace')._WorldOrigin:FindFirstChild('Ring') or (game:GetService('Workspace')._WorldOrigin:FindFirstChild('Fist') or game:GetService('Workspace')._WorldOrigin:FindFirstChild('MochiSwirl')) then
                                    topos(v802.HumanoidRootPart.CFrame * CFrame.new(0, -40, 0))
                                else
                                    topos(v802.HumanoidRootPart.CFrame * CFrame.new(4, 10, 10))
                                end
                            end

                            NeedAttacking = true
                        until not _G.FarmCake or (not v802.Parent or v802.Humanoid.Health <= 0)

                        wait(1)
                    end
                end

                local v803, v804, v805 = pairs({
                    'Cookie Crafter',
                    'Cake Guard',
                    'Baking Staff',
                    'Head Baker',
                })
                local v806 = false

                while true do
                    local v807

                    v805, v807 = v803(v804, v805)

                    if v805 == nil then
                        break
                    end
                    if game:GetService('Workspace').Enemies:FindFirstChild(v807) then
                        v806 = true

                        break
                    end
                end

                if not v806 then
                    local v808 = math.random(1, 3)

                    if v808 == 1 then
                        topos(CFrame.new(-1436.86011, 167.753616, -12296.9512))
                    elseif v808 == 2 then
                        topos(CFrame.new(-2383.78979, 150.450592, -12126.4961))
                    elseif v808 == 3 then
                        topos(CFrame.new(-2231.2793, 168.256653, -12845.7559))
                    end
                    if BypassTP then
                        if (playerPos - u798.Position).Magnitude > 1500 then
                            BTP(u798)
                        else
                            topos(u798)
                        end
                    else
                        topos(u798)
                    end

                    UnEquipWeapon(_G.Selectweapon)
                    topos(CFrame.new(-2130.80712890625, 69.95634460449219, -12327.83984375))
                end

                local v809, v810, v811 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                DamageAura = false

                local v812

                v811, v812 = v809(v810, v811)

                if v811 == nil then
                end
                if v812.Name ~= 'Cookie Crafter' and (v812.Name ~= 'Cake Guard' and (v812.Name ~= 'Baking Staff' and v812.Name ~= 'Head Baker')) or (not v812:FindFirstChild('Humanoid') or (not v812:FindFirstChild('HumanoidRootPart') or v812.Humanoid.Health <= 0)) then
                end
                if true then
                    task.wait()
                    AutoHaki()
                    EquipWeapon(_G.SelectWeapon)

                    v812.HumanoidRootPart.CanCollide = false
                    v812.Humanoid.WalkSpeed = 0
                    StartBring = true
                    v812.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                    PosMon = v812.HumanoidRootPart.CFrame
                    MonFarm = v812.Name
                    v812.Head.CanCollide = false

                    topos(v812.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))

                    NeedAttacking = true

                    if v812.Name == 'Cookie Crafter' then
                        Bring(v812.Name, CFrame.new(-2212.88965, 37.0051041, -11969.2568, 0.458114207, 0, -0.888893366, 0, 1, 0, 0.888893366, 0, 0.458114207))
                    elseif v812.Name ~= 'Cake Guard' then
                        if v812.Name ~= 'Baking Staff' then
                            if v812.Name == 'Head Baker' then
                                Bring(v812.Name, CFrame.new(-2151.37793, 51.0095749, -13033.3975, -0.996587753, 0, 0.0825396702, 0, 1, 0, -0.0825396702, 0, -0.996587753))
                            end
                        else
                            Bring(v812.Name, CFrame.new(-1980.4375, 34.6653099, -12983.8408, -0.254338264, 0, -0.967115223, 0, 1, 0, 0.967115223, 0, -0.254338264))
                        end
                    else
                        Bring(v812.Name, CFrame.new(-1693.98047, 35.2188225, -12436.8438, -0.716115236, 0, -0.697982132, 0, 1, 0, 0.697982132, 0, -0.716115236))
                    end
                end
                if _G.FarmCake and (v812.Parent and v812.Humanoid.Health > 0) and (game:GetService('Workspace').Map.CakeLoaf.BigMirror.Other.Transparency ~= 0 and not (game:GetService('ReplicatedStorage'):FindFirstChild('Cake Prince [Lv. 2300] [Raid Boss]') or game:GetService('Workspace').Enemies:FindFirstChild('Cake Prince [Lv. 2300] [Raid Boss]'))) then
                else
                end
            end)
        end
    end
end)
v637:AddToggle({
    Name = 'Farm Katakuri V2',
    Description = 'Fram Qu\u{e1}i V\u{e0} \u{110}\u{e1}nh Ho\u{e0}ng T\u{1eed} B\u{1ed9}t V2',
    Default = false,
    Callback = function(p813)
        _G.Fullykatakuri = p813

        StopTween(_G.Fullykatakuri)
    end,
})
spawn(function()
    while wait() do
        if _G.Fullykatakuri then
            pcall(function()
                if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                    if string.find(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SweetChaliceNpc'), 'Where') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SweetChaliceNpc')
                    end
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild('Sweet Chalice') or game.Players.LocalPlayer.Character:FindFirstChild('Sweet Chalice') then
                    if string.find(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner'), 'Do you want to open the portal now?') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner')
                    elseif game.Workspace.Enemies:FindFirstChild('Baking Staff') or (game.Workspace.Enemies:FindFirstChild('Head Baker') or (game.Workspace.Enemies:FindFirstChild('Cake Guard') or game.Workspace.Enemies:FindFirstChild('Cookie Crafter'))) then
                        local v814, v815, v816 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v817

                            v816, v817 = v814(v815, v816)

                            if v816 == nil then
                                break
                            end
                            if (v817.Name == 'Baking Staff' or (v817.Name == 'Head Baker' or (v817.Name == 'Cake Guard' or v817.Name == 'Cookie Crafter'))) and v817.Humanoid.Health > 0 then
                                repeat
                                    wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()

                                    PosMon = v817.HumanoidRootPart.CFrame

                                    topos(v817.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))

                                    v817.HumanoidRootPart.CanCollide = false
                                    v817.Humanoid.WalkSpeed = 0
                                    v817.Head.CanCollide = false

                                    attackGunEnemies(v817.Name, 5)

                                    v817.HumanoidRootPart.Size = Vector3.new(70, 70, 70)
                                    StartBring = false
                                    MonFarm = v817.Name

                                    game:GetService('VirtualUser'):CaptureController()
                                    game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
                                until _G.Fullykatakuri == false or (game:GetService('ReplicatedStorage'):FindFirstChild('Cake Prince') or (not v817.Parent or v817.Humanoid.Health <= 0))
                            end
                        end
                    else
                        CakeBring = false
                        StartBring = false

                        topos(CFrame.new(-1820.0634765625, 210.74781799316406, -12297.49609375))
                    end
                elseif game.ReplicatedStorage:FindFirstChild('Dough King') or game:GetService('Workspace').Enemies:FindFirstChild('Dough King') then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Dough King') then
                        local v818, v819, v820 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v821

                            v820, v821 = v818(v819, v820)

                            if v820 == nil then
                                break
                            end
                            if v821.Name == 'Dough King' then
                                repeat
                                    wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)

                                    v821.HumanoidRootPart.Size = Vector3.new(70, 70, 70)
                                    v821.HumanoidRootPart.CanCollide = false
                                    StartBring = false

                                    topos(v821.HumanoidRootPart.CFrame * CFrame.new(0, -40, 0))
                                    game:GetService('VirtualUser'):CaptureController()
                                    game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
                                until _G.Fullykatakuri == false or (not v821.Parent or v821.Humanoid.Health <= 0)
                            end
                        end
                    else
                        topos(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875))
                    end
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild('Red Key') or game.Players.LocalPlayer.Character:FindFirstChild('Red Key') then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'CakeScientist',
                        'Check',
                    }))
                elseif game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Diablo') or (string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Deandre') or string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Urban')) then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Diablo') or (game:GetService('Workspace').Enemies:FindFirstChild('Deandre') or game:GetService('Workspace').Enemies:FindFirstChild('Urban')) then
                            local v822, v823, v824 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v825

                                v824, v825 = v822(v823, v824)

                                if v824 == nil then
                                    break
                                end
                                if (v825.Name == 'Diablo' or (v825.Name == 'Deandre' or v825.Name == 'Urban')) and (v825:FindFirstChild('Humanoid') and (v825:FindFirstChild('HumanoidRootPart') and v825.Humanoid.Health > 0)) then
                                    repeat
                                        wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)

                                        PosMon = v825.HumanoidRootPart.CFrame

                                        topos(v825.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))

                                        v825.HumanoidRootPart.CanCollide = false
                                        v825.Humanoid.WalkSpeed = 0
                                        v825.Head.CanCollide = false

                                        attackGunEnemies(v825.Name, 5)

                                        v825.HumanoidRootPart.Size = Vector3.new(70, 70, 70)
                                        StartBring = false
                                        MonFarm = v825.Name

                                        game:GetService('VirtualUser'):CaptureController()
                                        game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
                                        sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                    until _G.Fullykatakuri == false or (v825.Humanoid.Health <= 0 or not v825.Parent) or (game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice"))
                                end
                            end
                        elseif game:GetService('ReplicatedStorage'):FindFirstChild('Diablo') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Diablo').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        elseif game:GetService('ReplicatedStorage'):FindFirstChild('Deandre') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Deandre').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        elseif game:GetService('ReplicatedStorage'):FindFirstChild('Urban') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Urban').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                else
                    wait(0.5)
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter')
                end
            end)
        end
    end
end)
v637:AddSection({
    'Auto Farm Chest And Berry',
})
v637:AddToggle({
    Name = 'Auto Collect Berry',
    Description = 'T\u{1ef1} \u{111}\u{1ed9}ng Nh\u{1eb7}t Berry',
    Default = false,
    Callback = function(p826)
        _G.CollectBerry = p826

        StopTween(_G.CollectBerry)
    end,
})
spawn(function()
    while wait() do
        if _G.CollectBerry then
            local _LocalPlayer8 = game:GetService('Players').LocalPlayer
            local _Position3 = (_LocalPlayer8.Character or _LocalPlayer8.CharacterAdded:Wait()):GetPivot().Position
            local _BerryBush2 = game:GetService('CollectionService'):GetTagged('BerryBush')
            local _huge2 = math.huge
            local v831, v832, v833 = ipairs(_BerryBush2)
            local v834 = nil
            local v835 = nil

            while true do
                local v836

                v833, v836 = v831(v832, v833)

                if v833 == nil then
                    break
                end

                local v837, v838, v839 = pairs(v836:GetAttributes())

                while true do
                    local v840

                    v839, v840 = v837(v838, v839)

                    if v839 == nil then
                        break
                    end

                    local _Magnitude5 = (v836.Parent:GetPivot().Position - _Position3).Magnitude

                    if _Magnitude5 < _huge2 then
                        v835 = v839
                        v834 = v836
                        _huge2 = _Magnitude5
                    end
                end
            end

            if v834 and v835 then
                local _Parent = v834.Parent
                local _Position4 = _Parent:GetPivot().Position

                TP1(CFrame.new(_Position4 + Vector3.new(0, 2, 0)))
                task.wait(0.5)

                local v844 = _Parent:FindFirstChild(v835)

                if v844 and v844:IsA('BasePart') then
                    TP1(v844.CFrame + Vector3.new(0, 1, 0))
                    task.wait(0.3)

                    local _VirtualInputManager3 = game:GetService('VirtualInputManager')

                    _VirtualInputManager3:SendKeyEvent(true, Enum.KeyCode.E, false, game)
                    task.wait(0.1)
                    _VirtualInputManager3:SendKeyEvent(false, Enum.KeyCode.E, false, game)
                end
            elseif _G.CollectBerryHop then
                Hop()
            end
        end
    end
end)
v637:AddToggle({
    Name = 'Auto Farm Chest [ Tween ]',
    Description = 'T\u{1ef1} \u{111}\u{1ed9}ng Nh\u{1eb7}t r\u{1b0}\u{1a1}ng b\u{1eb1}ng tween',
    Default = false,
    Callback = function(p846)
        _G.FarmChest = p846

        StopTween(_G.FarmChest)
    end,
})
spawn(function()
    while wait() do
        if _G.FarmChest then
            local _LocalPlayer9 = game:GetService('Players').LocalPlayer
            local _Position5 = (_LocalPlayer9.Character or _LocalPlayer9.CharacterAdded:Wait()):GetPivot().Position
            local __ChestTagged = game:GetService('CollectionService'):GetTagged('_ChestTagged')
            local _huge3 = math.huge
            local v851 = nil

            for v852 = 1, #__ChestTagged do
                local v853 = __ChestTagged[v852]
                local _Magnitude6 = (v853:GetPivot().Position - _Position5).Magnitude

                if not v853:GetAttribute('IsDisabled') then
                    if _Magnitude6 < _huge3 then
                        v851 = v853
                        _huge3 = _Magnitude6
                    end
                end
            end

            if v851 then
                local _Position6 = v851:GetPivot().Position
                local v856 = CFrame.new(_Position6)

                topos(v856)
            end
        end
    end
end)
v637:AddSection({
    'Boss Fram',
})
v637:AddButton({
    Name = 'C\u{1ead}p Nh\u{1ead}t Boss',
    Description = 'L\u{e0}m m\u{1edb}i danh s\u{e1}ch boss',
    Callback = function() end,
})

local u857 = v637:AddParagraph({
    Title = 'Boss Spawn Status',
    Content = 'Initializing...',
})

task.spawn(function()
    while task.wait(1) do
        pcall(function()
            if _G.SelectBoss and (game:GetService('ReplicatedStorage'):FindFirstChild(_G.SelectBoss) or game:GetService('Workspace').Enemies:FindFirstChild(_G.SelectBoss)) then
                u857:Set('Status: Boss Spawn \u{2705}')
            else
                u857:Set('Status: Boss Not Spawn \u{274c}')
            end
        end)
    end
end)

local v858 = World1 and {
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
} or (World2 and {
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
} or (World3 and {
    '',
    'Tyrant of the Skies',
    'Stone',
    'Island Empress',
    'Kilo Admiral',
    'Captain Elephant',
    'Beautiful Pirate',
    'rip_indra True Form',
    'Longma',
    'Soul Reaper',
    'Cake Queen',
} or {}))

v637:AddDropdown({
    Name = 'Auto Select Boss',
    Description = 'Ch\u{1ecd}n Boss C\u{1ea7}n Farm',
    Options = v858,
    Default = v858[1],
    Callback = function(p859)
        _G.SelectBoss = p859
    end,
})
v637:AddToggle({
    Name = 'Farm Boss',
    Description = 'Farm Boss \u{110}\u{e3} Ch\u{1ecd}n',
    Default = false,
    Callback = function(p860)
        _G.AutoBoss = p860

        StopTween(_G.AutoBoss)
    end,
})
task.spawn(function()
    while task.wait() do
        if _G.AutoBoss and _G.SelectBoss then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild(_G.SelectBoss) then
                    local v861, v862, v863 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v864

                        v863, v864 = v861(v862, v863)

                        if v863 == nil then
                            break
                        end
                        if v864.Name == _G.SelectBoss and (v864:FindFirstChild('Humanoid') and (v864:FindFirstChild('HumanoidRootPart') and v864.Humanoid.Health > 0)) then
                            repeat
                                task.wait()
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)

                                v864.HumanoidRootPart.CanCollide = false
                                v864.Humanoid.WalkSpeed = 0
                                v864.HumanoidRootPart.Size = Vector3.new(80, 80, 80)

                                topos(v864.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                            until not _G.AutoBoss or (not v864.Parent or v864.Humanoid.Health <= 0)
                        end
                    end
                elseif game:GetService('ReplicatedStorage'):FindFirstChild(_G.SelectBoss) then
                    topos(game:GetService('ReplicatedStorage'):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                end
            end)
        end
    end
end)
v637:AddSection({
    'Material',
})

local v865 = World1 and {
    'Magma Ore',
    'Angel Wings',
    'Leather',
    'Scrap Metal',
} or (World2 and {
    'Radioactive',
    'Mystic Droplet',
    'Magma Ore',
    'Leather',
    'Ectoplasm',
    'Scrap Metal',
} or (World3 and {
    'Leather',
    'Scrap Metal',
    'Conjured Cocoa',
    'Dragon Scale',
    'Gunpowder',
    'Fish Tail',
    'Mini Tusk',
} or {}))

function getConfigMaterial(p866)
    if p866 == 'Radioactive' and World2 then
        MaterialMon = {
            'Factory Staff',
        }
        MaterialPos = CFrame.new(-507.78, 73, -126.45)
    elseif p866 == 'Mystic Droplet' and World2 then
        MaterialMon = {
            'Water Fighter',
        }
        MaterialPos = CFrame.new(-3352.9, 285.01, -10534.84)
    elseif p866 == 'Magma Ore' and World1 then
        MaterialMon = {
            'Military Spy',
        }
        MaterialPos = CFrame.new(-5850.28, 77.28, 8848.67)
    elseif p866 == 'Magma Ore' and World2 then
        MaterialMon = {
            'Lava Pirate',
        }
        MaterialPos = CFrame.new(-5234.6, 51.95, -4732.27)
    elseif p866 == 'Angel Wings' and World1 then
        MaterialMon = {
            'Royal Soldier',
        }
        MaterialPos = CFrame.new(-7827.15, 5606.91, -1705.58)
    elseif p866 == 'Leather' and World1 then
        MaterialMon = {
            'Pirate',
        }
        MaterialPos = CFrame.new(-1211.87, 4.78, 3916.83)
    elseif p866 == 'Leather' and World2 then
        MaterialMon = {
            'Marine Captain',
        }
        MaterialPos = CFrame.new(-2010.5, 73, -3326.62)
    elseif p866 == 'Leather' and World3 then
        MaterialMon = {
            'Jungle Pirate',
        }
        MaterialPos = CFrame.new(-11975.78, 331.77, -10620.03)
    elseif p866 == 'Ectoplasm' and World2 then
        MaterialMon = {
            'Ship Deckhand',
            'Ship Engineer',
            'Ship Steward',
            'Ship Officer',
        }
        MaterialPos = CFrame.new(911.35, 125.95, 33159.53)
    elseif p866 == 'Scrap Metal' and World1 then
        MaterialMon = {
            'Brute',
        }
        MaterialPos = CFrame.new(-1132.42, 14.84, 4293.3)
    elseif p866 == 'Scrap Metal' and World2 then
        MaterialMon = {
            'Mercenary',
        }
        MaterialPos = CFrame.new(-972.3, 73.04, 1419.29)
    elseif p866 == 'Scrap Metal' and World3 then
        MaterialMon = {
            'Pirate Millionaire',
        }
        MaterialPos = CFrame.new(-289.63, 43.82, 5583.66)
    elseif p866 == 'Conjured Cocoa' and World3 then
        MaterialMon = {
            'Chocolate Bar Battler',
        }
        MaterialPos = CFrame.new(744.79, 24.76, -12637.72)
    elseif p866 == 'Dragon Scale' and World3 then
        MaterialMon = {
            'Dragon Crew Warrior',
        }
        MaterialPos = CFrame.new(5824.06, 51.38, -1106.69)
    elseif p866 == 'Gunpowder' and World3 then
        MaterialMon = {
            'Pistol Billionaire',
        }
        MaterialPos = CFrame.new(-379.61, 73.84, 5928.52)
    elseif p866 == 'Fish Tail' and World3 then
        MaterialMon = {
            'Fishman Captain',
        }
        MaterialPos = CFrame.new(-10961.01, 331.79, -8914.29)
    elseif p866 == 'Mini Tusk' and World3 then
        MaterialMon = {
            'Mithological Pirate',
        }
        MaterialPos = CFrame.new(-13516.04, 469.81, -6899.16)
    end
end

v637:AddDropdown({
    Name = 'Select Material',
    Description = 'Ch\u{1ecd}n v\u{1ead}t ph\u{1ea9}m c\u{1ea7}n farm',
    Options = v865,
    Default = v865[1],
    Callback = function(p867)
        _G.SelectMaterial = p867
    end,
})
v637:AddToggle({
    Name = 'Start Farm',
    Description = 'T\u{1ef1} \u{111}\u{1ed9}ng farm material \u{111}\u{e3} ch\u{1ecd}n',
    Default = false,
    Callback = function(p868)
        _G.AutoFarmMaterial = p868

        StopTween(_G.AutoFarmMaterial)
    end,
})
task.spawn(function()
    while task.wait(0.2) do
        if _G.AutoFarmMaterial and _G.SelectMaterial then
            pcall(function()
                getConfigMaterial(_G.SelectMaterial)

                local v869, v870, v871 = pairs(MaterialMon)

                while true do
                    local v872

                    v871, v872 = v869(v870, v871)

                    if v871 == nil then
                        break
                    end
                    if workspace.Enemies:FindFirstChild(v872) then
                        local v873, v874, v875 = pairs(workspace.Enemies:GetChildren())

                        while true do
                            local v876

                            v875, v876 = v873(v874, v875)

                            if v875 == nil then
                                break
                            end
                            if v876.Name == v872 and (v876:FindFirstChild('Humanoid') and (v876:FindFirstChild('HumanoidRootPart') and v876.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)

                                    PosMon = v876.HumanoidRootPart.CFrame
                                    MonFarm = v876.Name

                                    topos(v876.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                until not _G.AutoFarmMaterial or (not v876.Parent or v876.Humanoid.Health <= 0)
                            end
                        end
                    else
                        UnEquipWeapon(_G.SelectWeapon)

                        if _G.SelectMaterial == 'Ectoplasm' and (MaterialPos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 18000 then
                            game.ReplicatedStorage.Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21, 126.97, 32852.83))
                        end

                        topos(MaterialPos)
                    end
                end
            end)
        end
    end
end)
v639:AddSection({
    'Auto Fishing |  T\u{1ef1} \u{110}\u{1ed9}ng C\u{e2}u C\u{e1}',
})
v639:AddToggle({
    Title = 'Auto Fishing',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng C\u{e2}u C\u{e1} Xo\u{e1} Hi\u{1ec7}u \u{1ee8}ng Khi C\u{e2}u',
    Default = false,
    Callback = function(p877)
        _G.AutoFishing = p877
    end,
})

local _ = workspace
local _LocalPlayer10 = game.Players.LocalPlayer
local _FishReplicated = game.ReplicatedStorage:WaitForChild('FishReplicated')
local _FishingRequest = _FishReplicated:WaitForChild('FishingRequest')
local _MaxLaunchDistance = require(_FishReplicated.FishingClient.Config).Rod.MaxLaunchDistance
local u882 = require(game.ReplicatedStorage.Util.GetWaterHeightAtLocation)

task.spawn(function()
    while task.wait() do
        if _G.AutoFishing then
            local _Character7 = _LocalPlayer10.Character
            local v884

            if _Character7 then
                v884 = _Character7:FindFirstChild('HumanoidRootPart')
            else
                v884 = _Character7
            end

            local v885

            if _Character7 then
                v885 = _Character7:FindFirstChildOfClass('Tool')
            else
                v885 = _Character7
            end

            local v886

            if _G.SelectedRod and (not v885 or v885.Name ~= _G.SelectedRod) then
                v886 = _LocalPlayer10.Backpack:FindFirstChild(_G.SelectedRod)

                if v886 then
                    _LocalPlayer10.Character.Humanoid:EquipTool(v886)
                else
                    v886 = v885
                end
            else
                v886 = v885
            end
            if _Character7 and (v884 and v886) then
                local v887 = u882(v884.Position)
                local _, v888 = workspace:FindPartOnRayWithIgnoreList(Ray.new(_Character7.Head.Position, v884.CFrame.LookVector * _MaxLaunchDistance), {
                    _Character7,
                    workspace.Characters,
                    workspace.Enemies,
                })

                if v888 then
                    v888 = Vector3.new(v888.X, math.max(v888.Y, v887), v888.Z)
                end

                local _State = v886:GetAttribute('State')
                local _ServerState = v886:GetAttribute('ServerState')

                if (_State == 'ReeledIn' or _ServerState == 'ReeledIn') and v888 then
                    _FishingRequest:InvokeServer('StartCasting')
                    task.wait()
                    _FishingRequest:InvokeServer('CastLineAtLocation', v888, 100, true)
                elseif _ServerState == 'Biting' then
                    _FishingRequest:InvokeServer('Catching', true)
                    task.wait(0.1)
                    _FishingRequest:InvokeServer('Catch', 1)
                end
            end
        end
    end
end)
v639:AddDropdown({
    Name = 'Select Fishing Lure',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng Ch\u{1ecd}n M\u{1ed3}i Khi C\u{e2}u C\u{e1}',
    Options = {
        'Basic Bait',
        'Kelp Bait',
        'Good Bait',
        'Abyssal Bait',
        'Frozen Bait',
        'Epic Bait',
        'Carnivore Bait',
    },
    Default = 'Basic Bait',
    Callback = function(p891)
        _G.SelectedBait = p891

        _FishingRequest:InvokeServer('SelectBait', p891)
    end,
})
v639:AddDropdown({
    Name = 'Select Fishing Rod',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng Ch\u{1ecd}n C\u{1ea7}n C\u{e2}u Khi C\u{e2}u C\u{e1}',
    Options = {
        'Fishing Rod',
        'Gold Rod',
        'Shark Rod',
        'Shell Rod',
        'Treasure Rod',
    },
    Default = 'Fishing Rod',
    Callback = function(p892)
        _G.SelectedRod = p892
    end,
})

if World1 then
    v641:AddSection({
        'Quest Sea 1',
    })
    v641:AddToggle({
        Name = 'AutoSecondSea',
        Description = 'T\u{1ef1} \u{111}\u{1ed9}ng Auto Quest Sea 2',
        Default = false,
        Callback = function(p893)
            _G.AutoSecondSea = p893

            StopTween(_G.AutoSecondSea)
        end,
    })
    spawn(function()
        while wait() do
            if _G.AutoSecondSea then
                pcall(function()
                    if game.Players.LocalPlayer.Data.Level.Value >= 700 and World1 then
                        _G.AutoFarm = false

                        if game.Workspace.Map.Ice.Door.CanCollide ~= true or game.Workspace.Map.Ice.Door.Transparency ~= 0 then
                            if game.Workspace.Map.Ice.Door.CanCollide ~= false or game.Workspace.Map.Ice.Door.Transparency ~= 1 then
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelDressrosa')
                            elseif game:GetService('Workspace').Enemies:FindFirstChild('Ice Admiral') then
                                local v894, v895, v896 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                while true do
                                    local v897

                                    v896, v897 = v894(v895, v896)

                                    if v896 == nil then
                                        break
                                    end
                                    if v897.Name == 'Ice Admiral' and v897.Humanoid.Health > 0 then
                                        repeat
                                            wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)

                                            v897.HumanoidRootPart.CanCollide = false
                                            StartBring = true
                                            v897.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v897.HumanoidRootPart.Transparency = 1

                                            topos(v897.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                            game:GetService('VirtualUser'):CaptureController()
                                            game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 870), workspace.CurrentCamera.CFrame)
                                        until v897.Humanoid.Health <= 0 or not (v897.Parent and _G.AutoSecondSea)

                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelDressrosa')
                                    end
                                end
                            else
                                topos(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                            end
                        else
                            repeat
                                wait()
                                topos(CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563))
                            until (CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoSecondSea

                            wait(1)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('DressrosaQuestProgress', 'Detective')
                            EquipWeapon('Key')

                            local v898 = CFrame.new(1347.7124, 37.3751602, -1325.6488)

                            repeat
                                wait()
                                topos(v898)
                            until (v898.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoSecondSea

                            wait(3)
                        end
                    end
                end)
            end
        end
    end)
    v641:AddSection({
        'Boss Greybeard',
    })
    v641:AddToggle({
        Name = 'Kill Greybeard',
        Description = 'T\u{1ef1} \u{111}\u{1ed9}ng \u{110}\u{e1}nh Greybeard',
        Default = false,
        Callback = function(p899)
            _G.Greybeard = p899

            StopTween(_G.Greybeard)
        end,
    })
    spawn(function()
        while wait() do
            if _G.Greybeard then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Greybeard') then
                        local v900, v901, v902 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v903

                            v902, v903 = v900(v901, v902)

                            if v902 == nil then
                                break
                            end
                            if v903.Name == 'Greybeard' and (v903:FindFirstChild('Humanoid') and (v903:FindFirstChild('HumanoidRootPart') and v903.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)

                                    v903.HumanoidRootPart.CanCollide = false
                                    v903.Humanoid.WalkSpeed = 0
                                    v903.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                    topos(v903.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                    game:GetService('VirtualUser'):CaptureController()
                                    game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
                                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.Greybeard or (not v903.Parent or v903.Humanoid.Health <= 0)
                            end
                        end
                    else
                        topos(CFrame.new(-5023.38330078125, 28.65203285217285, 4332.3818359375))

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Greybeard') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Greybeard').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        elseif _G.Greybeardhop then
                            Hop()
                        end
                    end
                end)
            end
        end
    end)
    v641:AddSection({
        'Quest Sword',
    })
    v641:AddToggle({
        Name = 'Auto Get Saber',
        Description = 'T\u{1ef1} \u{111}\u{1ed9}ng L\u{1ea5}y Ki\u{1ebf}m Saber',
        Default = false,
        Callback = function(p904)
            _G.AutoSaber = p904

            StopTween(_G.AutoSaber)
        end,
    })
    spawn(function()
        while task.wait() do
            if _G.AutoSaber and game.Players.LocalPlayer.Data.Level.Value >= 200 then
                pcall(function()
                    if game:GetService('Workspace').Map.Jungle.Final.Part.Transparency == 0 then
                        if game:GetService('Workspace').Map.Jungle.QuestPlates.Door.Transparency ~= 0 then
                            if game:GetService('Workspace').Map.Desert.Burn.Part.Transparency ~= 0 then
                                if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'SickMan') == 0 then
                                    if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon') ~= 'RichSon' then
                                        if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon') == 0 then
                                            if game:GetService('Workspace').Enemies:FindFirstChild('Mob Leader') or game:GetService('ReplicatedStorage'):FindFirstChild('Mob Leader') then
                                                topos(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559))

                                                local v905, v906, v907 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                                while true do
                                                    local v908

                                                    v907, v908 = v905(v906, v907)

                                                    if v907 == nil then
                                                        break
                                                    end
                                                    if v908.Name == 'Mob Leader' then
                                                        if game:GetService('Workspace').Enemies:FindFirstChild('Mob Leader') and (v908:FindFirstChild('Humanoid') and (v908:FindFirstChild('HumanoidRootPart') and v908.Humanoid.Health > 0)) then
                                                            repeat
                                                                task.wait()
                                                                AutoHaki()
                                                                EquipWeapon(_G.SelectWeapon)

                                                                v908.HumanoidRootPart.CanCollide = false
                                                                v908.Humanoid.WalkSpeed = 0
                                                                v908.HumanoidRootPart.Size = Vector3.new(80, 80, 80)

                                                                topos(v908.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                                                game:GetService('VirtualUser'):CaptureController()
                                                                game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
                                                                sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                                            until v908.Humanoid.Health <= 0 or not _G.AutoSaber
                                                        end
                                                        if game:GetService('ReplicatedStorage'):FindFirstChild('Mob Leader [Lv. 120] [Boss]') then
                                                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Mob Leader [Lv. 120] [Boss]').HumanoidRootPart.CFrame * Farm_Mode)
                                                        end
                                                    end
                                                end
                                            end
                                        elseif game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon') == 1 then
                                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon')
                                            wait(0.5)
                                            EquipWeapon('Relic')
                                            wait(0.5)
                                            topos(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-9, 0.481375456, 2.53851997e-8, 1, -5.79995607e-8, -0.481375456, 6.30572643e-8, 0.876514494))
                                        end
                                    else
                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon')
                                    end
                                else
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'GetCup')
                                    wait(0.5)
                                    EquipWeapon('Cup')
                                    wait(0.5)
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'FillCup', game:GetService('Players').LocalPlayer.Character.Cup)
                                    wait(0)
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'SickMan')
                                end
                            elseif game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Torch') or game.Players.LocalPlayer.Character:FindFirstChild('Torch') then
                                EquipWeapon('Torch')
                                topos(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-9, 0.761243105, -5.70652914e-10, 1, 1.20584542e-9, -0.761243105, 3.4754488199999996e-10, -0.648466587))
                            else
                                topos(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 0.0000342372805, -0.258850515, 0.965917408))
                            end
                        elseif (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-9, -0.928667724, 3.97099491e-8, 1, 1.91679348e-8, 0.928667724, -4.39869794e-8, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                            topos(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame)
                            wait(1)

                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Map.Jungle.QuestPlates.Plate1.Button.CFrame

                            wait(1)

                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Map.Jungle.QuestPlates.Plate2.Button.CFrame

                            wait(1)

                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Map.Jungle.QuestPlates.Plate3.Button.CFrame

                            wait(1)

                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Map.Jungle.QuestPlates.Plate4.Button.CFrame

                            wait(1)

                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Map.Jungle.QuestPlates.Plate5.Button.CFrame

                            wait(1)
                        else
                            topos(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-9, -0.928667724, 3.97099491e-8, 1, 1.91679348e-8, 0.928667724, -4.39869794e-8, 0.37091279))
                        end
                    elseif game:GetService('Workspace').Enemies:FindFirstChild('Saber Expert') or game:GetService('ReplicatedStorage'):FindFirstChild('Saber Expert') then
                        local v909, v910, v911 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v912

                            v911, v912 = v909(v910, v911)

                            if v911 == nil then
                                break
                            end
                            if v912:FindFirstChild('Humanoid') and (v912:FindFirstChild('HumanoidRootPart') and (v912.Humanoid.Health > 0 and v912.Name == 'Saber Expert')) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    topos(v912.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))

                                    v912.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v912.HumanoidRootPart.Transparency = 1
                                    v912.Humanoid.JumpPower = 0
                                    v912.Humanoid.WalkSpeed = 0
                                    v912.HumanoidRootPart.CanCollide = false
                                    FarmPos = v912.HumanoidRootPart.CFrame
                                    MonFarm = v912.Name

                                    game:GetService('VirtualUser'):CaptureController()
                                    game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672), workspace.CurrentCamera.CFrame)
                                until v912.Humanoid.Health <= 0 or not _G.AutoSaber

                                if v912.Humanoid.Health <= 0 then
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'PlaceRelic')
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)
    v641:AddToggle({
        Name = 'Auto Get Sword Pole',
        Description = 'T\u{1ef1} \u{111}\u{1ed9}ng L\u{1ea5}y Ki\u{1ebf}m Pole',
        Default = false,
        Callback = function(p913)
            _G.Autopole = p913

            StopTween(_G.Autopole)
        end,
    })
    spawn(function()
        while wait() do
            if _G.Autopole then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Thunder God') then
                        local v914, v915, v916 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v917

                            v916, v917 = v914(v915, v916)

                            if v916 == nil then
                                break
                            end
                            if v917.Name == 'Thunder God' and (v917:FindFirstChild('Humanoid') and (v917:FindFirstChild('HumanoidRootPart') and v917.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)

                                    v917.HumanoidRootPart.CanCollide = false
                                    StartBring = true
                                    v917.Humanoid.WalkSpeed = 0
                                    v917.HumanoidRootPart.Size = Vector3.new(80, 80, 80)

                                    topos(v917.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                    sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.Autopole or (not v917.Parent or v917.Humanoid.Health <= 0)
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Thunder God') then
                        TP1(game:GetService('ReplicatedStorage'):FindFirstChild('Thunder God').HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                    end
                end)
            end
        end
    end)
    v641:AddToggle({
        Name = 'Auto Get Sword Saw',
        Description = 'T\u{1ef1} \u{111}\u{1ed9}ng L\u{1ea5}y Ki\u{1ebf}m Saw',
        Default = false,
        Callback = function(p918)
            _G.Autosaw = p918

            StopTween(_G.Autosaw)
        end,
    })

    local u919 = CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094)

    spawn(function()
        while wait() do
            if _G.Autosaw then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('The Saw') then
                        local v920, v921, v922 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v923

                            v922, v923 = v920(v921, v922)

                            if v922 == nil then
                                break
                            end
                            if v923.Name == 'The Saw' and (v923:FindFirstChild('Humanoid') and (v923:FindFirstChild('HumanoidRootPart') and v923.Humanoid.Health > 0)) then
                                repeat
                                    task.wait(_G.FastAttackDelay)
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)

                                    v923.HumanoidRootPart.CanCollide = false
                                    v923.Humanoid.WalkSpeed = 0
                                    v923.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                    topos(v923.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                    AttackNoCD()
                                until not _G.Autosaw or (not v923.Parent or v923.Humanoid.Health <= 0)
                            end
                        end
                    else
                        if BypassTP then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - u919.Position).Magnitude <= 1500 then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - u919.Position).Magnitude < 1500 then
                                    topos(u919)
                                end
                            else
                                BTP(u919)
                            end
                        else
                            topos(u919)
                        end

                        EquipWeapon(_G.SelectWeapon)
                        topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))

                        if game:GetService('ReplicatedStorage'):FindFirstChild('The Saw') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('The Saw').HumanoidRootPart.CFrame * CFrame.new(2, 40, 2))
                        end
                    end
                end)
            end
        end
    end)
    v641:AddToggle({
        Name = 'Auto Get Sword Wardens',
        Description = 'T\u{1ef1} \u{111}\u{1ed9}ng L\u{1ea5}y Ki\u{1ebf}m Wardens',
        Default = false,
        Callback = function(p924)
            _G.ChiefWarden = p924

            StopTween(_G.ChiefWarden)
        end,
    })
    spawn(function()
        while wait() do
            if _G.ChiefWarden then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Chief Warden') then
                        local v925, v926, v927 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v928

                            v927, v928 = v925(v926, v927)

                            if v927 == nil then
                                break
                            end
                            if v928.Name == 'Chief Warden' and (v928:FindFirstChild('Humanoid') and (v928:FindFirstChild('HumanoidRootPart') and v928.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)

                                    v928.HumanoidRootPart.CanCollide = false
                                    StartBring = true
                                    v928.Humanoid.WalkSpeed = 0
                                    v928.HumanoidRootPart.Size = Vector3.new(80, 80, 80)

                                    topos(v928.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                    sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.ChiefWarden or (not v928.Parent or v928.Humanoid.Health <= 0)
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Chief Warden') then
                        TP1(game:GetService('ReplicatedStorage'):FindFirstChild('Chief Warden').HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                    end
                end)
            end
        end
    end)
    v641:AddToggle({
        Name = 'Auto Get Sword Trident',
        Description = 'T\u{1ef1} \u{111}\u{1ed9}ng L\u{1ea5}y Ki\u{1ebf}m Trident',
        Default = false,
        Callback = function(p929)
            _G.Trident = p929

            StopTween(_G.Trident)
        end,
    })
    spawn(function()
        while wait() do
            if _G.Trident then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Fishman Lord') then
                        local v930, v931, v932 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v933

                            v932, v933 = v930(v931, v932)

                            if v932 == nil then
                                break
                            end
                            if v933.Name == 'Fishman Lord' and (v933:FindFirstChild('Humanoid') and (v933:FindFirstChild('HumanoidRootPart') and v933.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)

                                    v933.HumanoidRootPart.CanCollide = false
                                    StartBring = true
                                    v933.Humanoid.WalkSpeed = 0
                                    v933.HumanoidRootPart.Size = Vector3.new(80, 80, 80)

                                    topos(v933.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                    sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.Trident or (not v933.Parent or v933.Humanoid.Health <= 0)
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Fishman Lord') then
                        TP1(game:GetService('ReplicatedStorage'):FindFirstChild('Fishman Lord').HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                    end
                end)
            end
        end
    end)
end
if World2 then
    v641:AddSection({
        'Quest Sea 2',
    })
    v641:AddToggle({
        Name = 'Auto Quest Sea Bartilo',
        Description = 'T\u{1ef1} \u{111}\u{1ed9}ng L\u{e0}m Nhi\u{1ec7}m V\u{1ee5} Sea Bartilo',
        Default = false,
        Callback = function(p934)
            _G.AutoBartilo = p934

            StopTween(_G.AutoBartilo)
        end,
    })
    spawn(function()
        pcall(function()
            while true do
                if not wait(0.1) then
                    return
                end
                if _G.AutoBartilo then
                    if game:GetService('Players').LocalPlayer.Data.Level.Value < 800 or game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BartiloQuestProgress', 'Bartilo') ~= 0 then
                        if game:GetService('Players').LocalPlayer.Data.Level.Value < 800 or game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BartiloQuestProgress', 'Bartilo') ~= 1 then
                            if game:GetService('Players').LocalPlayer.Data.Level.Value >= 800 and game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BartiloQuestProgress', 'Bartilo') == 2 then
                                repeat
                                    topos(CFrame.new(-1850.49329, 13.1789551, 1750.89685))
                                    wait()
                                until not _G.AutoBartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10

                                wait(1)

                                repeat
                                    topos(CFrame.new(-1858.87305, 19.3777466, 1712.01807))
                                    wait()
                                until not _G.AutoBartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10

                                wait(1)

                                repeat
                                    topos(CFrame.new(-1803.94324, 16.5789185, 1750.89685))
                                    wait()
                                until not _G.AutoBartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10

                                wait(1)

                                repeat
                                    topos(CFrame.new(-1858.55835, 16.8604317, 1724.79541))
                                    wait()
                                until not _G.AutoBartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10

                                wait(1)

                                repeat
                                    topos(CFrame.new(-1869.54224, 15.987854, 1681.00659))
                                    wait()
                                until not _G.AutoBartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10

                                wait(1)

                                repeat
                                    topos(CFrame.new(-1800.0979, 16.4978027, 1684.52368))
                                    wait()
                                until not _G.AutoBartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10

                                wait(1)

                                repeat
                                    topos(CFrame.new(-1819.26343, 14.795166, 1717.90625))
                                    wait()
                                until not _G.AutoBartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10

                                wait(1)
                                topos(CFrame.new(-1813.51843, 14.8604736, 1724.79541))
                                wait()

                                if _G.AutoBartilo and (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude > 10 then
                                end
                            end
                        else
                            if game:GetService('Workspace').Enemies:FindFirstChild('Jeremy') then
                                Ms = 'Jeremy'

                                local v935, v936, v937 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                while true do
                                    local v938

                                    v937, v938 = v935(v936, v937)

                                    if v937 == nil then
                                        break
                                    end
                                    if v938.Name == Ms then
                                        OldCFrameBartlio = v938.HumanoidRootPart.CFrame

                                        repeat
                                            task.wait()
                                            sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                            EquipWeapon(_G.SelectWeapon)
                                            AutoHaki()

                                            v938.HumanoidRootPart.Transparency = 1
                                            v938.HumanoidRootPart.CanCollide = false
                                            v938.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            v938.HumanoidRootPart.CFrame = OldCFrameBartlio

                                            topos(v938.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                            game:GetService('VirtualUser'):CaptureController()
                                            game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
                                            sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                        until not v938.Parent or (v938.Humanoid.Health <= 0 or _G.AutoBartilo == false)
                                    end
                                end
                            elseif game:GetService('ReplicatedStorage'):FindFirstChild('Jeremy') then
                                repeat
                                    topos(CFrame.new(-456.28952, 73.0200958, 299.895966))
                                    wait()
                                until not _G.AutoBartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10

                                wait(1.1)
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BartiloQuestProgress', 'Bartilo')
                                wait(1)

                                repeat
                                    topos(CFrame.new(2099.88159, 448.931, 648.997375))
                                    wait()
                                until not _G.AutoBartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10

                                wait(2)
                            else
                                repeat
                                    topos(CFrame.new(2099.88159, 448.931, 648.997375))
                                    wait()
                                until not _G.AutoBartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                            end
                        end
                    elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Swan Pirates') and (string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, '50') and game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Swan Pirate') then
                            Ms = 'Swan Pirate'

                            local v939, v940, v941 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v942

                                v941, v942 = v939(v940, v941)

                                if v941 == nil then
                                    break
                                end

                                local u943 = v942

                                if u943.Name == Ms then
                                    pcall(function()
                                        repeat
                                            task.wait()
                                            sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                            EquipWeapon(_G.SelectWeapon)
                                            AutoHaki()

                                            u943.HumanoidRootPart.Transparency = 1
                                            u943.HumanoidRootPart.CanCollide = false
                                            u943.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                            topos(u943.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))

                                            PosMonBarto = u943.HumanoidRootPart.CFrame

                                            game:GetService('VirtualUser'):CaptureController()
                                            game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))

                                            StartBring = true
                                        until not u943.Parent or (u943.Humanoid.Health <= 0 or _G.AutoBartilo == false) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false

                                        StartBring = false
                                    end)
                                end
                            end
                        else
                            repeat
                                topos(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-8, -0.230443969, 2.67024713e-8, 1, 8.47491108e-8, 0.230443969, 7.63147128e-8, -0.973085582))
                                wait()
                            until not _G.AutoBartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-8, -0.230443969, 2.67024713e-8, 1, 8.47491108e-8, 0.230443969, 7.63147128e-8, -0.973085582)).Magnitude <= 10
                        end
                    else
                        repeat
                            topos(CFrame.new(-456.28952, 73.0200958, 299.895966))
                            wait()
                        until not _G.AutoBartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10

                        wait(1.1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', 'BartiloQuest', 1)
                    end
                end
            end
        end)
    end)
    v641:AddToggle({
        Name = 'Auto Quest Sea 3',
        Description = 'T\u{1ef1} \u{111}\u{1ed9}ng L\u{e0}m Nhi\u{1ec7}m V\u{1ee5} Sang Sea 3',
        Default = false,
        Callback = function(p944)
            _G.ThirdSea = p944

            StopTween(_G.ThirdSea)
        end,
    })
    spawn(function()
        while wait() do
            if _G.ThirdSea then
                pcall(function()
                    if game:GetService('Players').LocalPlayer.Data.Level.Value >= 1500 and World2 then
                        _G.AutoFarm = false

                        if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ZQuestProgress', 'General') == 0 then
                            topos(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))

                            if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                wait(1.5)
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ZQuestProgress', 'Begin')
                            end

                            wait(1.8)

                            if game:GetService('Workspace').Enemies:FindFirstChild('rip_indra') then
                                local v945, v946, v947 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                while true do
                                    local v948

                                    v947, v948 = v945(v946, v947)

                                    if v947 == nil then
                                        break
                                    end
                                    if v948.Name == 'rip_indra' then
                                        OldCFrameThird = v948.HumanoidRootPart.CFrame

                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            topos(v948.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))

                                            v948.HumanoidRootPart.CFrame = OldCFrameThird
                                            v948.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            v948.HumanoidRootPart.CanCollide = false
                                            StartBring = true
                                            v948.Humanoid.WalkSpeed = 0

                                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelZou')
                                            sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                        until _G.ThirdSea == false or (v948.Humanoid.Health <= 0 or not v948.Parent)
                                    end
                                end
                            elseif not game:GetService('Workspace').Enemies:FindFirstChild('rip_indra') and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                                TP1(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                            end
                        end
                    end
                end)
            end
        end
    end)
    v641:AddSection({
        'Factory Sea 2',
    })
    v641:AddToggle({
        Name = 'Auto Factory',
        Description = 'T\u{1ef1} \u{111}\u{1ed9}ng \u{110}\u{e1}nh Nh\u{e0} M\u{e1}y',
        Default = false,
        Callback = function(p949)
            _G.AutoFactory = p949

            StopTween(_G.AutoFactory)
        end,
    })
    spawn(function()
        while wait() do
            spawn(function()
                if _G.AutoFactory then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Core') then
                        local v950, v951, v952 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v953

                            v952, v953 = v950(v951, v952)

                            if v952 == nil then
                                break
                            end
                            if v953.Name == 'Core' and v953.Humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    topos(CFrame.new(448.46756, 199.356781, -441.389252))
                                    game:GetService('VirtualUser'):CaptureController()
                                    game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
                                until v953.Humanoid.Health <= 0 or _G.AutoFactory == false
                            end
                        end
                    else
                        topos(CFrame.new(448.46756, 199.356781, -441.389252))
                    end
                end
            end)
        end
    end)
    v641:AddSection({
        'Boss Dark Beard',
    })
    v641:AddToggle({
        Name = 'Auto Kill Dark Beard',
        Description = 'T\u{1ef1} \u{111}\u{1ed9}ng \u{110}\u{e1}nh R\u{e2}u \u{110}en',
        Default = false,
        Callback = function(p954)
            _G.AutoDarkBoss = p954

            StopTween(_G.AutoDarkBoss)
        end,
    })
    spawn(function()
        while wait() do
            if _G.AutoDarkBoss then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Darkbeard') then
                        local v955, v956, v957 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v958

                            v957, v958 = v955(v956, v957)

                            if v957 == nil then
                                break
                            end
                            if v958.Name == 'Darkbeard' and (v958:FindFirstChild('Humanoid') and (v958:FindFirstChild('HumanoidRootPart') and v958.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()

                                    NeedAttacking = true

                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)

                                    v958.HumanoidRootPart.CanCollide = false
                                    v958.Humanoid.WalkSpeed = 0

                                    topos(v958.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                    sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.AutoDarkBoss or (not v958.Parent or v958.Humanoid.Health <= 0)
                            end
                        end
                    else
                        NeedAttacking = true

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Darkbeard') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Darkbeard').HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                        end
                    end
                end)
            end
        end
    end)
    v641:AddToggle({
        Name = 'Auto Kill Cursed Captain',
        Description = 'T\u{1ef1} \u{111}\u{1ed9}ng \u{110}\u{e1}nh Cursed Captain',
        Default = false,
        Callback = function(p959)
            _G.CursedCaptain = p959

            StopTween(_G.CursedCaptain)
        end,
    })
    spawn(function()
        while wait() do
            if _G.CursedCaptain then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Cursed Captain') then
                        local v960, v961, v962 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v963

                            v962, v963 = v960(v961, v962)

                            if v962 == nil then
                                break
                            end
                            if v963.Name == 'Cursed Captain' and (v963:FindFirstChild('Humanoid') and (v963:FindFirstChild('HumanoidRootPart') and v963.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()

                                    NeedAttacking = true

                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)

                                    v963.HumanoidRootPart.CanCollide = false
                                    v963.Humanoid.WalkSpeed = 0

                                    topos(v963.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                    sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.CursedCaptain or (not v963.Parent or v963.Humanoid.Health <= 0)
                            end
                        end
                    else
                        NeedAttacking = true

                        if (Vector3.new(911.35827636719, 125.95812988281, 33159.5390625) - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 18000 and game:GetService('ReplicatedStorage'):FindFirstChild('Cursed Captain') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Cursed Captain').HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                        end
                    end
                end)
            end
        end
    end)
    v641:AddSection({
        'Auto Buy Haki M\u{e0}u',
    })
    v641:AddToggle({
        Name = 'Auto Buy Haki Colors',
        Description = 'T\u{1ef1} \u{111}\u{1ed9}ng Mua Haki',
        Default = false,
        Callback = function(p964)
            _G.AutoBuyEnchancementColour = p964

            StopTween(_G.AutoBuyEnchancementColour)
        end,
    })
    spawn(function()
        while wait() do
            if _G.AutoBuyEnchancementColour then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'ColorsDealer',
                    '2',
                }))
            end
        end
    end)
    v641:AddToggle({
        Title = 'Auto Buy Legendary Sword',
        Value = false,
        Callback = function(p965)
            _G.AutoBuyLegendarySword = p965
        end,
    })
    spawn(function()
        while wait() do
            if _G.AutoBuyLegendarySword then
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
            end
        end
    end)
    v641:AddSection({
        'Quest Sword',
    })
    v641:AddToggle({
        Name = 'Auto Get Longsword',
        Description = 'T\u{1ef1} \u{111}\u{1ed9}ng Get Longsword',
        Default = false,
        Callback = function(p966)
            _G.Longsword = p966

            StopTween(_G.Longsword)
        end,
    })
    spawn(function()
        while wait() do
            if _G.Longsword then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Diamond') then
                        local v967, v968, v969 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v970

                            v969, v970 = v967(v968, v969)

                            if v969 == nil then
                                break
                            end
                            if v970.Name == 'Diamond' and (v970:FindFirstChild('Humanoid') and (v970:FindFirstChild('HumanoidRootPart') and v970.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)

                                    v970.HumanoidRootPart.CanCollide = false
                                    StartBring = true
                                    v970.Humanoid.WalkSpeed = 0
                                    v970.HumanoidRootPart.Size = Vector3.new(80, 80, 80)

                                    topos(v970.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                    sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.Longsword or (not v970.Parent or v970.Humanoid.Health <= 0)
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Diamond') then
                        TP1(game:GetService('ReplicatedStorage'):FindFirstChild('Diamond').HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                    end
                end)
            end
        end
    end)
    v641:AddToggle({
        Name = 'Auto Get Sword Gravity Blade',
        Description = 'T\u{1ef1} \u{111}\u{1ed9}ng L\u{1ea5}y Gravity Blade',
        Default = false,
        Callback = function(p971)
            _G.GravityBlade = p971

            StopTween(_G.GravityBlade)
        end,
    })
    spawn(function()
        while wait() do
            if _G.GravityBlade then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Fajita') then
                        local v972, v973, v974 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v975

                            v974, v975 = v972(v973, v974)

                            if v974 == nil then
                                break
                            end
                            if v975.Name == 'Fajita' and (v975:FindFirstChild('Humanoid') and (v975:FindFirstChild('HumanoidRootPart') and v975.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)

                                    v975.HumanoidRootPart.CanCollide = false
                                    StartBring = true
                                    v975.Humanoid.WalkSpeed = 0
                                    v975.HumanoidRootPart.Size = Vector3.new(80, 80, 80)

                                    topos(v975.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                    sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.GravityBlade or (not v975.Parent or v975.Humanoid.Health <= 0)
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Fajita') then
                        TP1(game:GetService('ReplicatedStorage'):FindFirstChild('Fajita').HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                    end
                end)
            end
        end
    end)
    v641:AddToggle({
        Name = 'Auto Get Sword Flail',
        Description = 'T\u{1ef1} \u{111}\u{1ed9}ng L\u{1ea5}y Flail',
        Default = false,
        Callback = function(p976)
            _G.SwodsFlail = p976

            StopTween(_G.SwodsFlail)
        end,
    })
    spawn(function()
        while wait() do
            if _G.SwodsFlail then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Smoke Admiral') then
                        local v977, v978, v979 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v980

                            v979, v980 = v977(v978, v979)

                            if v979 == nil then
                                break
                            end
                            if v980.Name == 'Smoke Admiral' and (v980:FindFirstChild('Humanoid') and (v980:FindFirstChild('HumanoidRootPart') and v980.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)

                                    v980.HumanoidRootPart.CanCollide = false
                                    StartBring = true
                                    v980.Humanoid.WalkSpeed = 0
                                    v980.HumanoidRootPart.Size = Vector3.new(80, 80, 80)

                                    topos(v980.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                    sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.SwodsFlail or (not v980.Parent or v980.Humanoid.Health <= 0)
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Smoke Admiral') then
                        TP1(game:GetService('ReplicatedStorage'):FindFirstChild('Smoke Admiral').HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                    end
                end)
            end
        end
    end)
    v641:AddToggle({
        Name = 'Auto Get Sword Rengoku',
        Description = 'T\u{1ef1} \u{111}\u{1ed9}ng L\u{1ea5}y Rengoku',
        Default = false,
        Callback = function(p981)
            _G.AutoRengoku = p981

            StopTween(_G.AutoRengoku)
        end,
    })
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoRengoku then
                    if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Hidden Key') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Hidden Key') then
                        EquipWeapon('Hidden Key')
                        topos(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
                    elseif game:GetService('Workspace').Enemies:FindFirstChild('Awakened Ice Admiral') then
                        local v982, v983, v984 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v985

                            v984, v985 = v982(v983, v984)

                            if v984 == nil then
                                break
                            end
                            if v985.Name == 'Awakened Ice Admiral' and (v985:FindFirstChild('Humanoid') and (v985:FindFirstChild('HumanoidRootPart') and v985.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()

                                    v985.HumanoidRootPart.CanCollide = false
                                    v985.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    PosMon = v985.HumanoidRootPart.CFrame
                                    MonFarm = v985.Name

                                    topos(v985.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                    AttackNoCD()

                                    StartBring = true
                                until game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Hidden Key') or (_G.AutoRengoku == false or (not v985.Parent or v985.Humanoid.Health <= 0))

                                StartBring = false
                            end
                        end
                    else
                        StartBring = false

                        topos(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                    end
                end
            end
        end)
    end)
    v641:AddToggle({
        Name = 'Auto Get Sword Dragon Trident',
        Description = 'T\u{1ef1} \u{111}\u{1ed9}ng L\u{1ea5}y Dragon Trident',
        Default = false,
        Callback = function(p986)
            _G.SwodsDRTrident = p986

            StopTween(_G.SwodsDRTrident)
        end,
    })
    spawn(function()
        while wait() do
            if _G.SwodsDRTrident then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Tide Keeper') then
                        local v987, v988, v989 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v990

                            v989, v990 = v987(v988, v989)

                            if v989 == nil then
                                break
                            end
                            if v990.Name == 'Tide Keeper' and (v990:FindFirstChild('Humanoid') and (v990:FindFirstChild('HumanoidRootPart') and v990.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)

                                    v990.HumanoidRootPart.CanCollide = false
                                    StartBring = true
                                    v990.Humanoid.WalkSpeed = 0
                                    v990.HumanoidRootPart.Size = Vector3.new(80, 80, 80)

                                    topos(v990.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                    sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.SwodsDRTrident or (not v990.Parent or v990.Humanoid.Health <= 0)
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Tide Keeper') then
                        TP1(game:GetService('ReplicatedStorage'):FindFirstChild('Tide Keeper').HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                    end
                end)
            end
        end
    end)
end
if World3 then
    v641:AddSection({
        'Quest Sea 3',
    })
    v641:AddSection({
        'Boss Rip indra',
    })
    v641:AddToggle({
        Name = 'Auto kill Rip Indra',
        Description = 'T\u{1ef1} \u{111}\u{1ed9}ng \u{110}\u{e1}nh Rip Indra',
        Default = false,
        Callback = function(p991)
            _G.RipIndraKill = p991

            StopTween(_G.RipIndraKill)
        end,
    })

    local u992 = CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781)

    spawn(function()
        pcall(function()
            while wait() do
                if _G.RipIndraKill then
                    if game:GetService('Workspace').Enemies:FindFirstChild('rip_indra True Form') or game:GetService('Workspace').Enemies:FindFirstChild('rip_indra') then
                        local v993, v994, v995 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v996

                            v995, v996 = v993(v994, v995)

                            if v995 == nil then
                                break
                            end

                            local _Name = v996.Name
                            local v998 = 'rip_indra True Form'

                            if not v998 then
                                local _ = v996.Name == 'rip_indra'

                                v998 = true
                            end

                            local u999 = v996

                            if _Name == v998 and (u999.Humanoid.Health > 0 and (u999:IsA('Model') and (u999:FindFirstChild('Humanoid') and u999:FindFirstChild('HumanoidRootPart')))) then
                                repeat
                                    task.wait()
                                    pcall(function()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)

                                        u999.HumanoidRootPart.CanCollide = false
                                        u999.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                        topos(u999.HumanoidRootPart.CFrame * CFrame.new(0, -40, 0))
                                        game:GetService('VirtualUser'):CaptureController()
                                        game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 670), workspace.CurrentCamera.CFrame)
                                    end)
                                until _G.RipIndraKill == false or u999.Humanoid.Health <= 0
                            end
                        end
                    else
                        if BypassTP then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - u992.Position).Magnitude <= 1500 then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - u992.Position).Magnitude < 1500 then
                                    TP1(u992)
                                end
                            else
                                TP1(u992)
                            end
                        else
                            TP1(u992)
                        end

                        TP1(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781))
                    end
                end
            end
        end)
    end)
    v641:AddToggle({
        Name = 'Auto Haki Colors',
        Description = 'T\u{1ef1} \u{110}\u{1ed9}ng Haki Colors',
        Default = false,
        Callback = function(p1000)
            _G.RipIndraKill = p1000

            StopTween(_G.RipIndraKill)
        end,
    })
    spawn(function()
        while wait() do
            if _G.AutoBuyEnchancementColour then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'ColorsDealer',
                    '2',
                }))
            end
        end
    end)
    v641:AddSection({
        'Quest Skull Guitar',
    })
    v641:AddToggle({
        Name = 'Auto Skull Guitar',
        Description = 'T\u{1ef1} \u{110}\u{1ed9}ng L\u{1ea5}y \u{110}\u{e0}n GuiTar',
        Default = false,
        Callback = function(p1001)
            _G.AutoSkullGuitar = p1001

            StopTween(_G.AutoSkullGuitar)
        end,
    })
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
                        local _LocalPlayer11 = game:GetService('Players').LocalPlayer
                        local _Character8 = _LocalPlayer11.Character

                        if _Character8 then
                            _Character8 = _LocalPlayer11.Character:FindFirstChild('HumanoidRootPart')
                        end
                        if _Character8 and (Vector3.new(-9681.458, 6.139, 6341.372) - _Character8.Position).Magnitude <= 5000 then
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

                                        for v1006 = 7, 1, -1 do
                                            local v1007 = _HauntedCastle:FindFirstChild('Placard' .. v1006)

                                            if v1007 then
                                                if v1007:FindFirstChild('Left') then
                                                    if v1007.Left:FindFirstChild('ClickDetector') then
                                                        fireclickdetector(v1007.Left.ClickDetector)
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

                                        local v1009, v1010, v1011 = ipairs({
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
                                            local v1012

                                            v1011, v1012 = v1009(v1010, v1011)

                                            if v1011 == nil then
                                                break
                                            end

                                            local v1013 = _LabPuzzle.ColorFloor.Model:FindFirstChild('Part' .. v1012)

                                            if v1013 and v1013:FindFirstChild('ClickDetector') then
                                                topos(v1013.CFrame)
                                                task.wait(1)
                                                fireclickdetector(v1013.ClickDetector)
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

                                    local _Enemies = game.Workspace:FindFirstChild('Enemies')

                                    if _Enemies and _Enemies:FindFirstChild('Living Zombie') then
                                        local v1015, v1016, v1017 = pairs(_Enemies:GetChildren())

                                        while true do
                                            local v1018

                                            v1017, v1018 = v1015(v1016, v1017)

                                            if v1017 == nil then
                                                break
                                            end
                                            if v1018:FindFirstChild('HumanoidRootPart') and (v1018:FindFirstChild('Humanoid') and (v1018.Humanoid.Health > 0 and v1018.Name == 'Living Zombie')) then
                                                AutoHaki()
                                                EquipWeapon(getgenv().SelectWeapon)

                                                v1018.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                v1018.HumanoidRootPart.Transparency = 1
                                                v1018.Humanoid.JumpPower = 0
                                                v1018.Humanoid.WalkSpeed = 0
                                                v1018.HumanoidRootPart.CanCollide = false
                                                v1018.HumanoidRootPart.CFrame = _Character8.CFrame * CFrame.new(0, 20, 0)

                                                topos(CFrame.new(-10160.787, 138.662, 5955.031))
                                                task.wait(0.5)

                                                local _VirtualUser = game:GetService('VirtualUser')

                                                _VirtualUser:CaptureController()
                                                _VirtualUser:Button1Down(Vector2.new(1280, 672))
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
    v641:AddToggle({
        Name = 'Kill Elite Hunter',
        Description = 'T\u{1ef1} \u{110}\u{1ed9}ng \u{110}\u{e1}nh Elite Hunter',
        Default = false,
        Callback = function(p1020)
            _G.AutoElitehunter = p1020

            StopTween(_G.AutoElitehunter)
        end,
    })
    spawn(function()
        while wait() do
            if _G.AutoElitehunter and World3 then
                pcall(function()
                    if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= true then
                        if _G.AutoEliteHunterHop and game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter') == "I don't have anything for you right now. Come back later." then
                            Hop()
                        else
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter')
                        end
                    elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Diablo') or (string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Deandre') or string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Urban')) then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Diablo') or (game:GetService('Workspace').Enemies:FindFirstChild('Deandre') or game:GetService('Workspace').Enemies:FindFirstChild('Urban')) then
                            local v1021, v1022, v1023 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v1024

                                v1023, v1024 = v1021(v1022, v1023)

                                if v1023 == nil then
                                    break
                                end
                                if (v1024.Name == 'Diablo' or (v1024.Name == 'Deandre' or v1024.Name == 'Urban')) and (v1024:FindFirstChild('Humanoid') and (v1024:FindFirstChild('HumanoidRootPart') and v1024.Humanoid.Health > 0)) then
                                    repeat
                                        wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)

                                        NeedAttacking = true
                                        StartBring = true
                                        v1024.HumanoidRootPart.CanCollide = false
                                        v1024.Humanoid.WalkSpeed = 0

                                        topos(v1024.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        game:GetService('VirtualUser'):CaptureController()
                                        game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
                                        sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                    until _G.AutoElitehunter == false or (v1024.Humanoid.Health <= 0 or not v1024.Parent)
                                end
                            end
                        else
                            NeedAttacking = false

                            if game:GetService('ReplicatedStorage'):FindFirstChild('Diablo') then
                                TP1(game:GetService('ReplicatedStorage'):FindFirstChild('Diablo').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                            elseif game:GetService('ReplicatedStorage'):FindFirstChild('Deandre') then
                                TP1(game:GetService('ReplicatedStorage'):FindFirstChild('Deandre').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                            elseif game:GetService('ReplicatedStorage'):FindFirstChild('Urban') then
                                TP1(game:GetService('ReplicatedStorage'):FindFirstChild('Urban').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                            end
                        end
                    end
                end)
            end
        end
    end)
    v641:AddSection({
        'Auto CDK',
    })
    v641:AddToggle({
        Name = 'Auto Cdk [Beta]',
        Description = 'T\u{1ef1} \u{110}\u{1ed9}ng L\u{1ea5}y Xong Ki\u{1ebf}m \u{d4} \u{110}en',
        Default = false,
        Callback = function(p1025)
            _G.AutoGetCDK = p1025

            StopTween(_G.AutoGetCDK)
        end,
    })
    task.spawn(function()
        repeat
            task.wait()
        until getgenv().AutoGetCDK

        local _LocalPlayer12 = game.Players.LocalPlayer
        local _ReplicatedStorage = game:GetService('ReplicatedStorage')
        local _Workspace = game:GetService('Workspace')
        local _Enemies2 = _Workspace.Enemies
        local u1030 = false

        while getgenv().AutoGetCDK do
            task.wait(0.2)
            pcall(function()
                _ReplicatedStorage.Remotes.CommF_:InvokeServer('CDKQuest', 'Progress', 'Good')
                task.wait(0.2)
                _ReplicatedStorage.Remotes.CommF_:InvokeServer('CDKQuest', 'Progress', 'Evil')
                task.wait(0.2)
                _ReplicatedStorage.Remotes.CommF_:InvokeServer('CDKQuest', 'StartTrial', 'Boss')
                task.wait(0.2)

                if _Enemies2:FindFirstChild('Cursed Skeleton Boss') then
                    local v1031 = _Enemies2
                    local v1032, v1033, v1034 = pairs(v1031:GetChildren())

                    while true do
                        local v1035

                        v1034, v1035 = v1032(v1033, v1034)

                        if v1034 == nil then
                            break
                        end
                        if v1035.Name == 'Cursed Skeleton Boss' and (v1035:FindFirstChild('Humanoid') and (v1035:FindFirstChild('HumanoidRootPart') and v1035.Humanoid.Health > 0)) then
                            local _Character9 = _LocalPlayer12.Character
                            local _Backpack2 = _LocalPlayer12.Backpack

                            if _Character9:FindFirstChild('Yama') or _Backpack2:FindFirstChild('Yama') then
                                EquipWeapon('Yama')
                            elseif _Character9:FindFirstChild('Tushita') or _Backpack2:FindFirstChild('Tushita') then
                                EquipWeapon('Tushita')
                            elseif not u1030 then
                                game.StarterGui:SetCore('SendNotification', {
                                    Title = 'Tu\u{1ea5}n Anh IOS',
                                    Text = 'Use! - Yama or Tushita',
                                    con = 'rbxassetid://110657725541747',
                                    Duration = 10,
                                })

                                u1030 = true
                            end

                            Buso()

                            v1035.HumanoidRootPart.CanCollide = false
                            v1035.Humanoid.WalkSpeed = 0

                            topos(v1035.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))

                            if syn and not getgenv().SimulationSet then
                                sethiddenproperty(_LocalPlayer12, 'SimulationRadius', math.huge)

                                getgenv().SimulationSet = true
                            end

                            repeat
                                task.wait()
                            until not getgenv().AutoGetCDK or (not v1035.Parent or v1035.Humanoid.Health <= 0)
                        end
                    end
                else
                    topos(CFrame.new(-12318.193, 601.951, -6538.662))
                    task.wait(0.5)
                    topos(_Workspace.Map.Turtle.Cursed.BossDoor.CFrame)
                end
            end)
        end
    end)
    v641:AddToggle({
        Name = 'Auto Get Yama',
        Description = 'T\u{1ef1} \u{110}\u{1ed9}ng L\u{1ea5}y Ki\u{1ebf}m Yama',
        Default = false,
        Callback = function(p1038)
            _G.AutoYama = p1038

            StopTween(_G.AutoYama)
        end,
    })
    spawn(function()
        while wait() do
            if _G.AutoYama and game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter', 'Progress') >= 30 then
                wait()
                fireclickdetector(game:GetService('Workspace').Map.Waterfall.SealedKatana.Handle.ClickDetector)

                if not game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Yama') and _G.AutoYama then
                    break
                end
            end
        end
    end)
    v641:AddToggle({
        Name = 'Auto Holy Torch Tushita',
        Description = 'T\u{1ef1} \u{110}\u{1ed9}ng Torch Tushita',
        Default = false,
        Callback = function(p1039)
            _G.AutoHolyTorch = p1039

            StopTween(_G.AutoHolyTorch)
        end,
    })
    spawn(function()
        while wait() do
            if _G.AutoHolyTorch then
                pcall(function()
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(5657.88623046875, 1013.0790405273438, -335.4996337890625))
                    wait(1)
                    topos(CFrame.new(5711.87451171875, 45.82802963256836, 254.17005920410156))
                    wait(15)
                    EquipWeapon('Holy Torch')

                    repeat
                        topos(CFrame.new(-10752, 417, -9366))
                        wait()
                    until not _G.AutoHolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-10752, 417, -9366)).Magnitude <= 10

                    wait(1)

                    repeat
                        topos(CFrame.new(-11672, 334, -9474))
                        wait()
                    until not _G.AutoHolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-11672, 334, -9474)).Magnitude <= 10

                    wait(1)

                    repeat
                        topos(CFrame.new(-12132, 521, -10655))
                        wait()
                    until not _G.AutoHolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-12132, 521, -10655)).Magnitude <= 10

                    wait(1)

                    repeat
                        topos(CFrame.new(-13336, 486, -6985))
                        wait()
                    until not _G.AutoHolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-13336, 486, -6985)).Magnitude <= 10

                    wait(1)

                    repeat
                        topos(CFrame.new(-13489, 332, -7925))
                        wait()
                    until not _G.AutoHolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-13489, 332, -7925)).Magnitude <= 10
                end)
            end
        end
    end)
    v641:AddToggle({
        Name = 'Auto Get Tushita',
        Description = 'T\u{1ef1} \u{110}\u{1ed9}ng L\u{1ea5}y Tushita',
        Default = false,
        Callback = function(p1040)
            _G.AutoGetTushita = p1040

            StopTween(_G.AutoGetTushita)
        end,
    })
    spawn(function()
        while wait() do
            if _G.AutoGetTushita then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Longma') then
                        local v1041, v1042, v1043 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v1044

                            v1043, v1044 = v1041(v1042, v1043)

                            if v1043 == nil then
                                break
                            end
                            if v1044.Name == 'Longma' and (v1044:FindFirstChild('Humanoid') and (v1044:FindFirstChild('HumanoidRootPart') and v1044.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)

                                    v1044.HumanoidRootPart.CanCollide = false
                                    StartBring = true
                                    v1044.Humanoid.WalkSpeed = 0
                                    v1044.HumanoidRootPart.Size = Vector3.new(80, 80, 80)

                                    topos(v1044.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                    sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.AutoGetTushita or (not v1044.Parent or v1044.Humanoid.Health <= 0)
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Longma') then
                        TP1(game:GetService('ReplicatedStorage'):FindFirstChild('Longma').HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                    end
                end)
            end
        end
    end)
    v641:AddSection({
        'Quest Sword',
    })
    v641:AddToggle({
        Name = 'Auto Get Sword Twin Hooks',
        Description = 'T\u{1ef1} \u{110}\u{1ed9}ng L\u{1ea5}y Ki\u{1ebf}m Twin Hooks',
        Default = false,
        Callback = function(p1045)
            _G.SwodTwinHooks = p1045

            StopTween(_G.SwodTwinHooks)
        end,
    })
    spawn(function()
        while wait() do
            if _G.SwodTwinHooks then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Captain Elephant') then
                        local v1046, v1047, v1048 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v1049

                            v1048, v1049 = v1046(v1047, v1048)

                            if v1048 == nil then
                                break
                            end
                            if v1049.Name == 'Captain Elephant' and (v1049:FindFirstChild('Humanoid') and (v1049:FindFirstChild('HumanoidRootPart') and v1049.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)

                                    v1049.HumanoidRootPart.CanCollide = false
                                    StartBring = true
                                    v1049.Humanoid.WalkSpeed = 0
                                    v1049.HumanoidRootPart.Size = Vector3.new(80, 80, 80)

                                    topos(v1049.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                    sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.SwodTwinHooks or (not v1049.Parent or v1049.Humanoid.Health <= 0)
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Captain Elephant') then
                        TP1(game:GetService('ReplicatedStorage'):FindFirstChild('Captain Elephant').HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                    end
                end)
            end
        end
    end)
    v641:AddToggle({
        Name = 'Auto Get Sword Canvander',
        Description = 'T\u{1ef1} \u{110}\u{1ed9}ng L\u{1ea5}y Ki\u{1ebf}m Canvander',
        Default = false,
        Callback = function(p1050)
            _G.SwodCanvander = p1050

            StopTween(_G.SwodCanvander)
        end,
    })
    spawn(function()
        while wait() do
            if _G.SwodCanvander then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Beautiful Pirate') then
                        local v1051, v1052, v1053 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v1054

                            v1053, v1054 = v1051(v1052, v1053)

                            if v1053 == nil then
                                break
                            end
                            if v1054.Name == 'Beautiful Pirate' and (v1054:FindFirstChild('Humanoid') and (v1054:FindFirstChild('HumanoidRootPart') and v1054.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)

                                    v1054.HumanoidRootPart.CanCollide = false
                                    StartBring = true
                                    v1054.Humanoid.WalkSpeed = 0
                                    v1054.HumanoidRootPart.Size = Vector3.new(80, 80, 80)

                                    topos(v1054.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                    sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.SwodCanvander or (not v1054.Parent or v1054.Humanoid.Health <= 0)
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Beautiful Pirate') then
                        TP1(game:GetService('ReplicatedStorage'):FindFirstChild('Beautiful Pirate').HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                    end
                end)
            end
        end
    end)
    v641:AddToggle({
        Name = 'Auto Get Sword Buddy',
        Description = 'T\u{1ef1} \u{110}\u{1ed9}ng L\u{1ea5}y Ki\u{1ebf}m Buddy',
        Default = false,
        Callback = function(p1055)
            _G.SwodsBuddy = p1055

            StopTween(_G.SwodsBuddy)
        end,
    })
    spawn(function()
        while wait() do
            if _G.SwodsBuddy then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Cake Queen') then
                        local v1056, v1057, v1058 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v1059

                            v1058, v1059 = v1056(v1057, v1058)

                            if v1058 == nil then
                                break
                            end
                            if v1059.Name == 'Cake Queen' and (v1059:FindFirstChild('Humanoid') and (v1059:FindFirstChild('HumanoidRootPart') and v1059.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)

                                    v1059.HumanoidRootPart.CanCollide = false
                                    StartBring = true
                                    v1059.Humanoid.WalkSpeed = 0
                                    v1059.HumanoidRootPart.Size = Vector3.new(80, 80, 80)

                                    topos(v1059.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                    sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.SwodsBuddy or (not v1059.Parent or v1059.Humanoid.Health <= 0)
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Cake Queen') then
                        TP1(game:GetService('ReplicatedStorage'):FindFirstChild('Cake Queen').HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                    end
                end)
            end
        end
    end)
end

v643:AddButton({
    Title = 'Tween Dragon Dojo',
    Value = false,
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(5661.53, 1013.09, -334.96))
        topos(CFrame.new(5841.29, 1208.32, 884.31))
    end,
})
v643:AddToggle({
    Name = 'Auto Dragon Huntery',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng Farm Blaze',
    Default = false,
    Callback = function(p1060)
        _G.FarmBlazeEM = p1060

        StopTween(_G.FarmBlazeEM)
    end,
})

function checkQuesta()
    local u1061 = {
        {
            Context = 'Check',
        },
    }
    local u1062 = nil

    pcall(function()
        local v1063 = {
            {
                Context = 'RequestQuest',
            },
        }

        game:GetService('ReplicatedStorage').Modules.Net['RF/DragonHunter']:InvokeServer(unpack(v1063))
    end)

    local _, _ = pcall(function()
        u1062 = game:GetService('ReplicatedStorage').Modules.Net['RF/DragonHunter']:InvokeServer(unpack(u1061))
    end)
    local v1064 = nil
    local v1065 = nil
    local v1066 = nil
    local v1067, v1068

    if u1062 and u1062.Text then
        v1067 = true

        local _Text2 = u1062.Text

        if string.find(_Text2, 'Defeat') then
            v1065 = tonumber(string.sub(_Text2, 8, 9))

            local v1070, v1071, v1072 = pairs({
                'Hydra Enforcer',
                'Venomous Assailant',
            })

            v1066 = 1

            while true do
                v1072, v1068 = v1070(v1071, v1072)

                if v1072 == nil then
                    v1068 = v1064

                    break
                end
                if string.find(_Text2, v1068) then
                    break
                end
            end
        elseif string.find(_Text2, 'Destroy') then
            v1068 = v1064
            v1065 = 10
            v1066 = 2
        else
            v1068 = v1064
        end
    else
        v1068 = v1064
        v1067 = false
    end

    return v1067, v1068, v1065, v1066
end
function BackTODoJo()
    local v1073, v1074, v1075 = pairs(game:GetService('Players').LocalPlayer.PlayerGui.Notifications:GetChildren())

    while true do
        local v1076

        v1075, v1076 = v1073(v1074, v1075)

        if v1075 == nil then
            break
        end
        if v1076.Name == 'NotificationTemplate' and string.find(v1076.Text, 'Head back to the Dojo to complete more tasks') then
            return true
        end
    end

    return false
end
function DragonMobClear(p1077, p1078, p1079)
    if workspace.Enemies:FindFirstChild(p1078) then
        local v1080, v1081, v1082 = pairs(workspace.Enemies:GetChildren())

        while true do
            local v1083

            v1082, v1083 = v1080(v1081, v1082)

            if v1082 == nil then
                break
            end
            if v1083.Name == p1078 and (Attack.Alive(v1083) and p1077) then
                Attack.Kill(v1083, p1077)
            end
        end
    elseif p1079 then
        topos(p1079)
    end
end

spawn(function()
    while task.wait() do
        if _G.FarmBlazeEM then
            pcall(function()
                local v1084, v1085, _, v1086 = checkQuesta()

                if not v1084 or BackTODoJo() then
                    topos(CFrame.new(5813, 1208, 884))
                    DragonMobClear(false, nil, nil)
                end
                if v1086 == 1 then
                    if v1085 == 'Hydra Enforcer' or v1085 == 'Venomous Assailant' then
                        repeat
                            task.wait()
                            DragonMobClear(true, v1085, CFrame.new(4620.61, 1002.29, 399.08))
                        until not _G.FarmBlazeEM or (not v1084 or BackTODoJo())
                    end

                    return
                else
                    local u1087 = v1086 == 2 and workspace.Map.Waterfall.IslandModel:FindFirstChild('Meshes/bambootree', true)

                    if not u1087 then
                    end

                    while true do
                        task.wait()
                        spawn(function()
                            topos(u1087.CFrame * CFrame.new(4, 0, 0))
                        end)

                        if (u1087.Position - Root.Position).Magnitude <= 200 then
                            MousePos = u1087.Position

                            Useskills('Melee', 'Z')
                            Useskills('Melee', 'X')
                            Useskills('Melee', 'C')
                            task.wait(0.5)
                            Useskills('Sword', 'Z')
                            Useskills('Sword', 'X')
                            task.wait(0.5)
                            Useskills('Blox Fruit', 'Z')
                            Useskills('Blox Fruit', 'X')
                            Useskills('Blox Fruit', 'C')
                            task.wait(0.5)
                            Useskills('Gun', 'Z')
                            Useskills('Gun', 'X')
                        end
                        if not _G.FarmBlazeEM or (not v1084 or BackTODoJo()) then
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while task.wait(0.1) do
        if _G.FarmBlazeEM then
            pcall(function()
                if workspace:FindFirstChild('EmberTemplate') and workspace.EmberTemplate:FindFirstChild('Part') then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.EmberTemplate.Part.CFrame
                end
            end)
        end
    end
end)
v643:AddSection({
    'Volcanic Island',
})
v643:AddButton({
    Title = 'Craft Volcanic Magnet',
    Value = false,
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'CraftItem',
            'Craft',
            'Volcanic Magnet',
        }))
    end,
})

local u1088 = v643:AddParagraph({
    Title = 'Check Prehistoric Island',
    Content = 'Loading...',
})

task.spawn(function()
    while task.wait(1) do
        pcall(function()
            if game:GetService('Workspace').Map:FindFirstChild('PrehistoricIsland') then
                u1088:Set('Prehistoric Island Spawning \u{2705}')
            else
                u1088:Set('Prehistoric Island Not Spawn \u{274c}')
            end
        end)
    end
end)
v643:AddToggle({
    Name = 'Auto Find Prehistoric',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng T\u{ec}m \u{110}\u{1ea3}o Th\u{1edd}i Ti\u{1ec1}n S\u{1eed} ( \u{110}\u{1ea3}o N\u{fa}i L\u{1eed}a )',
    Default = false,
    Callback = function(p1089)
        _G.Nocliprock = p1089

        StopTween(_G.Nocliprock)
    end,
})

local u1090 = {}
local _Players = game:GetService('Players')
local _RunService = game:GetService('RunService')
local _VirtualInputManager4 = game:GetService('VirtualInputManager')
local _Workspace2 = game:GetService('Workspace')
local u1095 = 350

_RunService.RenderStepped:Connect(function()
    local v1096, v1097, v1098 = pairs(u1090)

    while true do
        local v1099

        v1098, v1099 = v1096(v1097, v1098)

        if v1098 == nil then
            break
        end
        if v1099 and (v1099.Parent and (v1099.Name == 'VehicleSeat' and not v1099.Occupant)) then
            u1090[v1098] = v1099
        end
    end
end)

local u1100 = false
local u1101 = false

_RunService.RenderStepped:Connect(function()
    if _G.AutoFindPrehistoric then
        local _Character10 = _Players.LocalPlayer.Character

        if _Character10 and _Character10:FindFirstChild('Humanoid') then
            local function v1107()
                if u1100 then
                    return
                end

                u1100 = true

                local v1103, v1104, v1105 = pairs(u1090)

                while true do
                    local v1106

                    v1105, v1106 = v1103(v1104, v1105)

                    if v1105 == nil then
                        break
                    end
                    if v1106 and (v1106.Parent and (v1106.Name == 'VehicleSeat' and not v1106.Occupant)) then
                        topos(v1106.CFrame)

                        break
                    end
                end

                u1100 = false
            end

            local _Humanoid2 = _Character10.Humanoid
            local v1109, v1110, v1111 = pairs(_Workspace2.Boats:GetChildren())
            local v1112 = false
            local v1113 = nil

            while true do
                local v1114

                v1111, v1114 = v1109(v1110, v1111)

                if v1111 == nil then
                    break
                end

                local _VehicleSeat = v1114:FindFirstChild('VehicleSeat')

                if _VehicleSeat and _VehicleSeat.Occupant == _Humanoid2 then
                    u1090[v1114.Name] = _VehicleSeat
                    v1113 = _VehicleSeat
                    v1112 = true
                elseif _VehicleSeat and _VehicleSeat.Occupant == 'Name' then
                    v1107()
                end
            end

            if v1112 then
                v1113.MaxSpeed = u1095
                v1113.CFrame = CFrame.new(Vector3.new(v1113.Position.X, v1113.Position.Y, v1113.Position.Z)) * v1113.CFrame.Rotation

                _VirtualInputManager4:SendKeyEvent(true, 'W', false, game)

                local v1116, v1117, v1118 = pairs(_Workspace2.Boats:GetDescendants())

                while true do
                    local v1119

                    v1118, v1119 = v1116(v1117, v1118)

                    if v1118 == nil then
                        break
                    end
                    if v1119:IsA('BasePart') then
                        v1119.CanCollide = false
                    end
                end

                local v1120, v1121, v1122 = pairs(_Character10:GetDescendants())

                while true do
                    local v1123

                    v1122, v1123 = v1120(v1121, v1122)

                    if v1122 == nil then
                        break
                    end
                    if v1123:IsA('BasePart') then
                        v1123.CanCollide = false
                    end
                end

                local v1124, v1125, v1126 = ipairs({
                    'ShipwreckIsland',
                    'SandIsland',
                    'TreeIsland',
                    'TinyIsland',
                    'MysticIsland',
                    'KitsuneIsland',
                    'FrozenDimension',
                })

                while true do
                    local v1127

                    v1126, v1127 = v1124(v1125, v1126)

                    if v1126 == nil then
                        break
                    end

                    local v1128 = _Workspace2.Map:FindFirstChild(v1127)

                    if v1128 and v1128:IsA('Model') then
                        v1128:Destroy()
                    end
                end

                if _Workspace2.Map:FindFirstChild('PrehistoricIsland') then
                    _VirtualInputManager4:SendKeyEvent(false, 'W', false, game)

                    _G.AutoFindPrehistoric = false

                    if not u1101 then
                        u1101 = true
                    end
                end
            else
                return
            end
        else
            return
        end
    else
        u1101 = false

        return
    end
end)
v643:AddToggle({
    Name = 'Auto Tween Prehistoric Island',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng Bay V\u{e0}o \u{110}\u{1ea3}o N\u{fa}i L\u{1eed}a Volcano',
    Default = false,
    Callback = function(p1129)
        _G.TweenVolcano = p1129

        StopTween(_G.TweenVolcano)
    end,
})
spawn(function()
    local v1130 = nil

    while not v1130 do
        v1130 = game:GetService('Workspace').Map:FindFirstChild('PrehistoricIsland')

        wait()
    end
    while wait() do
        local v1131 = _G.TweenVolcano and game:GetService('Workspace').Map:FindFirstChild('PrehistoricIsland')

        if v1131 then
            local _Core = v1131:FindFirstChild('Core')

            if _Core then
                _Core = v1131.Core:FindFirstChild('PrehistoricRelic')
            end
            if _Core then
                _Core = _Core:FindFirstChild('Skull')
            end
            if _Core then
                TP1(CFrame.new(_Core.Position))

                _G.TweenVolcano = false
            end
        end
    end
end)
v643:AddToggle({
    Name = 'Auto Defend Prehistoric',
    Description = 'Xo\u{e1} Lava',
    Default = false,
    Callback = function(p1133)
        _G.DefendVolcano = p1133

        StopTween(_G.DefendVolcano)
    end,
})

local function u1135(p1134)
    game:GetService('VirtualInputManager'):SendKeyEvent(true, p1134, false, game)
    game:GetService('VirtualInputManager'):SendKeyEvent(false, p1134, false, game)
end
local function u1150()
    local _InteriorLava = game.Workspace.Map.PrehistoricIsland.Core:FindFirstChild('InteriorLava')

    if _InteriorLava and _InteriorLava:IsA('Model') then
        _InteriorLava:Destroy()
    end

    local _PrehistoricIsland = game.Workspace.Map:FindFirstChild('PrehistoricIsland')

    if _PrehistoricIsland then
        local v1138, v1139, v1140 = pairs(_PrehistoricIsland:GetDescendants())

        while true do
            local v1141

            v1140, v1141 = v1138(v1139, v1140)

            if v1140 == nil then
                break
            end
            if v1141:IsA('Part') and v1141.Name:lower():find('lava') then
                v1141:Destroy()
            end
        end
    end
    if _PrehistoricIsland then
        local v1142, v1143, v1144 = pairs(_PrehistoricIsland:GetDescendants())

        while true do
            local v1145

            v1144, v1145 = v1142(v1143, v1144)

            if v1144 == nil then
                break
            end
            if v1145:IsA('Model') then
                local v1146, v1147, v1148 = pairs(v1145:GetDescendants())

                while true do
                    local v1149

                    v1148, v1149 = v1146(v1147, v1148)

                    if v1148 == nil then
                        break
                    end
                    if v1149:IsA('MeshPart') and v1149.Name:lower():find('lava') then
                        v1149:Destroy()
                    end
                end
            end
        end
    end
end
local function u1158()
    local _VolcanoRocks = game.Workspace.Map.PrehistoricIsland.Core.VolcanoRocks
    local v1152, v1153, v1154 = pairs(_VolcanoRocks:GetChildren())

    while true do
        local v1155

        v1154, v1155 = v1152(v1153, v1154)

        if v1154 == nil then
            break
        end
        if v1155:IsA('Model') then
            local _volcanorock = v1155:FindFirstChild('volcanorock')

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
local function u1171(p1159)
    local _LocalPlayer13 = game.Players.LocalPlayer
    local _Backpack3 = _LocalPlayer13.Backpack
    local v1162, v1163, v1164 = pairs(_Backpack3:GetChildren())

    while true do
        local v1165

        v1164, v1165 = v1162(v1163, v1164)

        if v1164 == nil then
            break
        end
        if v1165:IsA('Tool') and v1165.ToolTip == p1159 then
            v1165.Parent = _LocalPlayer13.Character

            local v1166, v1167, v1168 = ipairs({
                'Z',
                'X',
                'C',
                'V',
                'F',
            })

            while true do
                local v1169

                v1168, v1169 = v1166(v1167, v1168)

                if v1168 == nil then
                    break
                end

                wait()

                local u1170 = v1169

                pcall(function()
                    u1135(u1170)
                end)
            end

            v1165.Parent = _Backpack3

            break
        end
    end
end

spawn(function()
    while wait() do
        if _G.DefendVolcano then
            AutoHaki()
            pcall(u1150)

            local v1172 = u1158()

            if v1172 then
                local v1173 = CFrame.new(v1172.Position)

                TP1(v1173)

                local _Color2 = v1172.Color

                if _Color2 == Color3.fromRGB(185, 53, 56) or _Color2 == Color3.fromRGB(185, 53, 57) then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1172.Position).Magnitude <= 1 then
                        if _G.UseMelee then
                            u1171('Melee')
                        end
                        if _G.UseSword then
                            u1171('Sword')
                        end
                        if _G.UseGun then
                            u1171('Gun')
                        end
                    end

                    _G.TpPrehistoric = false
                else
                    u1158()
                end
            else
                _G.TpPrehistoric = true
            end
        end
    end
end)
v643:AddSection({
    'Auto Skill',
})
v643:AddToggle({
    Name = 'Auto Use Melee',
    Description = 'D\u{f9}ng Melee \u{110}\u{1ec3} Ph\u{e1} Lava',
    Default = false,
    Callback = function(p1175)
        _G.UseMelee = p1175

        StopTween(_G.UseMelee)
    end,
})
v643:AddToggle({
    Name = 'Auto Use Sword',
    Description = 'D\u{f9}ng Sword \u{110}\u{1ec3} Ph\u{e1} Lava',
    Default = false,
    Callback = function(p1176)
        _G.UseSword = p1176

        StopTween(_G.UseSword)
    end,
})
v643:AddToggle({
    Name = 'Auto Use Gun',
    Description = 'D\u{f9}ng Gun \u{110}\u{1ec3} Ph\u{e1} Lava',
    Default = false,
    Callback = function(p1177)
        _G.UseGun = p1177

        StopTween(_G.UseGun)
    end,
})
v643:AddSection({
    'Auto Kill Golem',
})
v643:AddToggle({
    Name = 'Auto Kill Golem',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng Kill Golem',
    Default = false,
    Callback = function(p1178)
        _G.KillGolem = p1178

        StopTween(_G.KillGolem)
    end,
})
spawn(function()
    while wait() do
        if _G.KillGolem and World3 then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('Lava Golem') then
                    local v1179, v1180, v1181 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v1182

                        v1181, v1182 = v1179(v1180, v1181)

                        if v1181 == nil then
                            break
                        end
                        if v1182.Name == 'Lava Golem' and (v1182:FindFirstChild('Humanoid') and (v1182:FindFirstChild('HumanoidRootPart') and v1182.Humanoid.Health > 0)) then
                            repeat
                                task.wait()
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)

                                v1182.HumanoidRootPart.CanCollide = false
                                v1182.Humanoid.WalkSpeed = 0
                                v1182.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                topos(v1182.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                            until not _G.KillGolem or (not v1182.Parent or v1182.Humanoid.Health <= 0)
                        end
                    end
                else
                    UnEquipWeapon(_G.SelectWeapon)

                    if game:GetService('ReplicatedStorage'):FindFirstChild('Lava Golem') then
                        topos(game:GetService('ReplicatedStorage'):FindFirstChild('Lava Golem').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    end
                end
            end)
        end
    end
end)
v643:AddToggle({
    Name = 'Auto Kill Aura Golem',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng Kill Aura Golem',
    Default = false,
    Callback = function(p1183)
        _G.Kill_Aura = p1183

        StopTween(_G.Kill_Aura)
    end,
})
spawn(function()
    pcall(function()
        while wait() do
            if _G.Kill_Aura then
                local _LocalPlayer14 = game:GetService('Players').LocalPlayer
                local v1185 = game:GetService('Workspace').Enemies:GetChildren()
                local v1186 = _LocalPlayer14.Character and _LocalPlayer14.Character:FindFirstChild('HumanoidRootPart')

                if v1186 then
                    v1186 = _LocalPlayer14.Character.HumanoidRootPart.Position
                end

                local u1187 = _LocalPlayer14

                if v1186 then
                    local v1188, v1189, v1190 = pairs(v1185)

                    while true do
                        local v1191

                        v1190, v1191 = v1188(v1189, v1190)

                        if v1190 == nil then
                            break
                        end

                        local u1192 = v1191

                        if u1192:FindFirstChild('Humanoid') and (u1192:FindFirstChild('HumanoidRootPart') and (u1192.Humanoid.Health > 0 and (u1192.HumanoidRootPart.Position - v1186).Magnitude <= 1000)) then
                            pcall(function()
                                repeat
                                    wait()
                                    sethiddenproperty(u1187, 'SimulationRadius', math.huge)

                                    u1192.Humanoid.Health = 0
                                    u1192.HumanoidRootPart.CanCollide = false
                                until not _G.Kill_Aura or (not u1192.Parent or u1192.Humanoid.Health <= 0)
                            end)
                        end
                    end
                end
            end
        end
    end)
end)
v643:AddSection({
    'Auto Collect Bone,Egg',
})
v643:AddToggle({
    Name = 'Auto Collect Bone',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng Nh\u{1eb7}t S\u{1b0}\u{1a1}ng',
    Default = false,
    Callback = function(p1193)
        _G.AutoCollectBone = p1193

        StopTween(_G.AutoCollectBone)
    end,
})
spawn(function()
    while wait() do
        if _G.AutoCollectBone then
            local v1194, v1195, v1196 = pairs(workspace:GetDescendants())

            while true do
                local v1197

                v1196, v1197 = v1194(v1195, v1196)

                if v1196 == nil then
                    break
                end
                if v1197:IsA('BasePart') and v1197.Name == 'DinoBone' then
                    topos(CFrame.new(v1197.Position))
                end
            end
        end
    end
end)
v643:AddToggle({
    Name = 'Auto Collect Egg',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng Nh\u{1eb7}t Tr\u{1ee9}ng',
    Default = false,
    Callback = function(p1198)
        _G.CollectEgg = p1198

        StopTween(_G.CollectEgg)
    end,
})
spawn(function()
    while wait() do
        if _G.CollectEgg then
            pcall(function()
                game:GetService('ReplicatedStorage'):WaitForChild('Modules'):WaitForChild('Net'):WaitForChild('RE/CollectedDragonEgg'):FireServer()
            end)
        end
    end
end)
v645:AddSection({
    'Kitsune Island',
})

local u1199 = v645:AddParagraph({
    Title = 'Check Kitsune Island',
    Content = 'Loading...',
})

task.spawn(function()
    while task.wait(1) do
        pcall(function()
            if game:GetService('Workspace').Map:FindFirstChild('KitsuneIsland') then
                u1199:Set('Kitsune Island Spawning \u{2705}')
            else
                u1199:Set('Kitsune Island Not Spawn \u{274c}')
            end
        end)
    end
end)
v645:AddToggle({
    Name = 'Auto Tween Kitsune island',
    Description = 'Bay V\u{f4} \u{110}\u{1ea3}o Kitsune',
    Default = false,
    Callback = function(p1200)
        _G.TweenToKitsune = p1200

        StopTween(_G.TweenToKitsune)
    end,
})
spawn(function()
    local v1201 = nil

    while not v1201 do
        v1201 = game:GetService('Workspace').Map:FindFirstChild('KitsuneIsland')

        wait(1)
    end
    while wait() do
        if _G.TweenToKitsune then
            local _ShrineActive = v1201:FindFirstChild('ShrineActive')

            if _ShrineActive then
                local v1203, v1204, v1205 = pairs(_ShrineActive:GetDescendants())

                while true do
                    local v1206

                    v1205, v1206 = v1203(v1204, v1205)

                    if v1205 == nil then
                        break
                    end
                    if v1206:IsA('BasePart') and v1206.Name:find('NeonShrinePart') then
                        Tween(v1206.CFrame)
                    end
                end
            end
        end
    end
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.TweenToKitsune then
                topos(game.Workspace.Map.KitsuneIsland.ShrineActive.NeonShrinePart.CFrame * CFrame.new(0, 0, 10))
            end
        end
    end)
end)
v645:AddToggle({
    Title = 'Esp Kitsune Island',
    Value = false,
    Callback = function(p1207)
        KitsuneIslandEsp = p1207

        if KitsuneIslandEsp then
            task.spawn(function()
                while KitsuneIslandEsp do
                    UpdateIslandKisuneESP()
                    task.wait(1)
                end
            end)
        else
            UpdateIslandKisuneESP()
        end
    end,
})
v645:AddToggle({
    Name = 'Auto Azuer Ember',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng Nh\u{1eb7}t Linh H\u{1ed3}n Xanh',
    Default = false,
    Callback = function(p1208)
        _G.AutoAzuerEmber = p1208

        StopTween(_G.AutoAzuerEmber)
    end,
})
spawn(function()
    while wait() do
        if _G.AutoAzuerEmber then
            pcall(function()
                if game:GetService('Workspace'):FindFirstChild('AttachedAzureEmber') then
                    TP1(game.Workspace.EmberTemplate.Part.CFrame)
                end
            end)
        end
    end
end)
v645:AddSection({
    'Sea Events',
})
v645:AddToggle({
    Name = 'Auto Drive Boats',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng L\u{e1}i Thuy\u{1ec1}n',
    Default = false,
    Callback = function(p1209)
        _G.SailBoat = p1209

        StopTween(_G.SailBoat)
    end,
})
spawn(function()
    while wait() do
        pcall(function()
            if not _G.SailBoat or game:GetService('Workspace').Enemies:FindFirstChild('Shark') and (game:GetService('Workspace').Enemies:FindFirstChild('Terrorshark') and (game:GetService('Workspace').Enemies:FindFirstChild('Piranha') and game:GetService('Workspace').Enemies:FindFirstChild('Fish Crew Member'))) then
                return
            end
            if not game:GetService('Workspace').Boats:FindFirstChild('PirateBrigade') then
                buyb = TPP(CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781))

                if (CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                    if buyb then
                        buyb:Stop()
                    end

                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'BuyBoat',
                        'PirateBrigade',
                    }))
                end
            end
            if not game:GetService('Workspace').Boats:FindFirstChild('PirateBrigade') then
            end
            if game.Players.LocalPlayer.Character:WaitForChild('Humanoid').Sit == false then
                TPP(game:GetService('Workspace').Boats.PirateBrigade.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
            end

            local v1210, v1211, v1212 = pairs(game:GetService('Workspace').Boats:GetChildren())
            local v1213

            v1212, v1213 = v1210(v1211, v1212)

            if v1212 == nil then
            end
            if v1213.Name ~= 'PirateBrigade' then
            end
            if true then
                wait()

                if (CFrame.new(-17013.80078125, 10.962434768676758, 438.0169982910156).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 10 then
                    if (CFrame.new(-37813.6953, -0.3221744, 6105.16895, -0.252362996, 4.1362158099999995e-9, 0.967632651, 2.87320709e-8, 1, 3.21888249e-9, -0.967632651, 2.86144175e-8, -0.252362996).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                        TPB(CFrame.new(-42250.2227, -0.3221744, 9247.07715, -0.45916447, 6.39043236e-8, 0.888351262, -3.36711423e-8, 1, -8.93395651e-8, -0.888351262, -7.09333605e-8, -0.45916447))
                    elseif (CFrame.new(-42250.2227, -0.3221744, 9247.07715, -0.45916447, 6.39043236e-8, 0.888351262, -3.36711423e-8, 1, -8.93395651e-8, -0.888351262, -7.09333605e-8, -0.45916447).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                        TPB(CFrame.new(-37813.6953, -0.3221744, 6105.16895, -0.252362996, 4.1362158099999995e-9, 0.967632651, 2.87320709e-8, 1, 3.21888249e-9, -0.967632651, 2.86144175e-8, -0.252362996))
                    end
                else
                    TPB(CFrame.new(-37813.6953, -0.3221744, 6105.16895, -0.252362996, 4.1362158099999995e-9, 0.967632651, 2.87320709e-8, 1, 3.21888249e-9, -0.967632651, 2.86144175e-8, -0.252362996))
                end
            end
            if game:GetService('Workspace').Enemies:FindFirstChild('Shark') or (game:GetService('Workspace').Enemies:FindFirstChild('Terrorshark') or (game:GetService('Workspace').Enemies:FindFirstChild('Piranha') or (game:GetService('Workspace').Enemies:FindFirstChild('Fish Crew Member') or _G.SailBoat == false))) then
            else
            end
        end)
    end
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.SailBoat and (game:GetService('Workspace').Enemies:FindFirstChild('Shark') or (game:GetService('Workspace').Enemies:FindFirstChild('Terrorshark') or (game:GetService('Workspace').Enemies:FindFirstChild('Piranha') or game:GetService('Workspace').Enemies:FindFirstChild('Fish Crew Member')))) then
                game.Players.LocalPlayer.Character.Humanoid.Sit = false
            end
        end
    end)
end)
v645:AddToggle({
    Name = 'Auto Kill Terror Shank',
    Description = 'T\u{1ef1} \u{110}\u{e1}nh Terror Shank',
    Default = false,
    Callback = function(p1214)
        _G.Autoterrorshark = p1214

        StopTween(_G.Autoterrorshark)
    end,
})
spawn(function()
    while wait() do
        if _G.Autoterrorshark and World3 then
            pcall(function()
                if not (game:GetService('Workspace').Enemies:FindFirstChild('Terrorshark') or (game:GetService('Workspace').Enemies:FindFirstChild('Piranha') or (game:GetService('Workspace').Enemies:FindFirstChild('Fish Crew Member') or (game:GetService('Workspace').Enemies:FindFirstChild('Shark') or (game:GetService('Workspace').SeaBeasts:FindFirstChild('SeaBeast1') or (game:GetService('Workspace').Enemies:FindFirstChild('PirateBrigade') or game:GetService('Workspace').Enemies:FindFirstChild('PirateBasic'))))))) then
                    topos(game:GetService('Workspace').Boats.PirateBrigade.VehicleSeat.CFrame * CFrame.new(0, -1, 0))

                    local v1215, v1216, v1217 = pairs(game:GetService('ReplicatedStorage'):GetChildren())

                    while true do
                        local v1218

                        v1217, v1218 = v1215(v1216, v1217)

                        if v1217 == nil then
                            break
                        end
                        if v1218.Name == 'Terrorshark' then
                            topos(v1218.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        else
                            game:GetService('Workspace').Boats.VehicleSeat.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        end
                    end
                end

                local v1219, v1220, v1221 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                while true do
                    local v1222

                    v1221, v1222 = v1219(v1220, v1221)

                    if v1221 == nil then
                        return
                    end
                    if v1222.Name == 'Terrorshark' and (v1222:FindFirstChild('Humanoid') and (v1222:FindFirstChild('HumanoidRootPart') and v1222.Humanoid.Health > 0)) then
                        while true do
                            if true then
                                task.wait()
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)

                                v1222.HumanoidRootPart.CanCollide = false
                                v1222.Humanoid.WalkSpeed = 0
                                v1222.Head.CanCollide = false

                                topos(v1222.HumanoidRootPart.CFrame * CFrame.new(5, 40, 10))

                                MonFarm = v1222.Name
                                PosMon = v1222.HumanoidRootPart.CFrame
                                game.Players.LocalPlayer.Character.Humanoid.Sit = false

                                if game:GetService('Workspace')._WorldOrigin:FindFirstChild('Typhoon Splash') then
                                    topos(v1222.HumanoidRootPart.CFrame * CFrame.new(0, 300, 0))
                                else
                                    topos(v1222.HumanoidRootPart.CFrame * CFrame.new(0, 60, 0))
                                end
                            end
                            if not _G.Autoterrorshark or (not v1222.Parent or v1222.Humanoid.Health <= 0) then
                            end
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if _G.dao then
            pcall(function()
                if not game:GetService('Workspace').Boats:FindFirstChild('PirateBrigade') then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyBoat', 'PirateBrigade')
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if _G.dao and game.Players.LocalPlayer.Character.Humanoid.Sit == true then
            TPB(CFrame.new(-25351.8418, 10.7575607, 26430.791, -0.998379767, -0.00721008703, -0.0564435199, -0.00722159958, 0.999973953, -1.53919405e-10, 0.0564420484, 0.000407612359, -0.998405814))
        end
    end
end)
spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if getgenv().SafeMode then
                local _Character11 = game.Players.LocalPlayer.Character

                if _Character11 and (_Character11:FindFirstChild('Humanoid') and _Character11:FindFirstChild('HumanoidRootPart')) then
                    local _Humanoid3 = _Character11.Humanoid
                    local _HumanoidRootPart5 = _Character11.HumanoidRootPart

                    if _Humanoid3.Health < 5500 then
                        while getgenv().SafeMode and _Humanoid3.Health < 5500 do
                            task.wait(0.1)

                            _HumanoidRootPart5.CFrame = _HumanoidRootPart5.CFrame + Vector3.new(0, 200, 0)
                        end
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        if _G.Nocliprock then
            if game.Players.LocalPlayer.Character.Humanoid.Sit ~= true then
                if game.Players.LocalPlayer.Character.Humanoid.Sit == false then
                    local v1226, v1227, v1228 = pairs(game.Workspace.Boats:GetDescendants())

                    while true do
                        local v1229

                        v1228, v1229 = v1226(v1227, v1228)

                        if v1228 == nil then
                            break
                        end
                        if v1229:IsA('BasePart') and v1229.CanCollide == false then
                            v1229.CanCollide = true
                        end
                    end

                    local v1230, v1231, v1232 = pairs(game.Players.LocalPlayer.Character:GetDescendants())

                    while true do
                        local v1233

                        v1232, v1233 = v1230(v1231, v1232)

                        if v1232 == nil then
                            break
                        end
                        if v1233:IsA('BasePart') and v1233.CanCollide == false then
                            v1233.CanCollide = true
                        end
                    end
                end
            else
                local v1234, v1235, v1236 = pairs(game.Workspace.Boats:GetDescendants())

                while true do
                    local v1237

                    v1236, v1237 = v1234(v1235, v1236)

                    if v1236 == nil then
                        break
                    end
                    if v1237:IsA('BasePart') and v1237.CanCollide == true then
                        v1237.CanCollide = false
                    end
                end

                local v1238, v1239, v1240 = pairs(game.Players.LocalPlayer.Character:GetDescendants())

                while true do
                    local v1241

                    v1240, v1241 = v1238(v1239, v1240)

                    if v1240 == nil then
                        break
                    end
                    if v1241:IsA('BasePart') and v1241.CanCollide == true then
                        v1241.CanCollide = false
                    end
                end
            end
        end
    end
end)
v645:AddToggle({
    Name = 'Auto Kill Shark',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng \u{110}\u{e1}nh Shark',
    Default = false,
    Callback = function(p1242)
        _G.KillShark = p1242

        StopTween(_G.KillShark)
    end,
})
spawn(function()
    while wait() do
        if _G.KillShark and (World3 and _G.SailBoat) then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('Shark') or (game:GetService('Workspace').Enemies:FindFirstChild('Piranha') or (game:GetService('Workspace').Enemies:FindFirstChild('Fish Crew Member') or (game:GetService('Workspace').Enemies:FindFirstChild('Terrorshark') or (game:GetService('Workspace').SeaBeasts:FindFirstChild('SeaBeast1') or (game:GetService('Workspace').Enemies:FindFirstChild('PirateBrigade') or game:GetService('Workspace').Enemies:FindFirstChild('PirateBasic')))))) then
                    local v1243, v1244, v1245 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v1246

                        v1245, v1246 = v1243(v1244, v1245)

                        if v1245 == nil then
                            break
                        end
                        if v1246.Name == 'Shark' and (v1246:FindFirstChild('Humanoid') and (v1246:FindFirstChild('HumanoidRootPart') and v1246.Humanoid.Health > 0)) then
                            repeat
                                task.wait()
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)

                                v1246.HumanoidRootPart.CanCollide = false
                                v1246.Humanoid.WalkSpeed = 0
                                v1246.Head.CanCollide = false

                                topos(v1246.HumanoidRootPart.CFrame * CFrame.new(5, 40, 10))

                                MonFarm = v1246.Name
                                PosMon = v1246.HumanoidRootPart.CFrame
                                game.Players.LocalPlayer.Character.Humanoid.Sit = false
                            until not _G.KillShark or (not v1246.Parent or v1246.Humanoid.Health <= 0)
                        end
                    end
                else
                    topos(game:GetService('Workspace').Boats.PirateBrigade.VehicleSeat.CFrame * CFrame.new(0, -1, 0))

                    local v1247, v1248, v1249 = pairs(game:GetService('ReplicatedStorage'):GetChildren())

                    while true do
                        local v1250

                        v1249, v1250 = v1247(v1248, v1249)

                        if v1249 == nil then
                            break
                        end
                        if not v1250.Name ~= 'Shark' then
                            if v1250.Name == 'Shark' then
                                topos(v1250.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                            end
                        else
                            game:GetService('Workspace').Boats.VehicleSeat.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        end
                    end
                end
            end)
        end
    end
end)
v645:AddToggle({
    Name = 'Auto Kill Piranha',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng \u{110}\u{e1}nh Piranha',
    Default = false,
    Callback = function(p1251)
        _G.KillPiranha = p1251

        StopTween(_G.KillPiranha)
    end,
})
spawn(function()
    while wait() do
        if _G.KillPiranha and World3 then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('Piranha') or (game:GetService('Workspace').Enemies:FindFirstChild('Shark') or (game:GetService('Workspace').Enemies:FindFirstChild('Fish Crew Member') or (game:GetService('Workspace').Enemies:FindFirstChild('Terrorshark') or (game:GetService('Workspace').SeaBeasts:FindFirstChild('SeaBeast1') or (game:GetService('Workspace').Enemies:FindFirstChild('PirateBrigade') or game:GetService('Workspace').Enemies:FindFirstChild('PirateBasic')))))) then
                    local v1252, v1253, v1254 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v1255

                        v1254, v1255 = v1252(v1253, v1254)

                        if v1254 == nil then
                            break
                        end
                        if v1255.Name == 'Piranha' and (v1255:FindFirstChild('Humanoid') and (v1255:FindFirstChild('HumanoidRootPart') and v1255.Humanoid.Health > 0)) then
                            repeat
                                task.wait()
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)

                                v1255.HumanoidRootPart.CanCollide = false
                                v1255.Humanoid.WalkSpeed = 0
                                v1255.Head.CanCollide = false

                                topos(v1255.HumanoidRootPart.CFrame * CFrame.new(5, 40, 10))

                                MonFarm = v1255.Name
                                PosMon = v1255.HumanoidRootPart.CFrame
                                game.Players.LocalPlayer.Character.Humanoid.Sit = false
                            until not _G.KillPiranha or (not v1255.Parent or v1255.Humanoid.Health <= 0)
                        end
                    end
                else
                    topos(game:GetService('Workspace').Boats.PirateBrigade.VehicleSeat.CFrame * CFrame.new(0, -1, 0))

                    local v1256, v1257, v1258 = pairs(game:GetService('ReplicatedStorage'):GetChildren())

                    while true do
                        local v1259

                        v1258, v1259 = v1256(v1257, v1258)

                        if v1258 == nil then
                            break
                        end
                        if not v1259.Name ~= 'Piranha' then
                            if v1259.Name == 'Piranha' then
                                topos(v1259.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                            end
                        else
                            game:GetService('Workspace').Boats.VehicleSeat.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        end
                    end
                end
            end)
        end
    end
end)
v645:AddToggle({
    Name = 'Auto Kill Fish Crew Member',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng Th\u{e0}nh vi\u{ea}n phi h\u{e0}nh \u{111}o\u{e0}n Auto Kill Fish',
    Default = false,
    Callback = function(p1260)
        _G.KillFishCrew = p1260

        StopTween(_G.KillFishCrew)
    end,
})
spawn(function()
    while wait() do
        if _G.KillFishCrew and World3 then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('Fish Crew Member') or (game:GetService('Workspace').Enemies:FindFirstChild('Piranha') or (game:GetService('Workspace').Enemies:FindFirstChild('Shark') or (game:GetService('Workspace').Enemies:FindFirstChild('Terrorshark') or (game:GetService('Workspace').SeaBeasts:FindFirstChild('SeaBeast1') or (game:GetService('Workspace').Enemies:FindFirstChild('PirateBrigade') or game:GetService('Workspace').Enemies:FindFirstChild('PirateBasic')))))) then
                    local v1261, v1262, v1263 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v1264

                        v1263, v1264 = v1261(v1262, v1263)

                        if v1263 == nil then
                            break
                        end
                        if v1264.Name == 'Fish Crew Member' and (v1264:FindFirstChild('Humanoid') and (v1264:FindFirstChild('HumanoidRootPart') and v1264.Humanoid.Health > 0)) then
                            repeat
                                task.wait()
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)

                                v1264.HumanoidRootPart.CanCollide = false
                                v1264.Humanoid.WalkSpeed = 0
                                v1264.Head.CanCollide = false

                                topos(v1264.HumanoidRootPart.CFrame * CFrame.new(5, 40, 10))

                                MonFarm = v1264.Name
                                PosMon = v1264.HumanoidRootPart.CFrame
                                game.Players.LocalPlayer.Character.Humanoid.Sit = false
                            until not _G.KillFishCrew or (not v1264.Parent or v1264.Humanoid.Health <= 0)
                        end
                    end
                else
                    topos(game:GetService('Workspace').Boats.PirateBrigade.VehicleSeat.CFrame * CFrame.new(0, -1, 0))

                    local v1265, v1266, v1267 = pairs(game:GetService('ReplicatedStorage'):GetChildren())

                    while true do
                        local v1268

                        v1267, v1268 = v1265(v1266, v1267)

                        if v1267 == nil then
                            break
                        end
                        if not v1268.Name == 'Fish Crew Member' then
                            game:GetService('Workspace').Boats.VehicleSeat.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        end
                    end
                end
            end)
        end
    end
end)
v645:AddSection({
    'Mirage Island',
})

local u1269 = v645:AddParagraph({
    Title = 'Check Mirage Island',
    Content = 'Loading...',
})

task.spawn(function()
    while task.wait(1) do
        pcall(function()
            if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
                u1269:Set('Mirage Island Spawning \u{2705}')
            else
                u1269:Set('Mirage Island Not Spawn \u{274c}')
            end
        end)
    end
end)
v645:AddToggle({
    Name = 'Tween Mirage Island',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng Bay T\u{1edb}i \u{110}\u{1ea3}o B\u{ed} \u{1ea8}n',
    Default = false,
    Callback = function(p1270)
        _G.AutoMysticIsland = p1270

        StopTween(_G.AutoMysticIsland)
    end,
})
spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if _G.AutoMysticIsland then
                local v1271, v1272, v1273 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

                while true do
                    local v1274

                    v1273, v1274 = v1271(v1272, v1273)

                    if v1273 == nil then
                        break
                    end
                    if v1274.Name == 'Mirage Island' then
                        topos(v1274.CFrame * CFrame.new(0, 333, 0))
                    end
                end
            end
        end)
    end
end)
v645:AddToggle({
    Title = 'Esp Mirage Island',
    Description = '\u{110}\u{1ecb}nh V\u{1ecb} \u{110}\u{1ea3}o B\u{ed} \u{1ea8}n',
    Value = false,
    Callback = function(p1275)
        MirageIslandESP = p1275

        if MirageIslandESP then
            task.spawn(function()
                while MirageIslandESP do
                    UpdateIslandMirageESP()
                    task.wait(1)
                end
            end)
        else
            UpdateIslandMirageESP()
        end
    end,
})
v645:AddToggle({
    Name = 'Look Moon + Auto V3',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng Nh\u{ec}n Tr\u{103}ng V\u{e0} B\u{1ead}t T\u{1ed9}c V3',
    Default = false,
    Callback = function(p1276)
        _G.AutoDooHee = p1276

        StopTween(_G.AutoDooHee)
    end,
})

local _VirtualInputManager5 = game:GetService('VirtualInputManager')

spawn(function()
    while wait() do
        pcall(function()
            if getgenv()._G.AutoDooHee then
                local v1278 = game.Lighting:GetMoonDirection()
                local v1279 = game.Workspace.CurrentCamera.CFrame.p + v1278 * 100

                game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, v1279)

                wait(2)
                _VirtualInputManager5:SendKeyEvent(true, 'T', false, game)
                wait(0.1)
                _VirtualInputManager5:SendKeyEvent(false, 'T', false, game)
            end
        end)
    end
end)
v645:AddToggle({
    Name = 'Auto Tween To Gear',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng Bay \u{110}\u{1ebf}n Gear',
    Default = false,
    Callback = function(p1280)
        _G.TweenMGear = p1280

        StopTween(_G.TweenMGear)
    end,
})
spawn(function()
    pcall(function()
        while wait() do
            if _G.TweenMGear and game:GetService('Workspace').Map:FindFirstChild('MysticIsland') then
                local v1281, v1282, v1283 = pairs(game:GetService('Workspace').Map.MysticIsland:GetChildren())

                while true do
                    local v1284

                    v1283, v1284 = v1281(v1282, v1283)

                    if v1283 == nil then
                        break
                    end
                    if v1284:IsA('MeshPart') and v1284.Material == Enum.Material.Neon then
                        topos(v1284.CFrame)
                    end
                end
            end
        end
    end)
end)
v647:AddSection({
    'Teleport V4',
})
v647:AddButton({
    Title = 'Teleport To Top GreatTree',
    Value = false,
    Callback = function()
        Game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3030.39453125, 2280.6171875, -7320.18359375)
    end,
})
v647:AddButton({
    Title = 'Teleport Temple Of Time',
    Value = false,
    Callback = function()
        Game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
    end,
})
v647:AddButton({
    Title = 'Teleport Lever Pull',
    Value = false,
    Callback = function()
        topos(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
    end,
})
v647:AddButton({
    Title = 'Teleport To The Clock',
    Value = false,
    Callback = function()
        topos(CFrame.new(29553.7812, 15066.6133, -88.2750015, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    end,
})
v647:AddSection({
    'Trial V4',
})
v647:AddButton({
    Title = 'Auto Race Door',
    Value = false,
    Callback = function()
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)

        wait(0.1)

        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)

        wait(0.1)

        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)

        wait(0.1)

        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)

        wait(0.5)

        if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Human' then
            if game:GetService('Players').LocalPlayer.Data.Race.Value == 'Skypiea' then
                topos(CFrame.new(28960.158203125, 14919.6240234375, 235.03948974609375))
            elseif game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Fishman' then
                if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Cyborg' then
                    if game:GetService('Players').LocalPlayer.Data.Race.Value == 'Ghoul' then
                        topos(CFrame.new(28674.244140625, 14890.6767578125, 445.4310607910156))
                    elseif game:GetService('Players').LocalPlayer.Data.Race.Value == 'Mink' then
                        topos(CFrame.new(29012.341796875, 14890.9755859375, -380.1492614746094))
                    end
                else
                    topos(CFrame.new(28502.681640625, 14895.9755859375, -423.7279357910156))
                end
            else
                topos(CFrame.new(28231.17578125, 14890.9755859375, -211.64173889160156))
            end
        else
            topos(CFrame.new(29221.822265625, 14890.9755859375, -205.99114990234375))
        end
    end,
})
v647:AddButton({
    Title = 'Buy Acient One Quest',
    Value = false,
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('UpgradeRace', 'Buy')
    end,
})
v647:AddToggle({
    Name = 'Auto Trial Human Ghost',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng Trial',
    Default = false,
    Callback = function(p1285)
        _G.Kill_Aura = p1285

        StopTween(_G.Kill_Aura)
    end,
})
v647:AddToggle({
    Name = 'Auto Trailer All Race',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng Trailer All Race',
    Default = false,
    Callback = function(p1286)
        _G.AutoQuestRace = p1286

        StopTween(_G.AutoQuestRace)
    end,
})
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoQuestRace then
                if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Human' then
                    if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Skypiea' then
                        if game:GetService('Players').LocalPlayer.Data.Race.Value == 'Fishman' then
                            local v1287, v1288, v1289 = pairs(game:GetService('Workspace').SeaBeasts.SeaBeast1:GetDescendants())

                            while true do
                                local v1290

                                v1289, v1290 = v1287(v1288, v1289)

                                if v1289 == nil then
                                    break
                                end
                                if v1290.Name == 'HumanoidRootPart' then
                                    topos(v1290.CFrame * Pos)

                                    local v1291, v1292, v1293 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                                    while true do
                                        local v1294

                                        v1293, v1294 = v1291(v1292, v1293)

                                        if v1293 == nil then
                                            break
                                        end
                                        if v1294:IsA('Tool') and v1294.ToolTip == 'Melee' then
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1294)
                                        end
                                    end

                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

                                    local v1295, v1296, v1297 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                                    while true do
                                        local v1298

                                        v1297, v1298 = v1295(v1296, v1297)

                                        if v1297 == nil then
                                            break
                                        end
                                        if v1298:IsA('Tool') and v1298.ToolTip == 'Blox Fruit' then
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1298)
                                        end
                                    end

                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.5)

                                    local v1299, v1300, v1301 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                                    while true do
                                        local v1302

                                        v1301, v1302 = v1299(v1300, v1301)

                                        if v1301 == nil then
                                            break
                                        end
                                        if v1302:IsA('Tool') and v1302.ToolTip == 'Sword' then
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1302)
                                        end
                                    end

                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.5)

                                    local v1303, v1304, v1305 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                                    while true do
                                        local v1306

                                        v1305, v1306 = v1303(v1304, v1305)

                                        if v1305 == nil then
                                            break
                                        end
                                        if v1306:IsA('Tool') and v1306.ToolTip == 'Gun' then
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1306)
                                        end
                                    end

                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                end
                            end
                        elseif game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Cyborg' then
                            if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Ghoul' then
                                if game:GetService('Players').LocalPlayer.Data.Race.Value == 'Mink' then
                                    local v1307, v1308, v1309 = pairs(game:GetService('Workspace'):GetDescendants())

                                    while true do
                                        local v1310

                                        v1309, v1310 = v1307(v1308, v1309)

                                        if v1309 == nil then
                                            break
                                        end
                                        if v1310.Name == 'StartPoint' then
                                            topos(v1310.CFrame * CFrame.new(0, 3, 0))

                                            _G.AutoQuestRace = false

                                            StopTween(_G.AutoQuestRace)
                                        end
                                    end
                                end
                            else
                                local v1311, v1312, v1313 = pairs(game.Workspace.Enemies:GetDescendants())

                                while true do
                                    local v1314

                                    v1313, v1314 = v1311(v1312, v1313)

                                    if v1313 == nil then
                                        break
                                    end

                                    local u1315 = v1314

                                    if u1315:FindFirstChild('Humanoid') and (u1315:FindFirstChild('HumanoidRootPart') and u1315.Humanoid.Health > 0) then
                                        pcall(function()
                                            repeat
                                                wait(0.1)

                                                u1315.Humanoid.Health = 0
                                                u1315.HumanoidRootPart.CanCollide = false

                                                sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                            until not _G.AutoQuestRace or (not u1315.Parent or u1315.Humanoid.Health <= 0)
                                        end)
                                    end
                                end
                            end
                        else
                            topos(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                        end
                    else
                        local v1316, v1317, v1318 = pairs(game:GetService('Workspace').Map.SkyTrial.Model:GetDescendants())

                        while true do
                            local v1319

                            v1318, v1319 = v1316(v1317, v1318)

                            if v1318 == nil then
                                break
                            end
                            if v1319.Name == 'snowisland_Cylinder.081' then
                                topos(v1319.CFrame * CFrame.new(0, 0, 0))
                            end
                        end
                    end
                else
                    local v1320, v1321, v1322 = pairs(game.Workspace.Enemies:GetDescendants())

                    while true do
                        local v1323

                        v1322, v1323 = v1320(v1321, v1322)

                        if v1322 == nil then
                            break
                        end

                        local u1324 = v1323

                        if u1324:FindFirstChild('Humanoid') and (u1324:FindFirstChild('HumanoidRootPart') and u1324.Humanoid.Health > 0) then
                            pcall(function()
                                repeat
                                    wait(0.1)

                                    u1324.Humanoid.Health = 0
                                    u1324.HumanoidRootPart.CanCollide = false

                                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.AutoQuestRace or (not u1324.Parent or u1324.Humanoid.Health <= 0)
                            end)
                        end
                    end
                end
            end
        end
    end)
end)
v647:AddToggle({
    Name = 'Auto Kill Player Trailer V4',
    Description = '\u{110}\u{e1}nh Ng\u{1b0}\u{1edd}i Ch\u{1a1}i Trong Trial',
    Default = false,
    Callback = function(p1325)
        _G.AutoKillV4 = p1325

        StopTween(_G.AutoKillV4)
    end,
})
spawn(function()
    while task.wait() do
        if _G.AutoKillV4 then
            pcall(function()
                local v1326, v1327, v1328 = pairs(game.Workspace.Characters:GetChildren())

                while true do
                    local v1329

                    v1328, v1329 = v1326(v1327, v1328)

                    if v1328 == nil then
                        break
                    end
                    if v1329.Name ~= game.Players.LocalPlayer.Name and (v1329:FindFirstChild('Humanoid') and (v1329:FindFirstChild('HumanoidRootPart') and (v1329.Humanoid.Health > 0 and (v1329.Parent and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1329.HumanoidRootPart.Position).Magnitude <= 230)))) then
                        repeat
                            task.wait()
                            AutoHaki()
                            EquipWeapon(_G.SelectWeapon)
                            topos(v1329.HumanoidRootPart.CFrame * CFrame.new(1, 1, 2))

                            v1329.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            v1329.HumanoidRootPart.CanCollide = false
                            v1329.Head.CanCollide = false
                            v1329.Humanoid.WalkSpeed = 0

                            sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                        until not _G.AutoKillV4 or (v1329.Humanoid.Health <= 0 or not (v1329.Parent and (v1329:FindFirstChild('HumanoidRootPart') and v1329:FindFirstChild('Humanoid'))))
                    end
                end
            end)
        end
    end
end)
v647:AddSection({
    'Auto Skill',
})
v647:AddToggle({
    Name = 'Auto Skill Z',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng D\u{f9}ng Skill Z \u{110}\u{1ec3} \u{110}\u{e1}nh',
    Default = false,
    Callback = function(p1330)
        _G.XaiSkillZ = p1330

        StopTween(_G.XaiSkillZ)
    end,
})
v647:AddToggle({
    Name = 'Auto Skill X',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng D\u{f9}ng Skill X \u{110}\u{1ec3} \u{110}\u{e1}nh',
    Default = false,
    Callback = function(p1331)
        _G.XaiSkillX = p1331

        StopTween(_G.XaiSkillX)
    end,
})
v647:AddToggle({
    Name = 'Auto Skill C',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng D\u{f9}ng Skill C \u{110}\u{1ec3} \u{110}\u{e1}nh',
    Default = false,
    Callback = function(p1332)
        _G.XaiSkillC = p1332

        StopTween(_G.XaiSkillC)
    end,
})
v649:AddSection({
    'Raid Fruits',
})
v649:AddDropdown({
    Name = 'Select Chip',
    Options = {
        'Flame',
        'Ice',
        'Sand',
        'Dark',
        'Light',
        'Magma',
        'Quake',
        'Buddha',
        'Spider',
        'Phoenix',
        'Lightning',
        'Dough',
    },
    Default = 'Flame',
    Callback = function(p1333)
        _G.SelectChip = p1333
    end,
})
v649:AddToggle({
    Name = 'Auto Buy Chip',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng Mua Chip Raid',
    Default = false,
    Callback = function(p1334)
        _G.AutoBuyChip = p1334
    end,
})
task.spawn(function()
    while task.wait() do
        if _G.AutoBuyChip and _G.SelectChip then
            pcall(function()
                local v1335 = {
                    'RaidsNpc',
                    'Select',
                    _G.SelectChip,
                }

                game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(v1335))
            end)
        end
    end
end)
v649:AddToggle({
    Name = 'Auto Start Raid',
    Description = 'B\u{1eaf}t \u{110}\u{1ea7}u Raid',
    Default = false,
    Callback = function(p1336)
        _G.StartRaid = p1336
    end,
})
task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.StartRaid then
                local _LocalPlayer15 = game.Players.LocalPlayer

                if not _LocalPlayer15.PlayerGui.Main.Timer.Visible and (not workspace._WorldOrigin.Locations:FindFirstChild('Island 1') and (_LocalPlayer15.Backpack:FindFirstChild('Special Microchip') or _LocalPlayer15.Character:FindFirstChild('Special Microchip'))) then
                    if World2 then
                        topos(CFrame.new(-6438.73, 250.64, -4501.5))
                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer('SetSpawnPoint')
                        fireclickdetector(workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                    elseif World3 then
                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-5075.5, 314.51, -3150.02))
                        topos(CFrame.new(-5017.4, 314.84, -2823.01))
                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer('SetSpawnPoint')
                        fireclickdetector(workspace.Map['Boat Castle'].RaidSummon2.Button.Main.ClickDetector)
                    end
                end
            end
        end)
    end
end)
v649:AddToggle({
    Name = 'Auto Farm Raid Next Island',
    Description = '\u{110}\u{e1}nh Qu\u{e1}i V\u{e0} \u{110}i Chuy\u{1ec3}n \u{110}\u{1ea3}o',
    Default = false,
    Callback = function(p1338)
        _G.Dungeon = p1338
    end,
})

local function u1349(p1339)
    if workspace._WorldOrigin.Locations:FindFirstChild('Island ' .. p1339) then
        local v1340, v1341, v1342 = pairs(workspace._WorldOrigin.Locations:GetChildren())
        local v1343 = 4500

        while true do
            local v1344

            v1342, v1344 = v1340(v1341, v1342)

            if v1342 == nil then
                break
            end
            if v1344.Name == 'Island ' .. p1339 and (v1344.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < v1343 then
                v1343 = (v1344.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            end
        end

        local v1345, v1346, v1347 = pairs(workspace._WorldOrigin.Locations:GetChildren())

        while true do
            local v1348

            v1347, v1348 = v1345(v1346, v1347)

            if v1347 == nil then
                break
            end
            if v1348.Name == 'Island ' .. p1339 and (v1348.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= v1343 then
                return v1348
            end
        end
    end
end
local function u1354()
    local v1350, v1351, v1352 = pairs({
        5,
        4,
        3,
        2,
        1,
    })

    while true do
        local v1353

        v1352, v1353 = v1350(v1351, v1352)

        if v1352 == nil then
            break
        end
        if u1349(v1353) and (u1349(v1353).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4500 then
            return u1349(v1353)
        end
    end
end
local function u1364()
    local v1355, v1356, v1357 = pairs(workspace.Enemies:GetChildren())
    local v1358 = {}

    while true do
        local v1359

        v1357, v1359 = v1355(v1356, v1357)

        if v1357 == nil then
            break
        end
        if v1359:FindFirstChild('HumanoidRootPart') and (v1359:FindFirstChild('Humanoid') and (v1359.Humanoid.Health > 0 and (v1359.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000)) then
            table.insert(v1358, v1359)
        end
    end

    local v1360, v1361, v1362 = pairs(v1358)

    if false then
        return
    end

    local v1363

    v1362, v1363 = v1360(v1361, v1362)

    if v1362 == nil then
        break
    end

    while true do
        task.wait(0.1)

        if v1363:FindFirstChild('Humanoid') and v1363.Humanoid.Health > 0 then
            EquipWeapon(_G.SelectWeapon)
            topos(v1363.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
        end
        if not v1363:FindFirstChild('Humanoid') or v1363.Humanoid.Health <= 0 then
        end
    end
end

task.spawn(function()
    while task.wait() do
        if _G.Dungeon then
            u1364()

            if u1354() then
                topos(u1354().CFrame * CFrame.new(0, 60, 0))
            end
        end
    end
end)
v649:AddToggle({
    Name = 'Auto Get Fruit Low Beli',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng L\u{1ea5}y Tr\u{e1}i \u{cd}t Beli',
    Default = false,
    Callback = function(p1365)
        _G.Autofruit = p1365
    end,
})
spawn(function()
    while wait(0.1) do
        pcall(function()
            if _G.Autofruit then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Rocket-Rocket',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Spin-Spin',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Chop-Chop',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Spring-Spring',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Bomb-Bomb',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Smoke-Smoke',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Spike-Spike',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Flame-Flame',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Falcon-Falcon',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Ice-Ice',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Sand-Sand',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Dark-Dark',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Ghost-Ghost',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Diamond-Diamond',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Light-Light',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Rubber-Rubber',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Creation-Creation',
                }))
            end
        end)
    end
end)
v649:AddSection({
    'Raid Law Sea 2',
})
v649:AddButton({
    Title = 'Auto Buy Chip Law',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng Mua Chip Law Raid',
    Value = false,
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'BlackbeardReward',
            'Microchip',
            '2',
        }))
    end,
})
v649:AddButton({
    Title = 'Auto Start Raid Law',
    Value = false,
    Callback = function()
        fireclickdetector(game:GetService('Workspace').Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
    end,
})
v649:AddToggle({
    Name = 'Auto Farm Law Raid',
    Description = '\u{110}\u{e1}nh Boss Law Raid',
    Default = false,
    Callback = function(p1366)
        _G.AutoLawRaid = p1366
    end,
})
spawn(function()
    while wait() do
        if _G.AutoLawRaid then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('Order') then
                    local v1367, v1368, v1369 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v1370

                        v1369, v1370 = v1367(v1368, v1369)

                        if v1369 == nil then
                            break
                        end
                        if v1370.Name == 'Order' and (v1370:FindFirstChild('Humanoid') and (v1370:FindFirstChild('HumanoidRootPart') and v1370.Humanoid.Health > 0)) then
                            repeat
                                task.wait()
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)

                                v1370.HumanoidRootPart.CanCollide = false
                                v1370.Humanoid.WalkSpeed = 0

                                topos(v1370.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                            until not _G.AutoLawRaid or (not v1370.Parent or v1370.Humanoid.Health <= 0)
                        end
                    end
                else
                    NeedAttacking = true

                    if game:GetService('ReplicatedStorage'):FindFirstChild('Order') then
                        topos(game:GetService('ReplicatedStorage'):FindFirstChild('Order').HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                    end
                end
            end)
        end
    end
end)
v651:AddSection({
    'Fruits',
})
v651:AddToggle({
    Name = 'Auto Random Fruits',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng Random Tr\u{e1}i \u{c1}c Qu\u{1ef7}',
    Default = false,
    Callback = function(p1371)
        _G.RandomAuto = p1371
    end,
})
spawn(function()
    pcall(function()
        while wait() do
            if _G.RandomAuto then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Cousin', 'Buy')
            end
        end
    end)
end)
v651:AddToggle({
    Title = 'Auto Store Fruits',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng L\u{1b0}u Tr\u{e1}i \u{c1}c Qu\u{1ef7} V\u{e0}o Kho \u{110}\u{1ed3}',
    Value = false,
    Callback = function(p1372)
        getgenv().AutoStoreFruit = p1372
    end,
})
spawn(function()
    while task.wait(0.2) do
        if getgenv().AutoStoreFruit then
            pcall(function()
                local _LocalPlayer16 = game:GetService('Players').LocalPlayer
                local v1374 = _LocalPlayer16.Character or _LocalPlayer16.CharacterAdded:Wait()
                local _Backpack4 = _LocalPlayer16:WaitForChild('Backpack')
                local v1376, v1377, v1378 = ipairs({
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
                        'Eagle Fruit',
                        'Eagle-Eagle',
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
                        'Creation Fruit',
                        'Creation-Creation',
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
                        'Lightning Fruit',
                        'Lightning-Lightning',
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
                    local v1379

                    v1378, v1379 = v1376(v1377, v1378)

                    if v1378 == nil then
                        break
                    end

                    local v1380 = v1379[1]
                    local v1381 = v1379[2]
                    local v1382 = _Backpack4:FindFirstChild(v1380) or v1374:FindFirstChild(v1380)

                    if v1382 then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', v1381, v1382)

                        break
                    end
                end
            end)
        end
    end
end)
v651:AddToggle({
    Name = 'Teleport To Fruit Spawn',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng Nh\u{1eb7}t Tr\u{e1}i \u{c1}c Qu\u{1ef7} N\u{1ebf}u Xu\u{1ea5}t Hi\u{1ec7}n Trong Sever',
    Default = false,
    Callback = function(p1383)
        _G.Tweenfruit = p1383
    end,
})
spawn(function()
    while wait(0.1) do
        if _G.TweenFruit then
            local v1384, v1385, v1386 = pairs(game.Workspace:GetChildren())

            while true do
                local v1387

                v1386, v1387 = v1384(v1385, v1386)

                if v1386 == nil then
                    break
                end
                if string.find(v1387.Name, 'Fruit') then
                    TP1(v1387.Handle.CFrame)
                end
            end
        end
    end
end)
v651:AddToggle({
    Name = 'Auto Teleport Fruits',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng Teleport \u{110}\u{1ebf}n Tr\u{e1}i \u{c1}c Qu\u{1ef7}',
    Default = false,
    Callback = function(p1388)
        _G.Grabfruit = p1388
    end,
})
spawn(function()
    while wait(0.1) do
        if _G.Grabfruit then
            local v1389, v1390, v1391 = pairs(game.Workspace:GetChildren())

            while true do
                local v1392

                v1391, v1392 = v1389(v1390, v1391)

                if v1391 == nil then
                    break
                end
                if string.find(v1392.Name, 'Fruit') then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1392.Handle.CFrame
                end
            end
        end
    end
end)
v651:AddSection({
    'Check Stock Fruits',
})

local function u1396(p1393)
    local v1394 = tostring(p1393)

    repeat
        local v1395

        v1394, v1395 = v1394:gsub('^(-?%d+)(%d%d%d)', '%1,%2')
    until v1395 == 0

    return v1394
end

local _CommF_ = game:GetService('ReplicatedStorage').Remotes.CommF_

local function u1416()
    local v1398 = 'Advance Fruit Stock\n'
    local v1399, v1400 = pcall(function()
        return _CommF_:InvokeServer('GetFruits', true)
    end)

    if v1399 and v1400 then
        local v1401, v1402, v1403 = pairs(v1400)
        local v1404 = false

        while true do
            local v1405

            v1403, v1405 = v1401(v1402, v1403)

            if v1403 == nil then
                break
            end
            if v1405.OnSale then
                local v1406 = u1396(v1405.Price)

                v1398 = v1398 .. v1405.Name .. ' - $' .. v1406 .. '\n'
                v1404 = true
            end
        end

        if not v1404 then
            v1398 = v1398 .. '- Kh\u{f4}ng c\u{f3} tr\u{e1}i n\u{e0}o.\n'
        end
    else
        v1398 = v1398 .. '- \u{274c} L\u{1ed7}i khi l\u{1ea5}y d\u{1eef} li\u{1ec7}u.\n'
    end

    local v1407 = v1398 .. '\nNormal Fruit Stock\n'
    local v1408, v1409 = pcall(function()
        return _CommF_:InvokeServer('GetFruits')
    end)

    if v1408 and v1409 then
        local v1410, v1411, v1412 = pairs(v1409)
        local v1413 = false

        while true do
            local v1414

            v1412, v1414 = v1410(v1411, v1412)

            if v1412 == nil then
                break
            end
            if v1414.OnSale then
                local v1415 = u1396(v1414.Price)

                v1407 = v1407 .. v1414.Name .. ' - $' .. v1415 .. '\n'
                v1413 = true
            end
        end

        if not v1413 then
            v1407 = v1407 .. '- Kh\u{f4}ng c\u{f3} tr\u{e1}i n\u{e0}o.\n'
        end
    else
        v1407 = v1407 .. '- \u{274c} L\u{1ed7}i khi l\u{1ea5}y d\u{1eef} li\u{1ec7}u.\n'
    end

    return v1407
end

local u1417 = v651:AddParagraph({
    Title = 'Stock Tr\u{e1}i C\u{e2}y',
    Content = '\u{110}ang t\u{1ea3}i d\u{1eef} li\u{1ec7}u...',
})

task.spawn(function()
    while task.wait(60) do
        pcall(function()
            u1417:Set(u1416())
        end)
    end
end)
pcall(function()
    u1417:Set(u1416())
end)
v653:AddSection({
    'Teleport Island | Di Chuy\u{1ec3}n \u{110}\u{1ebf}n \u{110}\u{1ea3}o',
})

local function u1420(p1418)
    pcall(function()
        if type(topos) ~= 'function' then
            local _LocalPlayer17 = game:GetService('Players').LocalPlayer

            if _LocalPlayer17 and _LocalPlayer17.Character and _LocalPlayer17.Character:FindFirstChild('HumanoidRootPart') then
                _LocalPlayer17.Character.HumanoidRootPart.CFrame = p1418
            end
        else
            topos(p1418)
        end
    end)
end

local v1421 = World1 and {
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
} or (World2 and {
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
} or (World3 and {
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
    'Dragon Dojo',
} or {
    'Spawn',
}))

v653:AddDropdown({
    Name = 'Select Island',
    Description = 'Ch\u{1ecd}n \u{111}\u{1ea3}o \u{111}\u{1ec3} teleport',
    Options = v1421,
    Default = v1421[1],
    Callback = function(p1422)
        _G.SelectIsland = p1422
    end,
})
v653:AddToggle({
    Name = 'Auto Tween To Island',
    Description = 'T\u{1ef1} \u{111}\u{1ed9}ng di chuy\u{1ec3}n t\u{1edb}i \u{111}\u{1ea3}o \u{111}\u{e3} ch\u{1ecd}n',
    Default = false,
    Callback = function(p1423)
        _G.TeleportIsland = p1423

        StopTween(_G.TeleportIsland)
    end,
})

local function u1424()
    if _G.SelectIsland then
        if _G.SelectIsland == 'WindMill' then
            u1420(CFrame.new(979.799, 16.516, 1429.047))
        elseif _G.SelectIsland == 'Marine' then
            u1420(CFrame.new(-2566.43, 6.856, 2045.256))
        elseif _G.SelectIsland == 'Middle Town' then
            u1420(CFrame.new(-690.331, 15.094, 1582.238))
        elseif _G.SelectIsland == 'Jungle' then
            u1420(CFrame.new(-1612.796, 36.852, 149.128))
        elseif _G.SelectIsland ~= 'Pirate Village' then
            if _G.SelectIsland == 'Desert' then
                u1420(CFrame.new(944.158, 20.92, 4373.3))
            elseif _G.SelectIsland ~= 'Snow Island' then
                if _G.SelectIsland ~= 'MarineFord' then
                    if _G.SelectIsland == 'Colosseum' then
                        u1420(CFrame.new(-1427.62, 7.288, -2792.772))
                    elseif _G.SelectIsland == 'Sky Island 1' then
                        u1420(CFrame.new(-4869.103, 733.461, -2667.018))
                    elseif _G.SelectIsland == 'Sky Island 2' then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-4607.823, 872.543, -1667.557))
                    elseif _G.SelectIsland == 'Sky Island 3' then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-7894.618, 5547.142, -380.291))
                    elseif _G.SelectIsland == 'Prison' then
                        u1420(CFrame.new(4875.33, 5.652, 734.85))
                    elseif _G.SelectIsland ~= 'Magma Village' then
                        if _G.SelectIsland == 'Under Water Island' then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(61163.852, 11.68, 1819.784))
                        elseif _G.SelectIsland ~= 'Fountain City' then
                            if _G.SelectIsland == 'Shank Room' then
                                u1420(CFrame.new(-1442.166, 29.879, -28.355))
                            elseif _G.SelectIsland == 'Mob Island' then
                                u1420(CFrame.new(-2850.201, 7.392, 5354.993))
                            elseif _G.SelectIsland ~= 'The Cafe' then
                                if _G.SelectIsland == 'Frist Spot' then
                                    u1420(CFrame.new(-11.311, 29.277, 2771.522))
                                elseif _G.SelectIsland ~= 'Dark Area' then
                                    if _G.SelectIsland == 'Flamingo Mansion' then
                                        u1420(CFrame.new(-483.734, 332.038, 595.327))
                                    elseif _G.SelectIsland == 'Flamingo Room' then
                                        u1420(CFrame.new(2284.414, 15.152, 875.725))
                                    elseif _G.SelectIsland == 'Green Zone' then
                                        u1420(CFrame.new(-2448.53, 73.016, -3210.631))
                                    elseif _G.SelectIsland ~= 'Factory' then
                                        if _G.SelectIsland ~= 'Colossuim' then
                                            if _G.SelectIsland == 'Zombie Island' then
                                                u1420(CFrame.new(-5622.033, 492.196, -781.786))
                                            elseif _G.SelectIsland ~= 'Two Snow Mountain' then
                                                if _G.SelectIsland ~= 'Punk Hazard' then
                                                    if _G.SelectIsland == 'Cursed Ship' then
                                                        u1420(CFrame.new(923.402, 125.057, 32885.875))
                                                    elseif _G.SelectIsland == 'Ice Castle' then
                                                        u1420(CFrame.new(6148.412, 294.387, -6741.117))
                                                    elseif _G.SelectIsland == 'Forgotten Island' then
                                                        u1420(CFrame.new(-3032.764, 317.897, -10075.373))
                                                    elseif _G.SelectIsland ~= 'Ussop Island' then
                                                        if _G.SelectIsland == 'Mini Sky Island' or _G.SelectIsland == 'MiniSky' then
                                                            u1420(CFrame.new(-288.741, 49326.316, -35248.594))
                                                        elseif _G.SelectIsland == 'Great Tree' then
                                                            u1420(CFrame.new(2681.274, 1682.809, -7190.985))
                                                        elseif _G.SelectIsland == 'Castle On The Sea' then
                                                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-5083.26, 314.606, -3175.673))
                                                        elseif _G.SelectIsland == 'Port Town' then
                                                            u1420(CFrame.new(-226.751, 20.603, 5538.34))
                                                        elseif _G.SelectIsland == 'Hydra Island' then
                                                            u1420(CFrame.new(5291.249, 1005.443, 393.762))
                                                        elseif _G.SelectIsland ~= 'Floating Turtle' then
                                                            if _G.SelectIsland == 'Mansion' then
                                                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-12471.17, 374.94, -7551.678))
                                                            elseif _G.SelectIsland == 'Haunted Castle' then
                                                                u1420(CFrame.new(-9515.372, 164.006, 5786.061))
                                                            elseif _G.SelectIsland ~= 'Ice Cream Island' then
                                                                if _G.SelectIsland ~= 'Peanut Island' then
                                                                    if _G.SelectIsland == 'Cake Island' then
                                                                        u1420(CFrame.new(-1884.775, 19.328, -11666.897))
                                                                    elseif _G.SelectIsland == 'Cocoa Island' then
                                                                        u1420(CFrame.new(87.943, 73.555, -12319.465))
                                                                    elseif _G.SelectIsland ~= 'Candy Island' then
                                                                        if _G.SelectIsland == 'Tiki Outpost' then
                                                                            u1420(CFrame.new(-16218.683, 9.086, 445.618))
                                                                        elseif _G.SelectIsland == 'Dragon Dojo' then
                                                                            u1420(CFrame.new(5743.319, 1206.91, 936.011))
                                                                        end
                                                                    else
                                                                        u1420(CFrame.new(-1014.424, 149.111, -14555.963))
                                                                    end
                                                                else
                                                                    u1420(CFrame.new(-2062.748, 50.474, -10232.568))
                                                                end
                                                            else
                                                                u1420(CFrame.new(-902.568, 79.932, -10988.848))
                                                            end
                                                        else
                                                            u1420(CFrame.new(-13274.528, 531.821, -7579.223))
                                                        end
                                                    else
                                                        u1420(CFrame.new(4816.862, 8.46, 2863.82))
                                                    end
                                                else
                                                    u1420(CFrame.new(-6127.654, 15.952, -5040.286))
                                                end
                                            else
                                                u1420(CFrame.new(753.143, 408.236, -5274.615))
                                            end
                                        else
                                            u1420(CFrame.new(-1503.622, 219.796, 1369.31))
                                        end
                                    else
                                        u1420(CFrame.new(424.127, 211.162, -427.54))
                                    end
                                else
                                    u1420(CFrame.new(3780.03, 22.652, -3498.586))
                                end
                            else
                                u1420(CFrame.new(-380.479, 77.22, 255.826))
                            end
                        else
                            u1420(CFrame.new(5127.128, 59.501, 4105.446))
                        end
                    else
                        u1420(CFrame.new(-5247.716, 12.884, 8504.969))
                    end
                else
                    u1420(CFrame.new(-4914.821, 50.964, 4281.028))
                end
            else
                u1420(CFrame.new(1347.807, 104.668, -1319.737))
            end
        else
            u1420(CFrame.new(-1181.309, 4.751, 3803.546))
        end
    end
end

task.spawn(function()
    while task.wait(0.5) do
        if _G.TeleportIsland then
            u1424()
        end
    end
end)
v653:AddSection({
    'Teleport Sea | Di Chuy\u{1ec3}n Sea 1,2,3',
})
v653:AddButton({
    Name = 'Sea 1',
    Description = 'Bi\u{1ec3}n 1',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelMain')
    end,
})
v653:AddButton({
    Name = 'Sea 2',
    Description = 'Bi\u{1ec3}n 2',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelDressrosa')
    end,
})
v653:AddButton({
    Name = 'Sea 3',
    Description = 'Bi\u{1ec3}n 3',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelZou')
    end,
})
v655:AddSection({
    'Teleport Player | Di Chuy\u{1ec3}n \u{110}\u{1ebf}n Player',
})

local v1425, v1426, v1427 = pairs(game.Players:GetPlayers())
local v1428 = {}

while true do
    local v1429

    v1427, v1429 = v1425(v1426, v1427)

    if v1427 == nil then
        break
    end

    table.insert(v1428, v1429.Name)
end

v655:AddButton({
    Title = 'Get Quest Elite Players',
    Description = 'Nh\u{1ead}n Nhi\u{1ec7}m V\u{1ee5} Ng\u{1b0}\u{1edd}i Ch\u{1a1}i',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('PlayerHunter')
    end,
})
v655:AddToggle({
    Title = 'Auto Kill Player Quest',
    Description = 'Bay \u{110}\u{1ebf}n Ng\u{1b0}\u{1edd}i Ch\u{1a1}i \u{110}\u{1b0}\u{1ee3}c Nh\u{1ead}n Nhi\u{1ec7}m V\u{1ee5}',
    Value = false,
    Callback = function(p1430)
        _G.AutoPlayerHunter = p1430

        StopTween(_G.AutoPlayerHunter)
    end,
})
spawn(function()
    game:GetService('RunService').Heartbeat:connect(function()
        pcall(function()
            if _G.AutoPlayerHunter and game:GetService('Players').LocalPlayer.Character:FindFirstChild('Humanoid') then
                game:GetService('Players').LocalPlayer.Character.Humanoid:ChangeState(11)
            end
        end)
    end)
end)
spawn(function()
    pcall(function()
        while wait(0.1) do
            if _G.AutoPlayerHunter and game:GetService('Players').LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EnablePvp')
            end
        end
    end)
end)
spawn(function()
    while wait() do
        if _G.AutoPlayerHunter then
            if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= false then
                local v1431, v1432, v1433 = pairs(game:GetService('Workspace').Characters:GetChildren())

                while true do
                    local v1434

                    v1433, v1434 = v1431(v1432, v1433)

                    if v1433 == nil then
                        break
                    end
                    if string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, v1434.Name) then
                        repeat
                            wait()
                            AutoHaki()
                            EquipWeapon(_G.SelectWeapon)

                            Useskill = true

                            topos(v1434.HumanoidRootPart.CFrame * CFrame.new(1, 7, 3))

                            v1434.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                            game:GetService('VirtualUser'):CaptureController()
                            game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
                        until _G.AutoPlayerHunter == false or v1434.Humanoid.Health <= 0

                        Useskill = false

                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                    end
                end
            else
                wait(0.5)
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('PlayerHunter')
            end
        end
    end
end)
v655:AddToggle({
    Name = 'Auto Safe Mode',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng An To\u{e0}n Di Chuy\u{1ec3}n L\u{ea}n Tr\u{1edd}i An To\u{e0}n',
    Default = false,
    Callback = function(p1435)
        _G.SafeMode = p1435

        StopTween(_G.SafeMode)
    end,
})
spawn(function()
    pcall(function()
        while wait() do
            if _G.SafeMode then
                game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 200, 0)
            end
        end
    end)
end)
v655:AddSection({
    'Buff',
})

local _LocalPlayer18 = game:GetService('Players').LocalPlayer

getgenv().WalkSpeedValue = 30
getgenv().JumpValue = 50

local function u1439(p1437)
    local _Humanoid4 = p1437:WaitForChild('Humanoid', 5)

    if _Humanoid4 then
        _Humanoid4.WalkSpeed = getgenv().WalkSpeedValue
        _Humanoid4.JumpPower = getgenv().JumpValue

        _Humanoid4:GetPropertyChangedSignal('WalkSpeed'):Connect(function()
            _Humanoid4.WalkSpeed = getgenv().WalkSpeedValue
        end)
    end
end

_LocalPlayer18.CharacterAdded:Connect(function(p1440)
    u1439(p1440)
end)

if _LocalPlayer18.Character then
    u1439(_LocalPlayer18.Character)
end

v655:AddSlider({
    Title = 'Speed Ch\u{1ea1}y by tuananhiosdz',
    Min = 26,
    Max = 300,
    Default = getgenv().WalkSpeedValue,
    Callback = function(p1441)
        getgenv().WalkSpeedValue = p1441

        local _Character12 = _LocalPlayer18.Character

        if _Character12 then
            _Character12 = _LocalPlayer18.Character:FindFirstChild('Humanoid')
        end
        if _Character12 then
            _Character12.WalkSpeed = p1441
        end
    end,
})
v655:AddSlider({
    Title = 'Nh\u{1ea3}y Cao by tuananhiosdz',
    Min = 50,
    Max = 500,
    Default = getgenv().JumpValue,
    Callback = function(p1443)
        getgenv().JumpValue = p1443

        local _Character13 = _LocalPlayer18.Character

        if _Character13 then
            _Character13 = _LocalPlayer18.Character:FindFirstChild('Humanoid')
        end
        if _Character13 then
            _Character13.JumpPower = p1443
        end
    end,
})
v655:AddToggle({
    Name = 'Delete Lava',
    Description = 'Xo\u{e1} Lava Tr\u{e1}nh B\u{1ecb} M\u{1ea5}y Th\u{1eb1}ng Kid L\u{1ecf} D\u{ec}m Lava :))',
    Default = false,
    Callback = function(p1445)
        _G.RemoveLava = p1445
    end,
})
spawn(function()
    while task.wait(1) do
        if _G.RemoveLava then
            local v1446, v1447, v1448 = pairs(workspace:GetDescendants())

            while true do
                local v1449

                v1448, v1449 = v1446(v1447, v1448)

                if v1448 == nil then
                    break
                end

                local u1450 = v1449

                if u1450:IsA('BasePart') and string.lower(u1450.Name):find('lava') then
                    pcall(function()
                        u1450:Destroy()
                    end)
                end
            end
        end
    end
end)
v655:AddSection({
    'Esp | \u{110}\u{1ecb}nh V\u{1ecb}...',
})
v655:AddToggle({
    Title = 'Esp Players',
    Value = false,
    Callback = function(p1451)
        ESPPlayer = p1451

        if ESPPlayer then
            task.spawn(function()
                while ESPPlayer do
                    UpdatePlayerChams()
                    task.wait(1)
                end
            end)
        else
            UpdatePlayerChams()
        end
    end,
})
v655:AddToggle({
    Title = 'Esp Chest',
    Value = false,
    Callback = function(p1452)
        _G.ChestESP = p1452

        if _G.ChestESP then
            task.spawn(function()
                while _G.ChestESP do
                    UpdateChestESP()
                    task.wait(1)
                end
            end)
        else
            UpdateChestESP()
        end
    end,
})
v655:AddToggle({
    Title = 'Esp Fruits',
    Value = false,
    Callback = function(p1453)
        DevilFruitESP = p1453

        if DevilFruitESP then
            task.spawn(function()
                while DevilFruitESP do
                    UpdateDevilChams()
                    task.wait(1)
                end
            end)
        else
            UpdateDevilChams()
        end
    end,
})
v655:AddToggle({
    Title = 'Esp Berry',
    Value = false,
    Callback = function(p1454)
        Berry = p1454

        if Berry then
            UpdateBerriesESP()
        else
            local v1455, v1456, v1457 = pairs(game:GetService('CollectionService'):GetTagged('BerryBush'))

            while true do
                local v1458

                v1457, v1458 = v1455(v1456, v1457)

                if v1457 == nil then
                    break
                end
                if v1458.Parent:FindFirstChild('BerryESP') then
                    v1458.Parent.BerryESP:Destroy()
                end
            end
        end
    end,
})
v657:AddSection({
    'Buy Melee V1',
})
v657:AddButton({
    Title = 'Buy Black Leg $150,000',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyBlackLeg')
    end,
})
v657:AddButton({
    Title = 'Buy Electro $550,000',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectro')
    end,
})
v657:AddButton({
    Title = 'Buy Water Kung Fu $750,000',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyFishmanKarate')
    end,
})
v657:AddButton({
    Title = 'Buy Dragon Claw 1,500F',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'DragonClaw', '1')
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'DragonClaw', '2')
    end,
})
v657:AddSection({
    'Buy Melee V2',
})
v657:AddButton({
    Title = 'Buy Superhuman $3,000,000',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySuperhuman')
    end,
})
v657:AddButton({
    Title = 'Buy Death Step $5,000,000 5,000F',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDeathStep')
    end,
})
v657:AddButton({
    Title = 'Buy Sharkman Karate $2,500,000 5,000F',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate', true)
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate')
    end,
})
v657:AddButton({
    Title = 'Buy Electric Claw $3,000,000 5,000F',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw')
    end,
})
v657:AddButton({
    Title = 'Buy Dragon Talon $3,000,000 5,000F',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDragonTalon')
    end,
})
v657:AddButton({
    Title = 'Buy God Human $5,000,000 5,000F',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyGodhuman')
    end,
})
v657:AddButton({
    Title = 'Buy Sanguine Art $5,000,000 5,000F',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySanguineArt', true)
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySanguineArt')
    end,
})
v657:AddSection({
    'Buy Sea Event Crafting',
})
v657:AddButton({
    Title = 'Craft Dragonheart',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CraftItem', 'Craft', 'Dragonheart')
    end,
})
v657:AddButton({
    Title = 'Craft Dragonstorm',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CraftItem', 'Craft', 'Dragonstorm')
    end,
})
v657:AddButton({
    Title = 'Craft DinoHood',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CraftItem', 'Craft', 'DinoHood')
    end,
})
v657:AddButton({
    Title = 'Craft SharkTooth',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CraftItem', 'Craft', 'SharkTooth')
    end,
})
v657:AddButton({
    Title = 'Craft TerrorJaw',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CraftItem', 'Craft', 'TerrorJaw')
    end,
})
v657:AddButton({
    Title = 'Craft SharkAnchor',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CraftItem', 'Craft', 'SharkAnchor')
    end,
})
v657:AddButton({
    Title = 'Craft LeviathanCrown',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CraftItem', 'Craft', 'LeviathanCrown')
    end,
})
v657:AddButton({
    Title = 'Craft LeviathanShield',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CraftItem', 'Craft', 'LeviathanShield')
    end,
})
v657:AddButton({
    Title = 'Craft LeviathanBoat',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CraftItem', 'Craft', 'LeviathanBoat')
    end,
})
v657:AddButton({
    Title = 'Craft LegendaryScroll',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CraftItem', 'Craft', 'LegendaryScroll')
    end,
})
v657:AddButton({
    Title = 'Craft MythicalScroll',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CraftItem', 'Craft', 'MythicalScroll')
    end,
})
v657:AddSection({
    'Buy Haki,Soru...',
})
v657:AddButton({
    Title = 'Buy Geppo $10,000',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Geppo')
    end,
})
v657:AddButton({
    Title = 'Buy Buso Haki $25,000',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Buso')
    end,
})
v657:AddButton({
    Title = 'Buy Soru $25,000',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Soru')
    end,
})
v657:AddButton({
    Title = 'Buy Observation Haki $750,000',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('KenTalk', 'Buy')
    end,
})
v657:AddSection({
    'Buy Sword,Gun',
})
v657:AddButton({
    Title = 'Buy Cutlass $1,000',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Cutlass')
    end,
})
v657:AddButton({
    Title = 'Buy Katana $1,000',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Katana')
    end,
})
v657:AddButton({
    Title = 'Buy Iron Mace $25,000',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Iron Mace')
    end,
})
v657:AddButton({
    Title = 'Buy Dual Katana $12,000',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Duel Katana')
    end,
})
v657:AddButton({
    Title = 'Buy Triple Katana $60,000',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Triple Katana')
    end,
})
v657:AddButton({
    Title = 'Buy Pipe $100,000',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Pipe')
    end,
})
v657:AddButton({
    Title = 'Buy Dual-Headed Blade $400,000',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Dual-Headed Blade')
    end,
})
v657:AddButton({
    Title = 'Buy Bisento $1,200,000',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Bisento')
    end,
})
v657:AddButton({
    Title = 'Buy Soul Cane $750,000',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Soul Cane')
    end,
})
v657:AddButton({
    Title = 'Buy Pole V2 5,000F',
    Callback = function()
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer('ThunderGodTalk')
    end,
})
v657:AddButton({
    Title = 'Buy Slingshot $5,000',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Slingshot')
    end,
})
v657:AddButton({
    Title = 'Buy Musket $8,000',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Musket')
    end,
})
v657:AddButton({
    Title = 'Buy Flintlock $10,500',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Flintlock')
    end,
})
v657:AddButton({
    Title = 'Refined Slingshot $30,000',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Refined Flintlock')
    end,
})
v657:AddButton({
    Title = 'Buy Refined Flintlock $65,000',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'BuyItem',
            'Refined Flintlock',
        }))
    end,
})
v657:AddButton({
    Title = 'Buy Cannon $100,000',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Cannon')
    end,
})
v657:AddButton({
    Title = 'Buy Kabucha 1,500F',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Slingshot', '1')
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Slingshot', '2')
    end,
})
v657:AddButton({
    Title = 'Buy Bizarre Rifle 250 Ectoplasm',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Ectoplasm', 'Buy', 1)
    end,
})
v657:AddButton({
    Title = 'Buy Black Cape $50,000',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'BuyItem',
            'Black Cape',
        }))
    end,
})
v657:AddButton({
    Title = 'Swordsman Hat $150,000',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'BuyItem',
            'Swordsman Hat',
        }))
    end,
})
v657:AddButton({
    Title = 'Buy Tomoe Ring $500,000',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'BuyItem',
            'Tomoe Ring',
        }))
    end,
})
v657:AddSection({
    'Reset Stats , Random Race',
})
v657:AddButton({
    Title = '\u{110}\u{1ed5}i T\u{1ed9}c Ghoul',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'Ectoplasm',
            'Change',
            4,
        }))
    end,
})
v657:AddButton({
    Title = '\u{110}\u{1ed5}i T\u{1ed9}c Cyborg',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'CyborgTrainer',
            'Buy',
        }))
    end,
})
v657:AddButton({
    Title = 'Reset Stats 2,500F',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Refund', '1')
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Refund', '2')
    end,
})
v657:AddButton({
    Title = 'Random Race 3,000F',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Reroll', '1')
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Reroll', '2')
    end,
})
v659:AddSection({
    'Settings Farming',
})
v659:AddParagraph({
    Title = 'Unban Fast Attack - M1 Fruit',
    Content = 'On: \u{2705}',
})
loadstring(game:HttpGet('https://raw.githubusercontent.com/AnhDangNhoEm/TuanAnhIOS/refs/heads/main/koby'))()
v659:AddToggle({
    Name = 'Bring Mod',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng Gom Qu\u{e1}i',
    Default = true,
    Callback = function(p1459)
        _G.BringMonster = p1459

        StopTween(_G.BringMonster)
    end,
})
spawn(function()
    while task.wait() do
        pcall(function()
            CheckQuest()

            local v1460, v1461, v1462 = pairs(game:GetService('Workspace').Enemies:GetChildren())

            while true do
                local v1463

                v1462, v1463 = v1460(v1461, v1462)

                if v1462 == nil then
                    break
                end
                if _G.BringMonster and (StartBring and v1463.Name == MonFarm or v1463.Name == Mon and (v1463:FindFirstChild('Humanoid') and (v1463:FindFirstChild('HumanoidRootPart') and v1463.Humanoid.Health > 0)) and (v1463.HumanoidRootPart.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 320) then
                    if v1463.Name ~= 'Factory Staff' then
                        if (v1463.Name == MonFarm or v1463.Name == Mon) and (v1463.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 320 then
                            v1463.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            v1463.HumanoidRootPart.CFrame = PosMon
                            v1463.HumanoidRootPart.CanCollide = false
                            v1463.Head.CanCollide = false

                            if v1463.Humanoid:FindFirstChild('Animator') then
                                v1463.Humanoid.Animator:Destroy()
                            end

                            sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                        end
                    elseif (v1463.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 250 then
                        v1463.Head.CanCollide = false
                        v1463.HumanoidRootPart.CanCollide = false
                        v1463.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                        v1463.HumanoidRootPart.CFrame = PosMon

                        if v1463.Humanoid:FindFirstChild('Animator') then
                            v1463.Humanoid.Animator:Destroy()
                        end

                        sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                    end
                end
            end
        end)
    end
end)

function InMyNetWork(p1464)
    if isnetworkowner then
        return isnetworkowner(p1464)
    else
        return (p1464.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 320
    end
end

v659:AddToggle({
    Title = 'Set Home Point',
    Description = 'L\u{1b0}u \u{110}i\u{1ec3}m H\u{1ed3}i Sinh',
    Value = false,
    Callback = function(p1465)
        _G.CheckPoint = p1465
    end,
})
spawn(function()
    while wait() do
        if _G.CheckPoint then
            game:GetService('SetSpawnPoint')
        end
    end
end)
v659:AddToggle({
    Title = 'Infinite Soru',
    Value = false,
    Callback = function(p1466)
        _G.AutoHaki = p1466
    end,
})
spawn(function()
    while task.wait(0.1) do
        if _G.AutoHaki then
            pcall(AutoHaki)
        end
    end
end)
v659:AddToggle({
    Title = 'Auto Active Race V3',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng B\u{1ead}t T\u{1ed9}c V3',
    Value = false,
    Callback = function(p1467)
        _G.AutoRaceV3 = p1467
    end,
})
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoRaceV3 then
                game:GetService('ReplicatedStorage').Remotes.CommE:FireServer('ActivateAbility')
            end
        end)
    end
end)
v659:AddToggle({
    Title = 'Auto Active Race V4',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng B\u{1ead}t T\u{1ed9}c V4',
    Value = false,
    Callback = function(p1468)
        _G.AutoRaceV4 = p1468
    end,
})
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoRaceV4 then
                game:GetService('VirtualInputManager'):SendKeyEvent(true, 'Y', false, game)
                wait()
                game:GetService('VirtualInputManager'):SendKeyEvent(false, 'Y', false, game)
            end
        end)
    end
end)
v659:AddToggle({
    Title = 'Infinite Soru',
    Value = false,
    Callback = function(p1469)
        InfiniteSoru = p1469
    end,
})
spawn(function()
    while task.wait(1) do
        if InfiniteSoru and game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart') ~= 'HumanoidRootPart' then
            pcall(function()
                local v1470 = next
                local v1471, v1472 = getgc()

                while true do
                    local v1473

                    v1472, v1473 = v1470(v1471, v1472)

                    if v1472 == nil then
                        break
                    end
                    if getfenv(v1473).script == game.Players.LocalPlayer.Character:WaitForChild('Soru') then
                        local v1474, v1475, v1476 = pairs(debug.getupvalues(v1473))

                        while true do
                            local v1477

                            v1476, v1477 = v1474(v1475, v1476)

                            if v1476 == nil then
                                break
                            end
                            if type(v1477) == 'table' and v1477.LastUse then
                                local v1478 = v1476

                                repeat
                                    task.wait(0.1)
                                    setupvalue(v1473, v1476, {
                                        LastAfter = 0,
                                        LastUse = 0,
                                    })
                                until not InfiniteSoru or game:GetService('Players').LocalPlayer.Character.Humanoid.Health <= 0

                                v1476 = v1478
                            end
                        end
                    end
                end
            end)
        end
    end
end)

PosY = 30

v659:AddToggle({
    Title = 'Dodge No CD',
    Value = false,
    Callback = function(p1479)
        DodgewithoutCool = p1479
    end,
})

function NoCooldown()
    local v1480 = next
    local v1481, v1482 = getgc()

    while true do
        local v1483

        v1482, v1483 = v1480(v1481, v1482)

        if v1482 == nil then
            break
        end
        if typeof(v1483) == 'function' and getfenv(v1483).script == game.Players.LocalPlayer.Character:WaitForChild('Dodge') then
            local v1484 = next
            local v1485, v1486 = getupvalues(v1483)

            while true do
                local v1487

                v1486, v1487 = v1484(v1485, v1486)

                if v1486 == nil then
                    break
                end
                if tostring(v1487) == '0.4' then
                    setupvalue(v1483, v1486, 0)
                end
            end
        end
    end
end

spawn(function()
    while wait() do
        if DodgewithoutCool then
            pcall(function()
                NoCooldown()
            end)
        end
    end
end)
v659:AddToggle({
    Title = 'Infinite Geppo',
    Value = false,
    Callback = function(p1488)
        InfiniteGeppo = p1488
    end,
})
spawn(function()
    while task.wait(1) do
        if InfiniteGeppo then
            pcall(function()
                local v1489 = next
                local v1490, v1491 = getgc()

                while true do
                    local v1492

                    v1491, v1492 = v1489(v1490, v1491)

                    if v1491 == nil then
                        break
                    end
                    if getfenv(v1492).script == game.Players.LocalPlayer.Character:WaitForChild('Geppo') then
                        local v1493 = next
                        local v1494, v1495 = getupvalues(v1492)

                        while true do
                            local v1496

                            v1495, v1496 = v1493(v1494, v1495)

                            if v1495 == nil then
                                break
                            end
                            if tostring(v1496) == '0' then
                                local v1497 = v1495

                                repeat
                                    wait(0.1)
                                    setupvalue(v1492, v1495, 0)
                                until not InfiniteGeppo or game:GetService('Players').LocalPlayer.Character.Humanoid.Health <= 0

                                v1495 = v1497
                            end
                        end
                    end
                end
            end)
        end
    end
end)
v659:AddToggle({
    Title = 'Walk on Water',
    Value = true,
    Callback = function(p1498)
        _G.WalkWater = p1498
    end,
})
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.WalkWater then
                game:GetService('Workspace').Map['WaterBase-Plane'].Size = Vector3.new(1000, 112, 1000)
            else
                game:GetService('Workspace').Map['WaterBase-Plane'].Size = Vector3.new(1000, 80, 1000)
            end
        end)
    end
end)
v659:AddSection({
    'Auto Increase Skill Points',
})

local _Players2 = game:GetService('Players')
local _ReplicatedStorage2 = game:GetService('ReplicatedStorage')
local _LocalPlayer19 = _Players2.LocalPlayer
local u1502 = false
local u1503 = false
local u1504 = false
local u1505 = false
local u1506 = false
local u1507 = 1

v659:AddToggle({
    Title = 'Melee',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng N\u{e2}ng \u{110}i\u{1ec3}m Melee',
    Value = false,
    Callback = function(p1508)
        u1502 = p1508
    end,
})
v659:AddToggle({
    Title = 'Defense',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng N\u{e2}ng \u{110}i\u{1ec3}m N\u{103}ng L\u{1b0}\u{1ee3}ng',
    Value = false,
    Callback = function(p1509)
        u1503 = p1509
    end,
})
v659:AddToggle({
    Title = 'Sword',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng N\u{e2}ng \u{110}i\u{1ec3}m Ki\u{1ebf}m',
    Value = false,
    Callback = function(p1510)
        u1504 = p1510
    end,
})
v659:AddToggle({
    Title = 'Gun',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng N\u{e2}ng \u{110}i\u{1ec3}m S\u{fa}ng',
    Value = false,
    Callback = function(p1511)
        u1505 = p1511
    end,
})
v659:AddToggle({
    Title = 'Fruis',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng N\u{e2}ng \u{110}i\u{1ec3}m Tr\u{e1}i',
    Value = false,
    Callback = function(p1512)
        u1506 = p1512
    end,
})
spawn(function()
    while wait() do
        if u1507 <= _LocalPlayer19.Data.Points.Value then
            local function v1515(p1513)
                local v1514 = {
                    'AddPoint',
                    p1513,
                    u1507,
                }

                _ReplicatedStorage2.Remotes.CommF_:InvokeServer(unpack(v1514))
            end

            if u1502 then
                v1515('Melee')
            end
            if u1503 then
                v1515('Defense')
            end
            if u1504 then
                v1515('Sword')
            end
            if u1505 then
                v1515('Gun')
            end
            if u1506 then
                v1515('Demon Fruit')
            end
        end
    end
end)
v659:AddSection({
    'Sea 1,2,3',
})
v659:AddButton({
    Title = 'Join Sea 1',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelMain')
    end,
})
v659:AddButton({
    Title = 'Join Sea 2',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelDressrosa')
    end,
})
v659:AddButton({
    Title = 'Join Sea 3',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelZou')
    end,
})
v659:AddSection({
    'Other',
})
v659:AddButton({
    Title = 'Join Pirates Team',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SetTeam', 'Pirates')
    end,
})
v659:AddButton({
    Title = 'Join Marines Team',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SetTeam', 'Marines')
    end,
})
v659:AddButton({
    Title = 'Open Title Name',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'getTitles',
        }))

        game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
    end,
})
v659:AddButton({
    Title = 'FPS Boost',
    Description = 'T\u{103}ng Fps',
    Callback = function()
        local v1516 = game
        local _Workspace3 = v1516.Workspace
        local _ = v1516.Lighting
        local _ = _Workspace3.Terrain

        settings().Rendering.QualityLevel = 'Level01'

        local v1518, v1519, v1520 = pairs(v1516:GetDescendants())
        local v1521 = true

        while true do
            local v1522

            v1520, v1522 = v1518(v1519, v1520)

            if v1520 == nil then
                break
            end
            if v1522:IsA('Part') or (v1522:IsA('Union') or (v1522:IsA('CornerWedgePart') or v1522:IsA('TrussPart'))) then
                v1522.Material = 'Plastic'
                v1522.Reflectance = 0
            elseif v1522:IsA('Decal') or v1522:IsA('Texture') and v1521 then
                v1522.Transparency = 1
            elseif v1522:IsA('ParticleEmitter') or v1522:IsA('Trail') then
                v1522.Lifetime = NumberRange.new(0)
            elseif v1522:IsA('Explosion') then
                v1522.BlastPressure = 1
                v1522.BlastRadius = 1
            elseif v1522:IsA('Fire') or (v1522:IsA('SpotLight') or v1522:IsA('Smoke')) then
                v1522.Enabled = false
            end
        end
    end,
})
v659:AddSection({
    'Auto Codes',
})

local u1523 = {
    'NOMOREHACK',
    'BANEXPLOIT',
    'WildDares',
    'BossBuild',
    'GetPranked',
    'EARN_FRUITS',
    'FIGHT4FRUIT',
    'NOEXPLOITER',
    'NOOB2ADMIN',
    'CODESLIDE',
    'ADMINHACKED',
    'ADMINDARES',
    'fruitconcepts',
    'krazydares',
    'TRIPLEABUSE',
    'SEATROLLING',
    '24NOADMIN',
    'REWARDFUN',
    'Chandler',
    'NEWTROLL',
    'KITT_RESET',
    'Sub2CaptainMaui',
    'kittgaming',
    'Sub2Fer999',
    'Enyu_is_Pro',
    'Magicbus',
    'JCWK',
    'Starcodeheo',
    'Bluxxy',
    'fudd10_v2',
    'SUB2GAMERROBOT_EXP1',
    'Sub2NoobMaster123',
    'Sub2UncleKizaru',
    'Sub2Daigrock',
    'Axiore',
    'TantaiGaming',
    'StrawHatMaine',
    'Sub2OfficialNoobie',
    'Fudd10',
    'Bignews',
    'TheGreatAce',
    'SECRET_ADMIN',
    'SUB2GAMERROBOT_RESET1',
    'SUB2OFFICIALNOOBIE',
    'AXIORE',
    'BIGNEWS',
    'BLUXXY',
    'CHANDLER',
    'ENYU_IS_PRO',
    'FUDD10',
    'FUDD10_V2',
    'KITTGAMING',
    'MAGICBUS',
    'STARCODEHEO',
    'STRAWHATMAINE',
    'SUB2CAPTAINMAUI',
    'SUB2DAIGROCK',
    'SUB2FER999',
    'SUB2NOOBMASTER123',
    'SUB2UNCLEKIZARU',
    'TANTAIGAMING',
    'THEGREATACE',
}

v659:AddButton({
    Title = 'Codes',
    Description = 'T\u{1ef1} \u{110}\u{1ed9}ng Nh\u{1ead}p H\u{1ebf}t Code',
    Callback = function()
        local v1524, v1525, v1526 = ipairs(u1523)

        while true do
            local v1527

            v1526, v1527 = v1524(v1525, v1526)

            if v1526 == nil then
                break
            end

            local u1528 = {v1527}

            pcall(function()
                game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('Redeem'):InvokeServer(unpack(u1528))
            end)
            task.wait(0.1)
        end
    end,
})
v659:AddSection({
    'Sever Hop',
})
v659:AddButton({
    Title = 'Rejoin Server',
    Callback = function()
        game:GetService('TeleportService'):Teleport(game.PlaceId, game:GetService('Players').LocalPlayer)
    end,
})
v659:AddButton({
    Title = 'Server Hop',
    Callback = function()
        Hop()
    end,
})
