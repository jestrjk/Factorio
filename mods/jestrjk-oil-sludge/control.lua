-- This file handles runtime scripting
script.on_init(function()
    -- Called when mod is added to a save or when a save with the mod is loaded
    log("Mod initialized")
end)

script.on_event(defines.events.on_player_created, function(event)
    -- Called when a new player is created
    local player = game.get_player(event.player_index)
    if player then
        player.print("Welcome to the mod!")
    end
end)
