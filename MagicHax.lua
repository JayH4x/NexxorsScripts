getgenv().click = false
getgenv().rebirth = false
getgenv().buyBasic = false
getgenv().fireCheck = false
getgenv().KarenBoss = false
getgenv().AttackPlayer = false
-- Made By Nexxor
-- Dont Skid Fag


function doClick()
    spawn(function()  
        while click == true do  
            local args = {[1] = 1000}
            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ClickService.Click:FireServer(unpack(args))
            wait()
        end
    end)
end

function BuyRebirth(ammount)
    spawn(function()
        while rebirth == true do
            local args = {[1] = ammount}
            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.BuyRebirths:FireServer(unpack(args))
            wait()
        end
    end)
end

function buyEgg()
    spawn(function()
        while buyBasic == true do
            local args = {[1] = "basic"}
            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(unpack(args))
            wait(1)
        end
    end)
end

function angryCheck()
    spawn(function()
        while fireCheck == true do
            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.BeastModeService.Begin:FireServer()
            wait(10)
        end
    end)
end

function KillKaren()
    spawn(function()
        while KarenBoss == true do
            local args = {[1] = "Karen Keyboard"}
            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.CursorCannonService.FireBoss:FireServer(unpack(args))
            wait()
        end
    end)
end

function Attack(playertokill)
    spawn(function()
        while AttackPlayer == true do       
        local args = {
            [1] = game:GetService("Players"):FindFirstChild(playertokill)
        }

            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.CursorCannonService.FireCursor:FireServer(unpack(args))
            wait()
        end
    end)
end

function getPos()
    local plyr = game.Players.LocalPlayer
    if plyr.Character then
        return plyr.Character.HumanoidRootPart.Position
    end
        return false
end
function teleportTo(placeCFrame)
    local plyr = game.Players.LocalPlayer
    if plyr.Character then
        plyr.Character.HumanoidRootPart.CFrame = placeCFrame
    end
end
function teleportToWorld(world)
    if game:GetService("Workspace").Worlds:FindFirstChild(world) then
        teleportTo(game:GetService("Workspace").Worlds[world].Teleport.CFrame)
    end
end


local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Magic Hax") -- Creates the window

local b = w:CreateFolder("Farm")
local c = w:CreateFolder("Teleport")
local d = w:CreateFolder("Exploit")

local gamepassMod = require(game:GetService("ReplicatedStorage").Aero.Shared.Gamepasses)


d:Button("Get Gamepasses",function()
    gamepassMod.HasPassOtherwisePrompt = function() return true end
end)


b:Toggle("Auto Click",function(bool)
    getgenv().click = bool
    if bool then
        doClick()
    end 
end)

local rebirthAmmount
b:Dropdown("Rebirth Ammount",{"1","10","100","1000","10000","100000","1000000"},true,function(value) 
    rebirthAmmount = value
end)

b:Toggle("Auto Rebirth",function(bool)
    getgenv().rebirth = bool
    if bool and rebirthAmmount then
        BuyRebirth(rebirthAmmount)
    end 
end)

b:Toggle("Check Fire Mode",function(bool)
    getgenv().fireCheck = bool
    if bool then
        angryCheck()
    end 
end)

b:Toggle("Auto Kill Boss",function(bool)
    getgenv().KarenBoss = bool
    if bool then
        KillKaren()
    end 
end)
local target
b:Box("Player To Kill","string",function(value) 
    target = value
    print(target)
end)
b:Toggle("Auto Kill Player",function(bool)
    getgenv().AttackPlayer = bool
    if bool then
        Attack(target)
    end 
end)

local selectedWorld
c:Dropdown("World",{"Spawn","Desert","Winter","Lava","Toxic","Ocean","Storm","Candy","Space","Forest","City","Blocks","Future","Dominus","Infinity","Moon","Fire"},true,function(value) --true/false, replaces the current title "Dropdown" with the option that t
    selectedWorld = value
end)

c:Button("Teleport",function()
     if selectedWorld then
        teleportToWorld(selectedWorld)
     end
end)



b:DestroyGui()
