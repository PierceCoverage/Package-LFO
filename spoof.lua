local hum = Players.LocalPlayer.Character:WaitForChild("Humanoid")

local SpoofTable = {
	WalkSpeed = hum.WalkSpeed,
	JumpPower = hum.JumpPower,
}

local __index
__index = hookmetamethod(game, "__index", function(t, k)
    -- // Make sure it's trying to get our humanoid's ws/jp
    if (not checkcaller() and t:IsA("Humanoid") and k == "JumpPower") then
        -- // Return spoof values
        return SpoofTable[k]
    end

    -- //
    return __index(t, k)
end)

-- // __newindex hook
local __newindex
__newindex = hookmetamethod(game, "__newindex", function(t, k, v)
    -- // Make sure it's trying to set our humanoid's ws/jp
    if (not checkcaller() and t:IsA("Humanoid") and k == "JumpPower") then
        -- // Add values to spoof table
        SpoofTable[k] = v

        -- // Disallow the set
        return
    end
    
    -- //
    return __newindex(t, k, v)
end)
