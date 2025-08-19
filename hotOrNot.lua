local NotificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/ilovechubbyorangecat/script/refs/heads/main/notification.lua",true))()

NotificationLibrary.Info("Script Executed (Credit: swanlakee)", "Info")

while wait() do

local args = {
	game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGui"):WaitForChild("PlayTimeReword"):WaitForChild("Day1")
}
game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ClaimPlaytimeEvent"):FireServer(unpack(args))

local args = {
	game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGui"):WaitForChild("PlayTimeReword"):WaitForChild("Day2")
}
game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ClaimPlaytimeEvent"):FireServer(unpack(args))

local args = {
	game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGui"):WaitForChild("PlayTimeReword"):WaitForChild("Day3")
}
game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ClaimPlaytimeEvent"):FireServer(unpack(args))

local args = {
	game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGui"):WaitForChild("PlayTimeReword"):WaitForChild("Day4")
}
game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ClaimPlaytimeEvent"):FireServer(unpack(args))

local args = {
	game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGui"):WaitForChild("PlayTimeReword"):WaitForChild("Day5")
}
game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ClaimPlaytimeEvent"):FireServer(unpack(args))

local args = {
	game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGui"):WaitForChild("PlayTimeReword"):WaitForChild("Day6")
}
game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ClaimPlaytimeEvent"):FireServer(unpack(args))

local args = {
	game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGui"):WaitForChild("PlayTimeReword"):WaitForChild("Day7")
}
game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ClaimPlaytimeEvent"):FireServer(unpack(args))
end
