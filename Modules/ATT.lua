--[[
Христе Боже распети и свети,
Српска земља кроз облаке лети.
Лети преко небеских висина,
Крила су јој Морава и Дрина.

Збогом први нерођени сине,
Збогом ружо, збогом рузмарине.
Збогом лето, јесени и зимо,
Одлазимо да се не вратимо.

На три свето и на три саставно,
Одлазимо на Косово равно.
Одлазимо на суђено место
Збогом мајко, сестро и невесто.

Збогом први нерођени сине,
Збогом ружо, збогом рузмарине.
Збогом лето, јесени и зимо.
Одлазимо да се не вратимо.

Кад је драга да одлазим чула,
За калпак ми невен заденула.
Збогом први нерођени сине,
Збогом ружо, збогом рузмарине.
Збогом лето, јесени и зимо.
Одлазимо да се не вратимо.
--]]

warn("ТЫ ЗАГРУЗИЛ ТУ ВЕРСИЮ. 213473846238432874")
for i,v in pairs(game.Players:GetChildren()) do
	if v.Name=="CLEAR_MAID_VALUE" then
		v.Value = true
	end
end
local Check = game.Players:FindFirstChild("CLEAR_MAID_VALUE")::BoolValue
if Check then
	Check.Value = true
end
local Check = Instance.new("BoolValue",game.Players)
Check.Name="CLEAR_MAID_VALUE"
Check.Value=false
local VirtualInputManager = Instance.new("VirtualInputManager")
local VirtualUser = game:GetService("VirtualUser")
local LivingFolder = workspace:WaitForChild("Living")
function MakeMaidModule() -- MAID COPY AND PASTE
	---	Manages the cleaning of events and other things.
	-- Useful for encapsulating state and make deconstructors easy
	-- @classmod Maid
	-- @see Signal

	local Maid = {}
	Maid.ClassName = "Maid"

	--- Returns a new Maid object
	-- @constructor Maid.new()
	-- @treturn Maid
	function Maid.new()
		return setmetatable({
			_tasks = {}
		}, Maid)
	end

	function Maid.isMaid(value)
		return type(value) == "table" and value.ClassName == "Maid"
	end

	--- Returns Maid[key] if not part of Maid metatable
	-- @return Maid[key] value
	function Maid:__index(index)
		if Maid[index] then
			return Maid[index]
		else
			return self._tasks[index]
		end
	end

	--- Add a task to clean up. Tasks given to a maid will be cleaned when
	--  maid[index] is set to a different value.
	-- @usage
	-- Maid[key] = (function)         Adds a task to perform
	-- Maid[key] = (event connection) Manages an event connection
	-- Maid[key] = (Maid)             Maids can act as an event connection, allowing a Maid to have other maids to clean up.
	-- Maid[key] = (Object)           Maids can cleanup objects with a `Destroy` method
	-- Maid[key] = nil                Removes a named task. If the task is an event, it is disconnected. If it is an object,
	--                                it is destroyed.
	function Maid:__newindex(index, newTask)
		if Maid[index] ~= nil then
			error(("'%s' is reserved"):format(tostring(index)), 2)
		end

		local tasks = self._tasks
		local oldTask = tasks[index]

		if oldTask == newTask then
			return
		end

		tasks[index] = newTask

		if oldTask then
			if type(oldTask) == "function" then
				oldTask()
			elseif typeof(oldTask) == "RBXScriptConnection" then
				oldTask:Disconnect()
			elseif oldTask.Destroy then
				oldTask:Destroy()
			end
		end
	end

	--- Same as indexing, but uses an incremented number as a key.
	-- @param task An item to clean
	-- @treturn number taskId
	function Maid:GiveTask(task)
		if not task then
			error("Task cannot be false or nil", 2)
		end

		local taskId = #self._tasks+1
		self[taskId] = task

		if type(task) == "table" and (not task.Destroy) then
			warn("[Maid.GiveTask] - Gave table task without .Destroy\n\n" .. debug.traceback())
		end

		return taskId
	end

	function Maid:GivePromise(promise)
		if not promise:IsPending() then
			return promise
		end

		local newPromise = promise.resolved(promise)
		local id = self:GiveTask(newPromise)

		-- Ensure GC
		newPromise:Finally(function()
			self[id] = nil
		end)

		return newPromise
	end

	--- Cleans up all tasks.
	-- @alias Destroy
	function Maid:DoCleaning()
		local tasks = self._tasks

		-- Disconnect all events first as we know this is safe
		for index, task in pairs(tasks) do
			if typeof(task) == "RBXScriptConnection" then
				tasks[index] = nil
				task:Disconnect()
			end
		end

		-- Clear out tasks table completely, even if clean up tasks add more tasks to the maid
		local index, task = next(tasks)
		while task ~= nil do
			tasks[index] = nil
			if type(task) == "function" then
				task()
			elseif typeof(task) == "RBXScriptConnection" then
				task:Disconnect()
			elseif task.Destroy then
				task:Destroy()
			end
			index, task = next(tasks)
		end
	end

	--- Alias for DoCleaning()
	-- @function Destroy
	Maid.Destroy = Maid.DoCleaning

	return Maid
end
local maid = MakeMaidModule() --require(81567645105187) or require(script.MainModule)
local uis = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Player = game.Players.LocalPlayer


-- собственно говоря, код от какого-то человека, спасибо ему.
local RemoteServices = game:GetService("ReplicatedStorage").ReplicatedModules.KnitPackage.Knit.Services

local ItemWhitelist = {}

local function InvokeServer(rem, ...)
    return rem:InvokeServer(...)
end

local function FireServer(rem, ...)
    return rem:FireServer(...)
end

local function SellItems()
    local ItemTable = {}
    for i, v in ipairs(Player.Backpack:GetChildren()) do
        if v:IsA("Tool") and not table.find(ItemWhitelist, v.Name) then
            local Attributes = v:GetAttributes()
            ItemTable[i] = {Attributes["ItemId"], Attributes["UUID"], 1}
        end
    end
    FireServer(RemoteServices:WaitForChild("ShopService"):WaitForChild("RE"):WaitForChild("Signal"),
        "BlackMarketBulkSellItems", ItemTable)
end


local char = Player.Character
Player.CharacterAdded:Connect(function(NEWCHAR)
	char = NEWCHAR
end)
local Enabled = false
local inproccess = false
local inproccess_attack = false
local defaultspawnpos = CFrame.new(2020.02344, 925.79248, -1579.27197, 0.996914685, -0, -0.0784924179, 0, 1, -0, 0.0784924179, 0, 0.996914685)
local currentMoveTo = nil
local casesnames = {
	["Epic"]=true,
	["Legendary"]=true,
	["Rare"]=true
}

local livingattacklist = {
	["FlyHead"]=true,
    ["Flyhead"]=true,
	["Jujutsu Sorcerer"]=true,
	["Mantis Curse"]=true,
	["Roppongi Curse"]=true,
}
--local weld = Instance.new("Weld")
--weld.Enabled=false
--weld.Name = "COOL WELD, SEX SEX PENIS"
local function ATTACK(x,y)
	x = x or 0
	y = y or 0
	VirtualInputManager:SendMouseButtonEvent(x, y, 0, true, game, false)
	task.spawn(function()
		task.wait()
		VirtualInputManager:SendMouseButtonEvent(x, y, 0, false, game, false)
	end)
end

local function MoveANDclick(x,y)
	x = x or 0
	y = y or 0
	--VirtualInputManager:SendMouseMoveEvent(x,y, Player)
	--VirtualInputManager:SendMouseButtonEvent(x, y, 0, true, Player, false)
	---task.spawn(function()
	--	task.wait()
	--	VirtualInputManager:SendMouseButtonEvent(x, y, 0, false, Player, false)
	--end)
end


local newmaid = maid.new()
newmaid.InputBegan = uis.InputBegan:Connect(function(key, processed)
	if not processed then
		--warn('penis',key)
		if key.KeyCode == Enum.KeyCode.K then
			Enabled = not Enabled
            --if Enabled then
                warn("Toggled",Enabled)
           -- else

           -- end
        elseif key.KeyCode == Enum.KeyCode.J then
            if (char) and (char:FindFirstChildOfClass("Humanoid")) then
                local humanoid = char:FindFirstChildOfClass("Humanoid") :: Humanoid
                if humanoid.RootPart~=nil then
                    humanoid.RootPart.CFrame=defaultspawnpos
                end
            end
		elseif key.KeyCode == Enum.KeyCode.B then
			warn("pressed b")
			SellItems()
		end
	end
end)

local another_connection = nil

local BlackMarketProgress = false
local cooldown_blackmarket = false

local BlackMarketTesting = false

local function findNearestHumanoid(myRootPart, distOfInt)
	local nearestRootPart = nil
	for Index,NPC in pairs(LivingFolder:GetChildren()) do
		if NPC~=nil and livingattacklist[NPC.Name] then
			local otherRoot = NPC:FindFirstChild("HumanoidRootPart")
			if otherRoot then
				local distToOther = (otherRoot.Position - myRootPart.Position).Magnitude
				if distToOther < distOfInt and distToOther > 0 then
					local Humanoid = otherRoot.Parent:FindFirstChildOfClass("Humanoid")
					if (Humanoid) and Humanoid.Health > 0 then
						distOfInt = distToOther
						nearestRootPart = otherRoot
					end
				end
			end
		end
	end
	return nearestRootPart, distOfInt
end
local OffesetsForLimbs = {
	[Enum.Limb.Head]=CFrame.new(0,1.5,0),
	[Enum.Limb.LeftArm]=CFrame.new(1,0,0),
	[Enum.Limb.RightArm]=CFrame.new(-1,0,0),
	[Enum.Limb.LeftLeg]=CFrame.new(1,-1.5,0),
	[Enum.Limb.RightLeg]=CFrame.new(-1,-1.5,0),
	[Enum.Limb.Torso]=CFrame.new(0,0,0),
}
newmaid.RenderStepped = RunService.RenderStepped:Connect(function(DT)
	local lerpAlpha = math.clamp(0.95*DT,0,1)
	local IsRagdolled = if Player:FindFirstChild("Tags") and (Player:FindFirstChild("Tags"):FindFirstChild("Ragdoll")) then true else false
	if (char) and (char:FindFirstChildOfClass("Humanoid")) then

		local humanoid = char:FindFirstChildOfClass("Humanoid") :: Humanoid

        if BlackMarketTesting and not cooldown_blackmarket and not BlackMarketProgress and workspace.NPCS ~= nil and workspace.NPCS:FindFirstChild("Black Market") ~= nil and workspace.NPCS:FindFirstChild("Black Market"):FindFirstChild("HumanoidRootPart") ~= nil and workspace.NPCS:FindFirstChild("Black Market"):FindFirstChild("HumanoidRootPart"):FindFirstChild("Attachment") ~= nil and workspace.NPCS:FindFirstChild("Black Market"):FindFirstChild("HumanoidRootPart"):FindFirstChild("Attachment"):FindFirstChild("Interaction") ~= nil then
            local promp = workspace.NPCS:FindFirstChild("Black Market"):FindFirstChild("HumanoidRootPart"):FindFirstChild("Attachment"):FindFirstChild("Interaction")
            local hmd = workspace.NPCS:FindFirstChild("Black Market"):FindFirstChild("HumanoidRootPart")
            if promp.Enabled then 
				currentMoveTo = nil
                local UI = Player.PlayerGui.UI
                if UI~=nil then
                    local menus = UI.Menus
                    if menus~=nil then
                        local BlackMarketUI = menus["Black Market"]
                        if BlackMarketUI~=nil then
                            cooldown_blackmarket=true
							SellItems()
                            task.delay(60,function()
                                cooldown_blackmarket = false
                            end)
                        end
                    end
                end
            end
        end
		if IsRagdolled then 
			humanoid.RootPart.CFrame = defaultspawnpos*CFrame.new(0,100,0)
			if humanoid.Parent~=nil then
				for i,v in pairs(humanoid.Parent:GetChildren()) do
					if v.Parent == humanoid.Parent and humanoid:GetLimb(v)~=Enum.Limb.Unknown then
						v.CFrame = humanoid.RootPart.CFrame * OffesetsForLimbs[humanoid:GetLimb(v)]
					end
				end
			end

			return 
		end
        --print(workspace.NPCS ~= nil and workspace.NPCS:FindFirstChild("Black Market") ~= nil and workspace.NPCS:FindFirstChild("Black Market"):FindFirstChild("HumanoidRootPart") ~= nil and workspace.NPCS:FindFirstChild("Black Market"):FindFirstChild("HumanoidRootPart"):FindFirstChild("Attachment") ~= nil and workspace.NPCS:FindFirstChild("Black Market"):FindFirstChild("HumanoidRootPart"):FindFirstChild("Attachment"):FindFirstChild("Interaction") ~= nil)
        if BlackMarketProgress then return end
        if Enabled then
			--if humanoid.RootPart~=nil then
			--	local dist = (humanoid.RootPart.Position-defaultspawnpos.p).Magnitude
			--	if dist < 1000 then
			--		humanoid.RootPart.CFrame=defaultspawnpos
			--	end
			--end
			for Index,Case:Instance in pairs(workspace:GetChildren()) do
				if not inproccess and casesnames[Case.Name] and Case:IsA("Instance") and (Case:FindFirstChild("RootPart")) and (Case:FindFirstChild("RootPart"):FindFirstChild("ProximityAttachment")) and (Case:FindFirstChild("RootPart"):FindFirstChild("ProximityAttachment"):FindFirstChildOfClass("ProximityPrompt")) then
                    inproccess =true
                    inproccess_attack = false
                    local root = Case:FindFirstChild("RootPart") :: Part
                    local OldRootCF = root.CFrame
                    local promt = Case:FindFirstChild("RootPart"):FindFirstChild("ProximityAttachment"):FindFirstChildOfClass("ProximityPrompt") :: ProximityPrompt

                    task.spawn(function()

                        
                        currentMoveTo=root
    
                        --humanoid.RootPart.CFrame = root.CFrame * CFrame.new(promt.MaxActivationDistance*5,promt.MaxActivationDistance*5,promt.MaxActivationDistance*5)
                        task.wait(1)
                        promt:InputHoldBegin()
                        promt.PromptHidden:Wait()
                        inproccess=false
                    end)

  
    

				end
			end
        end

        if (inproccess or inproccess_attack) and Enabled and (currentMoveTo) then

           if not inproccess and inproccess_attack then
                humanoid.PlatformStand = true
                humanoid.RootPart.Anchored = true
           elseif inproccess and not inproccess_attack then
            humanoid.PlatformStand = false
            humanoid.RootPart.Anchored = false
           end

           
			local ResultPosition =currentMoveTo.CFrame
			if inproccess and not inproccess_attack then
				ResultPosition = currentMoveTo.CFrame * CFrame.new(3.5,2.1,3.5)
			elseif inproccess_attack and not inproccess then
				--+Vector3.new(0,5.5,5.5)
				ResultPosition =  CFrame.lookAt(currentMoveTo.Position+Vector3.new(0,5.5,5.5),currentMoveTo.CFrame.p) 
			end
            humanoid.RootPart.CFrame = ResultPosition
			if inproccess_attack and currentMoveTo~=nil then
				ATTACK()
			end
            if not inproccess and inproccess_attack then
                humanoid.PlatformStand = false
                humanoid.RootPart.Anchored = false
           end
           if inproccess and not inproccess_attack then
            currentMoveTo=nil
           end
		elseif (not (currentMoveTo)) or not Enabled then
            humanoid.RootPart.Anchored = false
            humanoid.PlatformStand = false
		end

        if not inproccess and not inproccess_attack and Enabled then
            local npcHumanoidRootPart,Dist = findNearestHumanoid(humanoid.RootPart,5000)
            if npcHumanoidRootPart~=nil then
                inproccess_attack = true
                local root = npcHumanoidRootPart
                currentMoveTo = root
                local npcHumanoid = root.Parent:FindFirstChildOfClass("Humanoid")
                if npcHumanoid.Parent ~=nil and npcHumanoid~=nil then
                    another_connection=npcHumanoid.Parent:GetPropertyChangedSignal("Parent"):Connect(function()
                        if not npcHumanoid:IsDescendantOf(workspace) then
                            inproccess_attack = false
                            currentMoveTo = nil
                            another_connection:Disconnect()
                            another_connection=nil
                           -- print("hum",npcHumanoid)
                        end
                    end)
                else
                    inproccess_attack = false
                    currentMoveTo = nil
                    --print("hum",npcHumanoid)
                end

            end
        end

	end
end)
newmaid.CheckChanged = Check.Changed:Connect(function()
	if Check.Value then
		newmaid:Destroy()
		Check:Destroy()
        if another_connection~=nil then
            another_connection:Disconnect()
            another_connection=nil
        end
		--weld:Destroy()
		VirtualInputManager:Destroy()
        --VirtualUser:Destroy()
	end
end)
