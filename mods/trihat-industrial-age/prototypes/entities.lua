require("util")

-- Entity prototypes will be defined here
local industrial_age_refinery = util.table.deepcopy(data.raw["assembling-machine"]["oil-refinery"])
local iar = industrial_age_refinery

iar.name = "industrial-age-refinery"
iar.minable = {mining_time = 0.5, result = "industrial-age-refinery"}
iar.crafting_speed = 1.5
iar.crafting_categories = {"industrial-age-refining"}
iar.energy_usage = "500kW"

data:extend({
    industrial_age_refinery
})
