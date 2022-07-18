getgenv().Notification = false
getgenv().Fling = true
getgenv().Velocity = -30
loadstring(game:HttpGet("https://raw.githubusercontent.com/CenteredSniper/Kenzen/master/newnetlessreanimate.lua",true))()
local Fling = game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Name].HumanoidRootPart
local SelectionBox = Instance.new("SelectionBox")

SelectionBox.Adornee = Fling
Fling.Transparency = .5
	Fling.Transparency = 1
	
	Fling.BodyAngularVelocity.AngularVelocity = Vector3.new(9999999999999999999999999999999999,9999999999999999999999999999999999,9999999999999999999999999999999999)
	
	local mouse = game.Players.LocalPlayer:GetMouse()
	--game["Run Service"].Heartbeat:Connect(function(delta)
	--    Fling.CFrame = CFrame.new(mouse.hit.p)
	--end)
	local attackingwithhrp = false
	
	mouse.Button1Down:Connect(function()
		attackingwithhrp = true    
	end)
	
	
	mouse.Button1Up:Connect(function()
		attackingwithhrp = false
	end)
	
	game["Run Service"].Heartbeat:Connect(function(delta)
		if attackingwithhrp then
			Fling.CFrame = CFrame.new(mouse.hit.p)
		else
			Fling.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame
		end
	end)
