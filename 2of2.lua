local VirtualInputManager = game:GetService('VirtualInputManager')
local vim = game:service'VirtualInputManager'


    function loop()
        while wait() do
            local args = {[1] = "UseSpell",[2] = "Whirling Tornado",[3] = Vector3.new(3484, -71, -4082)}
            game:GetService("ReplicatedStorage").Server:FireServer(unpack(args))
        wait()
        end
    end

repeat
    wait()
until game:IsLoaded()
-- AAAAAAAAAA
repeat wait() until game.ContentProvider.RequestQueueSize == 0
local guiMinutes = workspace.Bosses:FindFirstChild("Ice Golem").UI.SurfaceGui.Time.Text 
local Mins, Seconds = unpack((tostring(guiMinutes)):split(":"))
local RemainingTime = tonumber(Mins) * 60 + tonumber(Seconds)

if RemainingTime > 230 then
print("Hopping... (30s)")
local peanut = 0
while wait(30) do
       vim:SendKeyEvent(true, "PageUp", false, game)
       wait(.0)
peanut = peanut + 1
end --Serverhop function here
end
if RemainingTime < 230 then
    repeat
        wait()
    until game:IsLoaded()
    function _G.SendWebHook(url, message)newBody = {["content"] = tostring(message)}; SynWebHook = {Url = url,Body = game.HttpService:JSONEncode(newBody),Method = "POST",Headers = {["content-type"] = "application/json"}};syn.request(SynWebHook)end;
_G.SendWebHook("https://discord.com/api/webhooks/979360973074866236/naiWdVvWBbG698o5rLZTFKIMaTlR9h9lsbIQsON2e2MfZe-wi8ZU6aw5-7r7YaQzTKCP", "Found a server!") -- replace
    local timer = print("(SUCCESS) Found a server! //", workspace.Bosses:FindFirstChild("Ice Golem").UI.SurfaceGui.Status.Text, "(", workspace.Bosses:FindFirstChild("Ice Golem").UI.SurfaceGui.Time.Text, ")")
    function sendAllAttacks()
        wait()
        local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
        local location = CFrame.new(3457, -71, -4084)
        local humanoid = game.Players.LocalPlayer.Character.Humanoid
        humanoid:ChangeState(Enum.HumanoidStateType.Flying)
        pl.CFrame = location
        wait(.2)
        loop()
    end
    local bstatus = game:GetService("Workspace").Bosses
    function checkboss()
        for i, v in pairs(bstatus:GetChildren()) do
            if v.Name == "Ice Golem" then
                for i2, v2 in pairs(v:GetChildren()) do
                    for i3, v3 in pairs(v2:GetDescendants()) do
                        if v3.Name == "Status" then
                            if v3.Text == "STATUS: PREPARING" then
                                local args = {[1] = "Boss",[2] = "Ice Golem"}
                                game:GetService("ReplicatedStorage").Server:FireServer(unpack(args))
                                wait(15)
                                sendAllAttacks()
                            end
                        end
                    end
                end
            end
        end
    end
while wait() do
checkboss()
end
end
