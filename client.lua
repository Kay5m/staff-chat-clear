-- Client-side chat clear handler

RegisterNetEvent("chat:clear")
AddEventHandler("chat:clear", function()
    -- This clears the chat window for all players
    TriggerEvent("chat:clear")
end)

