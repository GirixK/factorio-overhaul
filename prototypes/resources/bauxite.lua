local resource_autoplace = require("resource-autoplace")

data.raw.planet.nauvis.map_gen_settings.autoplace_controls["bauxite-ore"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["bauxite-ore"] = {}
resource_autoplace.initialize_patch_set("bauxite-ore")

data:extend({
    -- Item
    {
        type = "item",
        name = "bauxite-ore",
        icon_size = 64,
        icon_mipmaps = 3,
        icon = "__factorio-overhaul__/graphics/icons/items/bauxite/bauxite-ore-1.png",
        pictures = {
            { filename = "__factorio-overhaul__/graphics/icons/items/bauxite/bauxite-ore-1.png", size = 64, scale = 0.5 },
            { filename = "__factorio-overhaul__/graphics/icons/items/bauxite/bauxite-ore-2.png", size = 64, scale = 0.5 },
            { filename = "__factorio-overhaul__/graphics/icons/items/bauxite/bauxite-ore-3.png", size = 64, scale = 0.5 },
            { filename = "__factorio-overhaul__/graphics/icons/items/bauxite/bauxite-ore-4.png", size = 64, scale = 0.5 },
        },
        subgroup = "raw-resource",
        order = "g-a[bauxite-ore]",
        stack_size = 50
    },
    -- Ore Entity
    {
        -- Name, Order, and Result
        type = "resource",
        name = "bauxite-ore",
        order = "a-b-c",
        minable =
        {
            result = "bauxite-ore",
            mining_time = 2,
            hardness = 1,
            mining_particle = "copper-ore-particle"
        },

        -- Icon and Map Color
        icon = "__factorio-overhaul__/graphics/icons/items/bauxite/bauxite-ore-1.png",
        icon_size = 64,
        icon_mipmaps = 3,
        map_color = { r = 0.9, g = 0.4, b = 0.3 },

        -- Graphics and Boxes
        stage_counts = { 15000, 9500, 5500, 2900, 1300, 400, 150, 80 },
        stages =
        {
            sheet =
            {
                filename = "__factorio-overhaul__/graphics/entities/ores/bauxite-ore.png",
                priority = "extra-high",
                size = 128,
                frame_count = 8,
                variation_count = 8,
                scale = 0.5
            }
        },
        collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},

        -- Generation
        tree_removal_probability = 0.8,
        tree_removal_max_distance = 32,
        autoplace = resource_autoplace.resource_autoplace_settings
        {
            name = "bauxite-ore",
            order = "b",
            base_density = 8,
            base_spots_per_km2 = 1.25,
            regular_rq_factor_multiplier = 1.2,
            starting_rq_factor_multiplier = 1.7
        }
    },
    -- Autoplace Control
    {
        type = "autoplace-control",
        category = "resource",
        name = "bauxite-ore",
        richness = true,
        order = "b-f",
    },
})