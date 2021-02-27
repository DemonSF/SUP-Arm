data:extend(
    {
        {
            type = "recipe",
            name = "night-vision-equipment",
            enabled = true,
            energy_required = 10,
            ingredients =
            {
              {"electronic-circuit", 5},
              {"iron-plate", 10}
            },
            result = "night-vision-equipment"
          },
          {
            type = "recipe",
            name = "belt-immunity-equipment",
            enabled = true,
            energy_required = 10,
            ingredients =
            {
              {"electronic-circuit", 5},
              {"iron-plate", 10}
            },
            result = "belt-immunity-equipment"
          },
          {
            type = "recipe",
            name = "fusion-reactor-equipment",
            enabled = true,
            energy_required = 10,
            ingredients =
            {
              {"electronic-circuit", 150},
              {"copper-plate", 80},
              {"iron-plate", 80}
			  
            },
            result = "fusion-reactor-equipment"
          },
          {
            type = "recipe",
            name = "personal-roboport-equipment",
            enabled = true,
            energy_required = 10,
            ingredients =
            {
              {"electronic-circuit", 20},
              {"iron-plate", 50},
              {"battery", 30}
            },
            result = "personal-roboport-equipment"
          },
          {
            type = "recipe",
            name = "personal-roboport-mk2-equipment",
            enabled = false,
            energy_required = 20,
            ingredients =
            {
              {"personal-roboport-equipment", 5},
              {"electronic-circuit", 20},
              {"copper-plate", 10},
              {"battery", 10}
            },
            result = "personal-roboport-mk2-equipment"
          },
          {
            type = "recipe",
            name = "laser-turret",
            enabled = false,
            energy_required = 20,
            ingredients =
            {
              {"iron-plate", 10},
			        {"iron-gear-wheel", 10},
              {"electronic-circuit", 20},
              {"battery", 12}
            },
            result = "laser-turret"
          },
          {
            type = "recipe",
            name = "flamethrower-turret",
            enabled = false,
            energy_required = 20,
            ingredients =
            {
              {"steel-plate", 30},
              {"iron-gear-wheel", 15},
              {"pipe", 10},
              {"engine-unit", 5}
            },
            result = "flamethrower-turret"
          },
          {
            type = "recipe",
            name = "gun-turret",
            enabled = false,
            energy_required = 8,
            ingredients =
            {
              {"copper-plate", 10},
			        {"iron-gear-wheel", 5},
              {"iron-plate", 10}
            },
            result = "gun-turret"
          },
          {
            type = "recipe",
            name = "wooden-chest",
            enabled = false,
            ingredients = {{"wood", 2}},
            result = "wooden-chest"
          },
          {
            type = "recipe",
            name = "iron-stick",
      			enabled = false,
            ingredients = {{"iron-plate", 1}},
            result = "iron-stick",
            result_count = 2
          },
          {
            type = "recipe",
            name = "stone-furnace",
      			enabled = true,
            ingredients = {{"stone", 5}},
            result = "stone-furnace"
          },
          {
            type = "recipe",
            name = "boiler",
      			enabled = true,
            ingredients = {{"stone-furnace", 1}, {"pipe", 4}},
            result = "boiler"
          },
          {
            type = "recipe",
            name = "steam-engine",
	      		enabled = true,
            ingredients =
              {
                {"pipe", 8},
                {"iron-gear-wheel", 5},
                {"copper-plate", 10}
              },
              result = "steam-engine"
          },
          {
            type = "recipe",
            name = "iron-gear-wheel",
      			enabled = true,
            ingredients = {{"iron-plate", 1}},
            result = "iron-gear-wheel",
	      		result_count = 2
          },
          {
            type = "recipe",
            name = "electronic-circuit",
            enabled = true,
		      	ingredients =
              {
                {"iron-plate", 1},
                {"copper-plate", 1}
              },
		      	result = "electronic-circuit",
	      		result_count = 2
          },
          {
            type = "recipe",
            name = "transport-belt",
            enabled = true,
	      		ingredients =
            {
              {"iron-plate", 1},
              {"copper-plate", 1}
            },
            result = "transport-belt",
            result_count = 2
          },
          {
            type = "recipe",
            name = "electric-mining-drill",
            enabled = true,
		      	energy_required = 2,
		      	ingredients =
              {
                {"electronic-circuit", 3},
                {"iron-gear-wheel", 5},
                {"iron-plate", 10}
              },
              result = "electric-mining-drill"
          },
          {
            type = "recipe",
            name = "burner-mining-drill",
            normal =                            --2 рецепта сложный и нормал их нужно выключать оба
            {
              enabled = true,
              hidden = true,
              energy_required = 2,
              ingredients =
              {
                {"iron-gear-wheel", 3},
                {"stone", 5},
                {"iron-plate", 3}
              },
              result = "burner-mining-drill"
            },
            expensive =
            {
              enabled = true,
              hidden = true,
              energy_required = 4,
              ingredients =
              {
                {"iron-gear-wheel", 6},
                {"stone-furnace", 2},
                {"iron-plate", 6}
              },
              result = "burner-mining-drill"
            }
          },
          {
            type = "recipe",
            name = "inserter",
	      		enabled = true,
            ingredients =
            {
              {"electronic-circuit", 1},
              {"iron-gear-wheel", 1},
              {"iron-plate", 2}
            },
            result = "inserter"
          },
          {
            type = "recipe",
            name = "fast-inserter",
            enabled = false,
            ingredients =
            {
              {"electronic-circuit", 2},
              {"iron-gear-wheel", 2},
              {"inserter", 1}
            },
            result = "fast-inserter"
          },
          {
            type = "recipe",
            name = "filter-inserter",
            enabled = false,
            ingredients =
            {
              {"fast-inserter", 1},
              {"electronic-circuit", 4}
            },
            result = "filter-inserter"
          },
          {
            type = "recipe",
            name = "long-handed-inserter",
            enabled = false,
            ingredients =
            {
              {"iron-gear-wheel", 1},
              {"iron-plate", 2},
              {"inserter", 1}
            },
            result = "long-handed-inserter"
          },
          {
            type = "recipe",
            name = "burner-inserter",
            enabled = false,
            ingredients =
            {
              {"iron-plate", 1},
              {"iron-gear-wheel", 1}
            },
            result = "burner-inserter"
          },
          {
            type = "recipe",
            name = "copper-cable",
            enabled = false,
            ingredients = {{"copper-plate", 1}},
            result = "copper-cable",
            result_count = 2
          },
          {
            type = "recipe",
            name = "small-electric-pole",
            enabled = false,
            ingredients =
            {
              {"wood", 1},
              {"copper-plate", 2}
            },
            result = "small-electric-pole",
            result_count = 2
          },
          {
            type = "recipe",
            name = "pistol",
            enabled = false,
            energy_required = 5,
            ingredients =
            {
              {"copper-plate", 5},
              {"iron-plate", 5}
            },
            result = "pistol"
          },
          {
            type = "recipe",
            name = "firearm-magazine",
	      		enabled = false,
            energy_required = 1,
            ingredients = {{"copper-plate", 1},{"iron-plate", 2},{"coal", 1}},
            result = "firearm-magazine",
            result_count = 2
          },
          {
            type = "recipe",
            name = "piercing-rounds-magazine",
            enabled = false,
            energy_required = 3,
            ingredients =
            {
              {"firearm-magazine", 1},
              {"steel-plate", 1},
              {"copper-plate", 5}
            },
            result = "piercing-rounds-magazine"
          },
          {
            type = "recipe",
            name = "uranium-rounds-magazine",
            enabled = false,
            energy_required = 10,
            ingredients =
            {
              {"piercing-rounds-magazine", 1},
              {"uranium-238", 1}
            },
            result = "uranium-rounds-magazine"
          },
          {
            type = "recipe",
            name = "light-armor",
            enabled = false,
            energy_required = 3,
            ingredients = {{"iron-plate", 40}},
            result = "light-armor"
          },
          {
            type = "recipe",
            name = "small-lamp",
            enabled = false,
            ingredients =
            {
              {"electronic-circuit", 1},
              {"copper-plate", 1},
              {"iron-plate", 1}
            },
            result = "small-lamp"
          },
          {
            type = "recipe",
            name = "assembling-machine-1",
            enabled = false,
            ingredients =
            {
              {"electronic-circuit", 4},
              {"iron-gear-wheel", 4},
              {"iron-plate", 4}
            },
            result = "assembling-machine-1"
          },
          {
            type = "recipe",
            name = "automation-science-pack",
            enabled = true,
		      	energy_required = 5,
            ingredients =
            {
              {"copper-plate", 1},
              {"iron-gear-wheel", 1}
            },
            result = "automation-science-pack"
          },
          {
            type = "recipe",
            name = "lab",
      			enabled = true,
            energy_required = 2,
            ingredients =
            {
              {"electronic-circuit", 10},
              {"copper-plate", 5},
	      		  {"iron-plate", 5},
              {"transport-belt", 5}
            },
            result = "lab"
          },
          {
            type = "recipe",
            name = "stone-wall",
            enabled = false,
            ingredients = {{"stone", 4}},
            result = "stone-wall"
          },
          {
            type = "recipe",
            name = "assembling-machine-2",
            enabled = false,
            ingredients =
            {
                {"iron-plate", 5},
                {"electronic-circuit", 5},
                {"assembling-machine-1", 1}
            },
            result = "assembling-machine-2"
          },
          {
            type = "recipe",
            name = "splitter",
            enabled = false,
            energy_required = 1,
            ingredients =
            {
              {"iron-gear-wheel", 2},
              {"iron-plate", 2},
              {"transport-belt", 2}
            },
            result = "splitter"
          },
          {
            type = "recipe",
            name = "underground-belt",
            enabled = false,
            energy_required = 1,
            ingredients =
            {
              {"iron-plate", 10},
              {"transport-belt", 5}
            },
            result_count = 2,
            result = "underground-belt"
          },
          {
            type = "recipe",
            name = "loader",
            enabled = false,
            hidden = false,
            energy_required = 1,
            ingredients =
            {
              {"fast-inserter", 1},
              {"electronic-circuit", 5},
              {"iron-gear-wheel", 6},
              {"iron-plate", 4},
              {"transport-belt", 2}
            },
            result = "loader"
          },
          {
            type = "recipe",
            name = "car",
            enabled = true,
            energy_required = 2,
            ingredients =
            {
              {"engine-unit", 8},
              {"iron-plate", 20},
              {"iron-gear-wheel", 6}
            },
            result = "car"
          },
		            {
            type = "recipe",
            name = "scaut",
            enabled = false,
            energy_required = 5,
            ingredients =
            {
              {"engine-unit", 1},	         --3  1
              {"iron-plate", 5},	 		 --5  0
		      	  {"electronic-circuit", 10}, 	 --10 10
              {"iron-gear-wheel", 6} 		 --3  0
            },
            result = "scaut"
          },
          {
            type = "recipe",
            name = "engine-unit",
	      		enabled = true,
            energy_required = 4,
            ingredients =
            {
              {"iron-plate", 1},
              {"copper-plate", 1},
              {"pipe", 2}
            },
            result = "engine-unit",
          },
          {
            type = "recipe",
            name = "iron-chest",
            enabled = true,
            ingredients = {{"iron-plate", 8}},
            result = "iron-chest"
          },
          {
            type = "recipe",
            name = "big-electric-pole",
            enabled = false,
            ingredients =
            {
              {"iron-plate", 4},
              {"copper-plate", 5},
		      	  {"iron-stick", 6}
            },
            result = "big-electric-pole"
          },
          {
            type = "recipe",
            name = "medium-electric-pole",
            enabled = true,
            ingredients =
            {
              {"iron-plate", 4},
		      	  {"copper-plate", 2},
              {"iron-stick", 2}
            },
            result = "medium-electric-pole"
          },
          {
            type = "recipe",
            name = "steel-furnace",
            ingredients = {{"iron-plate", 10}, {"stone-brick", 10}},
            result = "steel-furnace",
            energy_required = 3,
            enabled = false
          },
          {
            type = "recipe",
            name = "gate",
            enabled = false,
            ingredients = {{"stone-wall", 1}, {"iron-gear-wheel", 2}, {"electronic-circuit", 2}},
            result = "gate"
          },
          {
            type = "recipe",
            name = "steel-chest",
            enabled = false,
            ingredients = {{"iron-chest", 1},{"iron-plate", 8}},
            result = "steel-chest"
          },
          {
            type = "recipe",
            name = "fast-underground-belt",
            energy_required = 2,
            enabled = false,
            ingredients =
            {
              {"iron-gear-wheel", 20},
              {"underground-belt", 2}
            },
            result_count = 2,
            result = "fast-underground-belt"
          },
          {
            type = "recipe",
            name = "fast-splitter",
            enabled = false,
            energy_required = 2,
            ingredients =
            {
              {"splitter", 1},
              {"iron-gear-wheel", 10},
              {"electronic-circuit", 10}
            },
            result = "fast-splitter"
          },
          {
            type = "recipe",
            name = "fast-transport-belt",
            enabled = false,
            ingredients =
            {
              {"iron-gear-wheel", 4},
              {"transport-belt", 1}
            },
            result = "fast-transport-belt"
          },
          {
            type = "recipe",
            name = "solar-panel",
            energy_required = 10,
            enabled = false,
            ingredients =
            {
              {"iron-plate", 8},
              {"electronic-circuit", 8},
              {"copper-plate", 5}
            },
            result = "solar-panel"
          },
          {
            type = "recipe",
            name = "steel-plate",
            category = "smelting",
            enabled = false,
            energy_required = 16,
            ingredients = {{"iron-plate", 5}},
            result = "steel-plate"
          },
          {
            type = "recipe",
            name = "arithmetic-combinator",
            enabled = true,
            ingredients =
            {
              {"iron-plate", 5},
              {"electronic-circuit", 5}
            },
            result = "arithmetic-combinator"
          },
          {
            type = "recipe",
            name = "decider-combinator",
            enabled = true,
            ingredients =
            {
              {"iron-plate", 5},
              {"electronic-circuit", 5}
            },
            result = "decider-combinator"
          },
          {
            type = "recipe",
            name = "constant-combinator",
            enabled = true,
            ingredients =
            {
              {"iron-plate", 5},
              {"electronic-circuit", 5}
            },
            result = "constant-combinator"
          },
          {
            type = "recipe",
            name = "power-switch",
            enabled = false,
            energy_required = 2,
            ingredients =
            {
              {"iron-plate", 5},
              {"copper-plate", 5},
              {"electronic-circuit", 2}
            },
            result = "power-switch"
          },
          {
            type = "recipe",
            name = "programmable-speaker",
            enabled = false,
            energy_required = 2,
            ingredients =
            {
              {"iron-plate", 3},
              {"copper-plate", 5},
              {"electronic-circuit", 4}
            },
            result = "programmable-speaker"
          },
          {
            type = "recipe",
            name = "red-wire",
            enabled = true,
            ingredients =
            {
              {"electronic-circuit", 1},
              {"copper-plate", 1}
            },
            result = "red-wire",
			      result_count = 2
          },
          {
            type = "recipe",
            name = "green-wire",
            enabled = true,
            ingredients =
            {
              {"electronic-circuit", 1},
              {"copper-plate", 1}
            },
            result = "green-wire",
			result_count = 2
          },
          {
            type = "recipe",
            name = "rocket",
            enabled = false,
            energy_required = 8,
            ingredients =
            {
              {"electronic-circuit", 1},
              {"explosives", 1},
              {"iron-plate", 2}
            },
            result = "rocket"
          },
          {
            type = "recipe",
            name = "explosive-rocket",
            enabled = false,
            energy_required = 8,
            ingredients =
            {
              {"rocket", 1},
              {"explosives", 2}
            },
            result = "explosive-rocket"
          },
          {
            type = "recipe",
            name = "cannon-shell",
            enabled = false,
              energy_required = 8,
              ingredients =
              {
                {"iron-plate", 4},
                {"explosives", 1}
              },
              result = "cannon-shell"
          },
          {
            type = "recipe",
            name = "explosive-cannon-shell",
            enabled = false,
            energy_required = 8,
            ingredients =
            {
              {"iron-plate", 2},
              {"copper-plate", 2},
              {"explosives", 2}
            },
            result = "explosive-cannon-shell"
          },
          {
            type = "recipe",
            name = "tank",
            enabled = false,
            energy_required = 8,
            ingredients =
            {
              {"engine-unit", 8},               --24 8
              {"iron-plate", 50},				--50 0
              {"iron-gear-wheel", 10},  		--5 0
              {"electronic-circuit", 20}		--10 10
            },
            result = "tank"
          },
          {
            type = "recipe",
            name = "spidertron",
            enabled = false,
            energy_required = 10,
            ingredients =
            {
              {"fusion-reactor-equipment", 1}, --135 135 
              {"flying-robot-frame", 16},      --30  24
              {"low-density-structure", 20},   --10 10
              {"iron-gear-wheel", 32}          --16  0
            },                                 --186 215 
            result = "spidertron"
          },
          {
             type = "recipe",
             name = "low-density-structure",
             energy_required = 5,
             enabled = false,
             ingredients =
                {
                    {"iron-stick", 10},
                    {"copper-plate", 5},
                    {"coal", 15}
                },
             result= "low-density-structure",
             result_count = 2
          },
          {
            type = "recipe",
            name = "land-mine",
            enabled = false,
            energy_required = 5,
            ingredients =
            {
              {"iron-plate", 2},
              {"explosives", 2}
            },
            result = "land-mine",
            result_count = 4
          },
          {
            type = "recipe",
            name = "fast-loader",
            enabled = false,
            hidden = true,
            energy_required = 3,
            ingredients =
            {
              {"fast-transport-belt", 5},
              {"loader", 1}
            },
            result = "fast-loader"
          },
          {
            type = "recipe",
            name = "logistic-robot",
            enabled = false,
            ingredients =
            {
              {"flying-robot-frame", 1},
              {"electronic-circuit", 2}
            },
            result = "logistic-robot"
          },
          {
            type = "recipe",
            name = "construction-robot",
            enabled = false,
            ingredients =
            {
              {"electric-engine-unit", 1},
              {"electronic-circuit", 2}
            },
            result = "construction-robot"
          },
          {
            type = "recipe",
            name = "logistic-chest-passive-provider",
            enabled = false,
            ingredients =
            {
              {"iron-chest", 1},
              {"electronic-circuit", 3}
            },
            result = "logistic-chest-passive-provider"
          },
          {
            type = "recipe",
            name = "logistic-chest-active-provider",
            enabled = false,
            ingredients =
            {
              {"iron-chest", 1},
              {"electronic-circuit", 3}
            },
            result = "logistic-chest-active-provider"
          },
          {
            type = "recipe",
            name = "logistic-chest-storage",
            enabled = false,
            ingredients =
            {
              {"iron-chest", 1},
              {"electronic-circuit", 3}
            },
            result = "logistic-chest-storage"
          },
          {
            type = "recipe",
            name = "logistic-chest-buffer",
            enabled = false,
            ingredients =
            {
              {"iron-chest", 1},
              {"electronic-circuit", 3}
            },
            result = "logistic-chest-buffer"
          },
          {
            type = "recipe",
            name = "logistic-chest-requester",
            enabled = false,
            ingredients =
            {
              {"iron-chest", 1},
              {"electronic-circuit", 3}
            },
            result = "logistic-chest-requester"
          },
          {
            type = "recipe",
            name = "roboport",
            enabled = false,
            energy_required = 5,
            ingredients =
            {
              {"iron-gear-wheel", 20},      
              {"battery", 20},              
              {"electronic-circuit", 50} --55 45
            },
            result = "roboport"
          },
          {
            type = "recipe",
            name = "accumulator",
            energy_required = 10,
            enabled = false,
            ingredients =
            {
              {"iron-plate", 2},
              {"battery", 5}
            },
            result = "accumulator"
          },
          {
            type = "recipe",
            name = "electric-engine-unit",
            energy_required = 10,
            ingredients =
            {
              {"iron-stick", 1},
              {"iron-plate", 1},
              {"copper-plate", 2},
              {"electronic-circuit", 2} 
            },
            result = "electric-engine-unit",
            enabled = false
          },
          {
            type = "recipe",
            name = "flying-robot-frame",
            energy_required = 20,
            ingredients =
            {
              {"electric-engine-unit", 1},
              {"battery", 2},
              {"iron-plate", 2},
              {"electronic-circuit", 3}
            },
            result = "flying-robot-frame",
            enabled = false
          },
          {
            type = "recipe",
            name = "battery",
            energy_required = 4,
            enabled = false,
            ingredients =
              {
                {"coal", 2},
                {"iron-plate", 1},
                {"copper-plate", 1}
              },
            result = "battery" 
          },
          {
            type = "recipe",
            name = "storage-tank",
            energy_required = 3,
            enabled = false,
            ingredients =
            {
              {"iron-plate", 20},
              {"iron-chest", 5}   --60
            },
            result= "storage-tank"
          },
          {
            type = "recipe",
            name = "pump",
            energy_required = 2,
            enabled = false,
            ingredients =
            {
              {"engine-unit", 1},
              {"iron-plate", 2},
              {"pipe", 2}
            },
            result= "pump"
          },
          {
            type = "recipe",
            name = "chemical-plant",
            energy_required = 5,
            enabled = false, 
            ingredients =
            {
              {"iron-plate", 5},
              {"electronic-circuit", 5},
              {"pipe", 5}
            },
            result= "chemical-plant"
          },
          {
            type = "recipe",
            name = "nuclear-reactor",
            energy_required = 8,
            enabled = false,
            ingredients =
            {
              {"concrete", 500},
              {"steel-plate", 500},
              {"advanced-circuit", 500},
              {"copper-plate", 500}
            },
            result = "nuclear-reactor",
            requester_paste_multiplier = 1
          },
          {
            type = "recipe",
            name = "centrifuge",
            energy_required = 4,
            enabled = false,
            ingredients =
            {
              {"concrete", 100},
              {"steel-plate", 50},
              {"advanced-circuit", 100},
              {"iron-gear-wheel", 100}
            },
            result = "centrifuge",
            requester_paste_multiplier= 10
          },
          {
            type = "recipe",
            name = "uranium-processing",
            energy_required = 12,
            enabled = false,
            category = "centrifuging",
            ingredients = {{"uranium-ore", 10}},
            icon = "__base__/graphics/icons/uranium-processing.png",
            icon_size = 64, icon_mipmaps = 4,
            subgroup = "raw-material",
            order = "k[uranium-processing]", -- k ordering so it shows up after explosives which is j ordering
            results =
            {
              {
                name = "uranium-235",
                probability = 0.007,
                amount = 1
              },
              {
                name = "uranium-238",
                probability = 0.993,
                amount = 1
              }
            }
          },
          {
            type = "recipe",
            name = "kovarex-enrichment-process",
            energy_required = 60,
            enabled = false,
            category = "centrifuging",
            ingredients = {{"uranium-235", 40}, {"uranium-238", 5}},
            icon = "__base__/graphics/icons/kovarex-enrichment-process.png",
            icon_size = 64, icon_mipmaps = 4,
            subgroup = "intermediate-product",
            order = "r[uranium-processing]-c[kovarex-enrichment-process]",
            main_product = "",
            results = {{"uranium-235", 41}, {"uranium-238", 2}},
            allow_decomposition = false
          },
          {
            type = "recipe",
            name = "nuclear-fuel",
            energy_required = 90,
            enabled = false,
            category = "centrifuging",
            ingredients = {{"uranium-235", 1}, {"rocket-fuel", 1}},
            icon = "__base__/graphics/icons/nuclear-fuel.png",
            icon_size = 64, icon_mipmaps = 4,
            result = "nuclear-fuel"
          },
          {
            type = "recipe",
            name = "nuclear-fuel-reprocessing",
            energy_required = 60,
            enabled = false,
            category = "centrifuging",
            ingredients = {{"used-up-uranium-fuel-cell", 5}},
            icon = "__base__/graphics/icons/nuclear-fuel-reprocessing.png",
            icon_size = 64, icon_mipmaps = 4,
            subgroup = "intermediate-product",
            order = "r[uranium-processing]-b[nuclear-fuel-reprocessing]",
            main_product = "",
            results = {{"uranium-238", 3}},
            allow_decomposition = false
          },
          {
            type = "recipe",
            name = "uranium-fuel-cell",
            energy_required = 10,
            enabled = false,
            ingredients =
            {
              {"iron-plate", 10},
              {"uranium-235", 1},
              {"uranium-238", 19}
            },
            result = "uranium-fuel-cell",
            result_count = 10
          },
          {
            type = "recipe",
            name = "heat-exchanger",
            energy_required = 3,
            enabled = false,
            ingredients = {{"steel-plate", 10}, {"copper-plate", 100}, {"pipe", 10}},
            result = "heat-exchanger"
          },
          {
            type = "recipe",
            name = "heat-pipe",
            energy_required = 1,
            enabled = false,
            ingredients = {{"steel-plate", 10}, {"copper-plate", 20}},
            result = "heat-pipe"
          },
          {
            type = "recipe",
            name = "steam-turbine",
            enabled = false,
            energy_required = 3,
            ingredients = {{"iron-gear-wheel", 50}, {"copper-plate", 50}, {"pipe", 20}},
            result = "steam-turbine"
          }
    }
)