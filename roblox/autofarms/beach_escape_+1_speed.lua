while task.wait(math.random(50, 80) / 1000) do
    game:GetService("ReplicatedStorage").Events.AddSpeed:FireServer()
end
