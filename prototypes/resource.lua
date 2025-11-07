local resource_autoplace = require("resource-autoplace")

data:extend({
    {
        type = "resource",
        name = "bauxite-ore",
        icon = "__factorio-overhaul__/graphics/entities/ores/bauxite-ore.png",
        order = "a-b-a",
        icon_size = 128,
        tree_removal_probability = 0.8,
        tree_removal_max_distance = 32,
        map_color = {1, 0.7, 0.3},
        flags = {"placeable-neutral"},
        minable = {
            mining_time = 2,
            result = "bauxite-ore",
            mining_particle = "copper-ore-particle"
        },
        collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        stage_counts = {20000, 10000, 5000, 2500, 1250, 750, 400, 200},
        stages = {
            sheet = {
                filename = "__factorio-overhaul__/graphics/entities/ores/bauxite-ore.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                frame_count = 8,
                variation_count = 8,
                scale = 0.5
            }
        },
        autoplace = resource_autoplace.resource_autoplace_settings{
            name = "bauxite-ore",
            order = "b",
            base_density = 8,
            base_spots_per_km2 = 1.25,
            regular_rq_factor_multiplier = 1.2,
        }
    },
})