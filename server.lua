-- Server-side chat clear script for FiveM with ACE permissions

RegisterCommand("clearchat", function(source, args, rawCommand)
    -- Get the player's identifier
    local playerId = source

    -- Check if the player has the required ACE permission
    if IsPlayerAceAllowed(playerId, "command.clearchat") then  -- In your server.cfg | add_ace group.staff command.clearchat allow 
        -- Trigger the event to clear the chat for all players
        TriggerClientEvent("chat:clear", -1)
        -- Notify the player that the chat has been cleared
        TriggerClientEvent("chat:addMessage", playerId, {
            args = {"^2SYSTEM", "Chat has been cleared."}
        })
    else
        -- Notify the player that they don't have permission
        TriggerClientEvent("chat:addMessage", playerId, {
            args = {"^1ERROR", "You don't have permission to clear the chat."}
        })
    end
end, false) -- false means this command can only be run from the server, not client.

-- Ensure the ACE permission is set for specific users or groups
-- Example: "add_ace group.admin command.clearchat allow" in server.cfg
