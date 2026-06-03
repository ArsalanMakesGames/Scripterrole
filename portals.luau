local ReplicatedStorage = game:GetService("ReplicatedStorage")

local changeRakeEvent = ReplicatedStorage:FindFirstChild("ChangeRakeEvent") or Instance.new("RemoteEvent", ReplicatedStorage)
changeRakeEvent.Name = "ChangeRakeEvent"

local changeSkeletonLegEvent = ReplicatedStorage:FindFirstChild("ChangeSkeletonLegEvent") or Instance.new("RemoteEvent", ReplicatedStorage)
changeSkeletonLegEvent.Name = "ChangeSkeletonLegEvent"

local changeBaconHairEvent = ReplicatedStorage:FindFirstChild("ChangeBaconHairEvent") or Instance.new("RemoteEvent", ReplicatedStorage)
changeBaconHairEvent.Name = "ChangeBaconHairEvent"

local changeHomelessShirtEvent = ReplicatedStorage:FindFirstChild("ChangeHomelessShirtEvent") or Instance.new("RemoteEvent", ReplicatedStorage)
changeHomelessShirtEvent.Name = "ChangeHomelessShirtEvent"

local changeDirtyPantsEvent = ReplicatedStorage:FindFirstChild("ChangeDirtyPantsEvent") or Instance.new("RemoteEvent", ReplicatedStorage)
changeDirtyPantsEvent.Name = "ChangeDirtyPantsEvent"

local changeSadFaceEvent = ReplicatedStorage:FindFirstChild("ChangeSadFaceEvent") or Instance.new("RemoteEvent", ReplicatedStorage)
changeSadFaceEvent.Name = "ChangeSadFaceEvent"

local changeWorkclockEvent = ReplicatedStorage:FindFirstChild("ChangeWorkclockEvent") or Instance.new("RemoteEvent", ReplicatedStorage)
changeWorkclockEvent.Name = "ChangeWorkclockEvent"

local changeAngelWingsEvent = ReplicatedStorage:FindFirstChild("ChangeAngelWingsEvent") or Instance.new("RemoteEvent", ReplicatedStorage)
changeAngelWingsEvent.Name = "ChangeAngelWingsEvent"

local function appendToAccessoryString(currentString, newId)
	if currentString == "" or currentString == nil then
		return tostring(newId)
	else
		if string.find(currentString, tostring(newId)) then
			return currentString
		end
		return currentString .. "," .. tostring(newId)
	end
end

local function applyDescription(player, updateFunc)
	local character = player.Character
	if not character then return end
	
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if not humanoid then return end
	
	local desc = humanoid:GetAppliedDescription()
	updateFunc(desc)
	humanoid:ApplyDescription(desc)
end

changeSkeletonLegEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, function(desc) 
		desc.FaceAccessory = appendToAccessoryString(desc.FaceAccessory, id)
	end)
end)

changeSadFaceEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, function(desc) 
		desc.HairAccessory = appendToAccessoryString(desc.HairAccessory, id)
	end)
end)

changeDirtyPantsEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, function(desc) 
		desc.Pants = tonumber(id) or id
	end)
end)

changeBaconHairEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, function(desc) 
		desc.HairAccessory = appendToAccessoryString(desc.HairAccessory, id)
	end)
end)

changeHomelessShirtEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, function(desc) 
		desc.Shirt = tonumber(id) or id
	end)
end)

changeRakeEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, function(desc) 
		desc.BackAccessory = appendToAccessoryString(desc.BackAccessory, id)
	end)
end)

changeAngelWingsEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, function(desc) 
		desc.BackAccessory = appendToAccessoryString(desc.BackAccessory, id)
	end)
end)

changeWorkclockEvent.OnServerEvent:Connect(function(player, id)
	applyDescription(player, function(desc) 
		desc.HatAccessory = appendToAccessoryString(desc.HatAccessory, id)
	end)
end)
