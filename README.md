while true do
    wait()

    -- On définit la fonction de téléportation
    local function teleportToDummy()
        -- On vérifie si le Dummy2 existe
        local dummy2 = workspace.MAP:FindFirstChild("5k_dummies").Dummy2
        if dummy2 then
            -- Si le Dummy2 existe, on se téléporte à sa position
            game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(dummy2.HumanoidRootPart.CFrame)
        else
            -- Si le Dummy2 n'existe pas, on affiche un message d'erreur
            print("Le Dummy2 n'existe pas.")
        end
    end

    -- On exécute la fonction de téléportation
    teleportToDummy()

    -- On envoie les données au serveur
    local args = {
        [1] = workspace.MAP:FindFirstChild("5k_dummies").Dummy2.Humanoid,
        [2] = 1
    }

    game:GetService("ReplicatedStorage").jdskhfsIIIllliiIIIdchgdIiIIIlIlIli:FireServer(unpack(args))
end
