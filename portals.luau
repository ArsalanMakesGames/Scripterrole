local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local function createEvent(name)
	local event = Instance.new("RemoteEvent")
	event.Name = name
	event.Parent = ReplicatedStorage
	return event
end

local changeHeadEvent = createEvent("ChangeHead")
local changeKorbloxEvent = createEvent("ChangeKorblox")
local changePirateLegEvent = createEvent("ChangePirateLeg")
local changeSkeletonLegEvent = createEvent("ChangeSkeletonLeg")
local changePoisonedHornsEvent = createEvent("ChangePoisonedHorns")
local changeFrozenHornsEvent = createEvent("ChangeFrozenHorns")
local changeSadFaceEvent = createEvent("ChangeSadFace")
local changeWorriedFaceEvent = createEvent("ChangeWorriedFace")
local changeBlackTuxedoEvent = createEvent("ChangeBlackTuxedo")
local changeWhiteTuxedoEvent = createEvent("ChangeWhiteTuxedo")
local changeDirtyPantsEvent = createEvent("ChangeDirtyPants")
local changeRippedPantsEvent = createEvent("ChangeRippedPants")
local changeBlackTPantsEvent = createEvent("ChangeBlackTPants")
local changeWhiteTPantsEvent = createEvent("ChangeWhiteTPants")
local changeSBrownHairEvent = createEvent("ChangeSBrownHair")
local changeBaconHairEvent = createEvent("ChangeBaconHair")
local changeRippedShirtEvent = createEvent("ChangeRippedShirt")
local changeHomelessShirtEvent = createEvent("ChangeHomelessShirt")
local changeDominusEEvent = createEvent("ChangeDominusE")
local changeSTFedoraEvent = createEvent("ChangeSTFedora")
local changeDominusIEvent = createEvent("ChangeDominusI")
local changeClockworkShadesEvent = createEvent("ChangeClockworkShades")
local changeHatEvent = createEvent("ChangeHat")
local changeNothingEvent = createEvent("ChangeNothing")
local changeBindleEvent = createEvent("ChangeBindle")
local changeRakeEvent = createEvent("ChangeRake")
local changeWhiteNHEvent = createEvent("ChangeWhiteNH")
local changeBlackNHEvent = createEvent("ChangeBlackNH")
local changeAngelWingsEvent = createEvent("ChangeAngelWings")
local changeBlackAntlersEvent = createEvent("ChangeBlackAntlers")
local changeDirtyScarfEvent = createEvent("ChangeDirtyScarf")
local changeWrenchEvent = createEvent("ChangeWrench")
local changeBlueValkEvent = createEvent("ChangeBlueValk")
local changeVioletValkEvent = createEvent("ChangeVioletValk")
local changeCrowbarBackEvent = createEvent("ChangeCrowbarBack")
local changeBanjoBackEvent = createEvent("ChangeBanjoBack")
local changeWorkclockEvent = createEvent("ChangeWorkclock")
local changeClockworkEvent = createEvent("ChangeClockwork")
local changeRobuxSignEvent = createEvent("ChangeRobuxSign")
local changeNothingStage10Event = createEvent("ChangeNothingStage10")
local changeBrokenGlassesEvent = createEvent("ChangeBrokenGlasses")
local changeCardboardSwordEvent = createEvent("ChangeCardboardSword")
local changeSilverKONEvent = createEvent("ChangeSilverKON")
local changeGoldenKONEvent = createEvent("ChangeGoldenKON")
local changeBossNecklaceEvent = createEvent("ChangeBossNecklace")
local changeBlingNecklaceEvent = createEvent("ChangeBlingNecklace")
local changeCardboardShadesEvent = createEvent("ChangeCardboardShades")
local changeCrossNothingEvent = createEvent("ChangeCrossNothing")

local chosenStage1 = {}
local chosenStage2 = {}
local chosenStage3 = {}
local chosenStage4 = {}
local chosenStage5 = {}
local chosenStage6 = {}
local chosenStage7 = {}
local chosenStage8 = {}
local chosenStage9 = {}
local chosenStage10 = {}
local chosenStage11 = {}
local chosenStage12 = {}

local function saveColors(character)
	local bodyColors = character:FindFirstChildOfClass("BodyColors")
	if not bodyColors then return nil end
	return {
		HeadColor = bodyColors.HeadColor3,
		TorsoColor = bodyColors.TorsoColor3,
		LeftArmColor = bodyColors.LeftArmColor3,
		RightArmColor = bodyColors.RightArmColor3,
		LeftLegColor = bodyColors.LeftLegColor3,
		RightLegColor = bodyColors.RightLegColor3,
	}
end

local function restoreColors(character, savedColors)
	local bodyColors = character:FindFirstChildOfClass("BodyColors")
	if not bodyColors or not savedColors then return end
	bodyColors.HeadColor3 = savedColors.HeadColor
	bodyColors.TorsoColor3 = savedColors.TorsoColor
	bodyColors.LeftArmColor3 = savedColors.LeftArmColor
	bodyColors.RightArmColor3 = savedColors.RightArmColor
	bodyColors.LeftLegColor3 = savedColors.LeftLegColor
	bodyColors.RightLegColor3 = savedColors.RightLegColor
end

local function appendToAccessoryString(currentString, id)
	if currentString == "" or currentString == nil then
		return tostring(id)
	else
		local ids = currentString:split(",")
		for _, existingId in ipairs(ids) do
			if existingId == tostring(id) then
				return currentString
			end
		end
		return currentString .. "," .. tostring(id)
	end
end

local function setStage(player, stageNumber)
	local leaderstats = player:FindFirstChild("leaderstats")
	if leaderstats then
		local stage = leaderstats:FindFirstChild("Stage")
		if stage then
			stage.Value = stageNumber
		end
	end
end

local function applyDescription(player, chosenTable, stageNumber, modifier)
	if chosenTable[player] then return end
	local character = player.Character
	if not character then return end
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if not humanoid then return end

	local success, result = pcall(function()
		local savedColors = saveColors(character)
		local description = humanoid:GetAppliedDescription()
		modifier(description)
		humanoid:ApplyDescription(description)
		restoreColors(character, savedColors)
	end)

	if success then
		chosenTable[player] = true
		setStage(player, stageNumber)
	else
		warn("Failed to apply description: " .. result)
	end
end

local function applyFace(player, chosenTable, stageNumber, faceName)
	if chosenTable[player] then return end
	local character = player.Character
	if not character then return end
	local head = character:FindFirstChild("Head")
	if not head then return end
	local facesFolder = ReplicatedStorage:FindFirstChild("faces")
	if not facesFolder then return end
	local faceDecal = head:FindFirstChildOfClass("Decal")
	local faceImage = facesFolder:FindFirstChild(faceName)
	if faceDecal and faceImage then
		faceDecal.Texture = faceImage.Texture
		chosenTable[player] = true
		setStage(player, stageNumber)
	end
end

Players.PlayerAdded:Connect(function(player)
	local leaderstats = player:FindFirstChild("leaderstats") or Instance.new("Folder", player)
	leaderstats.Name = "leaderstats"
	local stage = Instance.new("IntValue", leaderstats)
	stage.Name = "Stage"
	stage.Value = 0

	player.CharacterAdded:Connect(function(character)
		chosenStage1[player], chosenStage2[player], chosenStage3[player] = nil, nil, nil
		chosenStage4[player], chosenStage5[player], chosenStage6[player] = nil, nil, nil
		chosenStage7[player], chosenStage8[player], chosenStage9[player] = nil, nil, nil
		chosenStage10[player], chosenStage11[player], chosenStage12[player] = nil, nil, nil
	end)
end)

changeHeadEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage1, 1, function(desc) desc.Head = id end)
end)

changeKorbloxEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage1, 1, function(desc) desc.RightLeg = id end)
end)

changePirateLegEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage1, 1, function(desc) desc.RightLeg = id end)
end)

changeSkeletonLegEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage1, 1, function(desc) desc.FaceAccessory = appendToAccessoryString(desc.FaceAccessory, id) end)
end)

changePoisonedHornsEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage2, 2, function(desc) desc.HatAccessory = appendToAccessoryString(desc.HatAccessory, id) end)
end)

changeFrozenHornsEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage2, 2, function(desc) desc.HatAccessory = appendToAccessoryString(desc.HatAccessory, id) end)
end)

changeSadFaceEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage2, 2, function(desc) desc.HairAccessory = appendToAccessoryString(desc.HairAccessory, id) end)
end)

changeWorriedFaceEvent.OnServerEvent:Connect(function(player, faceName)
	applyFace(player, chosenStage2, 2, faceName)
end)

changeBlackTuxedoEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage3, 3, function(desc) desc.Shirt = id end)
end)

changeWhiteTuxedoEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage3, 3, function(desc) desc.Shirt = id end)
end)

changeDirtyPantsEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage3, 3, function(desc) desc.Pants = id end)
end)

changeRippedPantsEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage3, 3, function(desc) desc.Pants = id end)
end)

changeBlackTPantsEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage4, 4, function(desc) desc.Pants = id end)
end)

changeWhiteTPantsEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage4, 4, function(desc) desc.Pants = id end)
end)

changeSBrownHairEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage4, 4, function(desc) desc.HairAccessory = appendToAccessoryString(desc.HairAccessory, id) end)
end)

changeBaconHairEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage4, 4, function(desc) desc.HairAccessory = appendToAccessoryString(desc.HairAccessory, id) end)
end)

changeRippedShirtEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage5, 5, function(desc) desc.Shirt = id end)
end)

changeHomelessShirtEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage5, 5, function(desc) desc.Shirt = id end)
end)

changeDominusEEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage5, 5, function(desc) desc.HatAccessory = appendToAccessoryString(desc.HatAccessory, id) end)
end)

changeSTFedoraEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage5, 5, function(desc) desc.HatAccessory = appendToAccessoryString(desc.HatAccessory, id) end)
end)

changeDominusIEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage6, 6, function(desc) desc.HatAccessory = appendToAccessoryString(desc.HatAccessory, id) end)
end)

changeClockworkShadesEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage6, 6, function(desc) desc.FaceAccessory = appendToAccessoryString(desc.FaceAccessory, id) end)
end)

changeHatEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage6, 6, function(desc) desc.HatAccessory = appendToAccessoryString(desc.HatAccessory, id) end)
end)

changeNothingEvent.OnServerEvent:Connect(function(player)
	if not chosenStage6[player] then
		chosenStage6[player] = true
		setStage(player, 6)
	end
end)

changeBindleEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage7, 7, function(desc) desc.BackAccessory = appendToAccessoryString(desc.BackAccessory, id) end)
end)

changeRakeEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage7, 7, function(desc) desc.BackAccessory = appendToAccessoryString(desc.BackAccessory, id) end)
end)

changeWhiteNHEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage7, 7, function(desc) desc.HatAccessory = appendToAccessoryString(desc.HatAccessory, id) end)
end)

changeBlackNHEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage7, 7, function(desc) desc.NeckAccessory = appendToAccessoryString(desc.NeckAccessory, id) end)
end)

changeAngelWingsEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage8, 8, function(desc) desc.BackAccessory = appendToAccessoryString(desc.BackAccessory, id) end)
end)

changeBlackAntlersEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage8, 8, function(desc) desc.HatAccessory = appendToAccessoryString(desc.HatAccessory, id) end)
end)

changeDirtyScarfEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage8, 8, function(desc) desc.NeckAccessory = appendToAccessoryString(desc.NeckAccessory, id) end)
end)

changeWrenchEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage8, 8, function(desc) desc.BackAccessory = appendToAccessoryString(desc.BackAccessory, id) end)
end)

changeBlueValkEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage9, 9, function(desc) desc.HatAccessory = appendToAccessoryString(desc.HatAccessory, id) end)
end)

changeVioletValkEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage9, 9, function(desc) desc.HatAccessory = appendToAccessoryString(desc.HatAccessory, id) end)
end)

changeCrowbarBackEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage9, 9, function(desc) desc.BackAccessory = appendToAccessoryString(desc.BackAccessory, id) end)
end)

changeBanjoBackEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage9, 9, function(desc) desc.BackAccessory = appendToAccessoryString(desc.BackAccessory, id) end)
end)

changeWorkclockEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage10, 10, function(desc) desc.HatAccessory = appendToAccessoryString(desc.HatAccessory, id) end)
end)

changeClockworkEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage10, 10, function(desc) desc.HatAccessory = appendToAccessoryString(desc.HatAccessory, id) end)
end)

changeRobuxSignEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage10, 10, function(desc) desc.FrontAccessory = appendToAccessoryString(desc.FrontAccessory, id) end)
end)

changeNothingStage10Event.OnServerEvent:Connect(function(player)
	if not chosenStage10[player] then
		chosenStage10[player] = true
		setStage(player, 10)
	end
end)

changeBrokenGlassesEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage11, 11, function(desc) desc.FaceAccessory = appendToAccessoryString(desc.FaceAccessory, id) end)
end)

changeCardboardSwordEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage11, 11, function(desc) desc.BackAccessory = appendToAccessoryString(desc.BackAccessory, id) end)
end)

changeSilverKONEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage11, 11, function(desc) desc.HatAccessory = appendToAccessoryString(desc.HatAccessory, id) end)
end)

changeGoldenKONEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage11, 11, function(desc) desc.HatAccessory = appendToAccessoryString(desc.HatAccessory, id) end)
end)

changeBossNecklaceEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage12, 12, function(desc) desc.NeckAccessory = appendToAccessoryString(desc.NeckAccessory, id) end)
end)

changeBlingNecklaceEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage12, 12, function(desc) desc.NeckAccessory = appendToAccessoryString(desc.NeckAccessory, id) end)
end)

changeCardboardShadesEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, chosenStage12, 12, function(desc) desc.FaceAccessory = appendToAccessoryString(desc.FaceAccessory, id) end)
end)

changeCrossNothingEvent.OnServerEvent:Connect(function(player)
	if not chosenStage12[player] then
		chosenStage12[player] = true
		setStage(player, 12)
	end
end)
