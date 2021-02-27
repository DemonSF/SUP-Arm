data:extend(
    {
        {
            type = "technology",
            name = "1 rasa",
            icon_size = 250, icon_mipmaps = 4,
            icon = "__Sup-Arm__/graphics/ico/2.png",
            effects =
             {
             },
            unit =
            {
              count = 1,
              ingredients = {{"automation-science-pack", 1}},
              time = 1
            },
            order = "a-d-a"
          },
          {
            type = "technology",
            name = "osnova vseh basa",
            icon_size = 250, icon_mipmaps = 4,
            icon = "__Sup-Arm__/graphics/ico/2.png",
            effects =
            {
             {
              type = "unlock-recipe",
              recipe = "small-lamp"
             },
             {
              type = "unlock-recipe",
              recipe = "assembling-machine-1"
             },
             {
              type = "unlock-recipe",
              recipe = "splitter"
             },
             {
              type = "unlock-recipe",
              recipe = "underground-belt"
             }
            },
            prerequisites = {"1 rasa"},
            unit =
            {
              count = 1,
              ingredients = {{"automation-science-pack", 1}},
              time = 1
            },
            order = "a-d-a"
          },
          {
            type = "technology",
            name = "logistika - insert",
            icon_size = 250, icon_mipmaps = 4,
            icon = "__Sup-Arm__/graphics/ico/2.png",
            effects =
            {
             {
              type = "unlock-recipe",
              recipe = "long-handed-inserter"
             },
             {
              type = "unlock-recipe",
              recipe = "fast-inserter"
             }
            },
            prerequisites = {"osnova vseh basa"},
            unit =
            {
              count = 1,
              ingredients = {{"automation-science-pack", 1}},
              time = 1
            },
            order = "a-d-a"
          },
          {
            type = "technology",
            name = "logistika - loader",
            icon_size = 250, icon_mipmaps = 4,
            icon = "__Sup-Arm__/graphics/ico/2.png",
            effects =
            {
             {
              type = "unlock-recipe",
              recipe = "loader"
             }
            },
            prerequisites = {"logistika - insert"},
            unit =
            {
              count = 1,
              ingredients = {{"automation-science-pack", 1}},
              time = 1
            },
            order = "a-d-a"
          },
          {
            type = "technology",
            name = "logistika - filter",
            icon_size = 250, icon_mipmaps = 4,
            icon = "__Sup-Arm__/graphics/ico/2.png",
            effects =
            {
             {
              type = "unlock-recipe",
              recipe = "filter-inserter"
             }
            },
            prerequisites = {"logistika - insert"},
            unit =
            {
              count = 1,
              ingredients = {{"automation-science-pack", 1}},
              time = 1
            },
            order = "a-d-a"
          },
          {
            type = "technology",
            name = "logistika - plus",
            icon_size = 250, icon_mipmaps = 4,
            icon = "__Sup-Arm__/graphics/ico/2.png",
            effects =
            {
             {
              type = "unlock-recipe",
              recipe = "power-switch"
             },
             {
              type = "unlock-recipe",
              recipe = "programmable-speaker"
             }
            },
            prerequisites = {"osnova vseh basa"},
            unit =
            {
              count = 1,
              ingredients = {{"automation-science-pack", 1}},
              time = 1
            },
            order = "a-d-a"
          },
          {
            type = "technology",
            name = "logistika - bot",
            icon_size = 250, icon_mipmaps = 4,
            icon = "__Sup-Arm__/graphics/ico/2.png",
            effects =
            {
             {
              type = "unlock-recipe",
              recipe = "logistic-chest-storage"
             },
             {
              type = "unlock-recipe",
              recipe = "construction-robot"
             },
             {
              type = "unlock-recipe",
              recipe = "roboport"
             }
            },
            prerequisites = {"base - 1 factorys"},
            unit =
            {
              count = 1,
              ingredients = {{"automation-science-pack", 1}},
              time = 1
            },
            order = "a-d-a"
          },
          {
            type = "technology",
            name = "logistika - Logistik bot",
            icon_size = 250, icon_mipmaps = 4,
            icon = "__Sup-Arm__/graphics/ico/2.png",
            effects =
            {
             {
              type = "unlock-recipe",
              recipe = "logistic-robot"
             },
             {
              type = "unlock-recipe",
              recipe = "logistic-chest-passive-provider"
             },
             {
              type = "unlock-recipe",
              recipe = "logistic-chest-active-provider"
             },
             {
              type = "unlock-recipe",
              recipe = "logistic-chest-buffer"
             },
             {
              type = "unlock-recipe",
              recipe = "logistic-chest-requester"
             }
            },
            prerequisites = {"logistika - bot", "base-flying-robot-frame"},
            unit =
            {
              count = 1,
              ingredients = {{"automation-science-pack", 1}},
              time = 1
            },
            order = "a-d-a"
          },
          {
            type = "technology",
            name = "base - 1 factorys",
            icon_size = 250, icon_mipmaps = 4,
            icon = "__Sup-Arm__/graphics/ico/2.png",
            effects =
            {
             {
              type = "unlock-recipe",
              recipe = "battery"
             },
             {
              type = "unlock-recipe",
              recipe = "electric-engine-unit"
             }
            },
            prerequisites = {"osnova vseh basa"},
            unit =
            {
              count = 1,
              ingredients = {{"automation-science-pack", 1}},
              time = 1
            },
            order = "a-d-a"
          },
          {
            type = "technology",
            name = "base - 1 factorys magazine",
            icon_size = 250, icon_mipmaps = 4,
            icon = "__Sup-Arm__/graphics/ico/2.png",
            effects =
            {
             {
              type = "unlock-recipe",
              recipe = "piercing-rounds-magazine"
             }
            },
            prerequisites = {"osnova vseh basa", "defens"},
            unit =
            {
              count = 1,
              ingredients = {{"automation-science-pack", 1}},
              time = 1
            },
            order = "a-d-a"
          },
          {
            type = "technology",
            name = "base-flying-robot-frame",
            icon_size = 250, icon_mipmaps = 4,
            icon = "__Sup-Arm__/graphics/ico/2.png",
            effects =
            {
             {
              type = "unlock-recipe",
              recipe = "flying-robot-frame"
             }
            },
            prerequisites = {"base - 1 factorys"},
            unit =
            {
              count = 1,
              ingredients = {{"automation-science-pack", 1}},
              time = 1
            },
            order = "a-d-a"
          },
          {
            type = "technology",
            name = "energy-big-table",
            icon_size = 250, icon_mipmaps = 4,
            icon = "__Sup-Arm__/graphics/ico/2.png",
            effects =
            {
             {
              type = "unlock-recipe",
              recipe = "big-electric-pole"
             }
            },
            prerequisites = {"osnova vseh basa"},
            unit =
            {
              count = 1,
              ingredients = {{"automation-science-pack", 1}},
              time = 1
            },
            order = "a-d-a"
          },
          {
            type = "technology",
            name = "energy-ECO",
            icon_size = 250, icon_mipmaps = 4,
            icon = "__Sup-Arm__/graphics/ico/2.png",
            effects =
            {
             {
              type = "unlock-recipe",
              recipe = "solar-panel"
             },
             {
               type = "unlock-recipe",
               recipe = "accumulator"
             }
            },
            prerequisites = {"energy-big-table"},
            unit =
            {
              count = 1,
              ingredients = {{"automation-science-pack", 1}},
              time = 1
            },
            order = "a-d-a"
          },
          {
            type = "technology",
            name = "defens",
            icon_size = 250, icon_mipmaps = 4,
            icon = "__Sup-Arm__/graphics/ico/2.png",
            effects =
             {
               {
               type = "unlock-recipe",
               recipe = "stone-wall"
               },
               {
                 type = "unlock-recipe",
                 recipe = "gate"
               },
               {
                 type = "unlock-recipe",
                 recipe = "gun-turret"
               },
               {
                 type = "unlock-recipe",
                 recipe = "firearm-magazine"
               }
             },
            prerequisites = {"1 rasa"},
            unit =
            {
              count = 1,
              ingredients = {{"automation-science-pack", 1}},
              time = 1
            },
            order = "a-d-a"
          },
          {
            type = "technology",
            name = "2 rasa",
            icon_size = 250, icon_mipmaps = 4,
            icon = "__Sup-Arm__/graphics/ico/3.png",
            effects =
             {
             },
            unit =
            {
              count = 1,
              ingredients = {{"automation-science-pack", 1}},
              time = 1
            },
            order = "a-d-a"
          }, 
    }
)