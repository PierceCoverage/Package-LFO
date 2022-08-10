local Players = game:GetService("Players")
local function spoof()
	local mt = getrawmetatable(game)
	local oldindex = mt.__index
	local oldnewindex = mt.__newindex
	setreadonly(mt, false)

	local hum = Players.LocalPlayer.Character:WaitForChild("Humanoid")
	local oldjp = hum.JumpPower
	mt.__newindex = newcclosure(function(t, k, v)
		if checkcaller() then
			return oldnewindex(t, k, v)
		elseif t:IsA("Humanoid") and k == "JumpPower" then
			v = tonumber(v)
			if not v then
				v = 0
			end
			oldjp = v
		else
			return oldnewindex(t, k, v)
		end
	end)

	mt.__index = newcclosure(function(t, k)
		if checkcaller() then
			return oldindex(t, k)
		elseif t:IsA("Humanoid") and k == "JumpPower" then
			return oldjp
		else
			return oldindex(t, k)
		end
	end)

	setreadonly(mt, true)
end

spoof()
