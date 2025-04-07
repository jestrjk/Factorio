data:extend({
    {
        type = "technology",
        name = "oil-sludge-processing",
        icon = "__jestrjk-oil-sludge__/graphics/icons/oil-sludge.png",
        icon_size = 64,
        prerequisites = {"oil-processing"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "oil-sludge-processing"
            }
        },
        unit = {
            count = 50,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1}
            },
            time = 30
        },
        order = "d-b-b"
    }
})
