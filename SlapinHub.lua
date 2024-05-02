-- game.Players.LocalPlayer
-- game.Players.LocalPlayer.Character

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Windows
local Main = OrionLib:MakeWindow({Name = "Slapin Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "SlapConfigHub", IntroText = "Slapin Hub"})


-- Tabs
local Home = Main:MakeTab({
	Name = "Home",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Player = Main:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Extra = Main:MakeTab({
	Name = "Extra",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Credits = Main:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- Elements

-- Home
Home:AddLabel("Made by: santapeter69")

Home:AddButton({
	Name = "Open Turtle Spy",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Turtle-Brand/Turtle-Spy/main/source.lua", true))()
  	end    
})

Home:AddButton({
	Name = "Open Dark Dex",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnimatedKurai/Scripts/main/Dex%20Explorer.txt", true))()
  	end    
})
-- Home End

-- Extra

Extra:AddToggle({
                    Name = "Anti Portal",
                    Default = false,
                    Callback = function(Value)
		AntiPortal = Value
	if AntiPortal == true then
		workspace.Lobby.Teleport2.CanTouch = false
		workspace.Lobby.Teleport3.CanTouch = false
		workspace.Lobby.Teleport4.CanTouch = false
		workspace.Lobby.Teleport6.CanTouch = false
	else
		workspace.Lobby.Teleport2.CanTouch = true
		workspace.Lobby.Teleport3.CanTouch = true
		workspace.Lobby.Teleport4.CanTouch = true
		workspace.Lobby.Teleport6.CanTouch = true
	end
end
})


-- Credits

Credits:AddParagraph("Credits","Thanks to OrionLib for the ui. Thanks to Turtle Spy and Dark Dex for the script.")

-- End
OrionLib:Init()
