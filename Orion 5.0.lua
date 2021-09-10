-- Made By Nexxor
-- v5.0 (Private)
--   ____  _____  _____ ____  _   _ 
--  / __ \|  __ \|_   _/ __ \| \ | |
-- | |  | | |__) | | || |  | |  \| |
-- | |  | |  _  /  | || |  | |     |
-- | |__| | | \ \ _| || |__| | |\  |
--  \____/|_|  \_\_____\____/|_| \_|  
rconsolename("Orion 5.0.1")
rconsoleprint("@@RED@@")
rconsoleprint([[
    
Loading Functions]])
function say(i) game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(i, "ALL") end
function cmd(i) game.Players:Chat(i) end

rconsoleprint([[
    
Orion 5.0.1 Loaded]])
wait(4)
-- re function
function new()
    spawn(function()
while true do wait()
local x = {}
local HttpService, TPService = game:GetService("HttpService"), game:GetService("TeleportService")
local ServersToTP = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
for _, s in pairs(ServersToTP.data) do
   if s.id ~= table.find(x, s.id) and s.playing ~= s.maxPlayers and s.id ~= game.JobId then
    x[#x + 1] = s.id
       TPService:TeleportToPlaceInstance(game.PlaceId, s.id)
   end
end
end
end)
end
-- checks for whitelisted players
local whitelist = true
local whitelisted = {"gamingkhoaito129", "haroldjd2017ipad"}
for i, v in next, whitelisted do
    if whitelist == true then
        if game.Players:FindFirstChild(v) then
            say(v.." Has Been Found Excluding Server!")
            rconsoleprint("@@GREEN@@")
            rconsoleprint([[
                
            whitelisted player found! server Has Been Found Excluding Server!]])
            new()
            wait(69)
        end
        end
end
local regen = game:GetService("Workspace").Terrain["_Game"].Admin:FindFirstChild("Regen")
local greenpad = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin")
if regen == nil and greenpad == nil then
    say("No Reset Pad Or Green Pads Found Moving On!")
        rconsoleprint([[
        
        Reset Pad Or Green Pads Not Found]])
        new()
end
wait(0.7)


if regen ~= nil then 
    fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
end    
wait(0.1)
local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
		for i, pad in pairs(pads) do
			Spawn(function()
				pad.PrimaryPart = pad:FindFirstChild("Head")
				local pos = pad.PrimaryPart.CFrame
				wait(0)
				pad.PrimaryPart.CanCollide = false
				pad:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
				wait(0)
				pad:SetPrimaryPartCFrame(pos)
				pad.PrimaryPart.CanCollide = true
			end)
		end
-- Say Varibles
wait(1)
say("Server Crashed By Orion 5.0.1!")
say("cope nexxor on top","All")
say("join dsc.gg/rion")
say("ORION OWNS YOU")
-- Command Varibles
wait(0.05)
cmd("char all 2772906849")
cmd("name all orion owns you")
cmd("music 5238598908")
cmd("h Orion Crasher Is On Top LightRBLX $u(|<s")
spawn(function()
    while true do wait(1)
        for i = 1,3 do cmd("size all 0.3") end
        cmd("freeze all")
        for i = 1,3 do cmd("size all 10") end
        cmd("clone all")
    end
end)
wait(2)
rconsoleprint("@@GREEN@@")
rconsoleprint([[
    
Server Crashed!]])
wait(1)
rconsoleprint([[

Joining New Server...
]])
new()