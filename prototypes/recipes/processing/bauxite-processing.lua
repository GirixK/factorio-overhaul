data:extend({
    {
        type = "recipe",
        name = "bauxite-slurry",
        energy_required = 10,
        category = "chemistry",
        order = "d[bauxite-slurry]",
        ingredients =
        {
            { type = "item", name = "bauxite-ore", amount = 2 },
            { type = "fluid", name = "water", amount = 20 }
        },
        results = {{ type = "fluid", name = "bauxite-slurry", amount = 20 }},
        allow_productivity = true,
        show_amount_in_title = false
    }
})