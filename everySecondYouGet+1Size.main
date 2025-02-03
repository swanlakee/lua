local Player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local task = task
local UIS = game:GetService("UserInputService")

-- Create the GUI Frame and Toggle Button
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = Player.PlayerGui

local ToggleButton = Instance.new("TextButton")
ToggleButton.Size = UDim2.new(0, 100, 0, 50)
ToggleButton.Position = UDim2.new(0.5, -100, 0.5, -25)
ToggleButton.Text = "Auto OFF"
ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- Red color initially
ToggleButton.Parent = ScreenGui
ToggleButton.Draggable = true

-- Create a boolean variable to keep track of whether the script is active
local isActive = false

-- Toggle function to start and stop the task
ToggleButton.MouseButton1Click:Connect(function()
    isActive = not isActive
    if isActive then
        ToggleButton.Text = "Auto ON"
        ToggleButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)  -- Change to green when active
        
        -- Start the loop
        while isActive do
            task.wait(1)

            local localPlayer = game.Players.LocalPlayer
            if localPlayer.Character and localPlayer.Character:FindFirstChild("Humanoid") then
                localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7153, 191, 672)
                print("Teleported")
            end

            local args = {
                [1] = "VoidArea"
            }

            ReplicatedStorage.Remotes.ChangeToMap:FireServer(unpack(args))
            ReplicatedStorage.Remotes.Rebirth:FireServer()

            if not isActive then
                break
            end
        end
    else
        ToggleButton.Text = "Auto OFF"
        ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- Change back to red when inactive
    end
end)
