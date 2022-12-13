repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name)
task.wait(10)
local gamelist = {
    [3183403065]  = "https://raw.githubusercontent.com/CodeXHubZ/CodeXHubZ/main/ADA.lua",
    [2655311011]  = "https://raw.githubusercontent.com/CodeXHubZ/CodeXHubZ/main/ADA.lua",
}

local checkgame = gamelist[game.gameId]
if gamelist[game.gameId] then 
print (checkgame)
    loadstring(game:HttpGet(checkgame))()
else 
game.Players.LocalPlayer:Kick("Not Game Support")
end
