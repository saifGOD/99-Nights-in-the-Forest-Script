--// Plants vs Brainrots - Item Duplication Script
--// Made for Saif 💥

-- Works only in games where the item (Tool) is inside the player's Backpack or Character

local player = game.Players.LocalPlayer or game.Players:GetPlayerFromCharacter(script.Parent)
local character = player.Character or player.CharacterAdded:Wait()
local backpack = player:WaitForChild("Backpack")

-- Function to duplicate the held tool
local function duplicateHeldItem()
	local tool = character:FindFirstChildOfClass("Tool")
	if tool then
		local clone = tool:Clone()
		clone.Parent = backpack -- put the duplicate in the backpack
		game.StarterGui:SetCore("SendNotification", {
			Title = "Item Duplicated!",
			Text = "You got another " .. tool.Name .. " 🔁",
			Duration = 3
		})
	else
		game.StarterGui:SetCore("SendNotification", {
			Title = "No Tool Found!",
			Text = "You must be holding an item to duplicate it!",
			Duration = 3
		})
	end
end

-- Execute duplication when script runs
duplicateHeldItem()
