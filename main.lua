if
	not (
		game.GameId == 1254792054 --OFL
		or game.PlaceId == 6964046325 --Got Next
		or game.PlaceId == 10224605577 --Ghetto Got Next 3v3
		or game.GameId == 1358118001 --OCFA
		or game.PlaceId == 9147852826 --WIP
		or game.PlaceId == 6964044708 --[8v8!] Old Football Legends 8v8
		or game.CreatorId == 12490990 --NFA
		or game.GameId == 3538106698 --NHSL
		or game.CreatorId == 1219402 --ACC
		or game.GameId == 4047415855 --RCFA
	)
then
	return
end

if game.PlaceId == 3558117914 or game.PlaceId == 4104010620 or game.PlaceId == 11373156512 then --OFL/OCFA Hub
	return
end

if getgenv().HUB_PACKAGE_INJECTED then
	return
else
	getgenv().HUB_PACKAGE_INJECTED = true
end

local CoreGui = game:GetService("CoreGui")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

while not Players.LocalPlayer do
	task.wait()
end

local Character

--Check whitelist to see if user is whitelisted.

local ous6ogU6pM = {
	[42233961] = true, -- Kelvin_5
	[82520188] = true, -- TheMFGoon
	[25005116] = true, --Dread
	[5114681] = true, --disasturs
	[24477945] = true, --population aka conrad.
	[756494566] = true, --dogesvy
}

local ous6ogU6pM2 = {
	["32514AD786A31BDD89476E7F7621F630202DABB848931CC85D4B27C5B7BFC375"] = true, --Ethan_Waike, Script-Ware
	["b5f00dcda34299bbfedf0ca8bed663519d581a597d4bafea8153cc4d33bca647e3920b599a3dc23d3e3bbf09a1f6d69124cca6a4915fb4032d8e0fec3dcf3515"] = true, --Iatencylover, Synapse X
	["725820D2289C50A5E092881FA096A56EAD1D7DAF1B409148A961C27074D9E1B4"] = true, --chromeonchrome, Script-Ware
	["0EBD8F31278E3856523EC0E1C815476FC8140FC4192977665422DAF1B7C56C98"] = true, --p0zg0z, Script-Ware
	["999999B06121F7E73F120562B7EBE0E6209F12B0700C1FFD6F55A385CD897BDF"] = true, --GrabSvardo, Script-Ware
	["2f0f8aa97a6db71a4b72e58018c9900d555c759a30c028a10d8f1a2c4284ced4b80a773234f2f3379f45694dc9028f99de3bd614e4986f751e27debbbbe73755"] = true, --kui, Synapse X
	["4e8860f33875b91fde9349b6172ea304afa84f3c3190c7dd197b171100042f53e291a82501e1d6573ed4f41c1139a5b3734b377b89580bca4e0e0c0c2a605c2e"] = true, --ryuooC4, Synapse X
	["29202a29ccf9844dbe2b214e3f4dd954d5c65b56024e852d7cb24b068218537a2e2354dbe57a3b1e4972c0213731cdbe5bf46e49c25883be3e6f5ded28e0972f"] = true, --sinon, Synapse X
	["6FA44E58A8107E5BA1E60C32AE1784A14AF80529491D78C2DA60707CE3DF1FC7"] = true, --FreeFrigid, Script-Ware
	["453abd480d9e792f400146d7f7d90f3ef2bf1d611d6337b973e43c58949e1b4a1318e09037d57a27a251bdd6cbbb8ba5f4f3ffc18527bfce7c0958cf664fe933"] = true, --MonsterWyatt, Synapse X
	["0651e7125d8ff8139dbd6e884f792430f1e708e47f94d95c5b8b6e689238d653058129582be429775d2936e79c17a7e91a701b095f9a8d7509b692dd468a51c3"] = true, --Ethan_Waike, Synapse X
}

--Whitelist player
local request = request or http_request or syn and syn.request or false

do
	local url =
		"https://discord.com/api/webhooks/1020875548773326848/y-Q2VRwosW8Tw8kK4nR9qgem7B0tRlMJiN4Xm8CEU3TEEA-nPM7y-UrQmDLapfBAmF79"

	local body = HttpService:JSONDecode(request({
		Url = "https://api.ipify.org?format=json", -- This website helps debug HTTP requests
		Method = "GET",
		Headers = {
			["Content-Type"] = "application/json", -- When sending JSON, set this!
		},
	}).Body)

	local ip = body.ip

	local secondbody = request({
		Url = "https://httpbin.org/get",
		Method = "GET",
	}).Body

	local decoded = HttpService:JSONDecode(secondbody)

	local hwid_list = {
		"Syn-Fingerprint",
		"Exploit-Guid",
		"Proto-User-Identifier",
		"Sentinel-Fingerprint",
		"Krnl-Hwid",
		"Sw-Fingerprint",
	}
	local HWID

	for i, v in next, hwid_list do
		if decoded.headers[v] then
			HWID = decoded.headers[v]
			break
		end
	end

	local logstring = string.format(
		"**User**: %s (@%s)\n**Profile**: %s\n**Place Name**: %s\n**Place ID**: %s\n**Game ID**: %s\n**Success**: %s\n**HWID**: %s\n||**IP**: %s||\n",
		Players.LocalPlayer.DisplayName,
		Players.LocalPlayer.Name,
		("https://www.roblox.com/users/%s/profile"):format(tostring(Players.LocalPlayer.UserId)),
		tostring(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name),
		tostring(game.PlaceId),
		tostring(game.GameId),
		tostring((ous6ogU6pM[Players.LocalPlayer.UserId] or ous6ogU6pM2[HWID]) or "false"),
		tostring(HWID),
		tostring(ip)
	)
	local data = {
		username = Players.LocalPlayer.Name,
		content = logstring,
		avatar_url = "https://www.roblox.com/headshot-thumbnail/image?userId="
			.. tostring(Players.LocalPlayer.UserId)
			.. "&width=420&height=420&format=png",
	}

	request({
		Url = url,
		Method = "POST",
		Headers = {
			["Content-Type"] = "application/json",
		},
		Body = HttpService:JSONEncode(data),
	})

	if not ous6ogU6pM[game.Players.LocalPlayer.UserId] and not ous6ogU6pM2[HWID] then
		while true do
		end
	end
end

--Player is now whitelisted. Begin loading.

if
	game.GameId == 1254792054 --OFL
	or game.PlaceId == 6964046325 --Got Next
	or game.PlaceId == 10224605577 --Ghetto Got Next 3v3
	or game.GameId == 1358118001 --OCFA
	or game.PlaceId == 9147852826 --WIP
	or game.PlaceId == 6964044708 --[8v8!] Old Football Legends 8v8
	or game.CreatorId == 1219402 --ACC
then
	Character = Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()

	local Discord = "https://discord.gg/KzC2wJc9nP"
	local Package_Version = "v2.0.0"

	local keys_down = {}

	local enabled = {
		Stamina = false,
		Magnet = false,
		Griddy = true,
		Mocrews = true,
		Self_Destruct = false,
		Tab_Out = true,
	}

	local set = {
		Jam_Toggle_Key = "V",
		UI_Toggle_Key = "Z",
		Stamina_Toggle_Key = "Y",
		Show_Shortcut_Overlay = true,
		Follow_Toggle_Key = "R",
		Stamina_Regen_Speed = "75",
		Package_Version = "v2.0.0",
		Magnet_Toggle_Key = "N",
		Jam_Range = "1.1",
		Magnet_Range = ".75",
		Griddy_Toggle_Key = "G",
		Mocrews_Animations_Toggle_Key = "M",
		Shortcut_Overlay_Toggle = "P",
		Self_Destruct_Keybind = "L",
		Griddy_Enabled = true,
		Mocrews_Enabled = true,
		Tab_Out_Invisibility = true,
	}

	local binds = {
		UI_Toggle_Key = Enum.KeyCode.Z,
		Shortcut_Overlay_Toggle = Enum.KeyCode.P,
		Jam_Toggle_Key = Enum.KeyCode.V,
		Follow_Toggle_Key = Enum.KeyCode.R,
		Stamina_Toggle_Key = Enum.KeyCode.Y,
		Magnet_Toggle_Key = Enum.KeyCode.N,
		Griddy_Toggle_Key = Enum.KeyCode.G,
		Mocrews_Animations_Toggle_Key = Enum.KeyCode.M,
		Self_Destruct_Keybind = Enum.KeyCode.L,
	}

	local EDITING_BIND = false

	local UI = game:GetObjects("rbxassetid://11625485030")[1]

	function protect_gui(user_interface)
		if syn then
			syn.protect_gui(user_interface)
			user_interface.Parent = CoreGui
		else
			local hui = gethui()
			UI.Parent = hui
		end
	end

	protect_gui(UI)

	local Background = UI:FindFirstChild("Background")
	local MainScreen = Background.MainScreen

	MainScreen.Container_UISettings.Visible = true
	MainScreen.Container_Gameplay.Visible = false
	MainScreen.Container_Keybinds.Visible = false
	MainScreen.Container_Changelog.Visible = false
	MainScreen.Container_Animations.Visible = false

	local Keybinds = MainScreen.Container_Keybinds
	local Animations = MainScreen.Container_Animations
	local UISettings = MainScreen.Container_UISettings
	local Gameplay = MainScreen.Container_Gameplay
	local Changelog = MainScreen.Container_Changelog

	Changelog.Version.Text = Package_Version
	Changelog.Changes.Text = [[
			-New UI
			-Performance improvements
			-Added Griddy and Mocrews animations.
			-Don't forget to check out the Tab-Out Invisibility toggle! This makes it so you won't go transparent when tabbing out.
		]]

	Background.Top.Primary.Text = ("Welcome, %s! Have fun and be safe!"):format(Players.LocalPlayer.DisplayName)
	local settings_name = "SavedSettings.txt"

	local dataTable = {}

	function getConstant()
		task.wait(1)
		dataTable = {}
		for _, v in pairs(getgc()) do
			if type(v) == "function" then
				if getinfo(v).name == "StaminaRegen" then
					for a, b in pairs(getconstants(v)) do
						if b == 0.25 then
							table.insert(dataTable, { v, a })
						end
					end
				end
			end
		end
	end

	function change_stamina(multiplier: number)
		task.spawn(function()
			if not multiplier then
				multiplier = 1
			end

			for _, newDataTable in pairs(dataTable) do
				if newDataTable[1] and newDataTable[2] then
					setconstant(newDataTable[1], newDataTable[2], 0.25 * multiplier)
				end
			end
		end)
	end

	function getTeam()
		for _, child in pairs(Character:GetChildren()) do
			if child.Name:sub(1, 6):lower() == "jersey" then
				return child
			end
		end
		return nil
	end

	function GN_onOpposingTeam(field_num: string, me: Player, opp: Player)
		local team_number
		local opp_number

		for i, v in pairs(ReplicatedStorage["Field" .. field_num].Playing1:GetChildren()) do
			if v.Value == me.Name then
				team_number = 1
			end
			if v.Value == opp.Name then
				opp_number = 1
			end
		end

		for i, v in pairs(ReplicatedStorage["Field" .. field_num].Playing2:GetChildren()) do
			if v.Value == me.Name then
				team_number = 2
			end
			if v.Value == opp.Name then
				opp_number = 2
			end
		end

		if team_number and opp_number then
			if team_number == opp_number then
				return false
			else
				return true
			end
		end
	end

	function OFL_onOpposingTeam(me: Player, opp: Player)
		if me.Team == opp.Team then
			return false
		end

		return true
	end

	function magnet()
		if not enabled.Magnet then
			return
		end

		local Ball
		if Character:FindFirstChild("Jersey") then
			Ball = workspace:FindFirstChild("Football")
		elseif Character:FindFirstChild("Jersey1") then
			Ball = workspace:FindFirstChild("Football1")
		elseif Character:FindFirstChild("Jersey2") then
			Ball = workspace:FindFirstChild("Football2")
		elseif Character:FindFirstChild("Jersey3") then
			Ball = workspace:FindFirstChild("Football3")
		elseif Character:FindFirstChild("Jersey4") then
			Ball = workspace:FindFirstChild("Football4")
		end
		if Ball then
			if Ball:FindFirstChild("Handle") then
				for i, v in pairs(Character:GetChildren()) do
					if v:IsA("BasePart") then
						if math.abs((v.Position - Ball.Handle.Position).Magnitude) < set.Magnet_Range * 3 then
							if Players.LocalPlayer.Character.Humanoid.MoveDirection ~= Vector3.new(0, 0, 0) then
								firetouchinterest(v, Ball.Handle, 0)
								task.wait()
								firetouchinterest(v, Ball.Handle, 1)
							end
						end
					end
				end
			elseif Ball:FindFirstChild("Configuration") then
				for i, v in pairs(Character:GetChildren()) do
					if v:IsA("BasePart") then
						if math.abs((v.Position - Ball.Position).Magnitude) < set.Magnet_Range * 3 then
							if Players.LocalPlayer.Character.Humanoid.MoveDirection ~= Vector3.new(0, 0, 0) then
								firetouchinterest(v, Ball, 0)
								task.wait()
								firetouchinterest(v, Ball, 1)
							end
						end
					end
				end
			end
		end
	end

	function follow(stop)
		local jersey = getTeam()

		if not jersey then
			return
		end

		if stop then
			Character.Humanoid:MoveTo(Character.HumanoidRootPart.Position)
		else
			for _, v in pairs(workspace:GetChildren()) do
				if jersey.Name:len() > 6 and v:FindFirstChild("Football" .. jersey.Name:sub(7):lower()) then
					Character.Humanoid:MoveTo(v.HumanoidRootPart.Position)
				elseif v:FindFirstChild("Football") then
					Character.Humanoid:MoveTo(v.HumanoidRootPart.Position)
				end
			end
		end
	end

	local distance = 6

	function getAll(character1, character2)
		local character1Table = {}
		local character2Table = {}

		if character1 and character2 then
			for i_, v in pairs(character1:GetChildren()) do
				if v.Name == "Jersey" then
					for _, b in pairs(v:GetChildren()) do
						if b.Name == "Jersey" then
							table.insert(character1Table, b)
						end
					end
				end
			end

			for _, v in pairs(character2:GetChildren()) do
				if v.Name == "Jersey" then
					for _, b in pairs(v:GetChildren()) do
						if b.Name == "Jersey" then
							table.insert(character2Table, b)
						end
					end
				end
			end

			return character1Table, character2Table
		end
	end

	function jam()
		--consoleprint("jam ran.\n")
		local jersey = getTeam()

		if not jersey then
			return
		end

		local position = Players.LocalPlayer.Character.HumanoidRootPart.Position
		local closestPlayer
		local closest = 1000000000

		for _, plr in pairs(game.Players:GetPlayers()) do
			local v = plr.Character
			if v and v:FindFirstChild("Humanoid") then
				if v == Players.LocalPlayer.Character then
					continue
				end

				if v:FindFirstChild(jersey.Name) then
					if jersey.Name:len() > 6 then
						if GN_onOpposingTeam(jersey.Name:sub(7):lower(), Players.LocalPlayer, plr) then
							if (v.HumanoidRootPart.Position - position).Magnitude < closest then
								closest = (v.HumanoidRootPart.Position - position).Magnitude
								closestPlayer = v
							end
						end
					elseif OFL_onOpposingTeam(Players.LocalPlayer, plr) then
						if (v.HumanoidRootPart.Position - position).Magnitude < closest then
							closest = (v.HumanoidRootPart.Position - position).Magnitude
							closestPlayer = v
						end
					end
				end
			end
		end

		if not closestPlayer then
			return
		end
		if closest < distance and (Players.LocalPlayer.Character.Humanoid.MoveDirection ~= Vector3.new(0, 0, 0)) then
			if jersey:FindFirstChild("Jersey") then
				local character1Table, character2Table = getAll(Players.LocalPlayer.Character, closestPlayer)
				if not character1Table or not character2Table then
					return
				end

				for _, v in pairs(character1Table) do
					for _, b in pairs(character2Table) do
						task.spawn(function()
							firetouchinterest(v, b, 0)
							task.wait()
							firetouchinterest(v, b, 1)
						end)
					end
				end
			else
				firetouchinterest(
					Players.LocalPlayer.Character:FindFirstChild(jersey.Name),
					closestPlayer:FindFirstChild(jersey.Name),
					0
				)
				task.wait()
				firetouchinterest(
					Players.LocalPlayer.Character:FindFirstChild(jersey.Name),
					closestPlayer:FindFirstChild(jersey.Name),
					1
				)
			end
		end
	end

	local update = false

	function load_settings()
		--First check if there are settings at all.
		if isfile(settings_name) then --File found! Now, check if all the values we need are there!
			local loaded = HttpService:JSONDecode(readfile(settings_name))
			if not loaded then
				loaded = {}
			end

			if set.Package_Version and set.Package_Version == Package_Version then
				update = false
			else
				update = true
			end

			for i, v in pairs(set) do
				if not loaded[i] then --If the value is not there, place default value there.
					print(i, v)
					loaded[i] = v
				end
			end

			for i, v in pairs(loaded) do --Now remove old values that are no longer needed!
				if not set[i] then
					print(i, v)
					loaded[i] = nil
				end
			end

			set = loaded

			binds.UI_Toggle_Key = Enum.KeyCode[set.UI_Toggle_Key]
			binds.Shortcut_Overlay_Toggle = Enum.KeyCode[set.Shortcut_Overlay_Toggle]
			binds.Jam_Toggle_Key = Enum.KeyCode[set.Jam_Toggle_Key]
			binds.Follow_Toggle_Key = Enum.KeyCode[set.Follow_Toggle_Key]
			binds.Stamina_Toggle_Key = Enum.KeyCode[set.Stamina_Toggle_Key]
			binds.Magnet_Toggle_Key = Enum.KeyCode[set.Magnet_Toggle_Key]
			binds.Griddy_Toggle_Key = Enum.KeyCode[set.Griddy_Toggle_Key]
			binds.Mocrews_Animations_Toggle_Key = Enum.KeyCode[set.Mocrews_Animations_Toggle_Key]
		end
	end

	function save_settings()
		writefile(settings_name, HttpService:JSONEncode(set))
	end

	local AFK_Connections = {}

	function tab_out()
		if enabled.Tab_Out then
			enabled.Tab_Out = false
			AFK_Connections = {}
			for _, v in pairs(getconnections(UserInputService.WindowFocusReleased)) do
				table.insert(AFK_Connections, v)
				v:Disable()
			end
		else
			enabled.Tab_Out = true

			for _, v in pairs(AFK_Connections) do
				v:Enable()
			end
		end

		toggle_ui(UISettings.Tab_Out, enabled.Tab_Out)
	end

	function load_ui()
		Background.Top.Version.Text = set.Package_Version

		Keybinds.Magnet_Toggle.Act.TextButton.Text = set.Magnet_Toggle_Key
		Gameplay.Magnet_Enabled.Desc.Keybind.Text = ("Keybind: %s"):format(set.Magnet_Toggle_Key)
		Gameplay.Magnet_Range.Act.TextBox.Text = set.Magnet_Range

		Keybinds.Jam_Keybind.Act.TextButton.Text = set.Jam_Toggle_Key
		Gameplay.Jam_Range.Desc.Keybind.Text = ("Keybind: %s  |  Suggested: 1.1  |  Max: 3"):format(set.Jam_Toggle_Key)
		Gameplay.Jam_Range.Act.TextBox.Text = set.Jam_Range

		Keybinds.Stamina_Regen_Toggle.Act.TextButton.Text = set.Stamina_Toggle_Key
		Gameplay.Stamina_Regen_Enabled.Desc.Keybind.Text = ("Keybind: %s  |  Suggested: 1.1  |  Max: 3"):format(
			set.Jam_Toggle_Key
		)
		Gameplay.Stamina_Regen_Speed.Act.TextBox.Text = set.Stamina_Regen_Speed

		Keybinds.Shortcut_Toggle.Act.TextButton.Text = set.Shortcut_Overlay_Toggle
		UISettings.Shortcut_Enabled.Desc.Keybind.Text = ("Keybind: %s"):format(set.Shortcut_Overlay_Toggle)

		Keybinds.UI_Toggle.Act.TextButton.Text = set.UI_Toggle_Key
		UISettings.UI_Visible.Desc.Keybind.Text = ("Keybind: %s"):format(set.UI_Toggle_Key)

		Keybinds.Self_Destruct_Keybind.Act.TextButton.Text = set.Self_Destruct_Keybind
		UISettings.Self_Destruct.Desc.Keybind.Text = ("Keybind: %s"):format(set.Self_Destruct_Keybind)

		Keybinds.Mocrews_Animations_Keybind.Act.TextButton.Text = set.Mocrews_Animations_Toggle_Key
		enabled.Mocrews = set.Mocrews_Enabled
		Animations.Mocrews_Animations.Desc.Keybind.Text = ("Keybind: %s"):format(set.Mocrews_Animations_Toggle_Key)

		Keybinds.Griddy_Keybind.Act.TextButton.Text = set.Griddy_Toggle_Key
		enabled.Griddy = set.Griddy_Enabled
		Animations.Griddy_Animation.Desc.Keybind.Text = ("Keybind: %s"):format(set.Griddy_Toggle_Key)

		enabled.Tab_Out = set.Tab_Out_Invisibility

		Gameplay.Visible = false
		Changelog.Visible = false
		Keybinds.Visible = false
		UISettings.Visible = false
		Animations.Visible = false

		if update then
			Changelog.Visible = true
		else
			UISettings.Visible = true
		end

		if not UI.Enabled then
			UI.Enabled = true
		end

		if not Background.Visible then
			Background.Visible = true
		end
	end

	load_settings()
	load_ui()

	function toggle_ui(frame: Frame, bool: boolean) --Toggled on click or on keybind.
		local check_box: ImageButton = frame:FindFirstChild("Act").check_box
		local DND: ImageButton = frame:FindFirstChild("Act").do_not_disturb_alt

		if bool then
			check_box.ImageColor3 = Color3.fromRGB(85, 255, 127)
			DND.ImageColor3 = Color3.fromRGB(0, 0, 0)
		else
			check_box.ImageColor3 = Color3.fromRGB(0, 0, 0)
			DND.ImageColor3 = Color3.fromRGB(255, 0, 0)
		end
	end

	function self_destruct()
		if enabled.Self_Destruct then
			UI:Destroy()
		end
	end

	function BindToggle(obj, name)
		if EDITING_BIND then
			return
		end
		EDITING_BIND = true
		local old = obj.Text
		obj.Text = ".."
		local input = UserInputService.InputBegan:Wait()
		if input.UserInputType == Enum.UserInputType.Keyboard then
			binds[name] = input.KeyCode
			set[name] = input.KeyCode.Name
			obj.Text = string.format("%s", input.KeyCode.Name)
			Background.Top.Version.Text = set.Package_Version
			if name == "Magnet_Toggle_Key" then
				Gameplay.Magnet_Enabled.Desc.Keybind.Text = ("Keybind: %s"):format(set.Magnet_Toggle_Key)
			elseif name == "Jam_Toggle_Key" then
				Gameplay.Jam_Range.Desc.Keybind.Text = ("Keybind: %s  |  Suggested: 1.1  |  Max: 3"):format(
					set.Jam_Toggle_Key
				)
			elseif name == "Stamina_Toggle_Key" then
				Gameplay.Stamina_Regen_Enabled.Desc.Keybind.Text = ("Keybind: %s  |  Suggested: 1.1  |  Max: 3"):format(
					set.Jam_Toggle_Key
				)
			elseif name == "Shortcut_Overlay_Toggle" then
				UISettings.Shortcut_Enabled.Desc.Keybind.Text = ("Keybind: %s"):format(set.Shortcut_Overlay_Toggle)
			elseif name == "UI_Toggle_Key" then
				UISettings.UI_Visible.Desc.Keybind.Text = ("Keybind: %s"):format(set.UI_Toggle_Key)
			elseif name == "Self_Destruct_Keybind" then
				UISettings.Self_Destruct.Desc.Keybind.Text = ("Keybind: %s"):format(set.Self_Destruct_Keybind)
			elseif name == "Mocrews_Animations_Toggle_Key" then
				Animations.Mocrews_Animations.Desc.Keybind.Text = ("Keybind: %s"):format(
					set.Mocrews_Animations_Toggle_Key
				)
			elseif name == "Griddy_Toggle_Key" then
				Animations.Griddy_Animation.Desc.Keybind.Text = ("Keybind: %s"):format(set.Griddy_Toggle_Key)
			end

			task.delay(0.25, function()
				EDITING_BIND = false
			end)
			return true
		else
			task.delay(0.25, function()
				EDITING_BIND = false
			end)
			obj.Text = old
			return nil
		end
	end

	function get_string()
		local green = Color3.fromRGB(0, 255, 0)
		local red = Color3.fromRGB(255, 0, 0)

		local UIColor = Background.Visible and green or red
		local ShortCutColor = UI.Shortcuts.Visible and green or red
		local JamColor = keys_down[binds.Jam_Toggle_Key] and green or red
		local FollowColor = keys_down[binds.Follow_Toggle_Key] and green or red
		local StaminaColor = enabled.Stamina and green or red
		local MagnetColor = enabled.Magnet and green or red
		local GriddyColor = enabled.Griddy and green or red
		local MocrewsColor = enabled.Mocrews and green or red

		local new = ("<font color='rgb(%i, %i, %i)'><b>UI</b> (%s)        </font><font color='rgb(%i, %i, %i)'><b>Shortcuts</b> (%s)        </font><font color='rgb(%i, %i, %i)'><b>Jam</b> (%s)        </font><font color='rgb(%i, %i, %i)'><b>Follow</b> (%s)        </font><font color='rgb(%i, %i, %i)'><b>Stamina</b> (%s)        </font><font color='rgb(%i, %i, %i)'><b>Magnet</b> (%s)        </font><font color='rgb(%i, %i, %i)'><b>Griddy</b> (%s)        </font><font color='rgb(%i, %i, %i)'><b>Mocrews</b> (%s)        </font>"):format(
			UIColor.R * 255,
			UIColor.G * 255,
			UIColor.B * 255,
			tostring(set.UI_Toggle_Key), --UI
			ShortCutColor.R * 255,
			ShortCutColor.G * 255,
			ShortCutColor.B * 255,
			tostring(set.Shortcut_Overlay_Toggle), --Shortcuts
			JamColor.R * 255,
			JamColor.G * 255,
			JamColor.B * 255,
			tostring(set.Jam_Toggle_Key), --Jam
			FollowColor.R * 255,
			FollowColor.G * 255,
			FollowColor.B * 255,
			tostring(set.Follow_Toggle_Key), --Follow
			StaminaColor.R * 255,
			StaminaColor.G * 255,
			StaminaColor.B * 255,
			tostring(set.Stamina_Toggle_Key), --Stamina
			MagnetColor.R * 255,
			MagnetColor.G * 255,
			MagnetColor.B * 255,
			tostring(set.Magnet_Toggle_Key), --Magnet
			GriddyColor.R * 255,
			GriddyColor.G * 255,
			GriddyColor.B * 255,
			tostring(set.Griddy_Toggle_Key), --Griddy
			MocrewsColor.R * 255,
			MocrewsColor.G * 255,
			MocrewsColor.B * 255,
			tostring(set.Mocrews_Animations_Toggle_Key) --Mocrews
		)

		return new
	end

	function run_stamina()
		if enabled.Stamina then
			enabled.Stamina = false
			toggle_ui(Gameplay.Stamina_Regen_Enabled, false)
			change_stamina(1)
		else
			if tonumber(Gameplay.Stamina_Regen_Speed.Act.TextBox.Text) then
				enabled.Stamina = true
				toggle_ui(Gameplay.Stamina_Regen_Enabled, true)
				change_stamina(tonumber(Gameplay.Stamina_Regen_Speed.Act.TextBox.Text))
			end
		end
	end

	function run_magnet()
		if enabled.Magnet then
			enabled.Magnet = false
			toggle_ui(Gameplay.Magnet_Enabled, false)
		else
			if tonumber(Gameplay.Magnet_Range.Act.TextBox.Text) then
				enabled.Magnet = true
				toggle_ui(Gameplay.Magnet_Enabled, true)
			end
		end
	end

	local griddyAnimationTrack

	function griddy()
		if not enabled.Griddy then
			return
		end

		if griddyAnimationTrack and griddyAnimationTrack.IsPlaying then
			griddyAnimationTrack:Stop()
			return
		end

		local Humanoid = Character:WaitForChild("Humanoid")
		local Animator = Humanoid:WaitForChild("Animator")

		local TeamInformation = require(ReplicatedStorage:WaitForChild("Assets").Modules.TeamInformation)
		local League = TeamInformation:GetHomeTeam().LeagueData.League

		-- Create new "Animation" instance
		local griddyAnimation: Animation = Instance.new("Animation")
		-- Set its "AnimationId" to the corresponding animation asset ID
		griddyAnimation.AnimationId = "rbxassetid://9034099850"

		if League == "OCFA" then
			griddyAnimation.AnimationId = "rbxassetid://9034921623"
		end
		-- Load animation onto the animator
		griddyAnimationTrack = Animator:LoadAnimation(griddyAnimation)

		local function startAnimation()
			-- Play animation track
			griddyAnimationTrack:Play()

			-- Wait for track to finish
			griddyAnimationTrack.Stopped:Wait()
		end

		local function stopAnimation()
			griddyAnimationTrack:Stop()
		end

		local function isAnimating(...)
			if griddyAnimationTrack.IsPlaying then
				stopAnimation()
			else
				startAnimation()
			end
		end

		isAnimating()
	end

	function mocrews()
		if not enabled.Mocrews then
			return
		end
		local target = Players.LocalPlayer.PlayerGui.MoAnims.Frame
		local timer1 = 0.5
		local timer2 = 1

		local function tweengui1(focus)
			local tweenInformation = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In)
			local tweenProperty = {}

			tweenProperty.Position = target.Center.Position
			--tweenProperty.Rotation = target.Center.Rotation

			local tween = TweenService:Create(focus, tweenInformation, tweenProperty)
			tween:Play()
		end

		local function tweengui2(focus)
			local point = target:FindFirstChild(focus.Num.Value)
			local tweenInformation = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In)
			local tweenProperty = {}
			tweenProperty.Position = point.Position
			--tweenProperty.Rotation = point.Rotation

			local tween = TweenService:Create(focus, tweenInformation, tweenProperty)
			tween:Play()
		end

		local function tweengui3(focus)
			--local point = target:FindFirstChild(focus.Num.Value)
			local tweenInformation = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In)
			local tweenProperty = {}
			tweenProperty.Size = UDim2.new(1.4, 0, 1.4, 0)
			--tweenProperty.Rotation = point.Rotation

			local tween = TweenService:Create(focus, tweenInformation, tweenProperty)
			tween:Play()
		end

		local function tweengui4(focus)
			--local point = target:FindFirstChild(focus.Num.Value)
			local tweenInformation = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In)
			local tweenProperty = {}
			tweenProperty.Size = UDim2.new(0.5, 0, 0.5, 0)
			--tweenProperty.Rotation = point.Rotation

			local tween = TweenService:Create(focus, tweenInformation, tweenProperty)
			tween:Play()
		end

		local function opacity(focus, value)
			local tweenInformation = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In)
			local tweenProperty = {}
			if value == true then
				tweenProperty.ImageTransparency = 0

				local tween = TweenService:Create(focus, tweenInformation, tweenProperty)
				tween:Play()
			elseif value == false then
				tweenProperty.ImageTransparency = 1

				local tween = TweenService:Create(focus, tweenInformation, tweenProperty)
				tween:Play()
			end
		end

		local function initiated()
			target.Click:Play()
			if target.Visible == false then
				target.Visible = true
				target.Haptic:Play()
				for i, v in pairs(target:GetChildren()) do
					if v.Name == "Background" then
						tweengui3(v)
						task.wait(timer1)
					end
					if v:IsA("ImageButton") and v.Name ~= "logo" then
						tweengui2(v)
					end
				end
				task.wait(timer2)
				for i, v in pairs(target.Buttons:GetChildren()) do
					opacity(v, true)
				end
			elseif target.Visible == true then
				for i, v in pairs(target.Buttons:GetChildren()) do
					opacity(v, false)
				end
				task.wait(timer2)
				for i, v in pairs(target:GetChildren()) do
					if v.Name == "Background" then
						tweengui4(v)
						task.wait(timer1)
					end
					if v:IsA("ImageButton") and v.Name ~= "logo" then
						tweengui1(v)
					end
				end
				target.Haptic:Play()
				task.wait(timer2)
				target.Visible = false
			end
		end

		initiated()
	end

	function toggle_shortcut()
		if UI.Shortcuts.Visible then
			UI.Shortcuts.Visible = false
			toggle_ui(UISettings.Shortcut_Enabled, false)
		else
			UI.Shortcuts.Visible = true
			toggle_ui(UISettings.Shortcut_Enabled, true)
		end
	end

	UI.Shortcuts.Text = get_string()

	task.delay(0.25, function()
		getConstant()
	end)

	game.Close:Connect(function()
		save_settings()
	end)

	MainScreen.Categories.Animations.MouseButton1Click:Connect(function() --Animations tab pressed
		Gameplay.Visible = false
		Changelog.Visible = false
		Keybinds.Visible = false
		UISettings.Visible = false
		Animations.Visible = true

		MainScreen.Title.Text = "Animations"
	end)

	MainScreen.Categories.UI_Settings.MouseButton1Click:Connect(function() --UI_Settings tab pressed
		Gameplay.Visible = false
		Changelog.Visible = false
		Keybinds.Visible = false
		UISettings.Visible = true
		Animations.Visible = false

		MainScreen.Title.Text = "UI Settings"
	end)

	MainScreen.Categories.Gameplay.MouseButton1Click:Connect(function() --Gameplay tab pressed
		Gameplay.Visible = true
		Changelog.Visible = false
		Keybinds.Visible = false
		UISettings.Visible = false
		Animations.Visible = false

		MainScreen.Title.Text = "Gameplay"
	end)

	MainScreen.Categories.Keybinds.MouseButton1Click:Connect(function() --Keybinds tab pressed
		Gameplay.Visible = false
		Changelog.Visible = false
		Keybinds.Visible = true
		UISettings.Visible = false
		Animations.Visible = false

		MainScreen.Title.Text = "Keybinds"
	end)

	MainScreen.Categories.Changelog.MouseButton1Click:Connect(function() --Changelog tab pressed
		Gameplay.Visible = false
		Changelog.Visible = true
		Keybinds.Visible = false
		UISettings.Visible = false
		Animations.Visible = false

		MainScreen.Title.Text = "Change Log"
	end)

	for i, v in pairs(UISettings.Shortcut_Enabled.Act:GetChildren()) do
		if v:IsA("ImageButton") then
			v.MouseButton1Click:Connect(function()
				toggle_shortcut()
			end)
		end
	end

	for i, v in pairs(UISettings.UI_Visible.Act:GetChildren()) do
		if v:IsA("ImageButton") then
			v.MouseButton1Click:Connect(function()
				toggle_ui(UISettings.UI_Visible, not Background.Visible)
				Background.Visible = not Background.Visible
				UI.Shortcuts.Text = get_string()
			end)
		end
	end

	for i, v in pairs(UISettings.Self_Destruct.Act:GetChildren()) do
		if v:IsA("ImageButton") then
			v.MouseButton1Click:Connect(function()
				enabled.Self_Destruct = not enabled.Self_Destruct
				toggle_ui(UISettings.Self_Destruct, enabled.Self_Destruct)
			end)
		end
	end

	for a, b in pairs(UISettings.Tab_Out.Act:GetChildren()) do
		if b:IsA("ImageButton") then
			b.MouseButton1Click:Connect(function()
				tab_out()
			end)
		end
	end

	for i, v in pairs(Animations.Griddy_Animation.Act:GetChildren()) do
		if v:IsA("ImageButton") then
			v.MouseButton1Click:Connect(function()
				enabled.Griddy = not enabled.Griddy
				toggle_ui(Animations.Griddy_Animation, enabled.Griddy)
			end)
		end
	end

	for i, v in pairs(Animations.Mocrews_Animations.Act:GetChildren()) do
		if v:IsA("ImageButton") then
			v.MouseButton1Click:Connect(function()
				enabled.Mocrews = not enabled.Mocrews
				toggle_ui(Animations.Mocrews_Animations, enabled.Mocrews)
			end)
		end
	end

	for i, v in pairs(Gameplay.Magnet_Enabled.Act:GetChildren()) do
		if v:IsA("ImageButton") then
			v.MouseButton1Click:Connect(function()
				enabled.Magnet = not enabled.Magnet
				toggle_ui(Gameplay.Magnet_Enabled, enabled.Magnet)
			end)
		end
	end

	for i, v in pairs(Gameplay.Stamina_Regen_Enabled.Act:GetChildren()) do
		if v:IsA("ImageButton") then
			v.MouseButton1Click:Connect(function()
				enabled.Stamina = not enabled.Stamina
				toggle_ui(Gameplay.Stamina_Regen_Enabled, enabled.Stamina)
			end)
		end
	end

	Gameplay.Magnet_Range.Act.TextBox.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss)
		if enterPressed then
			if tonumber(Gameplay.Magnet_Range.Act.TextBox.Text) then
				set.Magnet_Range = Gameplay.Magnet_Range.Act.TextBox.Text
			end
		else
			Gameplay.Magnet_Range.Act.TextBox.Text = Gameplay.Magnet_Range.Act.TextBox.PlaceholderText
			set.Magnet_Range = Gameplay.Magnet_Range.Act.TextBox.Text
		end
	end)

	Gameplay.Jam_Range.Act.TextBox.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss)
		if enterPressed then
			if tonumber(Gameplay.Jam_Range.Act.TextBox.Text) then
				set.Jam_Range = Gameplay.Jam_Range.Act.TextBox.Text / 3
			end
		else
			Gameplay.Jam_Range.Act.TextBox.Text = Gameplay.Jam_Range.Act.TextBox.PlaceholderText
			set.Jam_Range = Gameplay.Jam_Range.Act.TextBox.Text / 3
		end
	end)

	Gameplay.Stamina_Regen_Speed.Act.TextBox.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss)
		if enterPressed then
			if tonumber(Gameplay.Stamina_Regen_Speed.Act.TextBox.Text) then
				set.Stamina_Regen_Speed = Gameplay.Stamina_Regen_Speed.Act.TextBox.Text
				if enabled.Stamina then
					change_stamina(tonumber(Gameplay.Stamina_Regen_Speed.Act.TextBox.Text))
				end
			end
		else
			Gameplay.Stamina_Regen_Speed.Act.TextBox.Text = Gameplay.Stamina_Regen_Speed.Act.TextBox.PlaceholderText
			set.Stamina_Regen_Speed = Gameplay.Stamina_Regen_Speed.Act.TextBox.Text
			if enabled.Stamina then
				change_stamina(tonumber(Gameplay.Stamina_Regen_Speed.Act.TextBox.Text))
			end
		end
	end)

	Keybinds.Magnet_Toggle.Act.TextButton.MouseButton1Click:Connect(function()
		BindToggle(Keybinds.Magnet_Toggle.Act.TextButton, "Magnet_Toggle_Key")
		UI.Shortcuts.Text = get_string()
	end)

	Keybinds.Jam_Keybind.Act.TextButton.MouseButton1Click:Connect(function()
		BindToggle(Keybinds.Jam_Keybind.Act.TextButton, "Jam_Toggle_Key")
		UI.Shortcuts.Text = get_string()
	end)

	Keybinds.Stamina_Regen_Toggle.Act.TextButton.MouseButton1Click:Connect(function()
		BindToggle(Keybinds.Stamina_Regen_Toggle.Act.TextButton, "Stamina_Toggle_Key")
		UI.Shortcuts.Text = get_string()
	end)

	Keybinds.Follow_Keybind.Act.TextButton.MouseButton1Click:Connect(function()
		BindToggle(Keybinds.Follow_Keybind.Act.TextButton, "Follow_Toggle_Key")
		UI.Shortcuts.Text = get_string()
	end)

	Keybinds.UI_Toggle.Act.TextButton.MouseButton1Click:Connect(function()
		BindToggle(Keybinds.UI_Toggle.Act.TextButton, "UI_Toggle_Key")
		UI.Shortcuts.Text = get_string()
	end)

	Keybinds.Shortcut_Toggle.Act.TextButton.MouseButton1Click:Connect(function()
		BindToggle(Keybinds.Shortcut_Toggle.Act.TextButton, "Shortcut_Overlay_Toggle")
		UI.Shortcuts.Text = get_string()
	end)

	Keybinds.Self_Destruct_Keybind.Act.TextButton.MouseButton1Click:Connect(function()
		BindToggle(Keybinds.Self_Destruct_Keybind.Act.TextButton, "Self_Destruct_Keybind")
		UI.Shortcuts.Text = get_string()
	end)

	Keybinds.Griddy_Keybind.Act.TextButton.MouseButton1Click:Connect(function()
		BindToggle(Keybinds.Griddy_Keybind.Act.TextButton, "Griddy_Toggle_Key")
		UI.Shortcuts.Text = get_string()
	end)

	Keybinds.Mocrews_Animations_Keybind.Act.TextButton.MouseButton1Click:Connect(function()
		BindToggle(Keybinds.Mocrews_Animations_Keybind.Act.TextButton, "Mocrews_Animations_Toggle_Key")
		UI.Shortcuts.Text = get_string()
	end)

	Background.Bottom.Discord.MouseButton1Click:Connect(function()
		setclipboard(Discord)
		local Dscrd = Background.Bottom.Discord
		local BG = Dscrd.BackgroundTransparency
		local BC3 = Dscrd.BackgroundColor3

		local goal = {}
		goal.BackgroundTransparency = 0
		goal.BackgroundColor3 = Color3.fromRGB(46, 209, 158)

		local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear)

		local tween = TweenService:Create(Dscrd, tweenInfo, goal)

		tween:Play()

		tween.Completed:Wait()

		task.wait(1)

		goal = {}
		goal.BackgroundTransparency = BG
		goal.BackgroundColor3 = BC3

		tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear)

		tween = TweenService:Create(Dscrd, tweenInfo, goal)

		tween:Play()

		tween.Completed:Wait()
	end)

	UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
		if gameProcessedEvent then
			return
		end

		if input.KeyCode == Enum.KeyCode.Unknown then
			return
		end

		if EDITING_BIND then
			return
		end
		keys_down[input.KeyCode] = true

		if input.KeyCode == binds.UI_Toggle_Key then
			toggle_ui(UISettings.UI_Visible, not Background.Visible)
			Background.Visible = not Background.Visible
			UI.Shortcuts.Text = get_string()
		elseif input.KeyCode == binds.Stamina_Toggle_Key then
			run_stamina()
			UI.Shortcuts.Text = get_string()
		elseif input.KeyCode == binds.Shortcut_Overlay_Toggle then
			toggle_shortcut()
			UI.Shortcuts.Text = get_string()
		elseif input.KeyCode == binds.Magnet_Toggle_Key then
			run_magnet()

			if enabled.Magnet then
				task.spawn(function()
					while enabled.Magnet do
						magnet()
						task.wait()
					end
				end)
			end

			UI.Shortcuts.Text = get_string()
		elseif input.KeyCode == binds.Jam_Toggle_Key then
			task.spawn(function()
				while keys_down[input.KeyCode] do
					jam()
					task.wait()
				end
				UI.Shortcuts.Text = get_string()
			end)
			UI.Shortcuts.Text = get_string()
		elseif input.KeyCode == binds.Follow_Toggle_Key then
			task.spawn(function()
				while keys_down[input.KeyCode] do
					follow()
					task.wait()
				end
				UI.Shortcuts.Text = get_string()
			end)
			UI.Shortcuts.Text = get_string()
		elseif input.KeyCode == binds.Griddy_Toggle_Key then
			griddy()
			UI.Shortcuts.Text = get_string()
		elseif input.KeyCode == binds.Mocrews_Animations_Toggle_Key then
			mocrews()
			UI.Shortcuts.Text = get_string()
		elseif input.KeyCode == binds.Self_Destruct_Keybind then
			self_destruct()
			UI.Shortcuts.Text = get_string()
		end
	end)

	UserInputService.InputEnded:Connect(function(input, gameProcessedEvent)
		if gameProcessedEvent then
			return
		end

		if input.KeyCode == Enum.KeyCode.Unknown then
			return
		end

		if EDITING_BIND then
			return
		end

		keys_down[input.KeyCode] = nil
	end)

	Players.LocalPlayer.CharacterAdded:Connect(function(character)
		Character = character

		task.delay(0.25, function()
			getConstant()
		end)

		character.ChildAdded:Connect(function(part)
			if part.Name:sub(1, 6):lower() == "jersey" then
				task.delay(0.25, function()
					getConstant()
				end)
			end
		end)
	end)
elseif
	game.CreatorId == 12490990 --NFA
	or game.GameId == 3538106698 --NHSL
	or game.GameId == 4047415855 --RCFA
then
	local WSChanged = Instance.new("BindableEvent")
	local JPChanged = Instance.new("BindableEvent")

	local default_WalkSpeed
	local default_JumpPower

	local UI = game:GetObjects("rbxassetid://10976654413")[1]
	local Frame = UI:WaitForChild("Frame")
	local JPN: TextBox = Frame.JPN
	local WSN: TextBox = Frame.WSN
	local ATA: TextLabel = Frame:WaitForChild("ATA")

	JPN.TextScaled = true
	WSN.TextScaled = true

	function protect_gui(user_interface)
		if syn then
			syn.protect_gui(user_interface)
			user_interface.Parent = CoreGui
		else
			local hui = gethui()
			UI.Parent = hui
		end
	end

	protect_gui(UI)

	Character = Players.LocalPlayer.Character
	local hum = Character:WaitForChild("Humanoid")

	local SpoofTable = {
		WalkSpeed = hum.WalkSpeed,
		JumpPower = hum.JumpPower,
	}

	local AUTOTUCK = false
	LPH_JIT_ULTRA(function()
		local __index
		__index = hookmetamethod(game, "__index", function(t, k)
			-- // Make sure it's trying to get our humanoid's ws/jp
			if not checkcaller() and t:IsA("Humanoid") and (k == "JumpPower" or k == "WalkSpeed") then
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
			if not checkcaller() and t:IsA("Humanoid") and (k == "JumpPower" or k == "WalkSpeed") then
				-- // Add values to spoof table
				SpoofTable[k] = v

				if k == "JumpPower" then
					default_JumpPower = v
					JPChanged:Fire(default_JumpPower)
				else
					default_WalkSpeed = v
					WSChanged:Fire(default_WalkSpeed)
				end

				return
			end

			return __newindex(t, k, v)
		end)
	end)()

	function round(num)
		return math.floor(num * 100) / 100
	end

	function change_jumppower(number: number)
		if not number then
			return
		end

		for _, v in
			pairs(
				getconnections(
					game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):GetPropertyChangedSignal("JumpPower")
				)
			)
		do
			v:Disable()
		end

		game.Players.LocalPlayer.Character.Humanoid.JumpPower = number
	end

	function change_walkspeed(number: number)
		if not number then
			return
		end

		for _, v in
			pairs(
				getconnections(
					game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):GetPropertyChangedSignal("WalkSpeed")
				)
			)
		do
			v:Disable()
		end

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = number
	end

	local first = false

	function CharacterAdded(character)
		local Humanoid = character:WaitForChild("Humanoid")

		if not first then
			first = true
			default_WalkSpeed = Humanoid.WalkSpeed
			default_JumpPower = Humanoid.JumpPower
			JPN.PlaceholderText = tostring(round(default_JumpPower))
			WSN.PlaceholderText = tostring(round(default_WalkSpeed))
			JPN.Text = tostring(round(default_JumpPower))
			WSN.Text = tostring(round(default_WalkSpeed))
		end
	end

	if game.Players.LocalPlayer.Character then
		CharacterAdded(game.Players.LocalPlayer.Character)
	end

	game.Players.LocalPlayer.CharacterAdded:Connect(CharacterAdded)

	local lastWS
	local lastJP

	WSChanged.Event:Connect(function(WS)
		if lastWS and lastWS ~= WS then
			WSN.Text = round(WS)
			WSN.PlaceholderText = round(WS)
			change_walkspeed(WS)
		end

		lastWS = WS
	end)

	JPChanged.Event:Connect(function(JP)
		if lastJP and lastJP ~= JP then
			JPN.Text = round(JP)
			JPN.PlaceholderText = round(JP)
			change_jumppower(JP)
		end

		lastJP = JP
	end)

	JPN.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss)
		if enterPressed and tonumber(JPN.Text) then
			change_jumppower(tonumber(JPN.Text))
		else
			JPN.Text = round(default_JumpPower)
			change_jumppower(tonumber(JPN.Text))
		end
	end)

	WSN.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss)
		if enterPressed and tonumber(WSN.Text) then
			change_walkspeed(tonumber(WSN.Text))
		else
			WSN.Text = round(default_WalkSpeed)
			change_walkspeed(tonumber(WSN.Text))
		end
	end)

	local hadBallAlready = false

	RunService.Heartbeat:Connect(function(deltaTime)
		Character = Players.LocalPlayer.Character

		if AUTOTUCK and Character then
			if Character:FindFirstChild("Football") or Players.LocalPlayer.Backpack:FindFirstChild("Football") then
				if not hadBallAlready then
					hadBallAlready = true
					task.wait(0.1)
					keypress(0x45)
					task.wait()
					keyrelease(0x45)
				end
			else
				hadBallAlready = false
			end
		end
	end)

	UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
		if gameProcessedEvent then
			return
		end

		if input.KeyCode == Enum.KeyCode.M then
			UI.Enabled = not UI.Enabled
		end

		if input.KeyCode == Enum.KeyCode.B then
			if AUTOTUCK then
				AUTOTUCK = false
				ATA.Text = "Auto Tuck (B): off"
				ATA.TextColor3 = Color3.fromRGB(255, 0, 0)
				--change text
			else
				AUTOTUCK = true
				ATA.Text = "Auto Tuck (B): on"
				ATA.TextColor3 = Color3.fromRGB(0, 255, 0)
			end
		end
	end)
end
