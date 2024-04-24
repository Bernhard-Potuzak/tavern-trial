function printSmallGuildNames(memberCount)

-- this method is supposed to print names of all guilds that have less than memberCount max members

	local resultId = db.storeQuery("SELECT name FROM guilds WHERE max_members < " ..memberCount.. ";")

-- Check if the query is not null/empty
    if resultId then
        -- Iterate over the results and print the names
        repeat
            local guildName = result.getString(resultId, "name")
            print(guildName)
        until not result.next(resultId)
        result.free(resultId) -- Free the result after using it
    else
        print("No guild found with less than " .. memberCount .. " members.")
    end

end

-- injected memberCOunt directly in sql statement.
-- Added error check to see if there are any results and if not then print error message.
-- Used getString to fetch the result and next to check if there are anymore results
-- Freed the result set after usage using result.free.