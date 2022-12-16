task.wait(15)
repeat task.wait() until game:IsLoaded()
local gamelist = {
    [3183403065]  = "https://raw.githubusercontent.com/CodeXHubZ/CodeXHubZ/main/ADA.lua",
    [2655311011]  = "https://raw.githubusercontent.com/CodeXHubZ/CodeXHubZ/main/Anime%20Dimensions%20Simulator.lua",
}

local checkgame = gamelist[game.gameId]
if gamelist[game.gameId] then 
print (checkgame)
    loadstring(game:HttpGet(checkgame))()
else 
game.Players.LocalPlayer:Kick("Not Game Support")
end
