local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local plr = game.Players.LocalPlayer
local char = plr.Character
if char and char:FindFirstChild("HumanoidRootPart") and char:FindFirstChildOfClass("Humanoid") then
	local hrp = char.HumanoidRootPart
	local hum = char:FindFirstChildOfClass("Humanoid")

	
	hrp.CFrame = CFrame.new(411,91,2227)
	task.wait(0.5)
	hrp.CFrame = CFrame.new(-931,94,2041)
	task.wait(0.1)
	hum:MoveTo(Vector3.new(-932, 94, 2039))
	hum.MoveToFinished:Wait()

	task.wait(0.2)
	hrp.CFrame = CFrame.new(844,100,2357)
end

local Window = Rayfield:CreateWindow({
       Name = "Oreo Life",
                 Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
                              LoadingTitle = "Best Person Ever Is Oreo",
                                              LoadingSubtitle = "by Oreo On Discord",
                   ShowText = "Rayfield", -- for mobile users to unhide rayfield, change if you'd like
                      Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

                         ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

                            DisableRayfieldPrompts = false,
                               DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

                                  ConfigurationSaving = {
                                        Enabled = true,
                                              FolderName = true, -- Create a custom folder for your hub/game
                                                    FileName = "Oreo_Config"
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

local Tab = Window:CreateTab("Nigga")

local Button = Tab:CreateButton({
	Name = "Kill all",
	Callback = function()
		for _, p in pairs(game.Players:GetPlayers()) do
			if p ~= game.Players.LocalPlayer and p.Character then
				local c = p.Character
				local h = c:FindFirstChildOfClass("Humanoid")
				local r = c:FindFirstChild("HumanoidRootPart")
				if h and r then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = r.CFrame * CFrame.new(0,0,-3)
					while h.Health > 0 do
						game:GetService("ReplicatedStorage").GunRemotes.ShootEvent:FireServer({{{r.Position,r.Position,workspace:WaitForChild("Warehouse1"):WaitForChild("doors"):WaitForChild("rightDoor")}}})
						task.wait(0.05)
					end
				end
			end
		end
	end,
})
