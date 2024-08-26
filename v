local function startScript()
    -- Funktion zum Erzwingen des Resets
    local function forceResetAction()
        local player = game.Players.LocalPlayer
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid.Health = 0
        end
    end

    -- Schleife für das Skript
    while toggle_state do
        -- Aufruf der Reset-Funktion
        forceResetAction()

        -- Angriff auf den lokalen Spieler
        local localPlayer = game:GetService("Players").LocalPlayer

        if localPlayer.Character and localPlayer.Character:FindFirstChild("Humanoid") then
            local args = {
                [1] = "damage",
                [2] = {
                    ["EnemyHumanoid"] = localPlayer.Character.Humanoid
                }
            }
            game:GetService("ReplicatedStorage").SkillsInRS.RemoteEvent:FireServer(unpack(args))
        end

        wait(1.5) -- Wartezeit zwischen den Iterationen
    end
end

-- Startet oder stoppt das Skript basierend auf dem Toggle-Zustand
if toggle_state then
    coroutine.wrap(startScript)()
end
