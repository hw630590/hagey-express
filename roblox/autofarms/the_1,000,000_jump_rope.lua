if not game.PlaceId == 123741668193208 then return end
while task.wait() do
    game:GetService("ReplicatedStorage"):WaitForChild("RestartRemotes"):WaitForChild("Loader"):FireServer(false)
end
