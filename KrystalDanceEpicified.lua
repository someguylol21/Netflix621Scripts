-- Krystal Dance V3, Made by Hemi (es muy janky)
-- Modified by someguylol_21 (github + discord)

if getgenv().KrystalDanceRunning then
	warn("Krystal Dance is already running!")
    return
end

getgenv().KrystalDanceRunning = true

repeat task.wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.Head and game.Players.LocalPlayer.Character.Torso.Neck

function stringStartsWith(str, start)
	return string.sub(str, 1, string.len(start)) == start
end

if isfolder and not isfolder('Dances') then
	makefolder('Dances')
end
local char = game:GetService('Players').LocalPlayer.Character

local lol = math.random(1, 100) -- EVIL lol
if lol == 2 then
	lol = true
end
local sprinting = false
local full = game:GetObjects('rbxassetid://107495486817639')[1]
local secondary = game:GetObjects('rbxassetid://137118054538619')[1]
local thirdThingFull = game:GetObjects('rbxassetid://82098407010713')[1]
local fallback = game:GetObjects('rbxassetid://117971041844492')[1]
	:FindFirstChildOfClass('KeyframeSequence')
fallback.Parent = full
local cleanupEmotes
local runServiceConnection

local is = newproxy(true)
local function loadlocalasset(id)
	local id = tostring(id)
	local id = id:gsub('^rbxassetid://', '')
	local _, asset = pcall(function()
		return full[id]
	end)
	if not _ or not asset then
		asset = fallback
	end

	return asset:Clone()
end
getmetatable(is).__namecall = function(_, id)
	return loadlocalasset(id)
end

local idleanim = is:LoadLocalAsset('rbxassetid://74204337812128') -- uuid. 136078657506707
local walkanim = is:LoadLocalAsset('rbxassetid://73688515498572') -- uuid. 130213485744288
local sprintanim = is:LoadLocalAsset('rbxassetid://73688515498572') -- uuid. 119558526211035
local randompart = Instance.new('Part', game:GetService('RunService'))
local coolparticles =
	game:GetObjects('rbxassetid://87299663038091')[1].ParticleAttachment
coolparticles.Parent = randompart
local playbacktrack = true
local script = Instance.new('LocalScript')
real = true
local BackgroundTimePosition = 0
if not getgenv().DisableOxide then
    pcall(function()
        local OxideApi = loadstring(
            game:HttpGet(
                'https://raw.githubusercontent.com/somethingsimade/Utils/refs/heads/main/OxideApi'
            )
        )()
        OxideApi.Notification('Krystal Dance V3, Made by Hemi, modded by someguylol_21', 10)
    end)
end
local playanother = false
local playing = false
local dancing = false
local rtrnv
local c
local tbl3
local v
local anim
local count
local hhhh
local asdf
local s
local animid
local plr
local hum = char:FindFirstChildOfClass('Humanoid')
if char:FindFirstChild('Animate') then
	char.Animate.Enabled = false
end
for i, v in pairs(hum:GetPlayingAnimationTracks()) do
	v:Stop()
end
local h = char.Head
local t = char.Torso
local hrp = char.HumanoidRootPart
local cframe
local torso
local rs
local ls
local rh
local lh
local n
local rj
local rsc0
local lsc0
local rhc0
local lhc0
local rjc0
local nc02
local gc0
local orsc0
local olsc0
local orhc0
local olhc0
local orjc0
local onc0
local count2
local maxcount2
local walking = false
local idle = false
local RunService = game:GetService('RunService')

local EmoteUI = Instance.new("ScreenGui")
local MainMenuFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UICorner_2 = Instance.new("UICorner")
local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")
local UIPadding_2 = Instance.new("UIPadding")
local DragDetector = Instance.new("UIDragDetector", MainMenuFrame)
local TempSlotHolder = Instance.new("IntValue", ScrollingFrame)
local Template = Instance.new("TextButton", TempSlotHolder)
local UICorner_3 = Instance.new("UICorner", Template)
local R6Btn = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local UIPadding_3 = Instance.new("UIPadding")
local CustomR15Btn = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local CustomR6Btn = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local UICorner_5 = Instance.new("UICorner")
local Frame_2 = Instance.new("Frame")
local SearchFrame = Instance.new("Frame")
local UIPaddingSearch = Instance.new("UIPadding")
local TextBoxSearch = Instance.new("TextBox")
local UICornerSearch = Instance.new("UICorner")


EmoteUI.Name = "EmoteUI"
EmoteUI.Parent = game:GetService("CoreGui")
EmoteUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
MainMenuFrame.Parent = EmoteUI
MainMenuFrame.BackgroundColor3 = Color3.fromRGB(20, 0, 53)
MainMenuFrame.Position = UDim2.new(0.747714818, -12, 0.416666657, 36)
MainMenuFrame.Size = UDim2.new(0, 270, 0, 470)

UICorner.Parent = MainMenuFrame

ScrollingFrame.Parent = MainMenuFrame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(36, 0, 93)
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Size = UDim2.new(1, 0, 1, 0)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollingFrame.ScrollBarThickness = 5

UICorner_2.Parent = ScrollingFrame

UIListLayout.Parent = ScrollingFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 3)

UIPadding.Parent = ScrollingFrame
UIPadding.PaddingLeft = UDim.new(0, 3)
UIPadding.PaddingRight = UDim.new(0, 3)
UIPadding.PaddingTop = UDim.new(0, 3)

UIPadding_2.Parent = MainMenuFrame
UIPadding_2.PaddingBottom = UDim.new(0, 5)
UIPadding_2.PaddingLeft = UDim.new(0, 5)
UIPadding_2.PaddingRight = UDim.new(0, 5)
UIPadding_2.PaddingTop = UDim.new(0, 84)

local ExitBtn = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")

ExitBtn.Name = "ExitBtn"
ExitBtn.Parent = MainMenuFrame
ExitBtn.BackgroundColor3 = Color3.fromRGB(94, 0, 0)
ExitBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExitBtn.BorderSizePixel = 0
ExitBtn.Position = UDim2.new(1, -15, 0, -80)
ExitBtn.Size = UDim2.new(0, 15, 0, 15)
ExitBtn.Font = Enum.Font.Unknown
ExitBtn.Text = "X"
ExitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ExitBtn.TextScaled = true
ExitBtn.TextSize = 40.000
ExitBtn.TextWrapped = true

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = ExitBtn

local DevButton= Instance.new("TextButton")
local DevButtonCorner = Instance.new("UICorner")

DevButton.Name = "DevButton"
DevButton.Parent = MainMenuFrame
local DevButtonOnColor = Color3.fromRGB(50, 0, 53)
local DevButtonOffColor = Color3.fromRGB(85, 0, 78)
local devModeOn = false
DevButton.BackgroundColor3 = DevButtonOffColor
DevButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
DevButton.BorderSizePixel = 0
DevButton.Position = UDim2.new(0, 0, 0, -80)
DevButton.Size = UDim2.new(0, 15, 0, 15)
DevButton.Font = Enum.Font.Unknown
DevButton.Text = "S"
DevButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DevButton.TextScaled = true
DevButton.TextSize = 40.000
DevButton.TextWrapped = true

DevButtonCorner.CornerRadius = UDim.new(0, 4)
DevButtonCorner.Parent = DevButton

TempSlotHolder.Name = "Temp"
Template.Name = "Template"
Template.Parent = TempSlotHolder
Template.BackgroundColor3 = Color3.fromRGB(20, 0, 53)
Template.BorderColor3 = Color3.fromRGB(0, 0, 0)
Template.BorderSizePixel = 0
Template.Size = UDim2.new(1, 0, 0, 26)
Template.Font = Enum.Font.Unknown
Template.Text = "Template"
Template.TextColor3 = Color3.fromRGB(255, 255, 255)
Template.TextScaled = true
Template.TextSize = 29.000
Template.TextWrapped = true

Frame_2.Parent = MainMenuFrame
Frame_2.BackgroundColor3 = Color3.fromRGB(36, 0, 93)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0, 0, 0, -30)
Frame_2.Size = UDim2.new(1, 0, 0, 30)

R6Btn.Name = "R6"
R6Btn.Parent = Frame_2
R6Btn.BackgroundColor3 = Color3.fromRGB(20, 0, 53)
R6Btn.BorderColor3 = Color3.fromRGB(0, 0, 0)
R6Btn.BorderSizePixel = 0
R6Btn.Size = UDim2.new(0.333299994, 0, 1, 0)
R6Btn.Font = Enum.Font.Unknown
R6Btn.Text = "Original"
R6Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
R6Btn.TextScaled = true
R6Btn.TextSize = 29.000
R6Btn.TextWrapped = true

UICorner_2.Parent = R6Btn

UIPadding_3.Parent = Frame_2
UIPadding_3.PaddingLeft = UDim.new(0, 3)
UIPadding_3.PaddingRight = UDim.new(0, 3)
UIPadding_3.PaddingTop = UDim.new(0, 3)

CustomR15Btn.Name = "CustomR15"
CustomR15Btn.Parent = Frame_2
CustomR15Btn.BackgroundColor3 = Color3.fromRGB(20, 0, 53)
CustomR15Btn.BorderColor3 = Color3.fromRGB(0, 0, 0)
CustomR15Btn.BorderSizePixel = 0
CustomR15Btn.Position = UDim2.new(0.333000004, 0, 0, 0)
CustomR15Btn.Size = UDim2.new(0.333000004, 0, 1, 0)
CustomR15Btn.Font = Enum.Font.Unknown
CustomR15Btn.Text = "R15"
CustomR15Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
CustomR15Btn.TextScaled = true
CustomR15Btn.TextSize = 29.000
CustomR15Btn.TextWrapped = true

UICorner_3.Parent = CustomR15Btn

CustomR6Btn.Name = "CustomR6"
CustomR6Btn.Parent = Frame_2
CustomR6Btn.BackgroundColor3 = Color3.fromRGB(20, 0, 53)
CustomR6Btn.BorderColor3 = Color3.fromRGB(0, 0, 0)
CustomR6Btn.BorderSizePixel = 0
CustomR6Btn.Position = UDim2.new(0.666000009, 0, 0, 0)
CustomR6Btn.Size = UDim2.new(0.333000004, 0, 1, 0)
CustomR6Btn.Font = Enum.Font.Unknown
CustomR6Btn.Text = "R6"
CustomR6Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
CustomR6Btn.TextScaled = true
CustomR6Btn.TextSize = 29.000
CustomR6Btn.TextWrapped = true
UICorner_4.Parent = CustomR6Btn

SearchFrame.Parent = MainMenuFrame
SearchFrame.BackgroundColor3 = Color3.fromRGB(36, 0, 93)
SearchFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
SearchFrame.BorderSizePixel = 0
SearchFrame.Position = UDim2.new(0, 0, 0, -60)
SearchFrame.Size = UDim2.new(1, 0, 0, 30)
UIPaddingSearch.Parent = SearchFrame
UIPaddingSearch.PaddingLeft = UDim.new(0, 3)
UIPaddingSearch.PaddingRight = UDim.new(0, 3)
UIPaddingSearch.PaddingTop = UDim.new(0, 3)
TextBoxSearch.Parent = SearchFrame
TextBoxSearch.BackgroundColor3 = Color3.fromRGB(20, 0, 53)
TextBoxSearch.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBoxSearch.BorderSizePixel = 0
TextBoxSearch.Size = UDim2.new(1, 0, 1, 0)
TextBoxSearch.Font = Enum.Font.Nunito
TextBoxSearch.Text = ""
TextBoxSearch.PlaceholderText = "Search"
TextBoxSearch.FontFace.Style = Enum.FontStyle.Italic
TextBoxSearch.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBoxSearch.TextScaled = true
TextBoxSearch.TextSize = 32.000
TextBoxSearch.TextWrapped = true
UICornerSearch.Parent = TextBoxSearch

local function updateCanvas()
    ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y)
end

UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateCanvas)

ExitBtn.MouseButton1Click:Connect(function()
	cleanupEmotes()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)

local function getnext(tbl, number)
	local best = math.huge
	local r
	for t in pairs(tbl) do
		local d = t - number
		if d > 0 and d < best then
			best = d
			r = t
		end
	end
	if not r then
		for t in pairs(tbl) do
			if not r or t < r then
				r = t
			end
		end
	end
	return r
end

local function wait2(tim)
	if tim < 0.1 then
		game:GetService('RunService').Heartbeat:Wait()
	else
		for i = 1, tim * 40 do
			game:GetService('RunService').Heartbeat:Wait()
		end
	end
end
local function kftotbl(kf) -- Below this is literal pain..
	tbl3 = {}
	for i, v in pairs(kf:GetDescendants()) do
		if v:IsA('Pose') then
			tbl3[string.sub(v.Name, 1, 1) .. string.sub(
				v.Name,
				#v.Name,
				#v.Name
			)] =
				v.CFrame
		end
	end
	return tbl3
end

local getnamecallmethod = getnamecallmethod
if not getnamecallmethod then
	--[====[

getnamecallmethod.lua
-- Originally © 2024 strawberrys (MIT License)
-- Modified by MrY7zz, 2025 (MIT License)

-- The script creates a function to extract the __namecall method name in Luau

]====]

	local OverlapParams_new, debug_info, _pcall, _xpcall, string_find, string_sub =
		OverlapParams.new, debug.info, pcall, xpcall, string.find, string.sub

	local _, handler = _xpcall(function()
		OverlapParams_new():__namecall()
	end, function()
		return debug_info(2, 'f')
	end)

	function getnamecallmethod()
		local _, r = _pcall(handler)
		local s = string_find(r, ' is not a valid', 1, true)
		return s and string_sub(r, 1, s - 1) or 'AddToFilter'
	end
end
local realsound = Instance.new('Sound', game:GetService('RunService'))
local sound69 = newproxy(true)
getmetatable(sound69).__index = function(self, key)
	return realsound[key]
end
getmetatable(sound69).__newindex = function(self, key, new)
	if new == 'SoundId' then
		realsound:Stop()
		realsound.TimePosition = 0
		realsound[key] = new
		realsound.TimePosition = 0
		return
	end
	realsound[key] = new
	return
end
local namecall = getrawmetatable(realsound).__namecall
getmetatable(sound69).__namecall = function(a, ...)
	if getnamecallmethod() == 'Play' then
		realsound.TimePosition = 0
		realsound:Play()
		realsound.TimePosition = 0
	end
	return namecall(realsound, ...)
end

sound69.Looped = true
sound69.Name = 'danc'
sound69.Playing = true
sound69.Volume = 0.75
local plr = game.Players.LocalPlayer
local RunService = game:GetService('RunService')

local function functionToBind()
	char.Humanoid:Move(Vector3.new(0, 0, -1), false)
end
function fwait(seconds)
	seconds = (seconds < 0.000001) and 0.000001 or seconds -- absolute limit of roblox, anything below just crashes lol so this limits it so it doesnt crash

	local event = game:GetService('RunService').PreRender
		or game:GetService('RunService').Heartbeat

	local startTime = tick()
	while tick() - startTime < seconds do
		event:Wait()
	end
end
local legitjustran = false
local loopsplaying = 0
local rst
local lst
local rht
local lht
local nt
local rjt
local ReplicatedStorage = game:GetService('ReplicatedStorage')

local ghostRig = game:GetObjects('rbxassetid://1664543044')[1]
ghostRig.Parent = game.Workspace
ghostRig.Name = char.Name .. "_R15Ghost"
ghostRig:ScaleTo(char:GetScale())

for _, part in pairs(ghostRig:GetDescendants()) do
    if part:IsA('BasePart') or part:IsA('MeshPart') then
        part.Transparency = 1
		--if part.Name == "HumanoidRootPart" then part.Transparency = 1 end
        part.CanCollide = false
		if part.Name ~= "HumanoidRootPart" then
        	part.Anchored = false
		end
    end
end

DevButton.MouseButton1Click:Connect(function()
	devModeOn = not devModeOn
	local transperency = 1
	if devModeOn then 
		transperency = 0.7 
		DevButton.Text = "H"
		DevButton.BackgroundColor3 = DevButtonOnColor
	else
		DevButton.Text = "S"
		DevButton.BackgroundColor3 = DevButtonOffColor
	end
	for _, part in pairs(ghostRig:GetDescendants()) do
		if part:IsA('BasePart') or part:IsA('MeshPart') then
			part.Transparency = transperency
		end
	end
end)

local ghostHum = ghostRig:FindFirstChildOfClass('Humanoid')
local ghostAnimator = ghostHum:FindFirstChildOfClass('Animator') or Instance.new('Animator', ghostHum)

ghostHum.PlatformStand = true  -- disable ghost humanoid so it doesn't walk around
ghostRig.PrimaryPart.Anchored = true  -- anchor ghost so it doesn't fall/fight
ghostRig.Head:WaitForChild('face'):Destroy()

local ghostUpdateConn
ghostUpdateConn = RunService.RenderStepped:Connect(function()
    if char and char.PrimaryPart and ghostRig then
        ghostRig:SetPrimaryPartCFrame(char.HumanoidRootPart.CFrame * CFrame.new(0,-0.7,0))
        ghostRig.UpperTorso.CanCollide = false
        ghostRig.LowerTorso.CanCollide = false
    end
end)

local retargetMap = {
    LeftLowerArm  = "Left Arm",
    RightLowerArm = "Right Arm",
    LeftLowerLeg  = "Left Leg",
    RightLowerLeg = "Right Leg",
    UpperTorso    = "Torso",
    Head          = "Head",
}

local r15UGC = {
    {name = "spin", Id = 87093097413514},
    {name = "johncena", Id = 132069223994128},
    {name = "hide", Id = 126193377347657},
    {name = "Danganronpa Monokuma Dance", Id = 136288334711651},
    {name = "Flying Bird", Id = 126285359578816},
    {name = "Golden Freddy Pose", Id = 138402679058341},
    {name = "Charleston", Id = 72556581432614},
    {name = "Obby", Id = 71337558824888},
    {name = "Wiggly Worm", Id = 83400387781374},
    {name = "Tank Transformation", Id = 94915612757079},
    {name = "Swing & Sit", Id = 113729630216220},
    {name = "Zero Two Dance", Id = 133729878579101},
    {name = "Chinese Cat Dance Animation", Id = 117009465956163},
    {name = "Islamic Prayer", Id = 127829093804907},
    {name = "Soccer Head Kick / Football", Id = 138223657785025},
    {name = "Soccer Head / Football Head", Id = 133211570660993},
    {name = "Onion", Id = 134735047372485},
    {name = "Onion", Id = 78316090743742},
    {name = "Biblically Accurate Emote", Id = 109873544976020},
    {name = "Fake Death (BEST)", Id = 131921180248141},
    {name = "Speed Glitch", Id = 93872845447733},
    {name = "Speed Glitch+", Id = 80120791952773},
    {name = "Cat girl cleaning car", Id = 138406489301475},
    {name = "VTuber Concert", Id = 72127611642176},
    {name = "Head 180 Jumpscare", Id = 78085469922687},
    {name = "💀 MM2 Fake Death (Realistic)", Id = 139503369384883},
    {name = "Thumbs Down", Id = 137390715994712},
    {name = "Invisible Glitch Emote", Id = 108469393428138},
    {name = "Take My Head!", Id = 80933525424006},
    {name = "i gently open the catalog", Id = 112647495998630},
    {name = "Flying Admin Troll", Id = 74554636301949},
    {name = "♡ kawaii doll sitting pose", Id = 139510904359228},
    {name = "sleeping levitation", Id = 131491925495256},
    {name = "Headlock", Id = 80763849288559},
    {name = "Lord X - I Miss The Quiet", Id = 125559741616034},
    {name = "Miss The Quiet [BEST]", Id = 7644490540560},
    {name = "Jujutsu Dance", Id = 86052851487687},
    {name = "Wally West [R6]", Id = 109447419896836},
    {name = "Heart Hands Pose 3.0", Id = 133301852311284},
    {name = "Skibidi", Id = 127154705636043},
    {name = "Cute Silly kawai sit", Id = 131532348578183},
    {name = "Spiderman Idle", Id = 82021709878654},
    {name = "weird fly", Id = 124969505392283},
    {name = "Circle", Id = 107862849749608},
    {name = "My Head and Leg are gone! [HEADLESS + LEGLESS]", Id = 118995887280296},
    {name = "🎃 Headless 🎃", Id = 88577457423712},
    {name = "I  WANNA RUN AWAY", Id = 104428851742579},
    {name = "Animatronic Jumpscare 🐻🐰🐔🦊", Id = 73867501246797},
    {name = "Gangnam Style", Id = 101944868952743},
    {name = "Get Griddy", Id = 117535973356048},
    {name = "Jinu Pose - Saja Boys", Id = 129935556822359},
    {name = "Meditate", Id = 78711609487261},
    {name = "Ballroom Dance", Id = 117124502867791},
    {name = "Exotic : APEX Emote [Sol's RNG]", Id = 125722696765151},
    {name = "CHROMATIC Emote [Sol's RNG]", Id = 87449122230956},
    {name = "[K-POP] i-dle - Good Thing (MIYEON DANCE)", Id = 114546275175330},
    {name = "Aura Farming", Id = 80310147207105},
    {name = "head walks away", Id = 83715869445749},
    {name = "♡ discombobulate into a heart..", Id = 77099157224384},
    {name = "Tiny Obby", Id = 115271469979987},
    {name = "Moon Walk", Id = 87058607990254},
    {name = "Doggy Things", Id = 130059214239749},
    {name = "Blob Victory Dance", Id = 104567071299593},
    {name = "Conquest", Id = 79363126356151},
    {name = "♡ boo im a ghost (cute halloween idle)", Id = 120171309934090},
    {name = "KATSEYE - Gnarly", Id = 118837515562476},
    {name = "Dia Delicia Dance", Id = 137289759833149},
    {name = "Pump It Up! (RIZZ) 😩💦", Id = 117931208003529},
    {name = "Hug", Id = 100841599606623},
    {name = "2 Phut Hon Dance", Id = 114774556469581},
    {name = "Die Lit", Id = 100114227897992},
    {name = "Philly Tanging", Id = 92555628856417},
    {name = "Philly Top Rock", Id = 114918697694748},
    {name = "leembucks tanging", Id = 126685578271542},
    {name = "Philly Tanging V1", Id = 86598160773809},
    {name = "Orange Justice", Id = 95127716920692},
    {name = "Billy Bounce", Id = 119280135350752},
    {name = "Rambunctious", Id = 98593519635326},
    {name = "Breakdown", Id = 96622928642956},
    {name = "[ORIGINAL] Scenario - Roblox", Id = 81747251604858},
    {name = "Dog Head Scratch", Id = 135741057459893},
    {name = "Rat Dance", Id = 113375965758912},
    {name = "Electro Swing", Id = 138785676658772},
    {name = "Friday Funk", Id = 100360981689145},
    {name = "Casual Sit", Id = 90840348750437},
    {name = "Freestyle", Id = 90323184721931},
    {name = "Fresh", Id = 137039451581216},
    {name = "🧟REANIMATED🧟", Id = 88428537602842},
    {name = "California Girls", Id = 108871901565194},
    {name = "Astro Dance", Id = 109701716804385},
    {name = "Confess Dance", Id = 85716925694838},
    {name = "Hula Hooping", Id = 136513150384112},
    {name = "Pure Cinema", Id = 79082342647677},
    {name = "Doodle Dance Meme", Id = 98684790214641},
    {name = "Taekwondo Combo", Id = 107497599176078},
    {name = "Bubbly Sit", Id = 93120341268524},
    {name = "Cute Nezuko Kicks in Air", Id = 94993347432825},
    {name = "♡ cute kawaii crawling kitty idle pose", Id = 133204315799701},
    {name = "Omni Man Pose", Id = 81636895937131},
    {name = "Kitty laying pose", Id = 132176452615941},
    {name = "Yoruichi Cat Pose", Id = 128878234519023},
    {name = "Classic /e dance", Id = 139463668048138},
    {name = "Baki Pose", Id = 137039302506432},
    {name = "Blocky Pose", Id = 78989723273859},
    {name = "SPLIT on them opps emote pose", Id = 102840777887514},
    {name = "Shattered", Id = 79757971761739},
    {name = "Helicopter Spin", Id = 122951149300674},
    {name = "Floating Adonis (Matching Floating Goddess)", Id = 112531228799916},
    {name = "Beat Da Koto Nai", Id = 122639636262924},
    {name = "Cute Sit Pose", Id = 114858110513023},
    {name = "Cute Sit Pose", Id = 114508990242643},
    {name = "Confession Groove", Id = 106076860866382},
    {name = "China dance emote", Id = 119391790283731},
    {name = "Crying Baby - Animation", Id = 81606207721898},
    {name = "Kawaii Cute Kita Doodle Dance | 喜多郁代で推", Id = 126997868835240},
    {name = "Philly Tanging V2", Id = 110803336005483},
    {name = "⚙ Transformer ⚙", Id = 100249216216361},
    {name = "Seesaw", Id = 118060770955611},
    {name = "Glitch Animation", Id = 73614993133405},
    {name = "Jubi Slide", Id = 85247727536511},
    {name = "Interdimensional Breakdancing", Id = 102488507813982},
    {name = "Signature Shuffle", Id = 112931882473990},
    {name = "Locked In", Id = 139119221876136},
    {name = "Be Not Afraid", Id = 115474307862803},
    {name = "Become A Car!", Id = 124756446017361},
    {name = "Zen", Id = 81443378895151},
    {name = "The Honoured One (Gojo Float)", Id = 98604242520342},
    {name = "Headlock", Id = 75543443460768},
    {name = "TV Time Dance", Id = 104748118296461},
    {name = "[HOT] Soda Pop - Demon Hunters", Id = 97020817673595},
    {name = "KATSEYE (PART 2) - Gabriela", Id = 92528323199312},
    {name = "KATSEYE - Gabriela", Id = 110015296997192},
    {name = "Prince Of Egypt Dance / What You Want", Id = 139658061151500},
    {name = "Big Hand Wave", Id = 77304386644418},
    {name = "[ORIGINAL] California Girl Dance", Id = 124982597491660},
    {name = "6-7", Id = 72823814954687},
    {name = "I should have quit while I was a head (body gone)", Id = 96696645846601},
    {name = "A Cube.", Id = 117954506558431},
    {name = "Skinwalker [ANIMATED]", Id = 114817184246236},
    {name = "Cat Girl", Id = 124873747842579},
    {name = "Cat Girl Cute Sit Pose 🐾", Id = 134503647657828},
    {name = "cat", Id = 70734144133718},
    {name = "Arona Dance Meme", Id = 112176404394603},
    {name = "Party Party [ Goku Meme ]", Id = 80443100846814},
    {name = "Crying Spider Noob Meme", Id = 94624372344303},
    {name = "[R6] Nyan Cat Meme", Id = 102583205412686},
    {name = "Yoga Pose (RDJ holding legs meme)", Id = 100974147245056},
    {name = "Helicopter Meme", Id = 91820059447217},
    {name = "Headlock", Id = 116729450403482},
    {name = "The Run Around", Id = 138476169783496},
    {name = "Relaxing in the Air", Id = 140266422884303},
    {name = "Aura RNG Fly Idle ✨", Id = 89523370947906},
    {name = "Human Gun", Id = 93183371675890},
    {name = "Possessed", Id = 90708290447388},
    {name = "Electric Shuffle", Id = 129575330803003},
    {name = "🚀Breakdown Fortnite Dance", Id = 89071805405399},
    {name = "Drill", Id = 131753285765317},
    {name = "UFO", Id = 125479521553423},
    {name = "Nuh Uh! (Finger Wiggle)", Id = 85811771512356},
    {name = "Sledge Hammer", Id = 71427407550005},
    {name = "Divine", Id = 112240881944654},
    {name = "Ride The Pony", Id = 86264870013135},
    {name = "Ride The Pony", Id = 98423330975657},
    {name = "Worm", Id = 112024753958948},
    {name = "Take The L", Id = 125578981255289},
    {name = "Asgore Driving / Truck Car Driving - DELTARUNE", Id = 80044874246380},
    {name = "Invisible", Id = 112119483472206},
    {name = "Catwalk Walk", Id = 97847888500780},
    {name = "Angry Stomp", Id = 115048845533448},
    {name = "MONSTER MASH", Id = 107294735596115},
    {name = "Classic R6 Sit", Id = 76939255365514},
    {name = "2010 Classic Dance", Id = 95777048293636},
    {name = "Race Car", Id = 72382226286301},
    {name = "wobbily wiggly", Id = 126534971736559},
    {name = "Confess to Me", Id = 108873777157620},
    {name = "Waaait Dance", Id = 124652239799684},
    {name = "7 Rings Dance", Id = 116835198609765},
    {name = "/e invisible (works)", Id = 108210268078796},
    {name = "floor", Id = 89695507588530},
    {name = "/e float", Id = 73264933957647},
    {name = "Hide Away [SMALLEST] MM2", Id = 115606728710702},
    {name = "Hide (Stay below the ground)", Id = 90878454666108},
    {name = "Leg Farts", Id = 81187246879732},
    {name = "Cute Legs-Up Pose", Id = 128197972195350},
    {name = "💪 Leg Bar Pull-Up", Id = 90185939246160},
    {name = "Slam Dunk", Id = 99534800014128},
    {name = "Bully Maguire (Spiderman)", Id = 113814533436918},
    {name = "Boxe [Emote]", Id = 71378959481909},
    {name = "Boxing", Id = 87683757107994},
    {name = "Boxing Combo", Id = 104962316700738},
    {name = "KAPOW!! (boxing, fighting, punching)", Id = 71483195998835},
    {name = "Boxing", Id = 80933111363555},
    {name = "Boxing Stance", Id = 96035825297909},
    {name = "Shadow Box", Id = 131281898392347},
    {name = "Boxing Stance", Id = 127836049557571},
    {name = "shadow boxing", Id = 91253649842307},
    {name = "KSI Boxing Starjumps", Id = 110042386415529},
    {name = "Shadow Boxing", Id = 70735660905476},
    {name = "Shadow Boxing", Id = 75014181054740},
    {name = "Boxing (Creed Edit)", Id = 120462427970991},
    {name = "Boxing Jab", Id = 96425715499926},
    {name = "Boxing Punch - KSI", Id = 10717116749},
    {name = "leaning back against wall hands in pocket", Id = 137684883186461},
    {name = "Sturdy Dance", Id = 132967433846099},
    {name = "Gojo Floating / The Honored One", Id = 109030594660124},
    {name = "Sit", Id = 87148945377075},
    {name = "/e fly", Id = 91133306449431},
    {name = "Relaxed Sit", Id = 97185364700038},
    {name = "MM2 Dead", Id = 102255430997582},
    {name = "Slow-Mo Run", Id = 89490336154435},
    {name = "Diva Catwalk", Id = 110271693046662},
    {name = "Catwalk", Id = 70637851209232},
    {name = "Become a Plane", Id = 119440277215867},
    {name = "Hakari Dance", Id = 118465124106910},
    {name = "The Plane", Id = 126260434999355},
    {name = "Runway Model Catwalk", Id = 112405511280072},
    {name = "Cute Model Catwalk", Id = 70418480730096},
    {name = "Runway Catwalk", Id = 98407507375449},
    {name = "Kazotsky Kick", Id = 119264600441310},
    {name = "[BEST] Katseye Gnarly Obvi Obvi Dance", Id = 118396501338560},
    {name = "KATSEYE - I'M LEGIT GNARLY", Id = 107801710435479},
    {name = "Yes (Finger Emote) 👍", Id = 113970732294166},
    {name = "Horse-walk (Model Strut)", Id = 126487155420219},
    {name = "Gmod - Crowbar Looking Around", Id = 101197238583271},
    {name = "JoJos | Jonathan's Pose", Id = 120629563851640},
    {name = "Become A Bike", Id = 96207427647725},
    {name = "[🔴Working🔵] Hollow Purple GOJO", Id = 93612961664824},
    {name = "Gojo Hops with Flowerside", Id = 82064137949653},
    {name = "Gojo The Strongest Of Today Pose", Id = 131404681619254},
    {name = "Conga", Id = 86767876779723},
    {name = "Mannrobics (TF2)", Id = 73932117454031},
    {name = "TF2 Laughing (Demoman)", Id = 82965632072615},
    {name = "Finger Pistol: Bang!", Id = 122680007581387},
    {name = "Mewing Finger", Id = 100670263895066},
    {name = "Nope Finger (emote)", Id = 124371366634097},
    {name = "Gojo", Id = 104005971401220},
    {name = "taboo", Id = 133639309098613},
    {name = "Gojo Honored One", Id = 139000839803032},
    {name = "Come here! (Finger Wiggle)", Id = 135564504604543},
    {name = "Peace Out! (Finger Emote)", Id = 75045269777631},
    {name = "Floating on clouds", Id = 77840765435893},
    {name = "Louisiana jig", Id = 115142724557793},
    {name = "Ksuuvi Stomp", Id = 108429442201368},
    {name = "/e fly", Id = 127193965947477},
    {name = "Abracadabra", Id = 115500534764384},
    {name = "Become a car: F1 Race Car", Id = 116625361313832},
    {name = "Da Hood Stomp", Id = 92249489340640},
    {name = "Da Hood Macro", Id = 82995985799889},
    {name = "cute black & white ruffle top", Id = 110600900006737},
    {name = "player 222 baby squid game 1.0", Id = 90450794688572},
    {name = "Speedy Pushups", Id = 134918034680794},
    {name = "Jay Guapo Cardigan dance", Id = 115183941223349},
    {name = "Juice WRLD - Lucid Dreams", Id = 123356620918902},
    {name = "Angel Flying (float)", Id = 77529400769588},
    {name = "PB & J", Id = 128160283445749},
    {name = "Teto Territory", Id = 120983791067599},
    {name = "LAST BREATH SANS PHASE 3", Id = 77136815653085},
    {name = "Mesmerizer", Id = 124532423933420},
    {name = "Aura Fly Sitting", Id = 130198479813020},
    {name = "♡ Cutesy Carried Over Shoulder Kawaii Pose", Id = 137661420461590},
    {name = "(Matching) Piggyback Ride", Id = 120027485463142},
    {name = "Cute Sit On Shoulder Idle", Id = 139917499423552},
    {name = "watching tv", Id = 95705428377990},
    {name = "IShowSpeed Dance", Id = 96951376912636},
    {name = "Rizz Emote 😝", Id = 129361422431665},
    {name = "Helldiver Salute", Id = 127921352521984},
    {name = "Attack on Titan Salute", Id = 81470545805918},
    {name = "kawaii chibi pose", Id = 109625571708575},
    {name = "Michael Myers Dance", Id = 121436340868609},
    {name = "Side Hug!", Id = 137920131311393},
    {name = "Lady Floating", Id = 131785405505186},
    {name = "Eva Lonely Lonely + Rampage", Id = 98000940994930},
    {name = "Rampage 2.0", Id = 119710039061283},
    {name = "Fashion Model Pose Spin", Id = 118583126400466},
    {name = "Strutting fashion catwalk", Id = 105965993719110},
    {name = "Diva Runway Catwalk", Id = 126716042378279},
    {name = "Female Runway Walk", Id = 126640550232183},
    {name = "JUMP K-POP Dance Choreo", Id = 84797661217427},
    {name = "Big Papa Squat", Id = 104151027065011},
    {name = "Candy Emote", Id = 136073073685621},
    {name = "Make You Mine", Id = 87686948832992},
    {name = "Floating Goddess (Matching Floating Adonis)", Id = 100681208320300},
    {name = "Maraschino Step", Id = 115666021063476},
    {name = "ACELERADA", Id = 103360497719320},
    {name = "Effortless Aura Idle", Id = 95535410227939},
    {name = "Dancing", Id = 73290147964741},
    {name = "Ian xxl Freestyle Dance", Id = 121251518232365},
    {name = "♡ be held - matching emote [1/2]", Id = 104616332143360},
    {name = "Tyla dance", Id = 130001899505580},
    {name = "Dani's On The Floor!", Id = 105166736383148},
    {name = "yn dwerk", Id = 79856418289171},
    {name = "Popular", Id = 140129552540035},
    {name = "how did he hit every beat", Id = 136095999219650},
    {name = "Pushup", Id = 113889893443813},
    {name = "Aura Farm", Id = 109429734463303},
    {name = "Weird Tower", Id = 116732690818367},
    {name = "rollie", Id = 74639807214228},
    {name = "Emote Bent Back", Id = 95845330272367},
    {name = "Cute Knee Sit", Id = 132748871980206},
    {name = "Highest Floating Gojo (The Honored One)", Id = 73211757884080},
    {name = "Gojo - The Honored One (Floating)", Id = 140669267691808},
    {name = "Roblox Egor Run Animation", Id = 110895566503220},
    {name = "Sleepy Fold", Id = 99884600777781},
    {name = "Supermodel Fantasy (LOOP)", Id = 85622303949996},
    {name = "Baddie Shake", Id = 82290588229832},
    {name = "Magic Manipulation", Id = 94957340186015},
    {name = "Gojo Death Pose", Id = 109525701989889},
    {name = "[MATCHING] Gojo Walk", Id = 72284053953674},
    {name = "Emperor Aura Pose", Id = 83177043847912},
    {name = "FORSAKEN John Doe Pose", Id = 72526127498800},
    {name = "Flag", Id = 88997563858218},
    {name = "Hide ( Stay below the ground )", Id = 117235285849847},
    {name = "Parking Lot Dance", Id = 101841781757637},
    {name = "Hood Dance 2", Id = 131830662237755},
    {name = "Hood Dance", Id = 108171959207138},
    {name = "Hood Dance 2", Id = 111534221408404},
    {name = "Truck Driving Looped", Id = 138861918679066},
    {name = "rolling crybaby", Id = 129699431093711},
    {name = "Your Idol", Id = 112354084479644},
    {name = "Rin Itoshi", Id = 122306366995847},
    {name = "Retro Dance", Id = 89373379864690},
    {name = "MM2 Fake Death 💀", Id = 102864893189040},
    {name = "/e fling", Id = 122963771713861},
    {name = "Fashion Model Catwalk", Id = 127834645809981},
    {name = "♡ (BEST) sassy model catwalk diva", Id = 80313618518510},
    {name = "Sassy Diva Model Catwalk", Id = 76677916613028},
    {name = "Head Car Obby", Id = 114659902242081},
    {name = "Nicki Minaj High School Pose", Id = 124452903969816},
    {name = "half of a heart pair pose", Id = 101317872828570},
    {name = "Solo Leveling – Sung Jin Woo Goku Warmup", Id = 98936612652622},
    {name = "Infinite R6 Backflips", Id = 112134081988873},
    {name = "KJ", Id = 139302979952874},
    {name = "Drone", Id = 121049172692579},
    {name = "[Glitched] Big L", Id = 106043806421765},
    {name = "Hamster Wheel", Id = 122395450603288},
    {name = "Power Blast", Id = 10714389396},
    {name = "Diva Spotlight", Id = 125242128671008},
    {name = "I AM POWER", Id = 73605993579698},
    {name = "Sassy Diva Idle", Id = 90951476023165},
    {name = "Diva Laying Down - Model Pose", Id = 75566100254160},
    {name = "Fierce Sassy Diva Catwalk", Id = 93144545501660},
    {name = "Fashion Model Catwalk", Id = 116671212353395},
    {name = "daddy fing Dance", Id = 115755052140627},
    {name = "Model backstage Emote", Id = 97255747167046},
    {name = "Animation", Id = 81521372155417},
    {name = "Cat Licking Its leg", Id = 86853627824669},
    {name = "♡ Sat down on knees v1", Id = 90772982440422},
    {name = "Sit - Knee Sit", Id = 86335124950678},
    {name = "Die Lit", Id = 130445733737505},
    {name = "Rose Kneel V2", Id = 88821774101564},
    {name = "Xaviersobased Emote [ORIGINAL]", Id = 126267736796071},
    {name = "Druski Dance", Id = 100720024673692},
    {name = "Philly Tang (Split Mid Tang)", Id = 94609859253649},
    {name = "Get Sturdy", Id = 133050549047747},
    {name = "Hit Dem Folks", Id = 134499922212008},
    {name = "WAVE", Id = 137648658870915},
    {name = "Relax Twin", Id = 76674304652918},
    {name = "Monster", Id = 115925857222691},
    {name = "Box up", Id = 92210214911000},
    {name = "Dark Fountain - Deltarune", Id = 108582534585198},
    {name = "One Arm Pushup (perfect loop)", Id = 117251272422646},
    {name = "V4 Human Pose", Id = 70707650375351},
    {name = "Dwerk", Id = 82555245171693},
    {name = "Sonic the Hedgehog Run", Id = 85752365414182},
    {name = "Sonic Idle Wait Animation", Id = 75752382380063},
    {name = "Sonic's Spindash", Id = 119889021060156},
    {name = "llorar", Id = 91741146586434},
    {name = "pose 28", Id = 100506368182961},
    {name = "Idol - Saja Boys", Id = 74062879356538},
    {name = "Your Idol", Id = 127121740972134},
    {name = "Rest", Id = 89854747707257},
    {name = "Sturdy", Id = 121397018477703},
    {name = "Big Hand Point", Id = 71439424797320},
    {name = "OK Hand👌", Id = 100188963456227},
    {name = "Big Hand Come Here", Id = 70624447898635},
    {name = "Classic Sonic Run", Id = 137135247245806},
    {name = "Sonic Finger Wag Pose", Id = 72318173920433},
    {name = "Freaky Sonic 🦔", Id = 74846170435450},
    {name = "Giant Hand Grab", Id = 97394961469038},
    {name = "Giant hand grab (picks your head up)", Id = 85274143755887},
    {name = "Rabbit other people (hand)", Id = 78472740524365},
    {name = "Big Hand L", Id = 125498769043945},
    {name = "Giant Hand Smack", Id = 109018877712796},
    {name = "Sonic Adventure Profile Pose", Id = 127286984691941},
    {name = "Sonic's Idle", Id = 104340881915453},
    {name = "Sonic The Hedgehog Breakdance", Id = 103921013750164},
    {name = "[FUN] Be a Sign", Id = 135356106693857},
    {name = "good boy dog sit", Id = 121231009240838},
    {name = "Huda's Signature Move", Id = 102969907406039},
    {name = "Side To Side - Ariana Grande", Id = 98741601232127},
    {name = "Belly Dance", Id = 96100759913198},
    {name = "test", Id = 134471730580351},
    {name = "boyhug1", Id = 135765268206564},
    {name = "One Handed Push Up", Id = 140409138293585},
    {name = "Animation", Id = 120042759066139},
    {name = "CPR", Id = 80712297212927},
    {name = "The Receive You Pose", Id = 80172557434326},
    {name = "Light Post", Id = 136418721245851},
    {name = "Casual Lay", Id = 127189257392992},
    {name = "Low Crawl", Id = 132646845827726},
    {name = "~ Idle sit ~", Id = 123179252403955},
    {name = "Look Up", Id = 82471397502609},
    {name = "Spread", Id = 98379434657133},
    {name = "Invisible Car", Id = 140215712191311},
    {name = "puppy begging", Id = 93675483172728},
    {name = "Begging", Id = 116519048471565},
    {name = "Big Hand Stop", Id = 106930634237455},
    {name = "˚ ๑ Cutesy tired leg kick", Id = 139267081685489},
    {name = "Hand Gun", Id = 113512371801561},
    {name = "Chill Aura Farming 🔥", Id = 92234677136253},
    {name = "Iconic It-Girl sit pose", Id = 107157439301353},
    {name = "FLYING BUG", Id = 71836981213967},
    {name = "Flying Phonk Edit", Id = 129533830788044},
    {name = "Flying Superhero", Id = 122698959016442},
    {name = "Dante Hakari Lonely Lonely Dance", Id = 72074113792421},
    {name = "Fling Emote (WORKS 2025)", Id = 119089986129204},
    {name = "Sonic and Tails Dance Meme", Id = 81767423993408},
    {name = "Spamton's Laugh (DELTARUNE)", Id = 138985974444821},
    {name = "Spamton NEO - DELTARUNE 💛🩷", Id = 123691096574324},
    {name = "Mr \"ant\" Tenna's Kick - Deltarune", Id = 138408477594658},
    {name = "Jevil Dance - DELTARUNE", Id = 115235486965985},
    {name = "Cloning Yourself", Id = 93009687042296},
    {name = "Pill Baby", Id = 114453371616620},
    {name = "Rose Gift    ( not only rose )", Id = 107990372400562},
    {name = "Good Boy", Id = 96672468030543},
    {name = "Michael Myers bounce", Id = 129357062468183},
    {name = "Dies and Fall", Id = 136565014109768},
    {name = "Dougie Meme Dance", Id = 87574738912971},
    {name = "Nyan Nyan!", Id = 77334407845616},
    {name = "Tyla Dance", Id = 111754856931573},
    {name = "Building Back Up", Id = 95235457468275},
    {name = "Worm", Id = 139405123211195},
    {name = "Did That Just Happen?", Id = 78228273630552},
    {name = "Ian Freestyle Dance", Id = 97673039193829},
    {name = "♡ cute kawaii scratching arms emote", Id = 78753379510352},
    {name = "Koto Nai Meme Dance", Id = 96355916263786},
    {name = "Happy Sit", Id = 133597663639529},
    {name = "Crucified Cross", Id = 82158457562073},
    {name = "Invincible Dance (Lonely) 💃", Id = 82859575920829},
    {name = "Invincible Dance (Lonely)", Id = 78992998701942},
    {name = "Baddie Iconic Dance", Id = 131295510841442},
    {name = "Shake That", Id = 138296642082362},
    {name = "Vogue slay dance", Id = 130545124957010},
    {name = "California Girls", Id = 111281033685433},
    {name = "Rambunctious", Id = 73076792562374},
    {name = "Louisiana Jiggin", Id = 121856481052373},
    {name = "Sit ups", Id = 80091554871875},
    {name = "Angry Bot Transformation", Id = 107822345289154},
    {name = "Fierce Model Pose", Id = 127141077930802},
    {name = "it-girl model idle - my legs were too long", Id = 79619349881095},
    {name = "Cute standing model roblox profil pose", Id = 115655045433093},
    {name = "model pose", Id = 118789900467595},
    {name = "Hand on Hip Model Pose", Id = 95223145607985},
    {name = "Boogie Down", Id = 99662142344622},
    {name = "Bhangra Dance", Id = 78416657618448},
    {name = "Bhangra Boogie", Id = 71219671516096},
    {name = "Fantasy Feet", Id = 82595025931541},
    {name = "Shimmer Dance", Id = 114368887387926},
    {name = "GRIMES - Oblivion", Id = 117081427175655},
    {name = "Horror Animatronic (🤖)", Id = 87182616587543},
    {name = "Horror Slow Turn", Id = 138302459593965},
    {name = "Did you see that? [HORROR EMOTE]", Id = 112598544838590},
    {name = "Among Us Impostor", Id = 74927572934777},
    {name = "Among Us Transformation", Id = 131612129541666},
    {name = "Among us", Id = 128608780788731},
    {name = "Shucks Cutscene - Jeffy's Infinite Irida", Id = 117049210758411},
    {name = "Supermodel Fashion Pose [POSE ONLY]", Id = 114997417093861},
    {name = "Fashion Catwalk [BEST]", Id = 124804250276495},
    {name = "Chic Main Character Pose", Id = 106246327798265},
    {name = "Wall Lean Pose", Id = 113694692828125},
    {name = "Cute Fashionable Socialite Model Pose", Id = 110439900388239},
    {name = "Fashion Model Strut", Id = 126820186215782},
    {name = "Cute Hips Profile Pose", Id = 117181705578424},
    {name = "Serving!", Id = 124560832880143},
    {name = "Draw me pose", Id = 130317846682410},
    {name = "8 Legged Spider", Id = 92589779095965},
    {name = "Rewrite Idle", Id = 132262897491916},
    {name = "Become a Sigma Scorpion", Id = 97816659227500},
    {name = "Miss The Quiet (idle)", Id = 83613946513780},
    {name = "Miss The Quiet [BEST]", Id = 76444905405605},
    {name = "Chicken Transformation", Id = 110949952640699},
    {name = "Shedletsky Chicken Dance", Id = 97886579105184},
    {name = "Shark Transform Morph", Id = 100758118369323},
    {name = "Be a Duck! [Duck Transformation]", Id = 116188028995055},
    {name = "Snake", Id = 87173235683810},
    {name = "[RAPID FIRE] 🔫 Gun Morph", Id = 107728954756412},
    {name = "🐈 Maxwell Cat Loaf Dance / Meme Emote", Id = 72355446429894},
    {name = "Dancing Flower", Id = 117305811805946},
    {name = "[BEST] Soda Pop", Id = 139110277540140},
    {name = "Golden Demon Hunters KPOP Dance", Id = 81892183611467},
    {name = "Unspoken rizz 2", Id = 80499191946675},
    {name = "Kicking Feet", Id = 116713094131427},
    {name = "Trip Out", Id = 135562069901689},
    {name = "Eenie Meenie Chicago Dance", Id = 133345675760100},
    {name = "BOW BOW2", Id = 86614271373316},
    {name = "BOW BOW", Id = 120897740631858},
    {name = "TRIPPIN", Id = 92882064867812},
    {name = "The Pogo Stick", Id = 88251474896553},
    {name = "Go Left!", Id = 121770143218588},
    {name = "Wham Dance", Id = 89130432315314},
    {name = "Alibi", Id = 129457968487307},
    {name = "Im Talm Bout Innit", Id = 73034550328053},
    {name = "Nola Bounce", Id = 91615244811441},
    {name = "Unemployment Unemployed Dance [BEST]", Id = 84077545487461},
    {name = "Wally's Pose", Id = 106169111259587},
    {name = "Wally Speedster Run", Id = 121350640829746},
    {name = "Wally West", Id = 88740719567065},
    {name = "Cute Sit", Id = 131836270858895},
    {name = "Cute swaying girly crouch sit", Id = 126025646410749},
    {name = "♡ : trying to balance pose", Id = 108880441370604},
    {name = "Polygonal Balance", Id = 138059065792090},
    {name = "Balance", Id = 138873458140629},
    {name = "Popular - Emote", Id = 86129126182531},
    {name = "/e invisible (works in every game)", Id = 75248601225213},
    {name = "Summon A Friend", Id = 118979452794479},
    {name = "DVD Screensaver", Id = 110256084399011},
    {name = "Scenario - LOVE SCENARIO", Id = 103710256055561},
    {name = "Block Fall", Id = 135641387319794},
    {name = "Love Sign", Id = 134478460891375},
    {name = "Sway Sway", Id = 94487045794016},
    {name = "Undertale Sans idle v2", Id = 123627677663418},
    {name = "Reverse Flash Mirage [Emote]", Id = 128202703545256},
    {name = "Milwaukee Certified Trapper Dance", Id = 139740978365111},
    {name = "Milwaukee Footwork", Id = 116722140985295},
    {name = "90s Supermodel Pose", Id = 116786302817093},
    {name = "Supermodel Catwalk Diva", Id = 100772937047394},
    {name = "Kita's Doodle Dance", Id = 77342250755530},
    {name = "PoPiPo", Id = 92396304780436},
    {name = "Static Hatsune Miku", Id = 95919946072009},
    {name = "[Profile Pose] Pose Model", Id = 108513748907628},
    {name = "pose it!", Id = 72848426598065},
    {name = "Cute sitting model profile pose", Id = 73970675774907},
    {name = "Sitting Profile Pose", Id = 104756984290801},
    {name = "Cute anime girl sitting pose ♡", Id = 74686098026177},
    {name = "Michael Myers", Id = 135678117799650},
    {name = "Speed Mirage", Id = 115334992181298},
    {name = "Effortless Aura Pose", Id = 133418516499878},
    {name = "Gon Rage [Aura Farming] IDLE", Id = 136678571910037},
    {name = "[BEST] It's Gangnam Style!", Id = 129764254213842},
    {name = "See Tình", Id = 110006137392825},
    {name = "Caramelldansen", Id = 113932048991526},
    {name = "Dynamic Shuffle", Id = 108424836734073},
    {name = "Funny Fart", Id = 117660257254699},
    {name = "Philly Top Rock V2", Id = 77726773110669},
    {name = "hip sway", Id = 138316142522795},
    {name = "Singing With Your Imaginary Microphone", Id = 113842081651602},
    {name = "Invincible Mark Flying Animation", Id = 114722309053999},
    {name = "Invincible Variant Edit Flight Idle", Id = 99663556975184},
    {name = "Real Slim Shady", Id = 118364163216787},
    {name = "SEIZURE", Id = 98719422024341},
    {name = "Carson Dance", Id = 77630489756523},
    {name = "Confess Dance", Id = 109585388574936},
    {name = "Pray", Id = 81284540778909},
    {name = "Best Survivor (Forsaken Headlock)", Id = 110524831717206},
    {name = "V1 ultrakill floating", Id = 126089616698248},
    {name = "Sad sit", Id = 135038170733436},
    {name = "Brazil Event Dance [Steal a Brainrot]", Id = 102931042554706},
    {name = "Disco Zombie - Hypnodancer Emote", Id = 90907772359114},
    {name = "🍝 Officer Earl Run", Id = 104646820775114},
    {name = "Fake Run Lag", Id = 92822444871071},
    {name = "Deltarune - Tenna Dance", Id = 115605836623904},
    {name = "Tenna Battle Idle [DELTARUNE]", Id = 95890491454626},
    {name = "Mr. Ant Tennas Battle - DELTARUNE", Id = 117592484737555},
    {name = "Sukuna Domain Expansion", Id = 72933881631978},
    {name = "Sukuna Aura Idle", Id = 98352002677627},
    {name = "Sliced", Id = 101359105365571},
    {name = "Truck Transformation", Id = 83698649510107},
    {name = "Little Obbyist", Id = 115569573258316},
    {name = "CaseOh Cube (1x1 Brick)", Id = 117376406721617},
    {name = "[BEST⏳]  GRIDDY EMOTE - FORTNITE", Id = 139972223573427},
    {name = "Lost in Paradise", Id = 79664884985828},
    {name = "Koto Nai Meme Dance", Id = 83650099589962},
    {name = "Swim", Id = 124886181269001},
    {name = "Swim", Id = 88044201919146},
    {name = "KATSEYE - OMG THAT NEW BEAT GNARLY", Id = 74128627257806},
    {name = "Swaying Levitation", Id = 78118743095463},
    {name = "Levitation Pose", Id = 126635495807442},
    {name = "cute duo hug emote (1) ꒰ᐢ⸝⸝⸝⸝ᐢ꒱ ♡", Id = 135666457483077},
    {name = "Duo Carrying Emote (HELD)", Id = 80708702133579},
    {name = "Griddy Meme Dance", Id = 109877985376733},
    {name = "Cute Kawaii Posing >-<", Id = 129100070542534},
    {name = "Scene Roblox Profile Pose", Id = 85759464214287},
    {name = "BLACKPINK Pink Venom - Get Em [CHEAP]", Id = 104168431700812},
    {name = "♡ Cute n shy Idle Emote Profile Pose", Id = 80222624644964},
    {name = "Chika Anime Dance", Id = 115426977193380},
    {name = "Baddie Hips", Id = 73517007972710},
    {name = "actually crazy hip dance 🥀", Id = 125196131087705},
    {name = "Iconic Chika Anime Dance", Id = 98318173295300},
    {name = "[Aura Farm] Wall Lean Idle", Id = 136687532783709},
    {name = "Garry's Dance", Id = 124896171012585},
    {name = "The Ye Float", Id = 73773115594235},
    {name = "cozy kicking feet", Id = 102152042663794},
    {name = "♡ cute bouncy anime dance", Id = 138118251473453},
    {name = "Nippon Egao Hyakkei Dance", Id = 100203387030078},
    {name = "Nippon Egao Hyakkei Dance", Id = 118421793623800},
    {name = "Chinese Dance", Id = 102506310964383},
    {name = "Confess ur <3 Trend Dance", Id = 79367962248097},
    {name = "Ghetto Party Dance", Id = 140075888323547},
    {name = "Thinker Sit", Id = 135783418851022},
    {name = "Shake it [THE ORIGINAL]", Id = 115318724645140},
    {name = "Otsuka summer dance Trend", Id = 125561237847304},
    {name = "Zahide Won This Trend (phonk)", Id = 132569145798603},
    {name = "Assumptions", Id = 79911455746320},
    {name = "Hip Roll", Id = 88593312682192},
    {name = "Roll N' Rock", Id = 114255948538925},
    {name = "POOP YOUR FEET [TROLL]", Id = 90484325987461},
    {name = "Dancing with your eyes closed", Id = 117991470645633},
    {name = "Vai, Toma (Mente Ma) Dance", Id = 132671797643713},
    {name = "LE SSERAFIM - ANTIFRAGILE (르세라핌)", Id = 84561978111673},
    {name = "Judas", Id = 133396625544176},
    {name = "Lady Gaga - Just Dance Emote", Id = 71863979278556},
    {name = "Acelerada", Id = 83150532955066},
    {name = "Noli Forsaken ( R6 Floating Hand )", Id = 139360856809483},
    {name = "FORSAKEN 1x1x1x1 Pose", Id = 76780522821306},
    {name = "Forsaken Injured Idle Animation Troll", Id = 73905365652295},
    {name = "Hot Backflip", Id = 131205329995035},
    {name = "POOKIE LEAN!", Id = 134064078951403},
    {name = "Swag Dance", Id = 86144524701146},
    {name = "Teach me How to Dougie", Id = 138581940594284},
    {name = "I Love", Id = 109468140205249},
    {name = "Absolute Cinema", Id = 105194798604651},
    {name = "💕Warm Hug Somebody Love Cuddle Emote🤗", Id = 121786151795755},
    {name = "Heart", Id = 85881727141841},
    {name = "Driving", Id = 125126277256547},
    {name = "Rap Monster - Eminem", Id = 83770626685097},
    {name = "[Sad Gojo] sit", Id = 75507230702036},
    {name = "♡ Matching Duo Lay down 1 (matching/solo)", Id = 94171557430567},
    {name = "Extreme Workout!", Id = 76734714744001},
    {name = "[BEST] Boneless Dance", Id = 131016290284405},
    {name = "Metro Man arm swings", Id = 71043409187026},
    {name = "Anime Punches (SUPER FAST)", Id = 103676484213316},
    {name = "Tuff", Id = 99195149999804},
    {name = "Big Baddie Moves (SHAKE)", Id = 129124518153810},
    {name = "Jumpstyle Dance", Id = 138647889956297},
    {name = "Miku Live", Id = 103112800578947},
    {name = "Holding Out A Gun", Id = 85280045192208},
    {name = "Front Walkover", Id = 110033677841515},
    {name = "Cartwheel", Id = 117719341313263},
    {name = "Gymnastics Cartwheel", Id = 74447647133199},
    {name = "[MILITARY] At Ease", Id = 106071428813938},
    {name = "Knife Inspect", Id = 94518042497743},
    {name = "Shuffling", Id = 118468821959324},
    {name = "Speedster Run Mirage", Id = 91648079587853},
    {name = "[FASTEST] The Flash - Speed Mirage", Id = 111521029605365},
    {name = "Charging Race Flash Aura", Id = 89111716130280},
    {name = "/e dance2", Id = 116571017721759},
    {name = "Backing Up [noclip n speedglitch]", Id = 133467820432458},
    {name = "Snoop Dance", Id = 107759404982778},
    {name = "Onion Dance [Best Version]", Id = 110774853399332},
    {name = "Hanging Upside Down", Id = 77421373405892},
    {name = "Hanging Around", Id = 123536798611164},
    {name = "She Was A Fairy Dance", Id = 118976144287372},
    {name = "Bobbin'", Id = 96905206586917},
    {name = "Robotic Head Twitch", Id = 93229572963873},
    {name = "Paranoid / Tweaking", Id = 93973405941572},
    {name = "Kneel Tweaking Crazy", Id = 89015746741361},
    {name = "Zombie Crawl", Id = 109318260839099},
    {name = "Crawling 🐍", Id = 80725842226493},
    {name = "Spiderman Web Swinging", Id = 115615920299613},
    {name = "Fly up emote", Id = 90768527043970},
    {name = "Hero Fly Loop - Superhero Flying", Id = 132105268936736},
    {name = "Fairy Flying Free", Id = 99298021935069},
    {name = "Flying Celestial Dunhuang Feitian Apsara Immortal", Id = 109964124738715},
    {name = "Stylish Floating", Id = 112089880074848},
    {name = "Slow-Mo Backflip | IShowSpeed Flip [NEW]", Id = 83263981931146},
    {name = "Silly Billy", Id = 84952357175685},
    {name = "(Die of Death/Forsaken) Pursuer-Raging Pace-Stalk", Id = 125374341359130},
    {name = "♥ fairy float", Id = 86767222955628},
    {name = "Falling", Id = 137467835190894},
    {name = "kawaii fairy float profile pose", Id = 136280235646918},
    {name = "Skydiving Fall Emote (Fortnite)", Id = 125379786496551},
    {name = "Mafioso emote", Id = 73460255237197},
    {name = "PARROT PARTY DANCE", Id = 101810746304426},
    {name = "Garry's Dance (GMOD)", Id = 84658481455741},
    {name = "Seizure", Id = 133144011580589},
    {name = "Gojo Aura Floating", Id = 120346473061647},
    {name = "Crab Walk", Id = 117103720939003},
    {name = "Crab Rave [Fortnite]", Id = 91585141801807},
    {name = "Crab Rave Dance Admin Abuse Time", Id = 109633451131741},
    {name = "Crab Rave", Id = 77527874177418},
    {name = "🕷 SPIDERMAN POSE", Id = 123888267685221},
    {name = "/e dance1", Id = 89676212115777},
    {name = "/e clone [FASTEST WORKING AURA]", Id = 86697993501772},
    {name = "Clone", Id = 73381973028978},
    {name = "Fast Clapping", Id = 126617073341247},
    {name = "Elliot Pizza throw", Id = 135931094841392},
    {name = "Scared Fetal", Id = 90147182052582},
    {name = "Hiding & Crying", Id = 119601626210532},
    {name = "Scared Sit", Id = 138160053020260},
    {name = "Homeless Man Kung fu", Id = 133864899504878},
    {name = "Revolving Door - Tate Mcrae", Id = 114439649610416},
    {name = "Revolving Door Dance - Tate McRae", Id = 140162821224755},
    {name = "Perfect Standing Split", Id = 127935496272883},
    {name = "Wednesday Emote", Id = 137345799388199},
    {name = "Lady Gaga - THE DEAD DANCE (Wednesday)", Id = 112360935418893},
    {name = "Sword flourish", Id = 70501364701056},
    {name = "Planet", Id = 138359671448049},
    {name = "Spin Around with a Friend Matching", Id = 80879471830819},
    {name = "[CHEAPER] ⭐🥤Soda Pop - Saja boys", Id = 121372022557256},
    {name = "Goku Ultra Instinct", Id = 115224081675227},
    {name = "Flash Flying Mirage [AURA]", Id = 140029540689849},
    {name = "Stylish Model Idle Pose Y2K", Id = 105164096625313},
    {name = "High Kick Model Pose", Id = 130796319552991},
    {name = "Die of Death: Artful Idle [Profile Pose]", Id = 71004565196656},
    {name = "Sitting on clouds", Id = 99512076856112},
    {name = "Cloud Sit", Id = 125039476384532},
    {name = "Thanos Snap", Id = 76762798142019},
    {name = "Girly Run", Id = 128578785610052},
    {name = "Animal Run", Id = 87721497492370},
    {name = "🧹 Floating Witches' Broom / Halloween Idle", Id = 130516334121771},
    {name = "Possessed", Id = 85353889132704},
    {name = "Point Forward", Id = 88764142128140},
    {name = "Fake Lagging Run", Id = 71095688469567},
    {name = "Praying on my knees", Id = 70792784107234},
    {name = "praying", Id = 104042392002801},
    {name = "Da Hood - Praying", Id = 122468432557213},
    {name = "Death by Vecna", Id = 76210974738943},
    {name = "Vecna Stranger Things Fly Animation Emote Bone", Id = 70692992882447},
    {name = "MODEL OFF DUTY", Id = 134246485191585},
    {name = "Model sitting roblox profile pose", Id = 136037264888983},
    {name = "Floating zen yoga", Id = 128292591994092},
    {name = "zen yoga meditation", Id = 74921877078024},
    {name = "Alo Yoga Pose - Warrior II", Id = 12507083048},
    {name = "Kawaii Cute Yoga Pose Kitty", Id = 90696131349427},
    {name = "Ballerina Pirouette", Id = 99879598939320},
    {name = "Ballerina Spin", Id = 111699562828312},
    {name = "Ballerina Idle", Id = 132484017577385},
    {name = "ballerina spin", Id = 116694742257990},
    {name = "Swan Lake Ballet Dance", Id = 91278080172886},
    {name = "The Whistle Occurence [The Dwellers]", Id = 91000306838260},
    {name = "The Scary Evil Glitch", Id = 85141122321737},
    {name = "Scary Entity", Id = 73093555127023},
    {name = "The Crazy Evil Glitch (Scary)", Id = 93087898023268},
    {name = "Sleeping Sideways", Id = 100118897356565},
    {name = "kawai shy sit idle pose", Id = 85961795938515},
    {name = "Teto Dance", Id = 131751661872100},
    {name = "Aura Float", Id = 93246285502882},
    {name = "Cuco - Levitate", Id = 15698404340},
    {name = "Floating", Id = 73980801925168},
    {name = "Floating Sitting", Id = 84179650680787},
    {name = "Floating In Space", Id = 96694088279578},
    {name = "Relaxing Float - hvnsnt", Id = 97588728781571},
    {name = "Floating On Dreams", Id = 107844714927992},
    {name = "Minecraft Happy Crouch Communication", Id = 115262232732736},
    {name = "cute leg up profile pose", Id = 120396687157242},
    {name = "Sassy Diva Pose", Id = 102502703996123},
    {name = "Supermodel Posing Dior F/W 2003", Id = 121047787300036},
    {name = "Money Walk", Id = 131582474288402},
    {name = "Minecraft's Sign of Peace", Id = 102987898148762},
    {name = "♡ Cute Model Idle/Pose", Id = 98739374128375},
    {name = "Impatient Diva Posing Idle", Id = 102439655497210},
    {name = "Stylish Sit", Id = 94505880782162},
    {name = "Model Doll Emote", Id = 99212094367070},
    {name = "Elegant Classy Profile Model Pose", Id = 70759688823138},
    {name = "Charming Secret Angels Pose", Id = 74389605454434},
    {name = "Model Hair Flip", Id = 84585644839497},
    {name = "Sleep", Id = 10714360343},
    {name = "Louisiana Jigg", Id = 126597745883758},
    {name = "Default Dance | OG", Id = 101011728520473},
    {name = "Jason Vorhees Emote", Id = 126786971779567},
    {name = "Jason Vorhees Emote + Jump Meme", Id = 132748130295692},
    {name = "Flowey The Flower - Undertale", Id = 82904235859503},
    {name = "Kazotsky Kick", Id = 135849406333587},
    {name = "🎀 Supermodel Red Carpet Feminine Pose", Id = 75810364031837},
    {name = "Smug aura fly [ Metro Man ]", Id = 112816775283756},
    {name = "MetroMan Dance [FULL]", Id = 120686345381920},
    {name = "Metro", Id = 117091076592246},
    {name = "viral muse - model it-girl idle pose", Id = 89439480855309},
    {name = "bibi muse - model it-girl idle pose", Id = 137194159305083},
    {name = "Runway Heel Kick Model Pose", Id = 72589815741838},
    {name = "(NEW) Iconic Fashion Doll Pose", Id = 116182427356996},
    {name = "Iconic Supermodel Posing", Id = 116188884496373},
    {name = "At Ease Military Idle Pose Stance", Id = 117536405275968},
    {name = "Ralsei Dance (DELTARUNE)", Id = 74784853553665},
    {name = "Ralsei - pose", Id = 72632606545943},
    {name = "Deltarune ralsei splat", Id = 124139028711849},
    {name = "Police Radio Pose", Id = 112837485853055},
    {name = "🎉Dancing man viggle meme🎉", Id = 98907428872455},
    {name = "Ballerina pose", Id = 97981508183234},
    {name = "Celebratory Applause Clap", Id = 135086331906098},
    {name = "FORSAKEN c00lkid Pose", Id = 95203125292023},
    {name = "Russian Soldier Push Ups", Id = 133192177496594},
    {name = "Sad Depressed Crying Sit / Sitting", Id = 131737004503275},
    {name = "申请加入弗兰克家族", Id = 90590987254171},
    {name = "one arm push-up", Id = 122492583882451},
    {name = "push-ups", Id = 93901960307790},
    {name = "Push Ups Flex Power [💪🔥]", Id = 122240113032501},
    {name = "Push Ups", Id = 112360054209797},
    {name = "Metroman Dance", Id = 87739852367150},
    {name = "Vogue Model Pose", Id = 109853601860742},
    {name = "Rampage (Lonely Lonely)", Id = 114499509000839},
    {name = "Phase", Id = 90584560149153},
    {name = "noclip/speed glitch FASTEST😉", Id = 131521108084603},
    {name = "What You Want (Prince of egypt)", Id = 125080663978632},
    {name = "Monster Mash (Forsaken)", Id = 105247160123775},
    {name = "Guest 1337 Block Ability [Forsaken]", Id = 105310177683245},
    {name = "normal salute", Id = 130417009180168},
    {name = "Salute", Id = 104389541909424},
    {name = "Ceremonial Salute", Id = 79125889867958},
    {name = "Apple Store Girl Dance", Id = 88529442006132},
    {name = "Saucy Santana Meme", Id = 119318822465542},
    {name = "Yanagi walking", Id = 81088957780074},
    {name = "Happy sway", Id = 131510920544621},
    {name = "It's ok I'm ok - Tate McRae", Id = 82627583535440},
    {name = "Sweet Sit Pose V1 [SIT ANYWHERE]", Id = 75141049180386},
    {name = "Chance Coin Flip", Id = 125469112376756},
    {name = "Metro Man Arm Swing (Best)", Id = 78363615133716},
    {name = "Kick Back Chainsaw Man Dance", Id = 100376086636913},
    {name = "Michael Myers Bounce ENHANCED", Id = 89272258562217},
    {name = "00s Supermodel Catwalk Pose", Id = 102330856336140},
    {name = "Courtly bow", Id = 117913449580238},
    {name = "Michael Myers Bounce ENHANCED", Id = 114465214709109},
    {name = "What you want", Id = 101115118300861},
    {name = "Needy Balance", Id = 120534863495628},
    {name = "Hip Shake Groove (ShakeYa)", Id = 139006878190245},
    {name = "⏳[LIMITED] Soda Pop", Id = 91567877788694},
    {name = "Metro Man Dance [ Metro man arm swing ]", Id = 115529104638585},
    {name = "Rock Out", Id = 122719596509695},
    {name = "Shake It Circle", Id = 100181025394535},
    {name = "Tidy", Id = 85890811891337},
    {name = "Sprinkler", Id = 127389452215565},
    {name = "[BEST] Company Jig - Fortnite", Id = 116490772631796},
    {name = "Become Tall", Id = 111946345092187},
    {name = "hands down hip sway", Id = 91767510752557},
    {name = "Locked (Forsaken)", Id = 95231997014918},
    {name = "Snejana Model Walk", Id = 71714422728827},
    {name = "Windy Balance", Id = 74499136141567},
    {name = "Yungblud Happier Jump", Id = 15609995579},
    {name = "Aura Magical Float Idle Emote Animation", Id = 86575435619828},
    {name = "Goku Rage", Id = 73459140332897},
    {name = "GEAR 5 Luffy Transformation", Id = 120599668535370},
    {name = "Super Power Up", Id = 132936908352435},
    {name = "KJS Awakening", Id = 129225170899725},
    {name = "Flip Flap CSGO BHOP", Id = 120051666454351},
    {name = "Emperor Of The Auraverse [[Aura]]", Id = 119810104205917},
    {name = "Aura Idle", Id = 122746752555782},
    {name = "Slow Run", Id = 102622695004986},
    {name = "Forsaken - Injured Idle", Id = 134644521288556},
    {name = "Charging Ki Power", Id = 113133047449611},
    {name = "Gojo Floating The Honored One", Id = 80973128121657},
    {name = "Variant mark flying [INVINCIBLE, FAST AURA]", Id = 92365791487740},
    {name = "Superhero Flight", Id = 120303626369803},
    {name = "Serious Punch", Id = 113281566861349},
    {name = "Goku Teleport", Id = 133631846764964},
    {name = "Farm Windmill", Id = 114998458543842},
    {name = "Circle!", Id = 72061067972980},
    {name = "Windy Shake and Sway Bounce", Id = 122519975965215},
    {name = "Gerakan sholat - prayer movement", Id = 93009184159377},
    {name = "Jason Vorhees Emote (ORIGINAL)", Id = 87282442358351},
    {name = "POOP YOUR FEET", Id = 78203064514043},
    {name = "Needy Balance [🌟] V2", Id = 111960596500333},
    {name = "Needy Balance ⭐️", Id = 117310284311307},
    {name = "🔊 Head Glitch 🤯", Id = 74725273075045},
    {name = "Insane", Id = 112488881929977},
    {name = "Sonic You're Too Slow (Animated Face)", Id = 76931637880681},
    {name = "halloween", Id = 130916388086314},
    {name = "Gojo Crazy", Id = 87679574888451},
    {name = "Honored Gojo Idle", Id = 136479330379442},
    {name = "Demon Slayer Douma Sit", Id = 127626736897320},
    {name = "Needy Balance", Id = 75816005613320},
    {name = "Shake it - In a circle!", Id = 133534450343938},
    {name = "Bed Chem - Sabrina Carpenter", Id = 80527463982679},
    {name = "Tears Dance Break - Sabrina Carpenter", Id = 107917661801774},
    {name = "Slow Motion Punch", Id = 110979677723900},
    {name = "hide in the sky fly (work in every game)", Id = 86614758562996},
    {name = "Relax Coin Flip", Id = 137214776063706},
    {name = "sharp's out of control", Id = 130911781298572},
    {name = "M3GAN's Dance", Id = 99649534578309},
    {name = "Rolling on the Floor", Id = 94249491457997},
    {name = "Lady Gaga - Bad Romance", Id = 109367770639860},
    {name = "The Dead Dance", Id = 108890126058891},
    {name = "Dead Dance", Id = 109240185646657},
    {name = "Slow Death", Id = 123955426642883},
    {name = "Death Pose [Troll]", Id = 77855691082488},
    {name = "The Look", Id = 132921312059404},
    {name = "[HOLDABLE DRINK] Drinking Animation", Id = 85688041753037},
    {name = "Taking a drink", Id = 76529594385922},
    {name = "The LEAN", Id = 110439492111756},
    {name = "Fake Hold Animation", Id = 85708740111289},
    {name = "zesty sturdy", Id = 132104757386824},
    {name = "Punch", Id = 80057445812313},
    {name = "Head Banger", Id = 75117155576035},
    {name = "Tall Transformation", Id = 128727582052143},
    {name = "Become Tall!", Id = 100296272663282},
    {name = "sweet walking dead zombie profile pose", Id = 137821702829463},
    {name = "🐛 Wigglepillar.exe", Id = 91114883954161},
    {name = "⏳   Tired (Best) 💤", Id = 134198658128833},
    {name = "tired exhausted emote", Id = 127160704636136},
    {name = "SHAKE THAT THANG", Id = 88285541926517},
    {name = "Backflipping", Id = 112210489414817},
    {name = "Metroman Guitar Aura", Id = 129373064455405},
    {name = "c00lkidd Idle (Forsaken)", Id = 78388131635850},
    {name = "Genos", Id = 117008478667516},
    {name = "Jason Vorhees Emote (Shake it)", Id = 86501318752546},
    {name = "Car Transforming", Id = 73092707834226},
    {name = "T-Pose", Id = 121655148084031},
    {name = "Slenderman", Id = 118235512746687},
    {name = "Needy Dance", Id = 78086740525202},
    {name = "[⌛] apple store girl (do you want me)", Id = 121532931823284},
    {name = "Floor Rock Freeze - Tommy Hilfiger", Id = 10214314957},
    {name = "Tommy - Archer", Id = 13823324057},
    {name = "V Pose - Tommy Hilfiger", Id = 10214319518},
    {name = "Flowing Breeze", Id = 10714342957},
    {name = "Static Outmanic!", Id = 98323299713352},
    {name = "Jugglehead [HEADLESS]", Id = 130158622704929},
    {name = "Head Juggling (PoF)", Id = 127034365069293},
    {name = "Trip Out", Id = 126780665379004},
    {name = "Party Rock Anthem", Id = 113074782746670},
    {name = "Sponge Dance", Id = 72248021897603},
    {name = "My arms are crossed. Be aware of it. (MEME)", Id = 72081313822408},
    {name = "Baby Queen - Face Frame", Id = 14352340648},
    {name = "Astro Slide", Id = 140394282634510},
    {name = "BLACKPINK - Get em Get em Get em", Id = 103578366275864},
    {name = "Billy Bounce", Id = 133394554631338},
    {name = "FORSAKEN Slasher Pose", Id = 140051337061095},
    {name = "Forsaken Survival Idle", Id = 106005604050931},
    {name = "Forsaken Noli (Normal Version)", Id = 95775127626218},
    {name = "Heeseung Walk", Id = 135725174873846},
    {name = "Gravity Shard", Id = 78127333758745},
    {name = "Become Tall V2 Improved", Id = 90613618252787},
    {name = "SHAKE THAT THANG", Id = 77045616324578},
    {name = "Akaza Fighting Pose", Id = 129190908364371},
    {name = "♡ Cute Model Crouch Emote Profile Pose", Id = 93306402931197},
    {name = "[Profile Pose] Modelling Posing", Id = 109451033653600},
    {name = "🌸 Cutesy Kawaii Model Energy Doll Pose", Id = 139838477275170},
    {name = "Be Tall Skinwalker Dog", Id = 113771589189795},
    {name = "Possessed Glitcher", Id = 80103653497738},
    {name = "Vilan Idle", Id = 121480327509940},
    {name = "Run🏃‍♂️", Id = 70636286183373},
    {name = "Miss Me", Id = 100047148644539},
    {name = "DCEU Flash Run [Aura Farm]", Id = 107994680200921},
    {name = "Super Sonic Hover", Id = 74386389774165},
    {name = "Cursed Sorcerer Walk — [Matching!]", Id = 135751675908137},
    {name = "[MATCHING] Geto Walk", Id = 89251806503217},
    {name = "Sans Emote [Idle]", Id = 113203077347750},
    {name = "Crawling SCP Walk — Creepy Crawl", Id = 88508412373927},
    {name = "Floating Crawled Up Sit [NEW!]", Id = 127989917643868},
    {name = "Sleep Floating idle animation", Id = 126430242602872},
    {name = "Space Float 1", Id = 117623101840084},
    {name = "Floating BBQ", Id = 108921263052079},
    {name = "Ghost Floating Halloween", Id = 112082806790047},
    {name = "Creepy Crawler Emote (stickbug) 🦗🦗", Id = 74583851935792},
    {name = "CPR | First Responders Pack", Id = 99312262519117},
    {name = "Hands Up", Id = 135078793551909},
    {name = "Two-Time's Ritual", Id = 112757618232626},
    {name = "Dog", Id = 114731495347458},
    {name = "Snoop's Walk", Id = 110204898807330},
    {name = "Saiyan Saga Goku’s Fighting Stance", Id = 90460269306619},
    {name = "Goku - Super Saiyan 3 Victory", Id = 136087809701317},
    {name = "Ice Spice Jersey Bounce", Id = 129346993972313},
    {name = "Uncanny Creature", Id = 120873587634730},
    {name = "Miku Jumpstyle [☢️]", Id = 137205932883902},
    {name = "Distraction Dance Stickman", Id = 129844594633957},
    {name = "Jumpstyle", Id = 108048854247037},
    {name = "Cool Backflip", Id = 117373674181293},
    {name = "Be tall creature", Id = 91348372558295},
    {name = "Flying Hide", Id = 91797087058917},
    {name = "hide in the wall (Right)", Id = 120896961472578},
    {name = "Floating Aura", Id = 92587731065850},
    {name = "IShowSpeed Bounce Dance", Id = 111272262660539},
    {name = "Hakari Dance", Id = 72935992500498},
    {name = "Sukuna Aura Sit [Manga]", Id = 118120056380796},
    {name = "R6 Unemployment/Druski Dance (Forsaken)", Id = 87033513223989},
    {name = "Speed shake dance", Id = 103913447080306},
    {name = "silly jumping spider dance", Id = 139310328821985},
    {name = "Brutal Headbang", Id = 135826688733551},
    {name = "Brutal Headbanger V1", Id = 111196847433339},
    {name = "Fast Headbang", Id = 87650359912635},
    {name = "(Die of Death) Pursuer-Howl-Ability", Id = 100344457457146},
    {name = "Zesty Sturdy 🌟ORIGINAL🌟", Id = 130535869680553},
    {name = "Mesmerizer", Id = 119261836151086},
    {name = "Rabbit Hole - Miku", Id = 117394346715743},
    {name = "Otsukare Summer", Id = 77511113280145},
    {name = "Omni-Mark Fly [Invincible]", Id = 101291673584393},
    {name = "floating angel", Id = 88152008013837},
    {name = "Angelic Idle", Id = 137768794429758},
    {name = "Meditation Aura Farming 🔥", Id = 77360312751381},
    {name = "Infinite Aura Farming V2 💯", Id = 105274889965322},
    {name = "Isagi idle animation", Id = 135818607077529},
    {name = "Spin Tool", Id = 91575955280658},
    {name = "Spin Item! [IDLE]", Id = 106474571689299},
    {name = "Die of Death Pursuer Idle Pose", Id = 138298584365781},
    {name = "Birdbrain", Id = 123471454475978},
    {name = "[R6] Otsukare Summer", Id = 102662583709770},
    {name = "Fashionable", Id = 10714091938},
    {name = "O Emote - Squid Game", Id = 72874692566655},
    {name = "Bendy Class Dance", Id = 95800320809419},
    {name = "Tail wag [Loop]", Id = 72379586208471},
    {name = "Tail wag idle", Id = 109931853277053},
    {name = "withered animatronic glitching", Id = 124118979741881},
    {name = "Disassamble", Id = 86683240260168},
    {name = "Fragmented", Id = 109976550167775},
    {name = "Hand Drill", Id = 115220179841536},
    {name = "Gun Hand Finger Emote", Id = 136067415498039},
    {name = "Finger swearing", Id = 87225274574233},
    {name = "Snake Morph", Id = 140548836664819},
    {name = "Flappy Bird", Id = 80194647011378},
    {name = "💩 MEGA POOPING 💩 [AURA]", Id = 121561448415799},
    {name = "Become a car: Convertible", Id = 116772752010894},
    {name = "Butterfly Friend", Id = 85678077191856},
    {name = "Swimmy Fish", Id = 120631990449452},
    {name = "Fish Swimming", Id = 104683597324716},
    {name = "Fish Swim", Id = 102957953130055},
    {name = "Wiggling Funny Tongue", Id = 101272360055330},
    {name = "Machine Gun (For Blocky)", Id = 82724514717551},
    {name = "Jester Box", Id = 127086075404855},
    {name = "F1 Car - Emote", Id = 89256675888646},
    {name = "💀Monster Deformation🩸( Helloween)", Id = 125760485188173},
    {name = "[CONTENT DELETED]", Id = 76961953465171},
    {name = "Float Upside Down Shinji", Id = 107286309995173},
    {name = "Nagi Seishiro's Celebration", Id = 71802397225596},
    {name = "Nagi Seishiro", Id = 98205398270519},
    {name = "Blue Lock Lavinho Celebration Pose", Id = 92045987196732},
    {name = "Sae Itoshi", Id = 92116031773879},
    {name = "Chinese Dance", Id = 137581268977122},
    {name = "Basketball Head", Id = 138243322520289},
    {name = "Become Among Us (Amogus)", Id = 93025479508764},
    {name = "minecraft emote", Id = 102560740957800},
    {name = "MINECRAFT", Id = 100360522114079},
    {name = "Teamup Crouch Minecraft", Id = 130268489859880},
    {name = "Car Pose: Tokyo Lean", Id = 132760747409859},
    {name = "Become a car: Dragster", Id = 81388785824317},
    {name = "Planet", Id = 119293883716589},
    {name = "Noggin boogie", Id = 102414724686360},
    {name = "Flying Man V1.2", Id = 97314019787131},
    {name = "Letter F Emote", Id = 135227259060683},
    {name = "Letter U Emote", Id = 135824595429758},
    {name = "Letter C Emote", Id = 102706636381416},
    {name = "Letter K Emote", Id = 120953677535193},
    {name = "Be a Dog 2.0", Id = 97464417789472},
    {name = "Sofa with cushions", Id = 89521079832393},
    {name = "Be a table", Id = 74273688598434},
    {name = "chair", Id = 99618261055849},
    {name = "[⏳] Floating TV", Id = 102280055415164},
    {name = "Chair", Id = 114140630538674},
    {name = "Throne Sofa Transformatoin", Id = 85891139596572},
    {name = "Ping Pong Table", Id = 130882981550324},
    {name = "Pickle Rick Dance", Id = 71911684622445},
    {name = "⏳[LIMITED] California Girls", Id = 96463900850916},
    {name = "Khaby Lame Mechanism 😐", Id = 90902400122749},
    {name = "I Want Money", Id = 104248876465825},
    {name = "Blue Shirt Guy Dance", Id = 113210894659020},
    {name = "Arms Crossed Arms Emote", Id = 130432219266930},
    {name = "Yapping Hand Gesture", Id = 81563764794164},
    {name = "Giant Hand Head Rub", Id = 101118547220849},
    {name = "Little Slider", Id = 117208552833070},
    {name = "🎢Little Rollercoaster Rider", Id = 93876945858075},
    {name = "Little Slide", Id = 120483178741047},
    {name = "Levitating Reader [FLOATING BOOK]", Id = 93888852612546},
    {name = "Iconic Vlada Model Walk", Id = 114356477612180},
    {name = "Blue Shirt Guy Dance", Id = 98080501860873},
    {name = "67", Id = 94843595155964},
    {name = "Right Front Splits [3.0]", Id = 124273860505243},
    {name = "Backbend Left Front Splits [3.0]", Id = 128675694509179},
    {name = "Split Jump", Id = 95913051955954},
    {name = "Hands Behind Back", Id = 140184554928517},
    {name = "Transformation. Boat to Bot", Id = 90104059726422},
    {name = "Boat Idle", Id = 112584749008148},
    {name = "Scooter Transformation", Id = 133504083530654},
    {name = "Crazy Neck Animation", Id = 101653730051145},
    {name = "Motorcycle", Id = 91127325280565},
    {name = "Motorcycle", Id = 104810105184118},
    {name = "Bang Head on Wall", Id = 89060597619453},
    {name = "Sponge Bounce", Id = 87272067762119},
    {name = "Packaged", Id = 100466914056069},
    {name = "Seal/Dolphin swim", Id = 118016588766846},
    {name = "Roblox Award", Id = 75951011845584},
    {name = "Coin Flipper!", Id = 118405846300584},
    {name = "Building Blocks", Id = 99125987103156},
    {name = "[BEST] Rakai Emote", Id = 71494363833326},
    {name = "[AURA FARM] YN Wall Lean", Id = 114388371896974},
    {name = "feelin myself sway", Id = 77780134372141},
    {name = "Meow Meow", Id = 82054392937883},
    {name = "Police Traffic Controll [Car stop]", Id = 97607444811646},
    {name = "Police Traffic Controll [Car go left]", Id = 92904088010952},
    {name = "Police Traffic Controll [Car go right]", Id = 124450389233157},
    {name = "Police Stop - Hand Gesture (Politie Stopteken)", Id = 77526668890365},
    {name = "Head scratches / Head pats", Id = 114313599861536},
    {name = "♡ ꒰ Cute Bent Pose", Id = 122937877015539},
    {name = "Hype Boy - NewJeans", Id = 103116941108936},
    {name = "Halloween Headless Effortless Aura", Id = 121812124134821},
    {name = "sharp's hairbrush dazzle", Id = 140244623342227},
    {name = "Shy hip sway", Id = 74880230485118},
    {name = "Peacemaker Bounce", Id = 112508052945449},
    {name = "💘 Sweet Fluffy Bunny Dance", Id = 134507147196805},
    {name = "Zombie Run Lag", Id = 79045891420947},
    {name = "R6 Sit Classic", Id = 89786372331582},
    {name = "Cute Sit", Id = 116842377221614},
    {name = "Cute Sit", Id = 92270419093034},
    {name = "Nagi Seishiro Celebration (Blue Lock)", Id = 126876116788270},
    {name = "Trampoline Jumpy Head", Id = 98039209341823},
    {name = "The Box", Id = 80663811715650},
    {name = "Spinning Fan", Id = 136133810019853},
    {name = "Emote Loading. Please Wait... | spinning Robloxian", Id = 111251252458517},
    {name = "Fan Morph", Id = 130864341071646},
    {name = "🌈 little noob [❗️BLOCK AVATAR❗️]", Id = 94007589429208},
    {name = "Boat", Id = 123345347361356},
    {name = "🌪️ Tornado 🌪️", Id = 135627891861045},
    {name = "Tank", Id = 82015342883653},
    {name = "Turret / Sentry Gun", Id = 94761465515829},
    {name = "Minigun Type-9000 (Gun)", Id = 129863972412706},
    {name = "GUN (FIRE)", Id = 101064428613405},
    {name = "Gun (IDLE)", Id = 74087614545350},
    {name = "Gun (RELOAD)", Id = 81045332600457},
    {name = "Aura Sit", Id = 77139456213922},
    {name = "Boxing Practice", Id = 121234846883654},
    {name = "/e death", Id = 140145855251193},
    {name = "Garou sit pose", Id = 79907509663903},
    {name = "🚫 NO! Morph", Id = 111666664060365},
    {name = "Shucks Idle - Jeffy's Infinite Irida", Id = 127559534052876},
    {name = "Cut Water Summer Dance!", Id = 71742037362291},
    {name = "Happy Hula", Id = 71970944840848},
    {name = "🚕MOM, CALL TAXI !!!!", Id = 74778955192756},
    {name = "Mean Sway", Id = 108771267044771},
    {name = "disco spin 🎀", Id = 77958057125796},
    {name = "Big G Bounce ⭐️ FIXED", Id = 114409240398579},
    {name = "ULTRA POOP", Id = 110823391306128},
    {name = "Jason Vorhees Dance Goofy", Id = 111902689439006},
    {name = "Big G Rilla Step", Id = 87037657067463},
    {name = "It Smells Fishy", Id = 102539028513519},
    {name = "Trendy Nicki Leg Pose", Id = 140708130041039},
    {name = "Angry Idle", Id = 75750638564696},
    {name = "Relaxed Sit", Id = 104595291484684},
    {name = "💅 Baddie Belly Dance", Id = 88714339609944},
    {name = "Shy Idle", Id = 123358425539087},
    {name = "Freak me", Id = 95840612396423},
    {name = "Laughing It Up Emote", Id = 98974619620224},
    {name = "Liddy square up", Id = 116898548957105},
    {name = "Badd Dolly square up (Baddies Midwest)", Id = 124230199302569},
    {name = "Scotty kick (Baddies Africa)", Id = 108271233077035},
    {name = "Superman is real....", Id = 79955608535916},
    {name = "Superman", Id = 107718813439136},
    {name = "Hula Bounce", Id = 95137887416550},
    {name = "Robot Looking Around", Id = 99103791640310},
    {name = "Robotic Wave", Id = 96078757056646},
    {name = "Robot Repair (Gaian)", Id = 107950553080467},
    {name = "Tycoon Dropper / Spawner", Id = 105566231421218},
    {name = "Little Wave", Id = 104405075690440},
    {name = "✅ F1 Car - Emote", Id = 99086760650449},
    {name = "racing car 🏎️", Id = 85370451474568},
    {name = "Dance If You're The Best - Dia Delicia Dance 😁", Id = 108759656834820},
    {name = "[BEST] Cut Water Summer Dance", Id = 125172525527117},
    {name = "MOVE IT?", Id = 79673529487704},
    {name = "Body Phone", Id = 114041592677837},
    {name = "Out-Cold", Id = 103554682501673},
    {name = "Pancake Stretch", Id = 85233258054867},
    {name = "♡ ꒰ Cute Kneeling Down Pose", Id = 87452671760125},
    {name = "Fierce Model Walk", Id = 139749404804910},
    {name = "The Honored One Silly Run", Id = 82260970223217},
    {name = "Hip Sway", Id = 125366049247330},
    {name = "Rolling on the floor", Id = 78770298434489},
    {name = "Pursuer Stalk Idle", Id = 132445272966466},
    {name = "Springtrapped (Face Animated)", Id = 102336549954106},
    {name = "Poop", Id = 104146517681516},
    {name = "meow kitty cat pose :3", Id = 94067170508495},
    {name = "Hula Circle Shaker", Id = 74604607016809},
    {name = "Body Phone", Id = 94162093658027},
    {name = "✨Red Carpet Walk✨", Id = 79786759005429},
    {name = "Kawaii Cat Pose 😻", Id = 85853253228909},
    {name = "Drop It Like Its Hot!", Id = 120492078411015},
    {name = "Gnarly", Id = 140524490084302},
    {name = "R6 Peanut Butter Jelly (Die Of Death)", Id = 130487907331587},
    {name = "(Outcome Memories) 2011x-Hype-Dance", Id = 126263509843739},
    {name = "(Outcome Memories) Sonic-Tick Tock-Dance", Id = 95991069466514},
    {name = "Just be competent", Id = 129245317392856},
    {name = "Minigame Springlock Fail", Id = 77805769356227},
    {name = "Springlock Animatronic", Id = 97972306637297},
    {name = "FredBear Springlock", Id = 115288290973222},
    {name = "Fast Punches Rage", Id = 133887204969176},
    {name = "Thank You!", Id = 111057054738672},
    {name = "[ORIGINAL] I Want Money / What You Want - EMOVA", Id = 115781688996859},
    {name = "sm64 sleep idle", Id = 94551406368336},
    {name = "Chibi Walk — Adorable Stroll", Id = 85887415033585},
    {name = "Shake That Thing R6", Id = 131720136455849},
    {name = "Levitating Head Pose", Id = 129453036635884},
    {name = "Forsaken_c00lkidd_Walk", Id = 93206157668596},
    {name = "Needy Stretch", Id = 93358488237387},
    {name = "♡ ꒰ Laying Down Splits Pose", Id = 100179668392253},
    {name = "Forsaken_c00lkidd_UnStun", Id = 130937379987866},
    {name = "Forsaken_c00lkidd_Idle", Id = 92946600983329},
    {name = "Peanut Butter Jelly Time (R15)", Id = 129537633250603},
    {name = "Animatronic agony - FNAF", Id = 73062309642674},
    {name = "Freddy Fazbear's Stage Preformance (FNAF Trailer)", Id = 73676038561640},
    {name = "Street Glide", Id = 82378883639086},
    {name = "TYLA - CHANEL (TIKTOK DANCE)", Id = 129951913430136},
    {name = "wobbily wiggly", Id = 92647246456583},
    {name = "Tall creature walk", Id = 134010853417610},
    {name = "Scary tall creature transformation", Id = 129469072457859},
    {name = "🎃 Creepy Tall Halloween Zombie 🎃", Id = 137877690249762},
    {name = "🎃 Scary Tall Halloween Chase", Id = 134411626334329},
    {name = "Raiden Punching Armstrong - LOOP", Id = 78558658989043},
    {name = "Hopping D", Id = 133721068624867},
    {name = "[NEW VER]Dwerk Michael Myers Shake Bounce Goof", Id = 95741178563151},
    {name = "RUNNING FREDBEAR", Id = 133284420439423},
    {name = "I'm Not Cute Anymore Run - ILLIT", Id = 101293881003047},
    {name = "Arms Crossed Idle Pose", Id = 132861892011980},
    {name = "🎃Pumpkin King👑", Id = 98413544617717},
    {name = "Slow Jason Vorhees Dance Goofy!", Id = 76112314476202},
    {name = "Throw it in a Circle", Id = 139395178419877},
    {name = "HAND PULL SHAKE THAT THANG [ORIGINAL]", Id = 102845316684543},
    {name = "[BEST] Jason Vorhees Shake - Dwerk (Don't Hide)", Id = 80471373725892},
    {name = "Miss Me Jump [Friday Night Funkin]", Id = 106576745451974},
    {name = "Tall Tweaker", Id = 118294259309188},
    {name = "Tall Headless Creature", Id = 98078268211180},
    {name = "Uget Uget Boyolali", Id = 77679366248400},
    {name = "Simple Domain", Id = 132505740326684},
    {name = "Yuta Domain Expansion", Id = 138483536012563},
    {name = "Springtrap Dance", Id = 80927378599036},
    {name = "IShowSpeed Dance", Id = 137588536535005},
    {name = "Needy Circle Shake (OG)", Id = 117743822724223},
    {name = "Watch my moves", Id = 85107678380259},
    {name = "[BEST] Goofy Shake Jason Vorhees Dwerk Dance", Id = 86203458993945},
    {name = "Ultra Needy Bailando Bouncing", Id = 127316053636379},
    {name = "Ultra Needy Grinch Bouncing", Id = 114636697719457},
    {name = "Needy Shake Heat Sway", Id = 97187217508701},
    {name = "Needy Cutie Patootie", Id = 125503519932281},
    {name = "67", Id = 116555912432673},
    {name = "67", Id = 123922326825176},
    {name = "Cute Laying On Side", Id = 113016938567383},
    {name = "Needy Confidence", Id = 134167184667061},
    {name = "/e headless korblox (works in every game)", Id = 102325931762962},
    {name = "/headless /koblox .... kind of", Id = 84323682148776},
    {name = "Forsaken Noli Idle", Id = 87133915820289},
    {name = "FORSAKEN Noli Walk", Id = 90175656540190},
    {name = "FORSAKEN Noli Void Rush", Id = 119380285634530},
    {name = "Jason Vorhees Emote Meme Goofy", Id = 104028235193067},
    {name = "Jason Vorhees Dance", Id = 118493257042591},
    {name = "Classic Retro Idle [2007]", Id = 118461919095618},
    {name = "Sassy Fashion Twirl", Id = 121398241585809},
    {name = "Iconic Pose", Id = 87403291640282},
    {name = "Haute Couture Pose", Id = 116765159485288},
    {name = "Dr. Livesey Walk (R6)", Id = 126769395026240},
    {name = "Skeleton Meme Skyrim", Id = 81158605951692},
    {name = "Cute Walk - (Choppy Animation)", Id = 121062738708333},
    {name = "[R6] Retro: Magician - Hat Holding Idle [POSE]", Id = 76767062741041},
    {name = "[POSE] Praise", Id = 87036804494292},
    {name = "R6 Idle Pose | Hand on Hip", Id = 129278885995833},
    {name = "R6 Idle Pose | Back Display", Id = 93507119848388},
    {name = "[Anime Aura] Jojo Pose Idle Pt3", Id = 114636753459405},
    {name = "12662", Id = 109060871654410},
    {name = "cat scratching", Id = 114452440488871},
    {name = "Six Little Eggs Groove", Id = 87145544419394},
    {name = "Needy Hip Dance", Id = 97347650540503},
    {name = "🎃 Scary Tall Halloween Idle", Id = 97102311507506},
    {name = "[NEW] Nightmail crossing the border floating dance", Id = 130633292146410},
    {name = "Do That Thang", Id = 96673018720208},
    {name = "Classic Retro Zombie Pose", Id = 90806086002292},
    {name = "Heel Dance", Id = 119405085486513},
    {name = "Needy Hip Dance", Id = 108287561312002},
    {name = "[OG BEST] Judy Shake", Id = 117812230822615},
    {name = "Spice On Floor", Id = 92689671662713},
    {name = "Throw it in a Circle", Id = 127860548047963},
    {name = "[Best] Bounce", Id = 124381424428316},
    {name = "Samba", Id = 10714386947},
    {name = "Goku Charge Up", Id = 112220709701439},
    {name = "Headless", Id = 100199766676370},
    {name = "Uma Musume Umapyoi Densetsu", Id = 120037711857043},
    {name = "Head scratches / Head pats to small avatars", Id = 116557057551035},
    {name = "Jiggly Wiggly", Id = 72302066751731},
    {name = "stretch like this?", Id = 119377401608190},
    {name = "Needy Bouncy Circle Shake Dance", Id = 99335180020611},
    {name = "Michael Myers Trip Out", Id = 113801771536506},
    {name = "Celebration Hips", Id = 124209914932987},
    {name = "no animation", Id = 90377859048021},
    {name = "Brazilian Funk Footwork", Id = 140219184038687},
    {name = "MASSIVE POOP", Id = 125329959146841},
    {name = "Evade - Bold March", Id = 73229066281713},
    {name = "Cute Sit", Id = 75298957518822},
    {name = "Head Shake Needy Bounce", Id = 74718473673561},
    {name = "Needy Hip Bounce", Id = 106951683231213},
    {name = "needy hips", Id = 88358461544719},
    {name = "La anguila hip (MEME)", Id = 89447470774934},
    {name = "Cut Water Summer Dance!", Id = 72333908650729},
    {name = "goofy hoppin'", Id = 105975426693049},
    {name = "Throw it in a circle", Id = 117436459881505},
    {name = "Cute Kicking Feet", Id = 140609475920100},
    {name = "I see Kareem Groove", Id = 70410722544605},
    {name = "STURDY", Id = 128968764985212},
    {name = "MJ - P.Y.T. Pretty Young Thing", Id = 108374677470972},
    {name = "Baby Boo Head Shake", Id = 74253446296284},
    {name = "Rambunctious", Id = 129991743366120},
    {name = "🎶Default Fortnite Dance Rambunctious [BEST]", Id = 76755207478592},
    {name = "Tail Wag Happy Idle", Id = 129026910898635},
    {name = "Money Hop Switch", Id = 132555082396072},
    {name = "Tornado kick", Id = 82430395800667},
    {name = "Dropkick", Id = 133566007754001},
    {name = "Michael Jackson Anti-Gravity Lean", Id = 137419692498344},
    {name = "Hog Rider [CLASH ROYALE]", Id = 138457427307562},
    {name = "[BEST] Low Cortisol", Id = 72849994379315},
    {name = "Low Cortisol", Id = 126604285933607},
    {name = "chibi", Id = 125884328313129},
    {name = "[🔫] Human Gun", Id = 73049499124836},
    {name = "Parkour Dance", Id = 120244151914853},
    {name = "Flying Snake", Id = 109383342751992},
    {name = "Arcade snake worm idle emote", Id = 89992214273150},
    {name = "Be a Worm", Id = 72179827731629},
    {name = "Scary Worm", Id = 84506790321040},
    {name = "Endless Worm Floating", Id = 76212616246340},
    {name = "Worm Spin Idle [Endless]", Id = 87623608818300},
    {name = "Body Blender 🌪️ 🍅", Id = 97592799851492},
    {name = "Tadpole Wiggle 🐸", Id = 103057910579239}
} -- 1301 UGC Emotes

local r15Names = {
    LeftUpperArm=true, RightUpperArm=true, LeftLowerArm=true, RightLowerArm=true,
    LeftUpperLeg=true, RightUpperLeg=true, LeftLowerLeg=true, RightLowerLeg=true,
    UpperTorso=true, LowerTorso=true
}

-- {"Name", "soundFile", animSpeed, soundPlaybackSpeed, walkSpeed}
local idToEmote = {
    -- MODE 1
    [117971041844492] = {"Rat Dance",     "rat.mp3",          1,    1,  14},
    [122471664395501] = {"Boogie",        "boogie.mp3",       1,    2,  14},
    [100632740547268] = {"Valentine",     "valen.mp3",        1,    1,  14},
    [129902601971178] = {"Order",         "order.mp3",        1,    2,  14},
    [132552289751540] = {"Sturdy",        "sturdy.mp3",       1,    1,  14},
    [114964447248296] = {"Caramelldansen","caramell.mp3",     1,    1,  14},
    [18945296583]     = {"Billy",         "billy.mp3",        1,    1,   4},
    [133530633475679] = {"Gangnam Style", "gangnamm.mp3",     1,    1,  14},
    [8829798048]      = {"Pogo",          "pogo.mp3",         1.5,  1,  14},
    [136139381223407] = {"Moonlight",     "dancingin.mp3",    1,    1,  14},
    [110403709064010] = {"Epic Walk",     "dr.wav",           1,    1,   4},
    [114928062507098] = {"Griddy",        "griddy.mp3",       1,    1,   4},
    [94534967284996]  = {"Epic Dance (Kick)", "lux.ogg",          1,    1,  14},
    [86634257330162]  = {"Kazotky Kick",  "kazot.mp3",        1,    1,  14},
    [76647570617571]  = {"Leg to leg dance", "rbxassetid://1846368080", 0.75, 1, 14},
    [115910850138449] = {"Bim Bam",       "bimbam.mp3",       1.25, 1,  14},
    [80947480089411]  = {"Moongazer",     "Moongazer.mp3",    1,    1,  14},
    [111249002064299] = {"Down",          "Down.mp3",         1,    1,  14},
    [106920825643057] = {"Mystery",       "Mystery.mp3",      1,    1,  14},
    [131776726113292] = {"True Heart",    "true_heart.mp3",   1,    1,  14},
    [140376973204352] = {"Rewind",        "Rewind.mp3",       1,    1,  14},

    -- MODE 2
    [89807443968447]  = {"XO",            "XO.mp3",           1,    1,  14},
    [105662609338555] = {"Drip",          "drip.mp3",         1,    1,  14},
    [75378609077044]  = {"Freeflow",      "freeflow.mp3",     1,    1,  14},
    [99152023738830]  = {"Whatever Like", "whateverlike.mp3", 1,    1,  14},
    [124616782933406] = {"PvZ",         "balls.mp3",        1,    1,  14},
    [10609437925]     = {"Faster",        "faster.ogg",       1,    1,  14},
    [106801620167778] = {"Tryna",         "tryna.mp3",        1.25, 1,  14},
    [100136191465523] = {"Chronoshift",   "chronoshift.mp3",  1,    1,  14},
    [114660931657915] = {"Dancing With it", "dancingwit.mp3",   0.75, 1,  14},
    [82437456855605]  = {"Fright Funk",   "frightfunk.mp3",   1,    1,  14},
    [82472212108809]  = {"Blood Pop",     "bloodpop.mp3",     1,    1,  14},
    [91732165937556]  = {"Lay Down",      nil,                1,    1,  14},
    [107261816578577] = {"Left Right",    "leftright.mp3",    1,    1,  14},
    [101332118847458] = {"Heavy Love",    "heavylove.mp3",    1,    1,  14},
    [109123683211464] = {"Million",       "million.mp3",      1,    1,  14},
    [124173723813941] = {"Chase Me",      "chaseme.mp3",      1,    1,  14},

    -- MODE 3
    [109275255555630] = {"Criss Cross",   "crisscross.mp3",   1,    1,  14},
    [93547721311170]  = {"Brain",         "brain.mp3",        1,    1,   4},
    [77920672554221]  = {"Hey yah!",   "duck.mp3",         1,    1,  14},
    [87342159331194]  = {"Espresso",      "espresso.mp3",     1,    1,  14},
    [121967347012647] = {"Rakuten",       "rakuten.mp3",      1,    1,  14},
    [116431235454771] = {"Day N Nite",    "daynnite.mp3",     1,    1,  14},
    [99811468921857]  = {"Tort (Idk the name)", "tort.mp3",         1,    1,  14},
    [138510336377177] = {"Lemon",         "lemon.mp3",        0.8,  1,  14},
    [92629504992703]  = {"Boombox",          "boom.mp3",         1,    1,  14},
    [137217645571244] = {"Doodle",        "doodle.mp3",       2,    1,  14},
    [90469668054306]  = {"Hypno",         "hypno.mp3",        1,    1,  14},
    [129275138998868] = {"Tuff Dance",         "assum.mp3",        1,    1,  14},
    [89457637802764]  = {"Rotten",        "rotten.mp3",       2,    1,  14},
    [109167288749488] = {"Decadent",      "decadent.mp3",     0.35, 1,  14},
    [135122971004487] = {"Misc (Idk the name)", "misc.mp3",         2,    1,  14},
    [135648012207180] = {"Jung (Idk the name)", "jung.mp3",         1,    1,  14},
}


local function isR15Anim(asset)
    for _, kf in pairs(asset:GetDescendants()) do
        if kf:IsA('Pose') and r15Names[kf.Name] then
            return true
        end
    end
    return false
end

local function makeanimlibrary() --// yeah sorry im not going to edit and mix at least 1000 lines of modules together under 30 minutes
	local RunService = game:GetService('RunService')

	local __EasingStyles__ = Enum.EasingStyle
	local __EasingDirections__ = Enum.EasingDirection
	local __Enum__PoseEasingStyle__ = #'Enum.PoseEasingStyle.'
	local __Enum__PoseEasingDirection__ = #'Enum.PoseEasingDirection.'

	local function EasingStyleFix(style)
		local name = string.sub(tostring(style), __Enum__PoseEasingStyle__ + 1)
		return (function()
			local suc, res = pcall(function()
				return __EasingStyles__[name]
			end)
			if not suc then
				return Enum.EasingStyle.Linear
			else
				return res
			end
		end)()
	end

	local function EasingDirectionFix(dir)
		local name =
			string.sub(tostring(dir), __Enum__PoseEasingDirection__ + 1)
		return __EasingDirections__[name] or Enum.EasingDirection.In
	end

	local function ConvertToTable(animationInstance)
		assert(
			animationInstance
				and typeof(animationInstance) == 'Instance'
				and animationInstance:IsA('KeyframeSequence'),
			'ConvertToTable requires a KeyframeSequence instance'
		)
		local keyframes = animationInstance:GetKeyframes()
		local sequence = {}
		for i, frame in ipairs(keyframes) do
			local entry = { Time = frame.Time, Data = {} }
			for _, child in ipairs(frame:GetDescendants()) do
				if child:IsA('Pose') and child.Weight > 0 then
					entry.Data[child.Name] = {
						CFrame = child.CFrame,
						EasingStyle = EasingStyleFix(child.EasingStyle),
						EasingDirection = EasingDirectionFix(
							child.EasingDirection
						),
						Weight = child.Weight,
					}
				end
			end
			sequence[i] = entry
		end
		table.sort(sequence, function(a, b)
			return a.Time < b.Time
		end)
		return sequence, animationInstance.Loop
	end

	local function AutoGetMotor6D(model, motorType)
		assert(
			model and typeof(model) == 'Instance' and model:IsA('Model'),
			'AutoGetMotor6D requires a Model instance'
		)
		local useBone = false
		if motorType == 'Bone' then
			useBone = true
		else
			for _, desc in ipairs(model:GetDescendants()) do
				if desc:IsA('Bone') then
					useBone = true
					break
				end
			end
		end
		local motors = {}
		if useBone then
			for _, bone in ipairs(model:GetDescendants()) do
				if bone:IsA('Bone') then
					motors[bone.Name] = bone
				end
			end
		else
			for _, part in ipairs(model:GetDescendants()) do
				if part:IsA('BasePart') then
					for _, joint in ipairs(part:GetJoints()) do
						if joint:IsA('Motor6D') and joint.Part1 == part then
							motors[part.Name] = joint
							break
						end
					end
				end
			end
		end
		return motors
	end

	local cframe_zero = CFrame.new()
	local UpdateEvent = RunService.PreSimulation

	local AnimLibrary = {}
	AnimLibrary.__index = AnimLibrary

	function AnimLibrary.new(target, keyframeSeq, settings, motorType)
		local self = setmetatable({}, AnimLibrary)
		self.Looped = false
		self.TimePosition = 0
		self.IsPlaying = false
		self.Speed = 1
		self.Settings = settings or {}

		if typeof(target) == 'Instance' and target:IsA('Model') then
			self.Motor6D = AutoGetMotor6D(target, motorType)
		else
			self.Motor6D = target
		end

		assert(keyframeSeq, 'Animation keyframe sequence required')
		if typeof(keyframeSeq) == 'Instance' then
			local seq, looped = ConvertToTable(keyframeSeq)
			self.Animation = seq
			self.Looped = looped
		elseif type(keyframeSeq) == 'table' then
			self.Animation = keyframeSeq
		else
			error('Invalid keyframe sequence format')
		end

		self.Length = self.Animation[#self.Animation].Time
		return self
	end

	local function getSurrounding(seq, t)
		local prev, next = seq[1], seq[#seq]
		for i = 1, #seq - 1 do
			if seq[i].Time <= t and seq[i + 1].Time >= t then
				prev, next = seq[i], seq[i + 1]
				break
			end
		end
		return prev, next
	end

	function AnimLibrary:Play()
		if self.IsPlaying then
			return
		end
		self.IsPlaying = true
		if self.TimePosition >= self.Length then
			self.TimePosition = 0
		end

		self._conn = UpdateEvent:Connect(function(delta)
			if not self.IsPlaying then
				return
			end
			local dt = delta * (self.Speed or 1)

			local pos = self.TimePosition + dt

			if pos > self.Length then
				if self.Looped then
					pos = pos - self.Length
				else
					pos = self.Length
					self:Stop()
					return
				end
			end
			self.TimePosition = pos

			local prev, next = getSurrounding(self.Animation, pos)
			local span = next.Time - prev.Time
			local alpha = span > 0 and (pos - prev.Time) / span or 0
			for joint, prevData in pairs(prev.Data) do
				local nextData = next.Data[joint] or prevData
				local ease = game:GetService('TweenService'):GetValue(
					alpha,
					nextData.EasingStyle,
					nextData.EasingDirection
				)
				local cf1, cf2 = prevData.CFrame, nextData.CFrame
				local cf = cf1:Lerp(cf2, ease)
				local motor = self.Motor6D[joint]
				if motor then
					motor.Transform = cf
				end
			end
		end)
	end

	function AnimLibrary:Stop()
		self.IsPlaying = false
		if self._conn then
			self._conn:Disconnect()
			self._conn = nil
		end
		for _, motor in pairs(self.Motor6D) do
			motor.Transform = cframe_zero
		end
	end

	AnimLibrary.AutoGetMotor6D = AutoGetMotor6D
	AnimLibrary.KeyFrameSequanceToTable = ConvertToTable
	return AnimLibrary
end

local animplayer = makeanimlibrary()

local currentanim = nil
local iscurrentadance = nil

local rigTable = animplayer.AutoGetMotor6D(char, 'Motor6D')
local ghostRigTable = animplayer.AutoGetMotor6D(ghostRig, 'Motor6D')

local retargetConn = nil

local function startRetarget()
    if retargetConn then retargetConn:Disconnect() end
    retargetConn = RunService.PreSimulation:Connect(function()
        for r15name, r6name in pairs(retargetMap) do
            local r15part = ghostRig:FindFirstChild(r15name, true)
            local motor = rigTable[r6name]
            if r15part and motor and motor.Part0 then
                local output = motor.C0:Inverse() * motor.Part0.CFrame:Inverse() * r15part.CFrame * motor.C1
				if r6name == "Left Arm" or r6name == "Right Arm" then
					output = output * CFrame.new(0, 0.2, 0)
				end
				if r6name == "Left Leg" or r6name == "Right Leg" then
					output = output * CFrame.new(0, 0.2, 0)
				end
				if r6name == "Torso" then
					output = output * CFrame.new(0, 0, -0.2)
				end
                motor.Transform = output
				--print(motor.Transform.Position, output.Position)
            end
        end
    end)
end

local function stopRetarget()
    if retargetConn then
        retargetConn:Disconnect()
        retargetConn = nil
    end
	for _, motor in pairs(rigTable) do
		motor.Transform = CFrame.new()
	end
	for _, motor in pairs(ghostRigTable) do
		motor.Transform = CFrame.new()
	end
end

local charAddedConnection = char.AncestryChanged:Connect(function()
    if not char:IsDescendantOf(game) then
        if retargetConn then retargetConn:Disconnect() end
        ghostRig:Destroy()
		ghostUpdateConn:Disconnect()
		EmoteUI:Destroy()
    end
end)

local currentAnimID
local function playanim(id, speed, isDance, customInstance)
	speed = speed or 1

	local asset
	if customInstance then
		asset = customInstance
	else
		asset = is:LoadLocalAsset(id)
	end

	if currentanim then
		currentanim:Stop()
	end
	iscurrentadance = isDance

	local keyframeTable = animplayer.KeyFrameSequanceToTable(asset)

	currentanim = animplayer.new(rigTable, asset, nil, nil, 'Motor6D')
	currentanim.Speed = speed
	currentanim.Looped = true
	currentanim:Play()
	currentAnimID = id
    stopRetarget()
end

local function playanim2(id: string, customThing)
    local speed = 1
    local thingyThing
    if customThing then
        thingyThing = customThing
    else
        thingyThing = secondary
    end
	local mainid = id:gsub('^rbxassetid://', '')
	local _, asset = pcall(function()
		return thingyThing[id]
	end)
	if not _ or not asset then
		asset = fallback
	end


	if currentanim then
		currentanim:Stop()
	end
	iscurrentadance = true

	--local keyframeTable = animplayer.KeyFrameSequanceToTable(asset)
    local targRig = rigTable
    if isR15Anim(asset) then targRig = ghostRigTable end
	currentanim = animplayer.new(targRig, asset, nil, nil, 'Motor6D')
	currentanim.Speed = speed
	currentanim.Looped = true
	currentanim:Play()
	currentAnimID = id

    if isR15Anim(asset) then
        startRetarget()
    else
        stopRetarget()
    end
end

local exploit = getexecutorname and getexecutorname()
	or identifyexecutor and identifyexecutor()
	or 'CurrentAngle Executor'

local function choose()
	local choice = math.random(1, 3)
	if choice == 1 then
		return 'rbxassetid://35930009'
	elseif choice == 2 then
		return 'rbxassetid://1846368080'
	elseif choice == 3 then
		return 'rbxassetid://17422147220'
	end
end

local customasset = function(id)
	if exploit ~= 'CaetSploit' then
		idwithoutthatbit = string.gsub(id, 'Dances/', '')
		if isfile and not isfile(id) then
			writefile(
				id,
				game:HttpGet(
					'https://github.com/AppleMaker35/music/raw/refs/heads/main/'
						.. idwithoutthatbit
				)
			)
		end
		repeat
			task.wait()
		until function()
				if not isfile then
					return true
				end
			end or isfile(id)
	else
		warn('________ _____ ____ _________ __ ___ ______')
	end
	local s = Instance.new('Sound')
	s.Parent = game:GetService('RunService')
	s.SoundId = getcustomasset and getcustomasset(id) or choose()
	task.spawn(function()
		task.wait(1)
		s:Destroy()
	end)
	return s.SoundId
end

local currentUGCAnim
local function stopanim()
	if loopsplaying > 0 then
		loopsplaying -= 1
	end
	if currentUGCAnim then
		currentUGCAnim:Stop(0)
		currentUGCAnim = nil
	end
    stopRetarget()

	currentAnimID = nil
	playanother = true
	playanother = true
	playanother = true
	playanother = true
	sound69.PlaybackSpeed = 1
	if playbacktrack == true then
		--if lol ~= true then
			sound69.SoundId = customasset('Dances/xav.mp3')
		--else
		--	sound69.SoundId = customasset('Dances/emoboy.mp3')
		--end
		sound69.Volume = 0.75
	else
		sound69:Stop()
	end
	coolparticles.Parent = randompart
	pcall(function()
		rst:Cancel()
		rht:Cancel()
		lht:Cancel()
		lst:Cancel()
		nt:Cancel()
		rjt:Cancel()
	end)
	if dancing == true then
		sound69.TimePosition = BackgroundTimePosition
		dancing = false
		idle = true
		char.Humanoid:Move(Vector3.new(0, 0, -1), true)
		walking = false
		wait(0.065)
		if
			walking == true
			and idle == false
			and char.Humanoid.MoveDirection ~= Vector3.new(0, 0, 0)
			and dancing == false
			and playanother == true
		then
			task.spawn(function()
				playanim(74204337812128, 1, false) -- uuid.
			end)
		end
	end
end

local function playR15UGC(id)
    if (not dancing) or (currentAnimID ~= id and getgenv().AutoPlayEmoteOnUI) then
		if currentUGCAnim then
			currentUGCAnim:Stop(0)
			currentUGCAnim = nil
		end
		stopanim()
		stopRetarget()
		if currentanim then
			currentanim:Stop()
			currentanim = nil
		end
        dancing = true

		BackgroundTimePosition = sound69.TimePosition
		sound69.SoundId = customasset('Dances/' .. getgenv().FallbackEmoteSound)
		sound69.PlaybackSpeed = 1
		sound69:Play()

        local anim = Instance.new("Animation")
        anim.AnimationId = "rbxassetid://" .. tostring(id)

        local track = ghostAnimator:LoadAnimation(anim)
        track.Looped = true
        track:Play()
        currentUGCAnim = track
		currentAnimID = id

        task.wait() -- let first pose apply
        startRetarget()
    else
        if currentUGCAnim then
            currentUGCAnim:Stop(0)
            currentUGCAnim = nil
        end
		currentAnimID = nil
        stopRetarget()
		stopanim()
        dancing = false
    end
end

local mode = 1

-- 0 orig, 1 r15, 2 r6 cust
local currentButtonCagerory = 0
TextBoxSearch:GetPropertyChangedSignal("Text"):Connect(function()
	local searchText = TextBoxSearch.Text

	for i,v in pairs(ScrollingFrame:GetChildren()) do
		if v:IsA("TextButton") then
			v:Destroy()
		end
	end

	if currentButtonCagerory == 0 then
		--targetCategory = full
		for i,v in pairs(full:GetChildren()) do
			local coolThingyThing = idToEmote[tonumber(v.Name)]
			if not coolThingyThing then
				continue
			end
			if not string.find(string.lower(coolThingyThing[1]), string.lower(searchText)) then
				continue
			end

			local btn = ScrollingFrame.Temp.Template:Clone()
			btn.Parent = ScrollingFrame
			btn.Name = v.Name
			btn.Text = coolThingyThing[1]
			btn.MouseButton1Click:Connect(function()
				if dancing == false then
					dancing = true
					if coolThingyThing[2] ~= "" and coolThingyThing[2] then
						BackgroundTimePosition = sound69.TimePosition
						if stringStartsWith(coolThingyThing[2], 'rbxassetid://') then
							sound69.SoundId = coolThingyThing[2]
						else
							sound69.SoundId = customasset('Dances/' .. coolThingyThing[2])
						end
						sound69.PlaybackSpeed = coolThingyThing[4]
						sound69:Play()
					end

					char.Humanoid.WalkSpeed = coolThingyThing[5] * char:GetScale()
					playanim(v.Name, coolThingyThing[3])
				else
					stopanim()
					sound69.PlaybackSpeed = 1
				end
			end)
		end
	end

	if currentButtonCagerory == 1 then
		--targetCategory = r15UGC
		for i,v in pairs(r15UGC) do
			if not string.find(string.lower(v.name), string.lower(searchText)) then
				continue
			end
			local btn = ScrollingFrame.Temp.Template:Clone()
			btn.Parent = ScrollingFrame
			btn.Name = v.name
			btn.Text = v.name
			btn.MouseButton1Click:Connect(function()
				playR15UGC(v.Id)
			end)
		end
	end

	if currentButtonCagerory == 2 then
		--targetCategory = thirdThingFull

		for i,v in pairs(thirdThingFull:GetChildren()) do
			if not string.find(string.lower(v.Name), string.lower(searchText)) then
				continue
			end
			local btn = ScrollingFrame.Temp.Template:Clone()
			btn.Parent = ScrollingFrame
			btn.Name = v.Name
			btn.Text = v.Name
			btn.MouseButton1Click:Connect(function()
				if dancing == false then
					dancing = true
					sound69.SoundId = customasset('Dances/' .. getgenv().FallbackEmoteSound)
					sound69.PlaybackSpeed = 1
					BackgroundTimePosition = sound69.TimePosition
					sound69:Play()
					playanim2(btn.Text, thirdThingFull)
				else
					stopanim()
					sound69.PlaybackSpeed = 1
				end
			end)
		end
	end
end)

CustomR15Btn.MouseButton1Click:Connect(function() 
	for i,v in pairs(ScrollingFrame:GetChildren()) do
		if v:IsA("TextButton") then
			v:Destroy()
		end
	end

	for i,v in pairs(r15UGC) do
		local btn = ScrollingFrame.Temp.Template:Clone()
		btn.Parent = ScrollingFrame
		btn.Name = v.name
		btn.Text = v.name
		btn.MouseButton1Click:Connect(function()
			playR15UGC(v.Id)
		end)
	end

	currentButtonCagerory = 1
end)

R6Btn.MouseButton1Click:Connect(function() 
	for i,v in pairs(ScrollingFrame:GetChildren()) do
		if v:IsA("TextButton") then
			v:Destroy()
		end
	end

	for i,v in pairs(full:GetChildren()) do
		local coolThingyThing = idToEmote[tonumber(v.Name)]
		if not coolThingyThing then
			continue
		end
		local btn = ScrollingFrame.Temp.Template:Clone()
		btn.Parent = ScrollingFrame
		btn.Name = v.Name
		btn.Text = coolThingyThing[1]
		btn.MouseButton1Click:Connect(function()
			if dancing == false or (currentAnimID ~= v.Name and getgenv().AutoPlayEmoteOnUI) then
				--stopanim()
				dancing = true
				if coolThingyThing[2] ~= "" and coolThingyThing[2] then
					if stringStartsWith(coolThingyThing[2], 'rbxassetid://') then
						sound69.SoundId = coolThingyThing[2]
					else
						sound69.SoundId = customasset('Dances/' .. coolThingyThing[2])
					end
					sound69.PlaybackSpeed = coolThingyThing[4]
					BackgroundTimePosition = sound69.TimePosition
					sound69:Play()
				end

				char.Humanoid.WalkSpeed = coolThingyThing[5] * char:GetScale()
				playanim(v.Name, coolThingyThing[3])
			else
				stopanim()
				sound69.PlaybackSpeed = 1
			end
		end)
	end

	currentButtonCagerory = 0
end)
CustomR6Btn.MouseButton1Click:Connect(function() 
	for i,v in pairs(ScrollingFrame:GetChildren()) do
		if v:IsA("TextButton") then
			v:Destroy()
		end
	end

	for i,v in pairs(thirdThingFull:GetChildren()) do
		local btn = ScrollingFrame.Temp.Template:Clone()
		btn.Parent = ScrollingFrame
		btn.Name = v.Name
		btn.Text = v.Name
		btn.MouseButton1Click:Connect(function()
			if dancing == false or (currentAnimID ~= v.Name and getgenv().AutoPlayEmoteOnUI) then
				--stopanim()
				dancing = true
				sound69.SoundId = customasset('Dances/egypt.mp3')
				sound69.PlaybackSpeed = 1
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim2(btn.Text, thirdThingFull)
			else
				stopanim()
				sound69.PlaybackSpeed = 1
			end
		end)
	end

	currentButtonCagerory = 2
end)

local INPUTLOOPConnection
local uis = game:GetService('UserInputService')

if getgenv().KeepKeybinds then
INPUTLOOPConnection = uis.InputBegan:Connect(function(k, chatting)
	if char.Humanoid.Sit == true then
		return
	end
	if chatting then
		return
	end
	local k =
		string.lower(string.gsub(tostring(k.KeyCode), 'Enum.KeyCode.', ''))
	if mode == 1 then
		if k == 'q' then
			if (dancing == false) or (currentAnimID ~= 117971041844492 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/rat.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(117971041844492) -- uuid. 106353328250763
			else
				stopanim()
			end
		elseif k == 'e' then
			if (dancing == false) or (currentAnimID ~= 122471664395501 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/boogie.mp3')
				sound69.PlaybackSpeed = 2
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(122471664395501) -- uuid. 16769959846
			else
				stopanim()
				sound69.PlaybackSpeed = 1
			end
		elseif k == 'r' then
			if (dancing == false) or (currentAnimID ~= 100632740547268 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/valen.mp3')
				sound69.PlaybackSpeed = 1
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(100632740547268) -- uuid. 136962185637891
			else
				stopanim()
				sound69.PlaybackSpeed = 1
			end
		elseif k == 't' then
			if (dancing == false) or (currentAnimID ~= 129902601971178 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/order.mp3')
				sound69.PlaybackSpeed = 2
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(129902601971178) -- uuid. 130968726197789
			else
				stopanim()
				sound69.PlaybackSpeed = 1
			end
		elseif k == 'y' then
			if (dancing == false) or (currentAnimID ~= 132552289751540 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/sturdy.mp3')
				sound69.PlaybackSpeed = 1
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(132552289751540) -- uuid. 100864643591096
			else
				stopanim()
				sound69.PlaybackSpeed = 1
			end
		elseif k == 'u' then
			if (dancing == false) or (currentAnimID ~= 114964447248296 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/caramell.mp3')
				sound69.PlaybackSpeed = 1
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(114964447248296) -- uuid. 103597509139287
			else
				stopanim()
				sound69.PlaybackSpeed = 1
			end
		elseif k == 'f' then
			if (dancing == false) or (currentAnimID ~= 18945296583 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/billy.mp3')
				char.Humanoid.WalkSpeed = 4 * char:GetScale()
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(18945296583)
			else
				stopanim()
			end
		elseif k == 'g' then
			if (dancing == false) or (currentAnimID ~= 133530633475679 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/gangnamm.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(133530633475679) -- uuid. 12438774071
			else
				stopanim()
			end
		elseif k == 'p' then
			if (dancing == false) or (currentAnimID ~= 8829798048 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/pogo.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(8829798048, 1.5)
			else
				stopanim()
			end
		elseif k == 'j' then
			if (dancing == false) or (currentAnimID ~= 136139381223407 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/dancingin.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(136139381223407) -- uuid. 96444866125796
			else
				stopanim()
			end
		elseif k == 'k' then
			if (dancing == false) or (currentAnimID ~= 110403709064010 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/dr.wav')
				char.Humanoid.WalkSpeed = 4 * char:GetScale()
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(110403709064010, 1) -- uuid. 12637912409
			else
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				stopanim()
			end
		elseif k == 'l' then
			if (dancing == false) or (currentAnimID ~= 114928062507098 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/griddy.mp3')
				char.Humanoid.WalkSpeed = 4 * char:GetScale()
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(114928062507098) -- uuid. 15704995372
			else
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				stopanim()
			end
		elseif k == 'z' then
			if (dancing == false) or (currentAnimID ~= 94534967284996 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/lux.ogg')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(94534967284996) -- uuid. 15092317950
			else
				stopanim()
			end
		elseif k == 'x' then
			if (dancing == false) or (currentAnimID ~= 86634257330162 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/kazot.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(86634257330162, 1) -- uuid. 114036336168567
			else
				stopanim()
			end
		elseif k == 'h' then
			if (dancing == false) or (currentAnimID ~= 76647570617571 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = 'rbxassetid://1846368080'
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(76647570617571, 0.75) -- impossible for now
			else
				stopanim()
			end
		elseif k == 'v' then
			if (dancing == false) or (currentAnimID ~= 115910850138449 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/bimbam.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(115910850138449, 1.25) -- uuid. 16361564081
			else
				stopanim()
			end
		elseif k == 'c' then
			if (dancing == false) or (currentAnimID ~= 80947480089411 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/Moongazer.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(80947480089411) -- uuid. 118766274919427
			else
				stopanim()
			end
		elseif k == 'n' then
			if (dancing == false) or (currentAnimID ~= 111249002064299 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/Down.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(111249002064299)
			else
				stopanim()
			end
		elseif k == 'comma' then
			if (dancing == false) or (currentAnimID ~= 106920825643057 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/Mystery.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(106920825643057) -- uuid. 131401099812672
			else
				stopanim()
			end
		elseif k == 'leftbracket' then
			if (dancing == false) or (currentAnimID ~= 131776726113292 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/true_heart.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(131776726113292)
			else
				stopanim()
			end
		elseif k == 'quote' then
			if (dancing == false) or (currentAnimID ~= 140376973204352 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/Rewind.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(140376973204352)
			else
				stopanim()
			end
		end
	end
	if mode == 2 then
		if k == 'q' then
			if (dancing == false) or (currentAnimID ~= 89807443968447 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/XO.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(89807443968447) -- uuid. 73559770055600
			else
				stopanim()
			end
		elseif k == 'e' then
			if (dancing == false) or (currentAnimID ~= 105662609338555 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/drip.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(105662609338555) -- uuid. 100177280567649
			else
				stopanim()
			end
		elseif k == 'r' then
			if (dancing == false) or (currentAnimID ~= 75378609077044 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/freeflow.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(75378609077044) -- uuid. 101564911432113
			else
				stopanim()
			end
		elseif k == 't' then
			if (dancing == false) or (currentAnimID ~= 99152023738830 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/whateverlike.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(99152023738830) -- uuid. 83266223088944
			else
				stopanim()
			end
		elseif k == 'y' then
			if (dancing == false) or (currentAnimID ~= 124616782933406 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/balls.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(124616782933406) -- uuid. 15039779727
			else
				stopanim()
			end
		elseif k == 'h' then
			if (dancing == false) or (currentAnimID ~= 10609437925 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/faster.ogg')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(10609437925)
			else
				stopanim()
			end
		elseif k == 'g' then
			if (dancing == false) or (currentAnimID ~= 106801620167778 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/tryna.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(106801620167778, 1.25) -- uuid. 14887006269
			else
				stopanim()
			end
		elseif k == [[f]] then
			if (dancing == false) or (currentAnimID ~= 100136191465523 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/chronoshift.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(100136191465523) -- uuid. 125834337223799
			else
				stopanim()
			end
		elseif k == 'j' then
			if (dancing == false) or (currentAnimID ~= 114660931657915 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/dancingwit.mp3')
				sound69.PlaybackSpeed = 1
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				coolparticles.Parent = char.Torso
				playanim(114660931657915, 0.75) -- uuid. 93585895457618
			else
				stopanim()
				sound69.PlaybackSpeed = 1
			end
		elseif k == 'k' then
			if (dancing == false) or (currentAnimID ~= 82437456855605 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/frightfunk.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(82437456855605) -- uuid. 70835462045983
			else
				stopanim()
			end
		elseif k == 'u' then
			if (dancing == false) or (currentAnimID ~= 82472212108809 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/bloodpop.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(82472212108809) -- uuid. 132026285699359
			else
				stopanim()
			end
		elseif k == 'n' then
			if (dancing == false) or (currentAnimID ~= 91732165937556 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				playanim(91732165937556) -- uuid. 90819860436349
			else
				stopanim()
			end
		elseif k == 'z' then
			if (dancing == false) or (currentAnimID ~= 107261816578577 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/leftright.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(107261816578577) -- uuid. 137845929482571
			else
				stopanim()
			end
		elseif k == 'x' then
			if (dancing == false) or (currentAnimID ~= 101332118847458 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/heavylove.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(101332118847458) -- uuid. 85856686932206
			else
				stopanim()
			end
		elseif k == 'c' then
			if (dancing == false) or (currentAnimID ~= 109123683211464 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/million.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(109123683211464)
			else
				stopanim()
			end
		elseif k == 'v' then
			if (dancing == false) or (currentAnimID ~= 124173723813941 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/chaseme.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(124173723813941) -- uuid. 118311613925473
			else
				stopanim()
			end
		end
	elseif mode == 3 then
		if k == 'q' then
			if (dancing == false) or (currentAnimID ~= 109275255555630 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/crisscross.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(109275255555630) -- uuid. 73116243097694
			else
				stopanim()
			end
		elseif k == 'e' then
			if (dancing == false) or (currentAnimID ~= 93547721311170 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/brain.mp3')
				char.Humanoid.WalkSpeed = 4 * char:GetScale()
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(93547721311170) -- uuid. 86485871533985
			else
				stopanim()
			end
		elseif k == 'r' then
			if (dancing == false) or (currentAnimID ~= 77920672554221 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/duck.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(77920672554221, 1, true, nil, false) -- uuid. 13357063395
			else
				stopanim()
			end
		elseif k == 't' then
			if (dancing == false) or (currentAnimID ~= 87342159331194 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/espresso.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(87342159331194) -- uuid. 87342159331194
			else
				stopanim()
			end
		elseif k == 'y' then
			if (dancing == false) or (currentAnimID ~= 121967347012647 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/rakuten.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(121967347012647) -- uuid. 18985726113
			else
				stopanim()
			end
		elseif k == 'u' then
			if (dancing == false) or (currentAnimID ~= 116431235454771 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/daynnite.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(116431235454771) -- uuid. 8915458946
			else
				stopanim()
			end
		elseif k == 'f' then
			if (dancing == false) or (currentAnimID ~= 99811468921857 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/tort.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(99811468921857) -- uuid. 79630525228564
			else
				stopanim()
			end
		elseif k == 'g' then
			if (dancing == false) or (currentAnimID ~= 138510336377177 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/lemon.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(138510336377177, 0.8) -- uuid. 120262284704633
			else
				stopanim()
			end
		elseif k == 'h' then
			if (dancing == false) or (currentAnimID ~= 92629504992703 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/boom.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(92629504992703) -- uuid. 84471848998012
			else
				stopanim()
			end
		elseif k == 'j' then
			if (dancing == false) or (currentAnimID ~= 137217645571244 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/doodle.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(137217645571244, 2) -- uuid. 90069083924245
			else
				stopanim()
			end
		elseif k == 'k' then
			if (dancing == false) or (currentAnimID ~= 90469668054306 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/hypno.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(90469668054306) -- uuid. 72723551972407
			else
				stopanim()
			end
		elseif k == 'z' then
			if (dancing == false) or (currentAnimID ~= 129275138998868 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/assum.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(129275138998868) -- uuid. 15705077587
			else
				stopanim()
			end
		elseif k == 'x' then
			if (dancing == false) or (currentAnimID ~= 89457637802764 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/rotten.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(89457637802764, 2) -- uuid. 109990576374190
			else
				stopanim()
			end
		elseif k == 'c' then
			if (dancing == false) or (currentAnimID ~= 109167288749488 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/decadent.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(109167288749488, 0.35, true, nil, false) -- uuid. 84587788869282
			else
				stopanim()
			end
		elseif k == 'v' then
			if (dancing == false) or (currentAnimID ~= 135122971004487 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/misc.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(135122971004487, 2) -- uuid. 100305033962391
			else
				stopanim()
			end
		elseif k == 'n' then
			if (dancing == false) or (currentAnimID ~= 135648012207180 and getgenv().AutoPlayEmoteOnKeybind) then
				sound69.PlaybackSpeed = 1
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				dancing = true
				
				sound69.SoundId = customasset('Dances/jung.mp3')
				BackgroundTimePosition = sound69.TimePosition
				sound69:Play()
				playanim(135648012207180) -- uuid. 71723925114737
			else
				stopanim()
			end
		end
	end
	if k == 'equals' then
		playbacktrack = not playbacktrack
		if dancing == false then
			if playbacktrack == true then
				sound69:Play()
				sound69.Volume = 0.75
				game:GetService('StarterGui'):SetCore('SendNotification', {
					Title = 'Krystal Dance V3',
					Duration = 5,
					Text = 'Background music enabled',
				})
			else
				sound69:Stop()
				game:GetService('StarterGui'):SetCore('SendNotification', {
					Title = 'Krystal Dance V3',
					Duration = 5,
					Text = 'Background music disabled',
				})
			end
		end
	end
	if k == 'leftcontrol' then
		sprinting = not sprinting
	end
	if k == 'm' then
		if mode == 2 then
			mode = 3
			game:GetService('StarterGui'):SetCore('SendNotification', {
				Title = 'Krystal Dance V3',
				Duration = 5,
				Text = 'You are on page 3',
			})
		elseif mode == 1 then
			mode = 2
			game:GetService('StarterGui'):SetCore('SendNotification', {
				Title = 'Krystal Dance V3',
				Duration = 5,
				Text = 'You are on page 2',
			})
		elseif mode == 3 then
			mode = 1
			game:GetService('StarterGui'):SetCore('SendNotification', {
				Title = 'Krystal Dance V3',
				Duration = 5,
				Text = 'You are on page 1',
			})
		end
	end
end)
end

local moveDirectionConnection = char.Humanoid:GetPropertyChangedSignal('MoveDirection'):Connect(function()
	if char.Humanoid.Sit == false then
		if
			char.Humanoid.MoveDirection == Vector3.new(0, 0, 0)
			and dancing == false
			and idle == false
		then
			walking = false
			idle = true
			stopanim()
			fwait(1 / 500)
			if
				idle == true
				and walking == false
				and char.Humanoid.MoveDirection == Vector3.new(0, 0, 0)
				and dancing == false
				and playanother == true
			then
				playanim(0, 1, false, idleanim)
			end
		elseif
			char.Humanoid.MoveDirection ~= Vector3.new(0, 0, 0)
			and dancing == false
			and walking == false
		then
			char.Humanoid.WalkSpeed = 14 * char:GetScale()
			walking = true
			idle = false
			stopanim()
			fwait(1 / 500)
			if sprinting == false then
				char.Humanoid.WalkSpeed = 14 * char:GetScale()
				if
					walking == true
					and idle == false
					and char.Humanoid.MoveDirection ~= Vector3.new(0, 0, 0)
					and dancing == false
					and playanother == true
				then
					playanim(130213485744288, 1, false, walkanim)
				end
			else
				char.Humanoid.WalkSpeed = 24 * char:GetScale()
				if
					walking == true
					and idle == false
					and char.Humanoid.MoveDirection ~= Vector3.new(0, 0, 0)
					and dancing == false
					and playanother == true
				then
					playanim(130213485744288, 2.2, false, sprintanim)
				end
			end
		end
	end
end)
local sitConnection = char.Humanoid:GetPropertyChangedSignal('Sit'):Connect(function()
	print('sit')
	if char.Humanoid.Sit == true then
		stopanim()

		math.randomseed(os.clock())
		if math.random(1, 2) == 1 then
			playanim(133312100962627, 1, false)
		else
			playanim(122775909441631, 1, false)
		end
	else
		stopanim()
		task.wait(0.05)
		stopanim()
		char.Humanoid:Move(Vector3.new(0, 0, -1), true)
		char.Humanoid:Move(Vector3.new(0, 0, -1), true)
		char.Humanoid:Move(Vector3.new(0, 0, -1), true)
	end
end)

local RunService = game:GetService('RunService')

local Player = game:GetService('Players').LocalPlayer
local PlayerMouse = Player:GetMouse()
local Camera = workspace.CurrentCamera
local Character = char

local Humanoid = Character:WaitForChild('Humanoid')
local IsR6 = (Humanoid.RigType == Enum.HumanoidRigType.R6)

local Head = Character:WaitForChild('Head')
local Torso = if IsR6
	then Character:WaitForChild('Torso')
	else Character:WaitForChild('UpperTorso')

local Neck = if IsR6
	then Torso:WaitForChild('Neck')
	else Head:WaitForChild('Neck')
local Waist = if IsR6 then nil else Torso:WaitForChild('Waist')

local NeckOriginC0 = Neck.C0
local WaistOriginC0 = if Waist then Waist.C0 else nil

Neck.MaxVelocity = 1 / 3

local AllowedStates = {
	Enum.HumanoidStateType.Running,
	Enum.HumanoidStateType.Climbing,
	Enum.HumanoidStateType.Swimming,
	Enum.HumanoidStateType.Freefall,
	Enum.HumanoidStateType.Seated,
}
local IsAllowedState = (table.find(AllowedStates, Humanoid:GetState()) ~= nil)

local find = table.find
local atan = math.atan
local atan2 = math.atan2

local humanoidStateChangedConnection = Humanoid.StateChanged:Connect(function(_, new)
	IsAllowedState = (find(AllowedStates, new) ~= nil)
end)

local humDiedConnection

cleanupEmotes = function()
	if runServiceConnection then runServiceConnection:Disconnect() end
	--if runServiceConnection1 then runServiceConnection1:Disconnect() end
	if sitConnection then sitConnection:Disconnect() end
	if charAddedConnection then charAddedConnection:Disconnect() end
	if moveDirectionConnection then moveDirectionConnection:Disconnect() end
	if humanoidStateChangedConnection then humanoidStateChangedConnection:Disconnect() end
	if retargetConn then retargetConn:Disconnect() end
	if ghostUpdateConn then ghostUpdateConn:Disconnect() end
	if ghostRig then ghostRig:Destroy() end
	if EmoteUI then EmoteUI:Destroy() end
	if INPUTLOOPConnection then INPUTLOOPConnection:Disconnect() end
	stopanim()
	stopRetarget()
	if sound69 then sound69:Destroy() end
	getgenv().KrystalDanceRunning = false
	if humDiedConnection then humDiedConnection:Disconnect() end
end

humDiedConnection = RunService.PreSimulation:Connect(function()
	if char.Humanoid.Health == 0 or char.Humanoid.Health < 0 then
		cleanupEmotes()
	end
end)

local oldC0N = Neck.C0

local updatesPerSecond = 10
local Character = char
local Root = char.HumanoidRootPart
introsound = Instance.new('Sound', Root)
introsound.SoundId = 'rbxassetid://236146895'
introsound.Volume = 1
introsound:Play()

bigfedora = Instance.new('Part', Character)
bigfedora.Size = Vector3.new(2, 2, 2)
bigfedora.CFrame = bigfedora.CFrame:inverse()
	* Root.CFrame
	* CFrame.new(math.random(-60, 60), -0.2, math.random(-60, 60))
	* CFrame.Angles(0, math.rad(math.random(-180, 180)), 0)
bigfedora.CanCollide = false
bigfedora.Anchored = true
bigfedora.Name = 'mbigf'
mbigfedora = Instance.new('SpecialMesh', bigfedora)
mbigfedora.MeshType = 'FileMesh'
mbigfedora.Scale = Vector3.new(5, 5, 5)
mbigfedora.MeshId, mbigfedora.TextureId =
	'http://www.roblox.com/asset/?id=1125478',
	'http://www.roblox.com/asset/?id=1125479'

for i = 1, 60 do
	bigfedora.CFrame = bigfedora.CFrame:lerp(
		CFrame.new(Root.Position)
			* CFrame.new(0, -0.1, 0)
			* CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),
		0.09
	)
	task.wait(1 / 60)
end
wait(0.25)
for i = 1, 50 do
	bigfedora.CFrame =
		bigfedora.CFrame:lerp(CFrame.new(char.Head.Position), 0.05)
	task.wait(1 / 60)
end
zmc = 0
for i = 1, 29 do
	zmc = zmc + 2
	mbigfedora.Scale = mbigfedora.Scale - Vector3.new(0.25, 0.25, 0.25)
	bigfedora.CFrame = bigfedora.CFrame
		* CFrame.Angles(math.rad(0), math.rad(zmc), 0)
	task.wait(1 / 60)
end
bigfedora:Destroy()
local nim = 0

local hum = char.Humanoid
local cf = CFrame.new
local DIEDLOOP
local HEADLOOP
repeat
	char.Humanoid:Move(Vector3.new(0, 0, -1), true)
	task.wait(1 / 60)
	nim = nim + 1
until nim == 3
runServiceConnection = RunService.RenderStepped:Connect(function(deltaTime: number)
	local function Alpha(n)
		return math.clamp(n * deltaTime * 60, 0, 1)
	end
	hum.CameraOffset = hum.CameraOffset:Lerp(
		(hrp.CFrame * cf(0, 1.5, 0)):PointToObjectSpace(h.Position),
		Alpha(0.15)
	)
	if IsAllowedState and dancing == false then
		local HeadPosition = Head.Position
		if Neck then
			local MousePos = PlayerMouse.Hit.Position
			local TranslationVector = (HeadPosition - MousePos).Unit
			local Pitch = atan(TranslationVector.Y)
			local Yaw = TranslationVector:Cross(Torso.CFrame.LookVector).Y
			local Roll = atan(Yaw)

			local NeckCFrame
			if IsR6 then
				NeckCFrame = CFrame.Angles(Pitch, 0, Yaw)
			else
				NeckCFrame = CFrame.Angles(-Pitch * 0.5, Yaw, -Roll * 0.5)
				local waistCFrame = CFrame.Angles(-Pitch * 0.5, Yaw * 0.5, 0)
				Waist.C0 = Waist.C0:Lerp(
					WaistOriginC0 * waistCFrame,
					updatesPerSecond * deltaTime
				)
			end
			Neck.C0 = Neck.C0:Lerp(
				NeckOriginC0 * NeckCFrame,
				updatesPerSecond * deltaTime
			)
		end
	elseif dancing == true then
		Neck.C0 = oldC0N
	end
	if char.Humanoid.MoveDirection == Vector3.new(0, 0, 0) then
		walking = false
		idle = true
	else
		walking = true
		idle = false
	end
end)
