-- Btw to the people who stole my "code", use these themes lmao
--[[
    Themes:

    LightTheme
    DarkTheme
    GrapeTheme
    BloodTheme
    Ocean
    Midnight
    Sentinel
    Synapse
--]]
wait(.2)
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "TUESHub Alpha";
Text = "Wait A Little.";
Duration = 15;
})
-- Stole xHeptc UI kek
if not game:IsLoaded() then
	local notLoaded = Instance.new("Message", game:GetService("CoreGui"))
	notLoaded.Text = 'TUESHub isnt loading...'
	game.Loaded:Wait()
	notLoaded:Destroy()
end

-- Combat Warriors 

if game.PlaceId == 4282985734 then
local Player = game:GetService("Players")
elseif Player:Kick("Not Supported")

    -- UI Setup
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("TUES Hub Alpha", "Synapse")
    -- Main
    local Tab = Window:NewTab("TUES")
    local Section = Tab:NewSection("Credits")

    Section:NewLabel("Used xHeptc UI Library")
    Section:NewLabel("Used Tohru Anti-Kick System")
    Section:NewLabel("Thank You For Using TUES Hub Alpha")

    local Tab = Window:NewTab("Character")

    local Section = Tab:NewSection("Movement")

    Section:NewSlider("Movement", "Changes the players speed", 100, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
    Section:NewSlider("Movement", "Changes the players jumppower", 100, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.Jumppower = s
end)
    Section:NewToggle("No Fall Damage", "Takes No Fall Damage", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)
    Section:NewToggle("Infinite Sprint", "Run Forever!", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)


    local Section = Tab:NewSection("Extras")
    Section:NewButton("Btools CLIENT", "CLIENTSIDED", function()

    Instance.new("HopperBin", speaker:FindFirstChildOfClass("Backpack")).BinType = 1
	Instance.new("HopperBin", speaker:FindFirstChildOfClass("Backpack")).BinType = 2
	Instance.new("HopperBin", speaker:FindFirstChildOfClass("Backpack")).BinType = 3
	Instance.new("HopperBin", speaker:FindFirstChildOfClass("Backpack")).BinType = 4
    print("Clicked")
    end)
end)
    Section:NewKeybind("TpTool", "Teleports You When You Click", Enum.KeyCode.E, function()
	print("You just clicked the bind")
    local TpTool = Instance.new("Tool")
	TpTool.Name = "Teleport Tool"
	TpTool.RequiresHandle = false
	TpTool.Parent = speaker.Backpack
	TpTool.Activated:Connect(function()
		local Char = speaker.Character or workspace:FindFirstChild(speaker.Name)
		local HRP = Char and Char:FindFirstChild("HumanoidRootPart")
		if not Char or not HRP then
			return warn("Failed to find HumanoidRootPart")
		end
		HRP.CFrame = CFrame.new(IYMouse.Hit.X, IYMouse.Hit.Y + 3, IYMouse.Hit.Z, select(4, HRP.CFrame:components()))
        end)
    end)
end)
    Section:NewButton("Anti-Kick", "When runned check /console ( Not As Effective On Anti-Cheat Kicks )", function()
    print("Clicked")
    wait(3)
    print("Checking if Anti_Kick is already running.")
    wait(2)
    table.foreach(workspace:GetChildren(),function(a,b) if b.Name=="Anti_Kicklul" then game:GetService("Workspace").Anti_Kicklul:Destroy() end end)
    wait(1)
    warn("Initializing Anti Kick...")
    wait(1.5)
    Instance.new("BoolValue",workspace).Name="Anti_Kicklul"
    AK=math.random(1,2)
    if AK==1 then
    game.Workspace.Anti_Kicklul.Value = true
    elseif AK==2 then
    game.Workspace.Anti_Kicklul.Value = false
end
    wait(2.5)
    AntiKick = game.Workspace.Anti_Kicklul.Value
    if AntiKick == true then
    print("Anti kick has loaded and is now running. Took [8] Seconds!")
    elseif AntiKick == false then
    print("Anti kick failed to run! Run Script again")
    end
    wait(1)
    if AntiKick ==true then
    game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
    print("Character Respawned. Anti Kick Should Work Fine Now!")
    end
end)

local Tab = Window:NewTab("Misc")
local Section = Tab:NewSection("Exploit Section")
