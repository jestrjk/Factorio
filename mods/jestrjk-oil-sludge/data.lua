-- This file handles prototype/data modifications
-- Example: Adding a new item
--[[
data:extend({
    {
        type = "item",
        name = "my-new-item",
        icon = "__my_factorio_mod__/graphics/icons/my-new-item.png",
        icon_size = 64,
        subgroup = "raw-material",
        order = "z[my-new-item]",
        stack_size = 50
    }
})
--]]
