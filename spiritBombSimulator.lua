-- Load Rayfield Library
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Create the Window for the script
local Window = Rayfield:CreateWindow({
    Name = "Spirit Bomb Simulator",
    Icon = 0,  -- Icon in Topbar. 0 means no icon.
    LoadingTitle = "💪Spirit Bomb Simulator",
    LoadingSubtitle = "by swanlake🦢",
    Theme = "Default",  -- Check https://docs.sirius.menu/rayfield/configuration/themes
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,  -- Prevent version mismatch warnings

    -- Configuration saving settings
    ConfigurationSaving = {
        Enabled = true,
        FolderName = nil,  -- Use a custom folder for the game hub
        FileName = "Spirit Bomb"
    },

    -- Discord settings (disabled here)
    Discord = {
        Enabled = false,
        Invite = "noinvitelink",  -- Discord invite link
        RememberJoins = true  -- Keep join info across sessions
    },

    -- Key system settings (disabled here)
    KeySystem = false,
    KeySettings = {
        Title = "Untitled",
        Subtitle = "Key System",
        Note = "No method of obtaining the key is provided",
        FileName = "Key",
        SaveKey = true,
        GrabKeyFromSite = false,
        Key = {"Hello"}  -- Accepted keys
    }
})

-- Create Main Tab with a section
local MainTab = Window:CreateTab("Player", "user")

-- Global variables for toggle states
_G.infinitePower = false
_G.infiniteSpin = false
_G.infinitePotion = false
_G.infiniteTap = false
_G.autoRebirth = false
_G.auraEffect = false

--aura effect
function auraEffect()
  while _G.auraEffect == true do
    task.wait()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}
game:GetService("ReplicatedStorage").Remotes.LevelUpEffect:FireServer(unpack(args))
  end
end


-- auto autoRebirth
local function autoRebirth()
    while _G.autoRebirth == true do
        task.wait()local args = {
    [1] = 1
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:InvokeServer(unpack(args))
    end
end

-- infinite infiniteTap
local function infiniteTap()
    while _G.infiniteTap == true do
        task.wait()
        local args = {
            [1] = 99999999999
        }
        game:GetService("Players").LocalPlayer.Character.Train.Event:FireServer(unpack(args))
    end
end

-- Infinite Potion Function
local function infinitePotion()
    while _G.infinitePotion == true do
        task.wait(0.1)
        local args = {
            [1] = "x5 Power",
            [2] = 30
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AddWheelSpinValue"):FireServer(unpack(args))
    end
end

-- Infinite Spin Function
local function infiniteSpin()
    while _G.infiniteSpin == true do
        task.wait()
        local args = {
            [1] = "Spins",
            [2] = 1
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AddWheelSpinValue"):FireServer(unpack(args))
    end
end

-- Infinite Power Function
local function infinitePower()
    while _G.infinitePower == true do
        task.wait()
        local args = {
            [1] = "Power",
            [2] = 9e10
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AddWheelSpinValue"):FireServer(unpack(args))  -- Delay to avoid spamming
    end
end

-- toggle autoRebirth
local ToggleRebirth = MainTab:CreateToggle({
    Name = "Auto Rebirth",
    CurrentValue = false,
    Flag = "ToggleRebirth",  -- Flag to save state
    Callback = function(Value)
        _G.autoRebirth = Value
        if _G.autoRebirth then
            autoRebirth()  -- Start the infinite power loop
        end
    end
})

-- toggle infinite infiniteTap
local ToggleTap = MainTab:CreateToggle({
    Name = "Auto Tap (equip punch)",
    CurrentValue = false,
    Flag = "ToggleTap",  -- Flag to save state
    Callback = function(Value)
        _G.infiniteTap = Value
        if _G.infiniteTap then
            infiniteTap()  -- Start the infinite power loop
        end
    end
})

-- Create Toggle for Infinite Power
local TogglePower = MainTab:CreateToggle({
    Name = "Infinite Power",
    CurrentValue = false,
    Flag = "TogglePower",  -- Flag to save state
    Callback = function(Value)
        _G.infinitePower = Value
        if _G.infinitePower then
            infinitePower()  -- Start the infinite power loop
        end
    end
})

-- Create Toggle for Infinite Spin
local ToggleSpin = MainTab:CreateToggle({
    Name = "Infinite Spin",
    CurrentValue = false,
    Flag = "ToggleSpin",  -- Flag to save state
    Callback = function(Value)
        _G.infiniteSpin = Value
        if _G.infiniteSpin then
            infiniteSpin()  -- Start the infinite spin loop
        end
    end
})

-- Create Toggle for Infinite Potion
local TogglePotion = MainTab:CreateToggle({
    Name = "Infinite Boost",
    CurrentValue = false,
    Flag = "TogglePotion",  -- Flag to save state
    Callback = function(Value)
        _G.infinitePotion = Value
        if _G.infinitePotion then
            infinitePotion()  -- Start the infinite potion loop
        end
    end
})

-- Create Toggle for Aura
local ToggleAura = MainTab:CreateToggle({
    Name = "Aura Effect",
    CurrentValue = false,
    Flag = "ToggleAura",  -- Flag to save state
    Callback = function(Value)
        _G.auraEffect = Value
        if _G.auraEffect then
            auraEffect()  -- Start the infinite potion loop
        end
    end
})

-- Pet Section
local PetTab = Window:CreateTab("Pet", "cat")

-- add a daily login
local ButtonDailyPet = PetTab:CreateButton({
    Name = "Add a Daily Pet (Spam Click)",
    Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("DailyEvents"):WaitForChild("ClaimDaily"):FireServer()
    end
})

-- add a kraken
local ButtonKrakenPet = PetTab:CreateButton({
    Name = "Add a Kraken Pet",
    Callback = function()
        local args = {
            [1] = "Secret Wheel Pet",
            [2] = 1
        }
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

--Worlds Tab
 local WorldsTab = Window:CreateTab("Worlds", "earth")
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer
 local Button = WorldsTab:CreateButton({
    Name = "STARTER WORLD",
    Callback = function()
        if localPlayer.Character and localPlayer.Character:FindFirstChild("Humanoid") then
            localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(760, 975, -662)
            print("Teleported to STARTER WORLD")
        else
            print("Character not found or not loaded.")
        end
    end,
})

local Button = WorldsTab:CreateButton({
    Name = "UNDERWORLD",
    Callback = function()
        if localPlayer.Character and localPlayer.Character:FindFirstChild("Humanoid") then
            localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-195, 416, -16013)
            print("Teleported to UNDERWORLD")
        else
            print("Character not found or not loaded.")
        end
    end,
})

local Button = WorldsTab:CreateButton({
    Name = "SKY WORLD (Not Finished)",
    Callback = function()
        if localPlayer.Character and localPlayer.Character:FindFirstChild("Humanoid") then
            localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8386, 6320, 142)
            print("Teleported to (8386, 6320, 142).")
        else
            print("Character not found or not loaded.")
        end
    end,
})

local Button = WorldsTab:CreateButton({
    Name = "SPACE WORLD (Not Finished)",
    Callback = function()
        if localPlayer.Character and localPlayer.Character:FindFirstChild("Humanoid") then
            localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7834, 5623, -795)
            print("Teleported to (-7834, 5623, -795).")
        else
            print("Character not found or not loaded.")
        end
    end,
})

local Button = WorldsTab:CreateButton({
    Name = "ATLANTIS WORLD (Not Finished)",
    Callback = function()
        if localPlayer.Character and localPlayer.Character:FindFirstChild("Humanoid") then
            localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3462, 723, -264)
            print("Teleported to (-3462, 723, -264).")
        else
            print("Character not found or not loaded.")
        end
    end,
})
