repeat task.wait() until game:IsLoaded()
local gamelist = {
    [3183403065]  = "https://raw.githubusercontent.com/CodeXHubZ/CodeXHubZ/main/ADA.lua",
    [2655311011]  = "https://raw.githubusercontent.com/CodeXHubZ/CodeXHubZ/main/Anime%20Dimensions%20Simulator.lua",
}

if game.gameId == 3183403065 then
spawn(function()    
if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Loading") then
    _G.MapName = tostring(game:GetService("Players").LocalPlayer.PlayerGui.Loading.Info.Info.Location.Text)
    _G.MapMode = tostring(game:GetService("Players").LocalPlayer.PlayerGui.Loading.Info.Info.Description.Text)
    _G.MapDiff = tostring(game:GetService("Players").LocalPlayer.PlayerGui.Loading.Info.Info.Difficulty.Text)
    print(_G.MapName, _G.MapMode, _G.MapDiff)
    end 
end)
repeat task.wait() until not game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Loading")    
local checkgame = gamelist[game.gameId]
if gamelist[game.gameId] then 
print (checkgame)
    loadstring(game:HttpGet(checkgame))()
else 
    game.Players.LocalPlayer:Kick("Not Game Support")
end
    else
    local checkgame = gamelist[game.gameId]
    if gamelist[game.gameId] then 
    print (checkgame)
    loadstring(game:HttpGet(checkgame))()
    else 
    game.Players.LocalPlayer:Kick("Not Game Support")
    end    
end
