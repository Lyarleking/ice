wait(10) -- Game loading o.o

local a = game:GetService("Workspace").Bosses["Ice Golem"].UI.SurfaceGui.Status.Text
local VirtualInputManager = game:GetService('VirtualInputManager')


function shop()
    while wait() do
    local VirtualInputManager = game:GetService('VirtualInputManager')
    VirtualInputManager:SendKeyEvent(true, "PageUp", false, game)
    wait()
    end
end

function boss()
    local bstatus = game:GetService("Workspace").Bosses
    for i, v in pairs(bstatus:GetChildren()) do
        if v.Name == "Ice Golem" then
            for i2, v2 in pairs(v:GetChildren()) do
                for i3, v3 in pairs(v2:GetDescendants()) do
                    if v3.Name == "Status" then
                        if v3.Text == "STATUS: FIGHTING" then
                            print("ServerHopping..")
                            wait(15)
                            local VirtualInputManager = game:GetService('VirtualInputManager')
                            VirtualInputManager:SendKeyEvent(true, "PageUp", false, game)
                        end
                    end
                end
            end
        end
    end
end

-- Script
while wait() do
    boss()
    wait()
end
