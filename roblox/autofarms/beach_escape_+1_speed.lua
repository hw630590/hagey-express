-- Autofarm Steps!
assert(getconnections, "[hageyexpress.lol] Missing getconnections")
assert(debug and debug.getinfo, "[hageyexpress.lol] Missing debug.getinfo")

local used = false

local services = {
    game:GetService("RunService").Heartbeat,
    game:GetService("RunService").RenderStepped,
}

-- THIS MAY BE UNSTABLE, COMMENT OUT IF NECESSARY! ⌄⌄⌄⌄
for _, service in ipairs(services) do
    for _, conn in ipairs(getconnections(service)) do
        local func = conn.Function
        if func then
            local info = debug.getinfo(func)
            if info and info.source and info.source:match("Speed") then
                conn:Disable()
                used = true
            end
        end
    end
end
-- THIS MAY BE UNSTABLE, COMMENT OUT IF NECESSARY! ^^^^

print("[hageyexpress.lol] Bypassed Anti-Remote Spam. Starting Autofarm Now!")

local duration = used and 0.01 or math.random(50, 80) / 1000

while task.wait(duration) do
    game:GetService("ReplicatedStorage").Events.AddSpeed:FireServer()
end
