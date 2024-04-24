--added sotragekey parameter to use the passed values
local function releaseStorage(storagekey, player)

	player:setStorageValue(storagekey, -1)

end

function onLogout(player)

	if player:getStorageValue(1000) == 1 then

		addEvent(releaseStorage, 1000, player)

	end

return true

end