-- Initialize Rayfield
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Pull Up Simulator",
    Icon = 0,
    LoadingTitle = "Rayfield Interface Suite",
    LoadingSubtitle = "by swanlake🦢",
    Theme = "Default",
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
    ConfigurationSaving = {
        Enabled = true,
        FolderName = nil,
        FileName = "Pull Up Simulator"
    },
    Discord = {
        Enabled = false,
        Invite = "noinvitelink",
        RememberJoins = true
    },
    KeySystem = false,
    KeySettings = {
        Title = "Untitled",
        Subtitle = "Key System",
        Note = "No method of obtaining the key is provided",
        FileName = "Key",
        SaveKey = true,
        GrabKeyFromSite = false,
        Key = {"Hello"}
    }
})

-- Fixed syntax error: Two commas were used.
local PlayerTab = Window:CreateTab("Player", "user")

-- Global variables
_G.infinitePower = false
_G.infiniteSpin = false
_G.infinitePotion = false
_G.infiniteTap = false
_G.autoRebirth = false
_G.walkSpeed = false
_G.autoTap = false

-- Walk Speed Function
local function walkSpeed()
    local humanoid = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
    if _G.walkSpeed then
        humanoid.WalkSpeed = 200
    else
        humanoid.WalkSpeed = 16
    end
end

-- Auto Rebirth Function
local function autoRebirth()
    while _G.autoRebirth do
        task.wait()
        local args = { [1] = 1 }
        game:GetService("ReplicatedStorage").Remotes.Rebirth:InvokeServer(unpack(args))
    end
end

-- Infinite Power Function
local function infinitePower()
    while _G.infinitePower do
        task.wait()
        local args = { [1] = "Power", [2] = 9e10 }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AddWheelSpinValue"):FireServer(unpack(args))
    end
end

-- Infinite Spin Function
local function infiniteSpin()
    while _G.infiniteSpin do
        task.wait()
        local args = { [1] = "Spins", [2] = 1 }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AddWheelSpinValue"):FireServer(unpack(args))
    end
end

-- Infinite Potion Function
local function infinitePotion()
    while _G.infinitePotion do
        task.wait()
        local args = { [1] = "x5 Power", [2] = 30 }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AddWheelSpinValue"):FireServer(unpack(args))
    end
end

-- Auto Tap Function
local function autoTap()
    while _G.autoTap do
        task.wait()

        -- Check for the different objects and fire their events
        local args = { [1] = 1 }

        local objectName = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Air Ballon") and "Air Ballon" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Airplane") and "Airplane" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Antimatter") and "Antimatter" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bed") and "Bed" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bike") and "Bike" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Blackhole") and "Blackhole" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Blue Whale") and "Blue Whale" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Broom") and "Broom" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Brush") and "Brush" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Car") and "Car" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cargo Ship") and "Cargo Ship" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chair") and "Chair" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Computer") and "Computer" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Couch") and "Couch" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dog") and "Dog" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Earth") and "Earth" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Elephant") and "Elephant" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ferris Wheel") and "Ferris Wheel" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fridge") and "Fridge" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Galaxy") and "Galaxy" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Golf Cart") and "Golf Cart" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("House") and "House" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Iceberg") and "Iceberg" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Jupiter") and "Jupiter" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Moon") and "Moon" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Mountain") and "Mountain" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Museum") and "Museum" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Nuke") and "Nuke" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rock") and "Rock" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rocket") and "Rocket" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Satellite") and "Satellite" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ship") and "Ship" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Skeleton") and "Skeleton" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sun") and "Sun" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Table") and "Table" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Tank") and "Tank" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Volcano") and "Volcano" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Washing Machine") and "Washing Machine" or
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Yacht") and "Yacht"
        
        if objectName then
            game:GetService("Players").LocalPlayer.Character[objectName].Event:FireServer(unpack(args))
        end
    end
end

-- Create Toggles
PlayerTab:CreateToggle({
    Name = "Auto Tap",
    CurrentValue = false,
    Flag = "Auto Tap",
    Callback = function(Value)
        _G.autoTap = Value
        if _G.autoTap then
            task.spawn(autoTap)  -- Runs autoTap asynchronously
        end
    end,
})

local MaxRebirth = PlayerTab:CreateButton({
    Name = "Max Rebirth",
    Callback = function()
        local args = {
            [1] = 1000000
        }

        game:GetService("ReplicatedStorage").Remotes.Rebirth:InvokeServer(unpack(args))
    end
})

PlayerTab:CreateToggle({
    Name = "Auto Rebirth",
    CurrentValue = false,
    Flag = "autoRebirth",
    Callback = function(Value)
        _G.autoRebirth = Value
        if _G.autoRebirth then
            task.spawn(autoRebirth)  -- Runs autoRebirth asynchronously
        end
    end,
})

PlayerTab:CreateToggle({
    Name = "Infinite Power",
    CurrentValue = false,
    Flag = "infinitePower",
    Callback = function(Value)
        _G.infinitePower = Value
        if _G.infinitePower then
            task.spawn(infinitePower)  -- Runs infinitePower asynchronously
        end
    end,
})

PlayerTab:CreateToggle({
    Name = "Infinite Spins",
    CurrentValue = false,
    Flag = "infiniteSpin",
    Callback = function(Value)
        _G.infiniteSpin = Value
        if _G.infiniteSpin then
            task.spawn(infiniteSpin)  -- Runs infiniteSpin asynchronously
        end
    end,
})

PlayerTab:CreateToggle({
    Name = "Infinite Boost",
    CurrentValue = false,
    Flag = "infinitePotion",
    Callback = function(Value)
        _G.infinitePotion = Value
        if _G.infinitePotion then
            task.spawn(infinitePotion)  -- Runs infinitePotion asynchronously
        end
    end,
})

PlayerTab:CreateToggle({
    Name = "Walk Speed Boost",
    CurrentValue = false,
    Flag = "walkSpeed",
    Callback = function(Value)
        _G.walkSpeed = Value
        walkSpeed()
    end,
})

-- Pet Tab
local PetTab = Window:CreateTab("Pet", "cat")

local ButtonDailyPet = PetTab:CreateButton({
    Name = "Add Daily Pet (Spam Click)",
    Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("DailyEvents"):WaitForChild("ClaimDaily"):FireServer()
    end
})

local ButtonKrakenPet = PetTab:CreateButton({
    Name = "Add a Kraken Pet",
    Callback = function()
        local args = { [1] = "Secret Wheel Pet", [2] = 1 }
        game:GetService("ReplicatedStorage").Remotes.AddWheelSpinValue:FireServer(unpack(args))
    end
})

-- Add Flame Beast Pet Button
local ButtonClaimTimePet = PetTab:CreateButton({
    Name = "Add a Flame Beast Pet",
    Callback = function()
        local args = { [1] = true }
        game:GetService("ReplicatedStorage").Remotes.ClaimTimePet:InvokeServer(unpack(args))
    end
})

-- Add Galaxy Beast Pet Button
local ButtonExclusivePet = PetTab:CreateButton({
    Name = "Add a Galaxy Beast Pet",
    Callback = function()
        local args = {
            [1] = "Mega Pet New",
            [2] = 1
        }
        game:GetService("ReplicatedStorage").Remotes.ClaimReward:FireServer(unpack(args))
    end
})

-- World Tab
local WorldTab = Window:CreateTab("Worlds", "earth")

WorldTab:CreateButton({
    Name = "STARTER WORLD",
    Callback = function()
        local localPlayer = game.Players.LocalPlayer
        if localPlayer.Character and localPlayer.Character:FindFirstChild("Humanoid") then
            localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(998, 97, 13)
            print("Teleported to (998, 97, 13).")
        else
            print("Character not found or not loaded.")
        end
    end,
})

WorldTab:CreateButton({
    Name = "UNDERWORLD",
    Callback = function()
        local localPlayer = game.Players.LocalPlayer
        if localPlayer.Character and localPlayer.Character:FindFirstChild("Humanoid") then
            localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-150, 435, -15985)
            print("Teleported to (-150, 435, -15985).")
        else
            print("Character not found or not loaded.")
        end
    end,
})

WorldTab:CreateButton({
    Name = "SKY WORLD",
    Callback = function()
        local localPlayer = game.Players.LocalPlayer
        if localPlayer.Character and localPlayer.Character:FindFirstChild("Humanoid") then
            localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8386, 6320, 142)
            print("Teleported to (8386, 6320, 142).")
        else
            print("Character not found or not loaded.")
        end
    end,
})

WorldTab:CreateButton({
    Name = "SPACE WORLD",
    Callback = function()
        local localPlayer = game.Players.LocalPlayer
        if localPlayer.Character and localPlayer.Character:FindFirstChild("Humanoid") then
            localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7834, 5623, -795)
            print("Teleported to (-7834, 5623, -795).")
        else
            print("Character not found or not loaded.")
        end
    end,
})

WorldTab:CreateButton({
    Name = "ATLANTIS WORLD",
    Callback = function()
        local localPlayer = game.Players.LocalPlayer
        if localPlayer.Character and localPlayer.Character:FindFirstChild("Humanoid") then
            localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3462, 723, -264)
            print("Teleported to (-3462, 723, -264).")
        else
            print("Character not found or not loaded.")
        end
    end,
})
