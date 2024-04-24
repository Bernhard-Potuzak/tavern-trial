void Game::addItemToPlayer(const std::string& recipient, uint16_t itemId)
{

	Player* player = g_game.getPlayerByName(recipient);

	if (!player) {
		player = new Player(nullptr);
		if (!IOLoginData::loadPlayerByName(player, recipient)) {
			delete player; // Free allocated memory if unable to load player
            return;
		}
	}

	Item* item = Item::CreateItem(itemId);

	if (!item) {
		delete player; // Free allocated memory if unable to create item
        return;
	}

	//check if there are returnvalue errors. If there are any, delete item to free allocated memory
	if (g_game.internalAddItem(player->getInbox(), item, INDEX_WHEREEVER, FLAG_NOLIMIT) !=
					    RETURNVALUE_NOERROR) {
						delete item;
						break;
					}

	if (player->isOffline()) {
		IOLoginData::savePlayer(player);
		delete player; // Free allocated memory
	}

}