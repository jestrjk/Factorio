local baseRecipe = data.raw.recipe["basic-oil-processing"]
if baseRecipe then
    baseRecipe.results = {
        {type="fluid", name="petroleum-gas", amount=45},
        {type="item", name="oil-sludge", amount=1, probability=0.25},  -- 25% chance to produce sludge
    }
end

data:extend({
    {
        type = "recipe",
        name = "oil-sludge-processing",
        category = "chemistry",
        enabled = false,
        energy_required = 5,
        ingredients = {
            {type = "item", name = "oil-sludge", amount = 1},
            {type = "fluid", name = "water", amount = 50}
        },
        results = {
            {type = "fluid", name = "crude-oil", amount = 10}
        },
        main_product = "crude-oil",
        icon = "__base__/graphics/icons/fluid/crude-oil.png",
        icon_size = 64,
        subgroup = "fluid-recipes",
        order = "a[oil-processing]-d[oil-sludge-processing]"
    }
})
