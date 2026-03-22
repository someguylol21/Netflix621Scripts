# Netflix621 Scripts
Scripts for Netflix621 (Private roblox sober/linux exec)

# Krypton Reanimate
```lua
-- Note: I added MediHood, VarietyShades and RobloxVisor2019 as the head so you need that too if u want to look cool
--[[
	Free Version:
	https://www.roblox.com/catalog/4645404679/International-Fedora-Thailand
	https://www.roblox.com/catalog/3662265036/International-Fedora-Indonesia
	https://www.roblox.com/catalog/4622081834/International-Fedora-China
	https://www.roblox.com/catalog/3992084515/International-Fedora-Vietnam
	https://www.roblox.com/catalog/4819740796/Robox

	Accurate Version:
	https://www.roblox.com/catalog/14255560646/Extra-Left-Tan-Arm
	https://www.roblox.com/catalog/14255562939/Extra-Right-Tan-Arm
	https://www.roblox.com/catalog/17374846953/Extra-Right-Black-Arm
	https://www.roblox.com/catalog/17374851733/Extra-Left-Black-Arm
	https://www.roblox.com/catalog/13421786478/Extra-Torso-Blocky
]]


KryptonConfiguration = {
	WaitTime = 0.251,
	FakeRigScale = 1,
	DestroyHeightOffset = 50,
	TeleportOffsetRadius = 20,
	RefitHatCount = 2,

	RigName = "Tetris",

	ReturnOnDeath = true,

	Flinging = { -- UNFINISHED
		Enabled = true,
		MethodUsed = "Tool", -- Tool, Hat, HatTouch
		FlingMagnitude = 8000,
	},

	Reclaim = true,
	Refit = true,
	SetCharacter = true,
	Animations = true,

	NoCollisions = false,
	AntiVoiding = false, -- set to false for natural disaster survival
    AntiVoidingTarget = 100,
	SetSimulationRadius = false,
	DisableCharacterScripts = true,
	AccessoryFallbackDefaults = true,
	OverlayFakeCharacter = false,
	LimitHatsPerLimb = false,
	NoBodyNearby = true,
	PermanentDeath = false,

	Hats = {
		["Right Arm"] = {
			{Texture = "14255544465", Mesh = "14255522247", Name = "RARM", Offset = CFrame.Angles(0, 0, math.rad(90))},
			{Texture = "4645402630", Mesh = "3030546036", Name = "International Fedora", Offset = CFrame.new(0.1,0,0) * CFrame.Angles(math.rad(-90), 0, math.rad(-90))},
		},

		["Left Arm"] = {
			{Texture = "14255544465", Mesh = "14255522247", Name = "LARM", Offset = CFrame.Angles(0, 0, math.rad(90))},
			{Texture = "3650139425", Mesh = "3030546036", Name = "International Fedora", Offset = CFrame.new(-0.1,0,0) * CFrame.Angles(math.rad(-90), 0, math.rad(90))}
		},

		["Right Leg"] = {
			{Texture = "17374768001", Mesh = "17374767929", Name = "Accessory (RARM)", Offset = CFrame.Angles(0, 0, math.rad(90))},
			{Texture = "4622077774", Mesh = "3030546036", Name = "International Fedora", Offset = CFrame.Angles(math.rad(-90), 0, math.rad(90))},
			{Texture = "3360978739", Mesh = "3030546036", Name = "InternationalFedora", Offset = CFrame.Angles(math.rad(-90), 0, math.rad(90))},
		},

		["Left Leg"] = {
			{Texture = "17374768001", Mesh = "17374767929", Name = "Accessory (LARM)", Offset = CFrame.Angles(0, 0, math.rad(90))},
			{Texture = "3860099469", Mesh = "3030546036", Name = "InternationalFedora", Offset = CFrame.Angles(math.rad(-90), 0, math.rad(-90))},
			{Texture = "3409604993", Mesh = "3030546036", Name = "InternationalFedora", Offset = CFrame.Angles(math.rad(-90), 0, math.rad(-90))}
		},

		["Torso"] = {
			{Texture = "13415110780", Mesh = "13421774668", Name = "MeshPartAccessory", Offset = CFrame.identity},
			{Texture = "4819722776", Mesh = "4819720316", Name = "MeshPartAccessory", Offset = CFrame.Angles(0, 0, math.rad(-15))}
		},
        ["Head"] = {
			{Texture = "617406825", Mesh = "617474228", Name = "MediHood", Offset = CFrame.identity},
			{Texture = "376188793", Mesh = "116436358", Name = "VarietyShades02", Offset = CFrame.new(0, 0.125, -0.4) },
            {Texture = "2646470932", Mesh = "1081088", Name = "RobloxVisor2019", Offset = CFrame.new(0, 0.4, -0.6)}
		},
	},
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/someguylol21/Netflix621Scripts/refs/heads/main/KryptonFixed.lua"))()
```
# Krystal Dance V3 (Modified, Fixed + R15 To R6 Emotes + UGC Emotes + Custom R6 Emotes + Custom UI + Search Bar, someguylol_21)
```lua
getgenv().KeepKeybinds = false
loadstring(game:HttpGet("https://raw.githubusercontent.com/someguylol21/Netflix621Scripts/refs/heads/main/KrystalDanceModded.lua"))()
```

# Krystal Dance V3 (Original, Fixed + Improved, MrY7zz)
```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/someguylol21/Netflix621Scripts/refs/heads/main/KrystalDanceV3.lua"))()
```
