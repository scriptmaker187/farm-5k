-- Funktion zur Teleportation zum Dummy2
local function teleportToDummy()
    -- Überprüfung, ob Dummy2 existiert
    local dummy2 = workspace.MAP:FindFirstChild("5k_dummies").Dummy2
    if dummy2 then
        -- Teleportation zu Dummy2
        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(dummy2.HumanoidRootPart.CFrame)
    else
        -- Fehlermeldung, wenn Dummy2 nicht gefunden wird
        print("Le Dummy2 n'existe pas.")
    end
end

-- Ausführung der Teleportation zu Dummy2
teleportToDummy()

-- Schleife zum Senden von Daten an den Server
while true do
    if not toggle_state then
        break  -- Beendet die Schleife und damit das Skript
    end

    -- Daten, die an den Server gesendet werden
    local args = {
        [1] = workspace.MAP:FindFirstChild("5k_dummies").Dummy2.Humanoid,
        [2] = 1
    }

    -- Senden der Daten an den Server
    game:GetService("ReplicatedStorage").jdskhfsIIIllliiIIIdchgdIiIIIlIlIli:FireServer(unpack(args))

    wait()  -- Wartezeit zwischen den Schleifendurchläufen
end
