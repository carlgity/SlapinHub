local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Windows
local Main = OrionLib:MakeWindow({Name = "Slapin Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "SlapConfigHub", IntroText = "Slapin Hub"})


-- Tabs
local Home = Main:MakeTab({
	Name = "Info",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Test = Main:MakeTab({
	Name = "Test",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


-- Elements

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









-- End
OrionLib:Init()