-- Recipe prototypes will be defined here
data:extend({
    {
        type = "recipe",
        name = "industrial-age-refinery",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {type = "item", name = "steel-plate", amount = 15},
            {type = "item", name = "iron-gear-wheel", amount = 10},
            {type = "item", name = "stone-brick", amount = 10},
            {type = "item", name = "electronic-circuit", amount = 10},
            {type = "item", name = "pipe", amount = 10}
        },
        results = {
            {
                type = "item",
                name = "industrial-age-refinery",
                amount = 1
            }
        },
        order = "d[refinery]-b[industrial-age-refinery]"
    },
    {
        type = "recipe",
        name = "oil-sludge-processing",
        category = "industrial-age-refining",
        enabled = false,
        energy_required = 5,
        ingredients = {
            {type = "fluid", name = "oil-sludge", amount = 100}
        },
        results = {
            {type = "fluid", name = "heavy-oil", amount = 20},
            {type = "fluid", name = "light-oil", amount = 30}
        },
        subgroup = "fluid-recipes",
        icon = "__base__/graphics/icons/fluid/heavy-oil.png",
        icon_size = 64,
        icon_mipmaps = 4,
        order = "b[fluid-chemistry]-f[oil-sludge-processing]"
    }
})

-- Modify basic oil processing to output oil sludge
local basic_oil_processing = data.raw.recipe["basic-oil-processing"]
if basic_oil_processing then
    basic_oil_processing.results = {
        {type = "fluid", name = "petroleum-gas", amount = 45},
        {type = "fluid", name = "oil-sludge", amount = 25}
    }
end
