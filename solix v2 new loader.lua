local ListGame = {
	["3808223175"] = "4fe2dfc202115670b1813277df916ab2", -- Jujutsu Infinite
	["994732206"]  = "e2718ddebf562c5c4080dfce26b09398", -- Blox Fruits
	["1650291138"] = "9b64d07193c7c2aef970d57aeb286e70", -- Demon Fall
	["5750914919"] = "8bbc8a7c4e023bc0c80799fec3233162", -- Fisch
	["66654135"]   = "9c916252a9f79bbf5a108f97c531e807", -- Murder Mystery 2
	["3317771874"] = "e95ef6f27596e636a7d706375c040de4", -- Pet Simulator 99
	["1511883870"] = "fefdf5088c44beb34ef52ed6b520507c", -- Shindo Life
	["6035872082"] = "3bb7969a9ecb9e317b0a24681327c2e2", -- Rivals
	["245662005"]  = "21ad7f491e4658e9dc9529a60c887c6e", -- Jailbreak
	["7018190066"] = "98f5c64a0a9ecca29517078597bbcbdb", -- Dead Rails
	["7074860883"] = "0c8fdf9bb25a6a7071731b72a90e3c69", -- Anime Crossover
	["7436755782"] = "e4ea33e9eaf0ae943d59ea98f2444ebe", -- Grow a Garden
	["210851291"]  = "b3400f5a4e28cad1e1110b45004c3837", -- Build a Boat
	-- ? idk Dig game
	["6931042565"] = "036786acbfa6e6e030dce074faa1173f", -- Volleyball Legends
	["7326934954"] = "00e140acb477c5ecde501c1d448df6f9", -- 99 Nights in the Forest
	["7822444776"] = "ba4595cfb82d2434a478b9003f3674b4", -- Build a Plane
	["4871329703"] = "646e60921195f2b2d59015703b0b100a", -- TypeSoul
	["5578556129"] = "ba96a23ddff0c5b40e67eb1c0f2997c4", -- Anime Vanguards
	["1000233041"] = "c08f7269fc31f6a60ec57ecfacfdb34e", -- 3008
	["7750955984"] = "283d81b313c32e170c4545392802a347", -- Hunty Zombie
}

local URLsigma
local GameId = ListGame[tostring(game.GameId)]

if not GameId then
	game:GetService("Players").LocalPlayer:Kick("This game is not supported.")
end

URLsigma = GameId
function Task()
	repeat wait() until game:IsLoaded()

	local status, res1, res2 = pcall(function()
		local api = loadstring(game:HttpGet("https://sdkapi-public.luarmor.net/library.lua"))()
		local Task = {}
		local v1 = {}
		local variables={}
		local errorMessages = {
			KEY_EXPIRED = "Key Expired! Please renew your key.",
			KEY_BANNED = "Your key has been blacklisted. Contact support for details.",
			KEY_HWID_LOCKED = "Key linked to a different HWID. Please reset it using our bot.",
			KEY_INCORRECT = "Key is incorrect or has been deleted.",
			KEY_INVALID = "The provided key is in an invalid format.",
			SCRIPT_ID_INCORRECT = "The provided script ID does not exist or was deleted.",
			SCRIPT_ID_INVALID = "The script has been deleted by owner.",
			INVALID_EXECUTOR = "HWID header contains invalid data. Executor might not be supported.",
			SECURITY_ERROR = "Security error detected. Cloudflare validation failed.",
			TIME_ERROR = "Client time is invalid. Ensure your system clock is correct.",
			UNKNOWN_ERROR = "Unknown server error. Please contact support."
		}
		-------------------------------------------------------------------------------
		local cloneref = cloneref or function(o) return o end
		Players = cloneref(game:GetService("Players"))
		PlayerGui = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
		HttpService = cloneref(game:GetService("HttpService"))
		TweenService = cloneref(game:GetService("TweenService"))
		UserInputService = cloneref(game:GetService("UserInputService"))
		Market = cloneref(game:GetService("MarketplaceService"))
		RBXAnalyt = cloneref(game:GetService("RbxAnalyticsService"))
		CoreGui = cloneref(game:GetService("CoreGui"))
		RunService = cloneref(game:GetService("RunService"))
		Replicated = cloneref(game:GetService("ReplicatedStorage"))
		-------------------------------------------------------------------------------
		v1.__index = v1
		local v_u_3 = buffer and buffer.tostring or function(b) return tostring(b) end
		local v_u_4 = buffer and buffer.fromstring or function(s) return s end
		function v1.revert(p6) return v_u_4(p6) end
		function v1.convert(p51) return v_u_3(p51) end
		-------------------------------------------------------------------------------
		local LSMT = game:GetObjects("rbxassetid://126113170246030")[1]

		function Close(Objectftween)
			TweenService:Create(Objectftween, TweenInfo.new(0.65, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Size = UDim2.new(0, 10, 0, 10),
				Position = UDim2.new(0.5, 0, 0.5, 0)
			}):Play()

			task.wait(0.1)

			LSMT:Destroy()
		end

		local NotificationGUI = PlayerGui:FindFirstChild("Notifications") or Instance.new("ScreenGui")
		NotificationGUI.Name = "Notifications"
		NotificationGUI.Parent = PlayerGui

		local container = NotificationGUI:FindFirstChild("Container") or Instance.new("Frame")
		container.Name = "Container"
		container.AnchorPoint = Vector2.new(1, 0)
		container.Position = UDim2.new(1, -25, 0, 25)
		container.BackgroundTransparency = 1
		container.Size = UDim2.fromOffset(350, 600)
		container.Parent = NotificationGUI

		if not container:FindFirstChild("UIListLayout") then
			local layout = Instance.new("UIListLayout")
			layout.SortOrder = Enum.SortOrder.LayoutOrder
			layout.Padding = UDim.new(0, 8)
			layout.VerticalAlignment = Enum.VerticalAlignment.Top
			layout.HorizontalAlignment = Enum.HorizontalAlignment.Right
			layout.Parent = container
		end

		function NotifyCustom(title, content, duration)
			duration = duration or 5
			color = color or Color3.fromRGB(255, 188, 254)

			local Notification = Instance.new("Frame")
			Notification.Name = "Notification"
			Notification.BackgroundTransparency = 0.06
			Notification.AutomaticSize = Enum.AutomaticSize.Y
			Notification.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
			Notification.BorderSizePixel = 0
			Notification.Size = UDim2.fromOffset(320, 70)
			Notification.Parent = container

			local NotifCorner = Instance.new("UICorner")
			NotifCorner.CornerRadius = UDim.new(0, 8)
			NotifCorner.Parent = Notification

			local NotifStroke = Instance.new("UIStroke")
			NotifStroke.Color = Color3.fromRGB(158, 114, 158)
			NotifStroke.Transparency = 0.8
			NotifStroke.Parent = Notification

			local TitleText = Instance.new("TextLabel")
			TitleText.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.SemiBold)
			TitleText.Text = title
			TitleText.TextColor3 = Color3.fromRGB(199, 199, 203)
			TitleText.TextSize = 16
			TitleText.TextXAlignment = Enum.TextXAlignment.Left
			TitleText.BackgroundTransparency = 1
			TitleText.Size = UDim2.new(1, -20, 0, 20)
			TitleText.Position = UDim2.fromOffset(10, 6)
			TitleText.Parent = Notification

			local ContentText = Instance.new("TextLabel")
			ContentText.FontFace = Font.new("rbxassetid://12187365364")
			ContentText.Text = content
			ContentText.TextColor3 = Color3.fromRGB(180, 180, 185)
			ContentText.TextSize = 14
			ContentText.TextXAlignment = Enum.TextXAlignment.Left
			ContentText.TextYAlignment = Enum.TextYAlignment.Top
			ContentText.BackgroundTransparency = 1
			ContentText.AutomaticSize = Enum.AutomaticSize.Y
			ContentText.TextWrapped = true
			ContentText.Size = UDim2.new(1, -20, 0, 0)
			ContentText.Position = UDim2.fromOffset(10, 28)
			ContentText.Parent = Notification

			local ProgressBar = Instance.new("Frame")
			ProgressBar.BackgroundColor3 = Color3.fromRGB(44, 38, 44)
			ProgressBar.BorderSizePixel = 0
			ProgressBar.Size = UDim2.new(1, -20, 0, 6)
			ProgressBar.Position = UDim2.new(0, 10, 1, -12)
			ProgressBar.Parent = Notification

			local ProgressFill = Instance.new("Frame")
			ProgressFill.BackgroundColor3 = color
			ProgressFill.BorderSizePixel = 0
			ProgressFill.Size = UDim2.fromScale(1, 1)
			ProgressFill.Parent = ProgressBar

			local ProgressFillCorner = Instance.new("UICorner")
			ProgressFillCorner.Parent = ProgressFill

			TweenService:Create(ProgressFill, TweenInfo.new(duration, Enum.EasingStyle.Linear), {Size = UDim2.new(0, 0, 1, 0)}):Play()

			task.delay(duration, function()
				TweenService:Create(Notification, TweenInfo.new(0.3), {BackgroundTransparency = 1}):Play()
				task.wait(0.3)
				Notification:Destroy()
			end)

			return Notification
		end

		function DraggFunction(object, dragObject, enableTaptic, tapticOffset)
			local dragging = false
			local relative = nil
			local offset = Vector2.zero

			local screenGui = object:FindFirstAncestorWhichIsA("ScreenGui")
			if screenGui and screenGui.IgnoreGuiInset then
				offset = game:GetService('GuiService'):GetGuiInset()
			end

			dragObject.InputBegan:Connect(function(input, processed)
				if processed then return end
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					dragging = true
					relative = object.AbsolutePosition + object.AbsoluteSize * object.AnchorPoint - UserInputService:GetMouseLocation()
				end
			end)

			UserInputService.InputEnded:Connect(function(input)
				if dragging and (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
					dragging = false
				end
			end)

			RunService.RenderStepped:Connect(function()
				if dragging then
					local position = UserInputService:GetMouseLocation() + relative + offset
					if enableTaptic and tapticOffset then
						TweenService:Create(object, TweenInfo.new(0.4, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Position = UDim2.fromOffset(position.X, position.Y)}):Play()
					else
						object.Position = UDim2.fromOffset(position.X, position.Y)
					end
				end
			end)

			object.Destroying:Connect(function()
				dragging = false
			end)
		end

		local fSetClipboard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)
		LSMT.Enabled = false

		if gethui then
			LSMT.Parent = gethui()
		elseif syn and syn.protect_gui then
			syn.protect_gui(LSMT)
			LSMT.Parent = CoreGui
		else
			LSMT.Parent = CoreGui
		end

		pcall(function()
			LuarmorGot_System:Destroy()
		end)

		getgenv().LuarmorGot_System = LSMT
		-------------------------------------------------------------------------------
		function RandomName(b)
			local c = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-_=+[{]}\\|'\";:,<.>/? "
			local d = ""
			local f = math.random(0, 5)
			for g = 1, b - f do
				local a = math.random(1, #c - 1)
				d = d .. string.sub(c, a, a)
			end
			return d .. string.rep("\003", f)
		end

		local jas = RandomName(10)

		function Notification(Type, Message)
			NotifyCustom(Type, Message, 5)
		end

		function RenameAllChildren(parent)
			for _, child in pairs(parent:GetChildren()) do
				child.Name = RandomName(6)
				RenameAllChildren(child)
			end
		end

		function DeleteFile(File)
			if isfile(File) then
				delfile(File)
			end
		end

		variables[jas] = function(key, FileDirectory)
			if type(key) ~= "buffer" then
				Players.LocalPlayer:Kick("Invalid key type detected")
				return
			end

			local cleanedKey = v1.convert(key):gsub("%s", "")

			if string.find(cleanedKey, "_") then
				DeleteFile("solixhub/key.txt")
				task.wait(1)
				game:GetService("Players").LocalPlayer:Kick("Make sure you are using the Luarmor key.")
				return nil
			end

			if cleanedKey ~= v1.convert(key) then
				Notification("Info", "Spaces detected in the key. Verifying the key without spaces...")
			end

			local success, status = pcall(api.check_key, cleanedKey)
			if not success then
				Notification("Error", "Failed to check key due to an unexpected error.")
				return nil
			end

			if status.code == "KEY_VALID" then
				if not isfile(FileDirectory) then
					local saveSuccess, err = pcall(writefile, FileDirectory, cleanedKey)
					if not saveSuccess then
						Notification("Error", "Failed to save key: " .. err)
					end
				else
					local currentKey = readfile(FileDirectory)
					if currentKey ~= cleanedKey then
						local success, err = pcall(writefile, FileDirectory, cleanedKey)
						if not success then
							Notification("Error", "Failed to update key: " .. err)
						end
					else
						Notification("Info", "Key already up-to-date.")
					end
				end

				script_key = cleanedKey
				for _, v in ipairs(game:GetService("CoreGui"):GetChildren()) do
					if v:FindFirstChild("System") and v.System.Enabled then
						v.System:Destroy()
					end
				end

				local function FormatTime(seconds)
					local days = math.floor(seconds / 86400)
					local hours = math.floor((seconds % 86400) / 3600)
					local minutes = math.floor((seconds % 3600) / 60)
					local secs = seconds % 60

					if days > 0 then
						return string.format("%dd %02dh %02dm %02ds", days, hours, minutes, secs)
					else
						return string.format("%02dh %02dm %02ds", hours, minutes, secs)
					end
				end

				Notification("Info", string.format("Key will expire in: %s", FormatTime(status.data.auth_expire - os.time())))
				Notification("Info", string.format("Total executions: %s", status.data.total_executions))
				getgenv().LuarmorNote = status.data.note
				pcall(function() api.load_script() end)
				return true
			end

			if errorMessages[status.code] then
				DeleteFile(FileDirectory)
				Notification("Warning", errorMessages[status.code])

				if status.code == "INVALID_EXECUTOR" or status.code == "SECURITY_ERROR" or status.code == "UNKNOWN_ERROR" then
					Players.LocalPlayer:Kick(errorMessages[status.code])
				end
				return nil
			end

			Players.LocalPlayer:Kick("Key check failed: " .. status.message .. " Code: " .. status.code)
		end
		-------------------------------------------------------------------------------
		local Main = LSMT.Main
		local DragBar = Main.Movebar
		local Top = Main.Top
		local InputBox = Main.Input
		local Buttons = Main.ButtonContainer
		local CloseBT = Top.CloseButton
		local Title = Top.Title
		local icon = Top.Logo
		local Keybox = InputBox.TextBox
		local GetDiscord = Buttons.Discord
		local Links = Buttons.Links
		local Rinku = Links.LootLabs
		local Linkvertise = Links.Linkvertise

		Title.UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(180, 91, 255)), ColorSequenceKeypoint.new(1.000, Color3.fromRGB(88, 26, 181))};
		Title.UIGradient.Rotation = 90;

		Rinku.UIGradient.Color = ColorSequence.new{
			ColorSequenceKeypoint.new(0, Color3.fromHex("#625409")),
			ColorSequenceKeypoint.new(1, Color3.fromHex("#530b78"))
		}
		Rinku.UIGradient.Rotation = 195

		Linkvertise.UIGradient.Color = ColorSequence.new{
			ColorSequenceKeypoint.new(0.000, Color3.fromRGB(215, 112, 61)),
			ColorSequenceKeypoint.new(1.000, Color3.fromRGB(77, 43, 14))
		}
		Linkvertise.UIGradient.Rotation = 195

		GetDiscord.UIGradient.Color = ColorSequence.new{
			ColorSequenceKeypoint.new(0.000, Color3.fromRGB(114, 137, 218)),
			ColorSequenceKeypoint.new(1.000, Color3.fromRGB(88, 101, 242))
		}
		GetDiscord.UIGradient.Rotation = 195

		Links:WaitForChild("LootLabs"):FindFirstChildOfClass("TextLabel").Text = "Rinku"
		-------------------------------------------------------------------------------
		function Task:Window(config)
			config.DisplayName = config.DisplayName or "QuantumPulsar X"
			config.Discord = config.Discord or ""
			config.File = config.File or "VaQSys.txt"
			config.MinIcon = config.MinIcon or "rbxassetid://100569530935041"
			config.Linkvertise = config.Linkvertise
			config.Rinku = config.Rinku

			local Window = {}

			api.script_id = URLsigma
			Top.Logo.Image = config.MinIcon
			Top.Title.Text = config.DisplayName

			for _,v in pairs(Main:GetDescendants()) do
				if v:IsA("TextLabel") or v:IsA("TextButton") then
					v.FontFace = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
				end
			end

			CloseBT.ImageButton.MouseButton1Click:Connect(function()
				Close(Main)
			end)

			Keybox.FocusLost:Connect(function()
				if Keybox.Text ~= "" then
					if variables[jas](v1.revert(Keybox.Text), config.File) then
						TweenService:Create(Keybox, TweenInfo.new(0.65), {BackgroundColor3 = Color3.fromRGB(60, 255, 60), BackgroundTransparency = 0.4}):Play()
						task.wait(0.65)
						TweenService:Create(Keybox, TweenInfo.new(0.65), {BackgroundColor3 = Color3.fromRGB(255, 255, 255), BackgroundTransparency = 0.9}):Play()
						pcall(function() Close(Main) end)
					else
						Keybox.Text = ""
						TweenService:Create(Keybox, TweenInfo.new(0.65), {BackgroundColor3 = Color3.fromRGB(255, 60, 60), BackgroundTransparency = 0.4}):Play()
						task.wait(0.65)
						TweenService:Create(Keybox, TweenInfo.new(0.65), {BackgroundColor3 = Color3.fromRGB(255, 255, 255), BackgroundTransparency = 0.9}):Play()
					end
				end
			end)

			Rinku.MouseButton1Click:Connect(function()
				fSetClipboard(config.Rinku)
				Notification("Success", "Link copied to clipboard!")
			end)

			Linkvertise.MouseButton1Click:Connect(function()
				fSetClipboard(config.Linkvertise)
				Notification("Success", "Link copied to clipboard!")
			end)

			Buttons.Discord.MouseButton1Click:Connect(function()
				fSetClipboard(tostring(config.Discord))
				Notification("Success", "Link copied to clipboard!")
			end)

			task.spawn(function()
				local ok, err = pcall(function()
					local key = (isfile(config.File) and readfile(config.File)) or (script_key ~= "" and script_key) or nil
					if not key then
						Notification("Info", "No key found.")
						LSMT.Enabled = true
						return
					end

					local decoded
					local successDecode, decodeErr = pcall(function()
						decoded = v1.revert(key)
					end)
					if not successDecode or not decoded then
						Notification("Warning", "Failed to decode key:", decodeErr or "Unknown error")
						LSMT.Enabled = true
						return
					end

					local isValid, validResult = pcall(function()
						return variables[jas](decoded, config.File)
					end)

					if decoded ~= nil and (not isValid or validResult ~= true) then
						Notification("Warning", "Invalid or rejected key.")
						LSMT.Enabled = true
						return
					end
					pcall(function() if LSMT then LSMT:Destroy() end end)
				end)

				if not ok then
					Notification("Warning", "Key system error: " .. tostring(err))
					if LSMT then
						LSMT.Enabled = true
					end
				end
			end)

			RenameAllChildren(LSMT)
			DraggFunction(Main, DragBar, true, 0)
			return Window
		end
		return Task
	end)
	if not status then
		warn("key system failed to load: " .. res1)
	else
		return res1, res2
	end
end

local Task = Task()

local Window = Task:Window({
	File = "solixhub/key.txt",
	Discord = "https://discord.gg/solixhub",
	DisplayName = "solixhub - Luarmor",
	MinIcon = "rbxassetid://102391696721436",
	Linkvertise = "https://ads.luarmor.net/get_key?for=Solixhub_Free_KeySystem-OWlLHDMCHADk",
	Rinku = "https://ads.luarmor.net/get_key?for=Solix_Free_Keysystems-pqJCGTqnTsng",
})
