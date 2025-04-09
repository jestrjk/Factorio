-- Main control script for runtime behavior
script.on_init(function()
    -- Initialize mod when a new game starts
end)

script.on_configuration_changed(function(data)
    -- Handle mod updates
    if data.mod_changes and data.mod_changes["trihat-industrial-age"] then
        -- Handle version changes
    end
end)
