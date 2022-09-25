local Players = game:GetService("Players")
local function spoof()
	local hum = Players.LocalPlayer.Character:WaitForChild("Humanoid")

	local SpoofTable = {
		WalkSpeed = hum.WalkSpeed,
		JumpPower = hum.JumpPower,
	}

	local __newindex

	__newindex = hookmetamethod(game, "__newindex", function(t, k, v)
		-- // Make sure it's trying to set our humanoid's ws/jp
		if not checkcaller() and t:IsA("Humanoid") and (k == "WalkSpeed" or k == "JumpPower") then
			-- // Add values to spoof table
			SpoofTable[k] = v

			-- // Disallow the set
			return
		end

		-- //
		return __newindex(t, k, v)
	end)

	local __index

	__index = hookmetamethod(game, "__index", function(t, k, v)
		if not checkcaller() and t:IsA("Humanoid") and (k == "WalkSpeed" or k == "JumpPower") then
			-- // Make sure it's trying to get our humanoid's ws/jp
			if not checkcaller() and t:IsA("Humanoid") and (k == "WalkSpeed" or k == "JumpPower") then
				-- // Return spoof values
				return SpoofTable[k]
			end

			-- //
			return __index(t, k)
		end
	end)
end

spoof()
