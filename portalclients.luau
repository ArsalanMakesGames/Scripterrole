local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local MarketplaceService = game:GetService("MarketplaceService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ContentProvider = game:GetService("ContentProvider")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local targetPart = workspace:WaitForChild("HeadlessPortal")
local korbloxPortal = workspace:WaitForChild("KorbloxPortal")
local pirateLegPortal = workspace:WaitForChild("PirateLegPortal")
local skeletonLegPortal = workspace:WaitForChild("SkeletonLegPortal")
local poisonedHornsPortal = workspace:WaitForChild("PoinsonedHorns")
local frozenHornsPortal = workspace:WaitForChild("FrozenHorns")
local sadFacePortal = workspace:WaitForChild("SadFace")
local worriedFacePortal = workspace:WaitForChild("WorriedFace")
local blackTuxedoPortal = workspace:WaitForChild("BlackTuxedo")
local whiteTuxedoPortal = workspace:WaitForChild("WhiteTuxedo")
local dirtyPantsPortal = workspace:WaitForChild("DirtyPants")
local rippedPantsPortal = workspace:WaitForChild("RippedPants")
local blackTPantsPortal = workspace:WaitForChild("BlackTPants")
local whiteTPantsPortal = workspace:WaitForChild("WhiteTPants")
local sBrownHairPortal = workspace:WaitForChild("SBrownHair")
local baconHairPortal = workspace:WaitForChild("BaconHair")
local rippedShirtPortal = workspace:WaitForChild("RippedShirt")
local homelessShirtPortal = workspace:WaitForChild("HomelessShirt")
local dominusEPortal = workspace:WaitForChild("DominusE")
local stFedoraPortal = workspace:WaitForChild("STFedora")
local dominusIPortal = workspace:WaitForChild("DominusI")
local clockworkShadesPortal = workspace:WaitForChild("ClockworkShades")
local hatPortal = workspace:WaitForChild("Hat")
local nothingPortal = workspace:WaitForChild("Nothing")
local bindlePortal = workspace:WaitForChild("Bindle")
local rakePortal = workspace:WaitForChild("Rake")
local whiteNHPortal = workspace:WaitForChild("WhiteNH")
local blackNHPortal = workspace:WaitForChild("BlackNH")
local angelWingsPortal = workspace:WaitForChild("AngelWings")
local blackAntlersPortal = workspace:WaitForChild("BlackAntlers")
local dirtyScarfPortal = workspace:WaitForChild("DirtyScarf")
local wrenchPortal = workspace:WaitForChild("Wrench")
local blueValkPortal = workspace:WaitForChild("BlueValk")
local violetValkPortal = workspace:WaitForChild("VioletValk")
local crowbarBackPortal = workspace:WaitForChild("CrowbarBack")
local banjoBackPortal = workspace:WaitForChild("BanjoBack")
local workclockPortal = workspace:WaitForChild("Workclock")
local clockworkPortal = workspace:WaitForChild("Clockwork")
local robuxSignPortal = workspace:WaitForChild("RobuxSign")
local nothingStage10Portal = workspace:WaitForChild("Nthng")
local brokenGlassesPortal = workspace:WaitForChild("BrokenGlasses")
local cardboardSwordPortal = workspace:WaitForChild("CardboardSword")
local silverKONPortal = workspace:WaitForChild("SilverKON")
local goldenKONPortal = workspace:WaitForChild("GoldenKON")
local bossNecklacePortal = workspace:WaitForChild("BossNecklace")
local blingNecklacePortal = workspace:WaitForChild("BlingNecklace")
local cardboardShadesPortal = workspace:WaitForChild("CardboardShades")
local crossNothingPortal = workspace:WaitForChild("CrossNothing")

local changeHeadEvent = ReplicatedStorage:WaitForChild("ChangeHead")
local changeKorbloxEvent = ReplicatedStorage:WaitForChild("ChangeKorblox")
local changePirateLegEvent = ReplicatedStorage:WaitForChild("ChangePirateLeg")
local changeSkeletonLegEvent = ReplicatedStorage:WaitForChild("ChangeSkeletonLeg")
local changePoisonedHornsEvent = ReplicatedStorage:WaitForChild("ChangePoisonedHorns")
local changeFrozenHornsEvent = ReplicatedStorage:WaitForChild("ChangeFrozenHorns")
local changeSadFaceEvent = ReplicatedStorage:WaitForChild("ChangeSadFace")
local changeWorriedFaceEvent = ReplicatedStorage:WaitForChild("ChangeWorriedFace")
local changeBlackTuxedoEvent = ReplicatedStorage:WaitForChild("ChangeBlackTuxedo")
local changeWhiteTuxedoEvent = ReplicatedStorage:WaitForChild("ChangeWhiteTuxedo")
local changeDirtyPantsEvent = ReplicatedStorage:WaitForChild("ChangeDirtyPants")
local changeRippedPantsEvent = ReplicatedStorage:WaitForChild("ChangeRippedPants")
local changeBlackTPantsEvent = ReplicatedStorage:WaitForChild("ChangeBlackTPants")
local changeWhiteTPantsEvent = ReplicatedStorage:WaitForChild("ChangeWhiteTPants")
local changeSBrownHairEvent = ReplicatedStorage:WaitForChild("ChangeSBrownHair")
local changeBaconHairEvent = ReplicatedStorage:WaitForChild("ChangeBaconHair")
local changeRippedShirtEvent = ReplicatedStorage:WaitForChild("ChangeRippedShirt")
local changeHomelessShirtEvent = ReplicatedStorage:WaitForChild("ChangeHomelessShirt")
local changeDominusEEvent = ReplicatedStorage:WaitForChild("ChangeDominusE")
local changeSTFedoraEvent = ReplicatedStorage:WaitForChild("ChangeSTFedora")
local changeDominusIEvent = ReplicatedStorage:WaitForChild("ChangeDominusI")
local changeClockworkShadesEvent = ReplicatedStorage:WaitForChild("ChangeClockworkShades")
local changeHatEvent = ReplicatedStorage:WaitForChild("ChangeHat")
local changeNothingEvent = ReplicatedStorage:WaitForChild("ChangeNothing")
local changeBindleEvent = ReplicatedStorage:WaitForChild("ChangeBindle")
local changeRakeEvent = ReplicatedStorage:WaitForChild("ChangeRake")
local changeWhiteNHEvent = ReplicatedStorage:WaitForChild("ChangeWhiteNH")
local changeBlackNHEvent = ReplicatedStorage:WaitForChild("ChangeBlackNH")
local changeAngelWingsEvent = ReplicatedStorage:WaitForChild("ChangeAngelWings")
local changeBlackAntlersEvent = ReplicatedStorage:WaitForChild("ChangeBlackAntlers")
local changeDirtyScarfEvent = ReplicatedStorage:WaitForChild("ChangeDirtyScarf")
local changeWrenchEvent = ReplicatedStorage:WaitForChild("ChangeWrench")
local changeBlueValkEvent = ReplicatedStorage:WaitForChild("ChangeBlueValk")
local changeVioletValkEvent = ReplicatedStorage:WaitForChild("ChangeVioletValk")
local changeCrowbarBackEvent = ReplicatedStorage:WaitForChild("ChangeCrowbarBack")
local changeBanjoBackEvent = ReplicatedStorage:WaitForChild("ChangeBanjoBack")
local changeWorkclockEvent = ReplicatedStorage:WaitForChild("ChangeWorkclock")
local changeClockworkEvent = ReplicatedStorage:WaitForChild("ChangeClockwork")
local changeRobuxSignEvent = ReplicatedStorage:WaitForChild("ChangeRobuxSign")
local changeNothingStage10Event = ReplicatedStorage:WaitForChild("ChangeNothingStage10")
local changeBrokenGlassesEvent = ReplicatedStorage:WaitForChild("ChangeBrokenGlasses")
local changeCardboardSwordEvent = ReplicatedStorage:WaitForChild("ChangeCardboardSword")
local changeSilverKONEvent = ReplicatedStorage:WaitForChild("ChangeSilverKON")
local changeGoldenKONEvent = ReplicatedStorage:WaitForChild("ChangeGoldenKON")
local changeBossNecklaceEvent = ReplicatedStorage:WaitForChild("ChangeBossNecklace")
local changeBlingNecklaceEvent = ReplicatedStorage:WaitForChild("ChangeBlingNecklace")
local changeCardboardShadesEvent = ReplicatedStorage:WaitForChild("ChangeCardboardShades")
local changeCrossNothingEvent = ReplicatedStorage:WaitForChild("ChangeCrossNothing")

local portalSound = ReplicatedStorage:WaitForChild("Sounds"):WaitForChild("Portal")
local completedGui = playerGui:WaitForChild("Completed")
completedGui.Enabled = false
local purchaseItemGui = playerGui:WaitForChild("PurchaseItem")
local previewFrame = purchaseItemGui:WaitForChild("PreviewFrame")
local nameLabel = previewFrame:WaitForChild("Name")
local priceLabel = previewFrame:WaitForChild("Price")
local thumbnailImage = previewFrame:WaitForChild("Thumbnail")
local buyItemButton = previewFrame:WaitForChild("Buyitem")

local blackTuxedoAssetId = 5177485134
local whiteTuxedoAssetId = 7037418009
local blackTPantsAssetId = 76048390088778
local whiteTPantsAssetId = 10040957738
local currentPurchaseAssetId = blackTuxedoAssetId
local defaultPriceText = priceLabel.Text
local activePurchaseTask = nil

buyItemButton.MouseButton1Click:Connect(function()
	if currentPurchaseAssetId == 139607718 then
		MarketplaceService:PromptBundlePurchase(player, 192)
	elseif currentPurchaseAssetId == 27847473 then
		MarketplaceService:PromptBundlePurchase(player, 306)
	elseif currentPurchaseAssetId == 36781481 then
		MarketplaceService:PromptBundlePurchase(player, 295)
	else
		MarketplaceService:PromptPurchase(player, currentPurchaseAssetId)
	end
end)

local hasChosenStage1, hasChosenStage2, hasChosenStage3, hasChosenStage4, hasChosenStage5, hasChosenStage6, hasChosenStage7, hasChosenStage8, hasChosenStage9, hasChosenStage10, hasChosenStage11, hasChosenStage12 = false, false, false, false, false, false, false, false, false, false, false, false
local isShowing = false
local selectedTimeStage1, selectedTimeStage2, selectedTimeStage3, selectedTimeStage4, selectedTimeStage5, selectedTimeStage6, selectedTimeStage7, selectedTimeStage8, selectedTimeStage9, selectedTimeStage10, selectedTimeStage11, selectedTimeStage12 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)

local allPortals = {targetPart, korbloxPortal, pirateLegPortal, skeletonLegPortal, poisonedHornsPortal, frozenHornsPortal, sadFacePortal, worriedFacePortal, blackTuxedoPortal, whiteTuxedoPortal, dirtyPantsPortal, rippedPantsPortal, blackTPantsPortal, whiteTPantsPortal, sBrownHairPortal, baconHairPortal, rippedShirtPortal, homelessShirtPortal, dominusEPortal, stFedoraPortal, dominusIPortal, clockworkShadesPortal, hatPortal, nothingPortal, bindlePortal, rakePortal, whiteNHPortal, blackNHPortal, angelWingsPortal, blackAntlersPortal, dirtyScarfPortal, wrenchPortal, blueValkPortal, violetValkPortal, crowbarBackPortal, banjoBackPortal, workclockPortal, clockworkPortal, robuxSignPortal, nothingStage10Portal, brokenGlassesPortal, cardboardSwordPortal, silverKONPortal, goldenKONPortal, bossNecklacePortal, blingNecklacePortal, cardboardShadesPortal, crossNothingPortal}
local assetIds = {15093053680, 139607718, 27847473, 36781481, 1744060292, 74891470, 5177485134, 7037418009, 4517967105, 6714301934, 76048390088778, 10040957738, 62743701, 63690008, 11240142540, 11231271620, 21070012, 1285307, 31101391, 11748356, 116190410575017, 83992278106110, 5865567866, 121876992066004, 11297708, 10467173753, 13852148237, 90422607896192, 83564809754628, 1365767, 1402432199, 16294349118, 13503210265, 172309919, 1235488, 12753661062, 117254447027475, 238903800, 439945661, 439945864, 362029620, 33171947, 113325603}
local assetsToPreload = {portalSound}
for _, id in ipairs(assetIds) do table.insert(assetsToPreload, "rbxassetid://" .. id) end
pcall(function() ContentProvider:PreloadAsync(assetsToPreload) end)

local originalColors, touchingParts = {}, {}
for _, portal in ipairs(allPortals) do
	if portal then
		touchingParts[portal] = {}
		if portal:IsA("BasePart") then originalColors[portal] = portal.Color
		elseif portal:IsA("Model") then
			originalColors[portal] = {}
			for _, part in ipairs(portal:GetDescendants()) do if part:IsA("BasePart") then originalColors[portal][part] = part.Color end end
		end
	end
end

local function showCompletedGui(selectedTime)
	if isShowing or (selectedTime and tick() - selectedTime < 3) then return end
	isShowing = true
	completedGui.Enabled = true
	task.delay(3, function() completedGui.Enabled = false; isShowing = false end)
end

local function tweenPortal(portal, color)
	if not portal then return end
	if portal:IsA("BasePart") then TweenService:Create(portal, tweenInfo, {Color = color}):Play()
	elseif portal:IsA("Model") then
		for _, part in ipairs(portal:GetDescendants()) do if part:IsA("BasePart") then TweenService:Create(part, tweenInfo, {Color = color}):Play() end end
	end
end

local function resetPortals()
	for _, portal in ipairs(allPortals) do
		if portal then
			if portal:IsA("BasePart") then tweenPortal(portal, originalColors[portal])
			elseif portal:IsA("Model") then
				for part, color in pairs(originalColors[portal]) do TweenService:Create(part, tweenInfo, {Color = color}):Play() end
			end
		end
	end
end

local function showPurchaseInfo(assetId)
	if activePurchaseTask then task.cancel(activePurchaseTask) end
	currentPurchaseAssetId = assetId
	thumbnailImage.Image = "rbxthumb://type=Asset&id=" .. assetId .. "&w=420&h=420"
	if assetId == 139607718 then
		nameLabel.Text = "Korblox Deathspeaker"
		priceLabel.Text = defaultPriceText .. "17000"
	elseif assetId == 27847473 then
		nameLabel.Text = "Pirate Leg"
		priceLabel.Text = defaultPriceText .. "209"
	elseif assetId == 36781481 then
		nameLabel.Text = "Skeleton Leg"
		priceLabel.Text = defaultPriceText .. "262"
	else
		local success, info = pcall(function() return MarketplaceService:GetProductInfo(assetId) end)
		if success and info then 
			nameLabel.Text = info.Name
			priceLabel.Text = defaultPriceText .. tostring(info.PriceInRobux) 
		elseif assetId == 116190410575017 then
			nameLabel.Text = "Hat"
			priceLabel.Text = defaultPriceText .. "---"
		end
	end
	purchaseItemGui.Enabled = true
	activePurchaseTask = task.spawn(function()
		task.wait(5)
		purchaseItemGui.Enabled = false
		activePurchaseTask = nil
	end)
end

local function setupPortal(portal, hasChosenFunc, setChosenFunc, getSelectedTime, setSelectedTime, callback)
	if not portal then return end
	local touchParts = {}
	if portal:IsA("BasePart") then table.insert(touchParts, portal)
	elseif portal:IsA("Model") then
		for _, part in ipairs(portal:GetDescendants()) do if part:IsA("BasePart") then table.insert(touchParts, part) end end
	end
	for _, touchTarget in ipairs(touchParts) do
		touchTarget.Touched:Connect(function(otherPart)
			local parentModel = otherPart:FindFirstAncestorOfClass("Model")
			if not parentModel then return end
			local touchingPlayer = Players:GetPlayerFromCharacter(parentModel)
			if touchingPlayer ~= player then return end
			if next(touchingParts[portal]) then touchingParts[portal][otherPart] = true; return end
			touchingParts[portal][otherPart] = true
			if hasChosenFunc() then showCompletedGui(getSelectedTime())
			else setChosenFunc(); setSelectedTime(); tweenPortal(portal, Color3.fromRGB(86, 255, 39)); portalSound:Play(); callback() end
		end)
		touchTarget.TouchEnded:Connect(function(otherPart)
			local parentModel = otherPart:FindFirstAncestorOfClass("Model")
			if not parentModel then return end
			local touchingPlayer = Players:GetPlayerFromCharacter(parentModel)
			if touchingPlayer == player then touchingParts[portal][otherPart] = nil end
		end)
	end
end

setupPortal(targetPart, function() return hasChosenStage1 end, function() hasChosenStage1 = true end, function() return selectedTimeStage1 end, function() selectedTimeStage1 = tick() end, function() changeHeadEvent:FireServer(15093053680) end)
setupPortal(korbloxPortal, function() return hasChosenStage1 end, function() hasChosenStage1 = true end, function() return selectedTimeStage1 end, function() selectedTimeStage1 = tick() end, function() changeKorbloxEvent:FireServer(139607718); showPurchaseInfo(139607718) end)
setupPortal(pirateLegPortal, function() return hasChosenStage1 end, function() hasChosenStage1 = true end, function() return selectedTimeStage1 end, function() selectedTimeStage1 = tick() end, function() changePirateLegEvent:FireServer(27847473); showPurchaseInfo(27847473) end)
setupPortal(skeletonLegPortal, function() return hasChosenStage1 end, function() hasChosenStage1 = true end, function() return selectedTimeStage1 end, function() selectedTimeStage1 = tick() end, function() changeSkeletonLegEvent:FireServer(36781481); showPurchaseInfo(36781481) end)

setupPortal(poisonedHornsPortal, function() return hasChosenStage2 end, function() hasChosenStage2 = true end, function() return selectedTimeStage2 end, function() selectedTimeStage2 = tick() end, function() changePoisonedHornsEvent:FireServer(1744060292) end)
setupPortal(frozenHornsPortal, function() return hasChosenStage2 end, function() hasChosenStage2 = true end, function() return selectedTimeStage2 end, function() selectedTimeStage2 = tick() end, function() changeFrozenHornsEvent:FireServer(74891470) end)
setupPortal(sadFacePortal, function() return hasChosenStage2 end, function() hasChosenStage2 = true end, function() return selectedTimeStage2 end, function() selectedTimeStage2 = tick() end, function() changeSadFaceEvent:FireServer(13291845584) end)
setupPortal(worriedFacePortal, function() return hasChosenStage2 end, function() hasChosenStage2 = true end, function() return selectedTimeStage2 end, function() selectedTimeStage2 = tick() end, function() changeWorriedFaceEvent:FireServer("WorriedFace") end)

setupPortal(blackTuxedoPortal, function() return hasChosenStage3 end, function() hasChosenStage3 = true end, function() return selectedTimeStage3 end, function() selectedTimeStage3 = tick() end, function() changeBlackTuxedoEvent:FireServer(5177485134); showPurchaseInfo(5177485134) end)
setupPortal(whiteTuxedoPortal, function() return hasChosenStage3 end, function() hasChosenStage3 = true end, function() return selectedTimeStage3 end, function() selectedTimeStage3 = tick() end, function() changeWhiteTuxedoEvent:FireServer(7037418009); showPurchaseInfo(7037418009) end)
setupPortal(dirtyPantsPortal, function() return hasChosenStage3 end, function() hasChosenStage3 = true end, function() return selectedTimeStage3 end, function() selectedTimeStage3 = tick() end, function() changeDirtyPantsEvent:FireServer(75785797887320); showPurchaseInfo(75785797887320) end)
setupPortal(rippedPantsPortal, function() return hasChosenStage3 end, function() hasChosenStage3 = true end, function() return selectedTimeStage3 end, function() selectedTimeStage3 = tick() end, function() changeRippedPantsEvent:FireServer(6714301934); showPurchaseInfo(6714301934) end)

setupPortal(blackTPantsPortal, function() return hasChosenStage4 end, function() hasChosenStage4 = true end, function() return selectedTimeStage4 end, function() selectedTimeStage4 = tick() end, function() changeBlackTPantsEvent:FireServer(blackTPantsAssetId); showPurchaseInfo(blackTPantsAssetId) end)
setupPortal(whiteTPantsPortal, function() return hasChosenStage4 end, function() hasChosenStage4 = true end, function() return selectedTimeStage4 end, function() selectedTimeStage4 = tick() end, function() changeWhiteTPantsEvent:FireServer(whiteTPantsAssetId); showPurchaseInfo(whiteTPantsAssetId) end)
setupPortal(sBrownHairPortal, function() return hasChosenStage4 end, function() hasChosenStage4 = true end, function() return selectedTimeStage4 end, function() selectedTimeStage4 = tick() end, function() changeSBrownHairEvent:FireServer(62743701) end)
setupPortal(baconHairPortal, function() return hasChosenStage4 end, function() hasChosenStage4 = true end, function() return selectedTimeStage4 end, function() selectedTimeStage4 = tick() end, function() changeBaconHairEvent:FireServer(86829458041283) end)

setupPortal(rippedShirtPortal, function() return hasChosenStage5 end, function() hasChosenStage5 = true end, function() return selectedTimeStage5 end, function() selectedTimeStage5 = tick() end, function() changeRippedShirtEvent:FireServer(11240142540); showPurchaseInfo(11240142540) end)
setupPortal(homelessShirtPortal, function() return hasChosenStage5 end, function() hasChosenStage5 = true end, function() return selectedTimeStage5 end, function() selectedTimeStage5 = tick() end, function() changeHomelessShirtEvent:FireServer(125481776596548); showPurchaseInfo(125481776596548) end)
setupPortal(dominusEPortal, function() return hasChosenStage5 end, function() hasChosenStage5 = true end, function() return selectedTimeStage5 end, function() selectedTimeStage5 = tick() end, function() changeDominusEEvent:FireServer(21070012) end)
setupPortal(stFedoraPortal, function() return hasChosenStage5 end, function() hasChosenStage5 = true end, function() return selectedTimeStage5 end, function() selectedTimeStage5 = ti
