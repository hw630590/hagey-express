print("[hageyexpress.lol] You may move for ~30 seconds while this script is running, but it could result in you being kicked for remote spam. We are attempting to bypass this later on.")
while task.wait(math.random(50, 80) / 1000) do
    game:GetService("ReplicatedStorage").Events.AddSpeed:FireServer()
end
