local Check = game.Players:FindFirstChild("CLEAR_MAID_VALUE")::BoolValue
if Check then
	Check.Value = true
end
local Check = Instance.new("BoolValue",game.Players)
Check.Name="CLEAR_MAID_VALUE"
Check.Value=false
local VirtualInputManager = Instance.new("VirtualInputManager")
local LivingFolder = workspace:WaitForChild("Living")
function MakeMaidModule()
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
local char = Player.Character
Player.CharacterAdded:Connect(function(NEWCHAR)
	char = NEWCHAR
end)
local Enabled = false
local inproccess = false
local inproccess_attack = false


local currentMoveTo = nil
local casesnames = {
	["Epic"]=true,
	["Legendary"]=true,
	["Rare"]=true
}

local livingattacklist = {
	["FlyHead"]=true,
	["Jujutsu Sorceser"]=true,
	["Mantis Curse"]=true,
	["Roppongi Curse"]=true,
}

local weld = Instance.new("Weld")
weld.Enabled=false
local function ATTACK()
	local x = 0
	local y = 0

	VirtualInputManager:SendMouseButtonEvent(x, y, 0, true, game, false)
	task.wait()
	VirtualInputManager:SendMouseButtonEvent(x, y, 0, false, game, false)
end
local newmaid = maid.new()
newmaid.InputBegan = uis.InputBegan:Connect(function(key, processed)
	if not processed then
		if key.KeyCode == Enum.KeyCode.K then
			Enabled = not Enabled
		end
	end
end)
newmaid.RenderStepped = RunService.RenderStepped:Connect(function(DT)
	local lerpAlpha = math.clamp(0.95*DT,0,1)
	local IsRagdolled = if Player:FindFirstChild("Tags") and Player:FindFirstChild("Tags"):FindFirstChild("Ragdoll") then true else false
	if (char) and (char:FindFirstChildOfClass("Humanoid")) and not IsRagdolled then
		local humanoid = char:FindFirstChildOfClass("Humanoid") :: Humanoid
		if not inproccess and not inproccess_attack and Enabled then
			for Index,NPC in pairs(LivingFolder:GetChildren()) do
				if (livingattacklist[NPC.Name]) then
					local npcHumanoid = NPC:FindFirstChildOfClass("Humanoid")
					if npcHumanoid and npcHumanoid.Health>0 then
						inproccess_attack = true
						local root = npcHumanoid.RootPart
						currentMoveTo = root
						npcHumanoid.Died:Wait()
						inproccess_attack = false
						currentMoveTo = nil
					end
				end
			end
		end
		if not inproccess and not inproccess_attack and Enabled then

			for Index,Case:Instance in pairs(workspace:GetChildren()) do
				if casesnames[Case.Name] and Case:IsA("Instance") and (Case:FindFirstChild("RootPart")) and (Case:FindFirstChild("RootPart"):FindFirstChild("ProximityAttachment")) and (Case:FindFirstChild("RootPart"):FindFirstChild("ProximityAttachment"):FindFirstChildOfClass("ProximityPrompt")) then
					inproccess =true
					local root = Case:FindFirstChild("RootPart") :: Part
					local OldRootCF = root.CFrame
					local promt = Case:FindFirstChild("RootPart"):FindFirstChild("ProximityAttachment"):FindFirstChildOfClass("ProximityPrompt") :: ProximityPrompt
					currentMoveTo=root
					humanoid.RootPart.CFrame = root.CFrame * CFrame.new(promt.MaxActivationDistance*2,promt.MaxActivationDistance*2,promt.MaxActivationDistance*2)
					promt.RequiresLineOfSight=false
					promt.PromptShown:Wait()
					promt:InputHoldBegin()
					promt.PromptHidden:Wait()
					inproccess=false
				end
			end
		elseif (inproccess or inproccess_attack) and Enabled and (currentMoveTo) then
			weld.Enabled=true
			weld.Part0 = currentMoveTo
			weld.Part1 = humanoid.RootPart
			local ResultPosition =currentMoveTo.CFrame
			if inproccess then
				ResultPosition = currentMoveTo.CFrame * CFrame.new(0,1.5,0)
			elseif inproccess_attack then
				ResultPosition =  CFrame.lookAt(currentMoveTo.Position+Vector3.new(0,8.5,0),currentMoveTo.CFrame.p) 
			end
			ResultPosition = currentMoveTo.CFrame:ToObjectSpace(ResultPosition) 
			weld.C0 = ResultPosition
			
			if inproccess_attack then
				ATTACK()
			end
		elseif (not (currentMoveTo)) or not Enabled then
			weld.Enabled=false
		end
	end
end)
newmaid.CheckChanged = Check.Changed:Connect(function()
	if Check.Value then
		newmaid:Destroy()
		Check:Destroy()
		weld:Destroy()
		VirtualInputManager:Destroy()
	end
end)
