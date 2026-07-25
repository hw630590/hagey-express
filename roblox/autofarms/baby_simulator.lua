-- the game developer is 'Broken Wand Studio' if the script doesnt work
if not game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool") then error("Equip A Tool!") end
while task.wait() do
game:GetService("ReplicatedStorage").Remotes.Input:FireServer()
end
