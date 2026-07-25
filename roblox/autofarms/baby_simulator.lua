-- the game developer is 'Broken Wand Studios' btw
if not game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool") then error("Equip A Tool!") end
while task.wait() do
game:GetService("ReplicatedStorage").Remotes.Input:FireServer()
end
