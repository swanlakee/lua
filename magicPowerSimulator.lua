local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Magic Power Simulator",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "[🎁FREE PET!] Magic Power Simulator",
   LoadingSubtitle = "by swanlake🦢",
   Theme = "Default", -- Check https://docs2.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Magic Power Simulator"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("Main Menu", 4483362458) -- Title, Image

-- Create the section in the MainTab
local PlayerSection = MainTab:CreateSection("Player")

local _g = {}
_g.autoPunch = false
_g.autoRebirth = false
_g.infinitePower = false
_g.infiniteGemsBoost = false
_g.infinitePowerBoost = false
_g.infiniteSpins = false

function autoPunch()
  while _g.autoPunch do
    task.wait(0.1) -- Added small delay to prevent overloading the server
    game:GetService("ReplicatedStorage").Remotes.PunchEvent:FireServer()
  end
end

function autoRebirth()
  while _g.autoRebirth do
    task.wait(0.1)
    local args = { [1] = 30 }
    game:GetService("ReplicatedStorage").Remotes.Rebirth:InvokeServer(unpack(args))
  end
end

function infinitePower()
  while _g.infinitePower do
    task.wait(0.1)
    local args = { [1] = "100M Power", [2] = 1 }
    game:GetService("ReplicatedStorage").Remotes.AddWheelSpinValue:FireServer(unpack(args))
  end
end

function infiniteSpins()
  while _g.infiniteSpins do
    task.wait(0.1)
    local args = { [1] = "Spins", [2] = 1 }
    game:GetService("ReplicatedStorage").Remotes.AddWheelSpinValue:FireServer(unpack(args))
  end
end

function infiniteGemsBoost()
  while _g.infiniteGemsBoost do
    task.wait(0.1)
    local args = { [1] = "Gems Potion", [2] = 100000 }
    game:GetService("ReplicatedStorage").Remotes.AddWheelSpinValue:FireServer(unpack(args))
  end
end

function infinitePowerBoost()
  while _g.infinitePowerBoost do
    task.wait(0.1)
    local args = { [1] = "Power Potion", [2] = 100000 }
    game:GetService("ReplicatedStorage").Remotes.AddWheelSpinValue:FireServer(unpack(args))
  end
end

-- Toggle for Auto Punch
local PunchToggle = MainTab:CreateToggle({
   Name = "Auto Punch",
   CurrentValue = _g.autoPunch,
   Flag = "PunchToggle",
   Callback = function(Value)
     _g.autoPunch = Value
     if _g.autoPunch then
       autoPunch()
     end
   end,
})

-- Toggle for Auto Rebirth
local RebirthToggle = MainTab:CreateToggle({
   Name = "Auto Rebirth",
   CurrentValue = _g.autoRebirth,
   Flag = "RebirthToggle",
   Callback = function(Value)
     _g.autoRebirth = Value
     if _g.autoRebirth then
       autoRebirth()
     end
   end,
})

-- Toggle for Infinite Spins
local SpinToggle = MainTab:CreateToggle({
   Name = "Infinite Spin",
   CurrentValue = _g.infiniteSpins,
   Flag = "SpinToggle",
   Callback = function(Value)
     _g.infiniteSpins = Value
     if _g.infiniteSpins then
       infiniteSpins()
     end
   end,
})

-- Toggle for Infinite Power
local PowerToggle = MainTab:CreateToggle({
   Name = "Infinite Power",
   CurrentValue = _g.infinitePower,
   Flag = "PowerToggle",
   Callback = function(Value)
     _g.infinitePower = Value
     if _g.infinitePower then
       infinitePower()
     end
   end,
})

-- Toggle for Infinite Gem Boost
local GemBoostToggle = MainTab:CreateToggle({
   Name = "Infinite Gem Boost",
   CurrentValue = _g.infiniteGemsBoost,
   Flag = "GemBoostToggle",
   Callback = function(Value)
     _g.infiniteGemsBoost = Value
     if _g.infiniteGemsBoost then
       infiniteGemsBoost()
     end
   end,
})

-- Toggle for Infinite Power Boost
local PowerBoostToggle = MainTab:CreateToggle({
   Name = "Infinite Power Boost",
   CurrentValue = _g.infinitePowerBoost,
   Flag = "PowerBoostToggle",
   Callback = function(Value)
     _g.infinitePowerBoost = Value
     if _g.infinitePowerBoost then
       infinitePowerBoost()
     end
   end,
})

local PetSection = MainTab:CreateSection("Pet")
-- Button for Adding Secret Pet
local Button = MainTab:CreateButton({
   Name = "Add Secret Pet",
   Callback = function()
     local args = { [1] = "Secret Wheel Pet", [2] = 1 }
     game:GetService("ReplicatedStorage").Remotes.AddWheelSpinValue:FireServer(unpack(args))
   end
})
