function do_sth_with_PlayerParty(playerId, membername)

	local player = Player(playerId)

	local party = player:getParty()

	--check if there is a party
	if party == nil then
		--looked this one up in forgottenserver in compat.lua
	    player:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, "You are not in a party.")
	    return
	end


	for k,v in pairs(party:getMembers()) do
		--using the get name funtion to check against membername
		if v.getName() == membername then
			party:removeMember(v)
		end

	end

end
