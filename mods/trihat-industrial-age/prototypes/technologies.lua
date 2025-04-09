-- Technology prototypes will be defined here
data:extend({
    {
        type = "technology",
        name = "trihat-industrial-age",
        icon = "__base__/graphics/technology/automation-1.png",  -- Temporarily using base game icon
        icon_size = 256,
        icon_mipmaps = 4,
        effects = {},  -- Will be populated as we add more content
        unit = {
            count = 10,
            ingredients = {
                {"automation-science-pack", 1}
            },
            time = 10
        },
        order = "a-0",  -- This ensures it appears at the start of the tech tree
        prerequisites = {}  -- No prerequisites makes it a root technology
    },
    {
        type = "technology",
        name = "oil-sludge-processing",
        icon = "__base__/graphics/technology/oil-processing.png",  -- Temporarily using base game icon
        icon_size = 256,
        icon_mipmaps = 4,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "oil-sludge-processing"
            },
            {
                type = "unlock-recipe",
                recipe = "industrial-age-refinery"
            }
        },
        unit = {
            count = 50,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1}
            },
            time = 30
        },
        order = "d[refining]-b[oil-sludge-processing]",
        prerequisites = {"oil-processing", "trihat-industrial-age"}
    }
})
