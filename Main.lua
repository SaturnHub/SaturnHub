-- Nvm the project i was working on got discontinued heres NDS auto fling
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("NDS")

local b = w:CreateFolder("Kill")

b:Dropdown("Choose Targets",{"Alive Players", "Dead Players", "All Players", "Stop"}, true, function(value)
    if value == "Stop" then 
        on = false
    else
        on = false
        wait(0.5)
        on = true
        kill(value)
    end
end)

function kill(value)
    spawn(function()
        while wait() do 
            if not on then break end
            for i,v in next, game:GetService("Players"):GetPlayers() do
                if not on then break end
                if v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                    if v.Character.Humanoid.Health > 0 and v ~= game.Players.LocalPlayer then 
                        if value == "Alive Players" and v.Character.HumanoidRootPart.Position.X > -200 then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                            wait(0.5)
                        elseif value == "Dead Players" and v.Character.HumanoidRootPart.Position.X < -200 then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                            wait(0.5)
                        elseif value == "All Players" then 
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                            wait(0.5)
                        end
                    end
                end 
            end
        end
    end)
end
