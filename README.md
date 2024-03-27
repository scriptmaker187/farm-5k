-- Fonction de téléportation au Dummy2
local function teleportToDummy()
    -- Vérification si le Dummy2 existe
    local dummy2 = workspace.MAP:FindFirstChild("5k_dummies").Dummy2
    if dummy2 then
        -- Téléportation au Dummy2
        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(dummy2.HumanoidRootPart.CFrame)
    else
        -- Message d'erreur si le Dummy2 n'est pas trouvé
        print("Le Dummy2 n'existe pas.")
    end
end

-- Exécution de la téléportation au Dummy2
teleportToDummy()

-- Boucle d'envoi de données au serveur
while true do
    wait()

    -- Données à envoyer au serveur
    local args = {
        [1] = workspace.MAP:FindFirstChild("5k_dummies").Dummy2.Humanoid,
        [2] = 1
    }

    -- Envoi des données au serveur
    game:GetService("ReplicatedStorage").jdskhfsIIIllliiIIIdchgdIiIIIlIlIli:FireServer(unpack(args))
end
