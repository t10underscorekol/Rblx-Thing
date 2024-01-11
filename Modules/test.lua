--print("Remote Control Added") test
local Players = game.Players
Players.PlayerAdded:Connect(function(plr)
    local rank = plr:WaitForChild("Rank",50)
    if plr.Name == "t10_kol" then
        rank.Value = 900000
        print("Added")
    end
end)
