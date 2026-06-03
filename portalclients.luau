local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local MarketPlaceService = game:GetService("MarketplaceService")

local player = Players.LocalPlayer

local changeRakeEvent = ReplicatedStorage:WaitForChild("ChangeRakeEvent")
local changeSkeletonLegEvent = ReplicatedStorage:WaitForChild("ChangeSkeletonLegEvent")
local changeBaconHairEvent = ReplicatedStorage:WaitForChild("ChangeBaconHairEvent")
local changeHomelessShirtEvent = ReplicatedStorage:WaitForChild("ChangeHomelessShirtEvent")
local changeDirtyPantsEvent = ReplicatedStorage:WaitForChild("ChangeDirtyPantsEvent")
local changeSadFaceEvent = ReplicatedStorage:WaitForChild("ChangeSadFaceEvent")
local changeWorkclockEvent = ReplicatedStorage:WaitForChild("ChangeWorkclockEvent")
local changeAngelWingsEvent = ReplicatedStorage:WaitForChild("ChangeAngelWingsEvent")

local rakePortal = workspace:WaitForChild("RakePortal")
local skeletonLegPortal = workspace:WaitForChild("SkeletonLegPortal")
local baconHairPortal = workspace:WaitForChild("BaconHairPortal")
local homelessShirtPortal = workspace:WaitForChild("HomelessShirtPortal")
local dirtyPantsPortal = workspace:WaitForChild("DirtyPantsPortal")
local sadFacePortal = workspace:WaitForChild("SadFacePortal")
local workclockPortal = workspace:WaitForChild("WorkclockPortal")
local angelWingsPortal = workspace:WaitForChild("AngelWingsPortal")

local hasChosenStage1, selectedTimeStage1 = false, 0
local hasChosenStage2, selectedTimeStage2 = false, 0
local hasChosenStage3, selectedTimeStage3 = false, 0
local hasChosenStage4, selectedTimeStage4 = false, 0
local hasChosenStage5, selectedTimeStage5 = false, 0
local hasChosenStage7, selectedTimeStage7 = false, 0
local hasChosenStage8, selectedTimeStage8 = false, 0
local hasChosenStage10, selectedTimeStage10 = false, 0

local assetIds = {
	15093053680, 139607718, 139788113969347, 17135407737, 1744060292, 
	74891470, 5177485134, 15478067239, 75785797887320, 6714301934, 
	76048390088778, 10040957738, 62743701, 86829458041283, 292970740, 
	1285307, 31101391, 11748356, 116190410575017, 83992278106110, 
	85043455304511, 92615235859374, 9299068945, 13852148237, 90422607896192, 
	83564809754628, 1365767, 1402432199, 16294349118, 13503210265, 
	75865656531531, 1235488, 12753661062, 117254447027475, 238903800, 
	553971558, 439945864, 362029620, 33171947, 113325603, 
	121176811448710, 11240142540, 125481776596548
}

local function showPurchaseInfo(assetId)
	pcall(function()
		MarketPlaceService:PromptPurchase(player, assetId)
	end)
end

local function setupPortal(portalFrame, getChosen, setChosen, getTime, setTime, fireEventFunc)
	if not portalFrame:IsA("BasePart") then return end
	portalFrame.Touched:Connect(function(hit)
		local character = hit.Parent
		local hitPlayer = Players:GetPlayerFromCharacter(character)
		if hitPlayer and hitPlayer == player then
			if not getChosen() and (tick() - getTime() > 2) then
				setTime()
				setChosen()
				fireEventFunc()
				task.wait(1.5)
				if portalFrame == skeletonLegPortal then hasChosenStage1 = false
				elseif portalFrame == sadFacePortal then hasChosenStage2 = false
				elseif portalFrame == dirtyPantsPortal then hasChosenStage3 = false
				elseif portalFrame == baconHairPortal then hasChosenStage4 = false
				elseif portalFrame == homelessShirtPortal then hasChosenStage5 = false
				elseif portalFrame == rakePortal then hasChosenStage7 = false
				elseif portalFrame == angelWingsPortal then hasChosenStage8 = false
				elseif portalFrame == workclockPortal then hasChosenStage10 = false
				end
			end
		end
	end)
end

setupPortal(skeletonLegPortal, function() return hasChosenStage1 end, function() hasChosenStage1 = true end, function() return selectedTimeStage1 end, function() selectedTimeStage1 = tick() end, function() 
	changeSkeletonLegEvent:FireServer(17135407737)
	showPurchaseInfo(17135407737) 
end)

setupPortal(sadFacePortal, function() return hasChosenStage2 end, function() hasChosenStage2 = true end, function() return selectedTimeStage2 end, function() selectedTimeStage2 = tick() end, function() 
	changeSadFaceEvent:FireServer(13291845584)
	showPurchaseInfo(13291845584) 
end)

setupPortal(dirtyPantsPortal, function() return hasChosenStage3 end, function() hasChosenStage3 = true end, function() return selectedTimeStage3 end, function() selectedTimeStage3 = tick() end, function() 
	changeDirtyPantsEvent:FireServer(75785797887320)
	showPurchaseInfo(75785797887320) 
end)

setupPortal(baconHairPortal, function() return hasChosenStage4 end, function() hasChosenStage4 = true end, function() return selectedTimeStage4 end, function() selectedTimeStage4 = tick() end, function() 
	changeBaconHairEvent:FireServer(86829458041283) 
	showPurchaseInfo(86829458041283)
end)

setupPortal(homelessShirtPortal, function() return hasChosenStage5 end, function() hasChosenStage5 = true end, function() return selectedTimeStage5 end, function() selectedTimeStage5 = tick() end, function() 
	changeHomelessShirtEvent:FireServer(125481776596548)
	showPurchaseInfo(125481776596548) 
end)

setupPortal(rakePortal, function() return hasChosenStage7 end, function() hasChosenStage7 = true end, function() return selectedTimeStage7 end, function() selectedTimeStage7 = tick() end, function() 
	changeRakeEvent:FireServer(85043455304511)
	showPurchaseInfo(85043455304511) 
end)

setupPortal(angelWingsPortal, function() return hasChosenStage8 end, function() hasChosenStage8 = true end, function() return selectedTimeStage8 end, function() selectedTimeStage8 = tick() end, function() 
	changeAngelWingsEvent:FireServer(9299068945)
	showPurchaseInfo(9299068945) 
end)

setupPortal(workclockPortal, function() return hasChosenStage10 end, function() hasChosenStage10 = true end, function() return selectedTimeStage10 end, function() selectedTimeStage10 = tick() end, function() 
	changeWorkclockEvent:FireServer(75865656531531)
	showPurchaseInfo(75865656531531) 
end)
