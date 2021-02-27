require("config.config")

droidscale = 0.8
droidSmgTint =  {r=0.8, g=1, b=1, a=1}
droidFlameTint = {r=1.0, g=0.5, b=0.5, a=1}
droidRocketTint = {r=0.8, g=0.8, b=1, a=1}
droidRifleTint = {r=0.8, g=1, b=0.8, a=1}
droidMapColour = {r = .05, g = .70, b = .29}

local util = require("util")

local tank_shift_y = 6
local sprite_base = util.copy(data.raw.car.tank)
local turret_base = util.copy(data.raw.car.tank.turret_animation)

local is_sprite_def = function(array)
  return array.width and array.height and (array.filename or array.stripes or array.filenames)
end

util.is_sprite_def = is_sprite_def

local recursive_hack_make_hr
recursive_hack_make_hr = function(prototype)
  for k, v in pairs (prototype) do
    if type(v) == "table" then
      if is_sprite_def(v) and v.hr_version then
        prototype[k] = v.hr_version
        --v.scale = v.scale * 0.5
        v.hr_version = nil
      end
      recursive_hack_make_hr(v)
    end
  end
end
util.recursive_hack_make_hr = recursive_hack_make_hr

util.recursive_hack_make_hr(sprite_base)

for k, layer in pairs (sprite_base.animation.layers) do
  layer.frame_count = 1
  layer.max_advance = nil
  layer.line_length = nil
  if layer.stripes then
    for k, strip in pairs (layer.stripes) do
      strip.width_in_frames = 1
    end
    if layer.apply_runtime_tint or layer.draw_as_shadow then
      local new_stripes = {}
      for k, stripe in pairs (layer.stripes) do
        if k % 2 ~= 0 then
          table.insert(new_stripes, stripe)
        end
      end
      layer.stripes = new_stripes
      --error(serpent.block(layer))
    end
  end
end

util.recursive_hack_make_hr(turret_base)
--util.recursive_hack_scale(turret_base, 0.66)

--local turret_shift = {0.18, 0}

for k, layer in pairs (turret_base.layers) do
--  layer.shift = layer.shift or {0,0}
--  layer.shift[1] = layer.shift[1] + turret_shift[1]
--  layer.shift[2] = layer.shift[2] + turret_shift[2]
  table.insert(sprite_base.animation.layers, layer)
end

function make_laser_sounds(volume)
  return
  {
    {
      filename = "__base__/sound/fight/laser-1.ogg",
      volume = 0.7
    },
    {
      filename = "__base__/sound/fight/laser-2.ogg",
      volume = 0.7
    },
    {
      filename = "__base__/sound/fight/laser-3.ogg",
      volume = 0.7
    }
  }
end

function make_heavy_shot_sounds(volume)
return
{
 {
      filename = "__base__/sound/fight/heavy-gunshot-1.ogg",
      volume = 0.45
    },
    {
      filename = "__base__/sound/fight/heavy-gunshot-2.ogg",
      volume = 0.45
    },
    {
      filename = "__base__/sound/fight/heavy-gunshot-3.ogg",
      volume = 0.45
    },
    {
      filename = "__base__/sound/fight/heavy-gunshot-4.ogg",
      volume = 0.45
    }
}
end


function make_light_gunshot_sounds(volume)
  return
  {
    {
      filename = "__base__/sound/fight/light-gunshot-1.ogg",
      volume = 0.7
    },
    {
      filename = "__base__/sound/fight/light-gunshot-2.ogg",
      volume = 0.7
    },
    {
      filename = "__base__/sound/fight/light-gunshot-3.ogg",
      volume = 0.7
    }
  }
end

function make_rifle_gunshot_sounds(volume)
  return
  {
    {
      filename = "__base__/sound/fight/light-gunshot-1.ogg",
      volume = 1
    },
    {
      filename = "__base__/sound/fight/light-gunshot-2.ogg",
      volume = 1
    },
    {
      filename = "__base__/sound/fight/light-gunshot-3.ogg",
      volume = 1
    }
  }
end

local scaut =
{
    type = "unit",
    name = "scaut",
    icon_size = 64,
    icon = "__base__/graphics/icons/car.png",
    flags = {"placeable-player", "player-creation", "placeable-off-grid"},
    subgroup="creatures",
    order="e-a-b-d",
    max_health = 200 * HEALTH_SCALAR,       --хп + множитель см. конфиг файл
    has_belt_immunity = true,               -- имунетет на конвееры 
    alert_when_damaged = false,             -- тревога при атаке
    healing_per_tick = 0.01,                --реген
    collision_box = {{-0.7, -1}, {0.7, 1}},
    selection_box = {{-0.7, -1}, {0.7, 1}},
    sticker_box = {{-0.7, -1}, {0.7, 1}},
	  vision_distance = 30,                   -- дситанция вижена(узнать что значит)
    radar_range = 1,                        -- радар
    can_open_gates = true,
    movement_speed = 0.3,                  -- скорость движения
	  minable = {hardness = 0.1, mining_time = 0.1, result = "scaut"},
	  pollution_to_join_attack = 0.0,
	  distraction_cooldown = 0,
    distance_per_frame =  0.05,
	  friendly_map_color = droidMapColour,
	  dying_explosion = "medium-explosion",
	  resistances =
    {
      {
        type = "physical",
        decrease = 6,
        percent = 40
      },
      {
        type = "explosion",
        decrease = 10,
        percent = 70
      },
      {
        type = "acid",
        decrease = 1,
        percent = 30
      },
	    {
        type = "fire",
	    	decrease = 5,
        percent = 95
      }
    },
    destroy_action =
    {
       type = "direct",
      action_delivery =
      {
        type = "instant",
        source_effects =
        {
          {
            type = "nested-result",
            affects_target = true,
            action =
            {
              type = "area",
              perimeter = 6,
              collision_mask = { "player-layer" },
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  type = "damage",
                  damage = { amount = 40, type = "explosion"}
                }
              }
            },
          },
          {
            type = "create-entity",
            entity_name = "explosion"
          },
          {
            type = "damage",
            damage = { amount = 100, type = "explosion"}
          }
        }
      }
 
    },
    run_animation =
    {
    layers =
    {
      {
        priority = "low",
        width = 102,
        height = 86,
        frame_count = 2,
        direction_count = 64,
        shift = {0, -0.1875},
        animation_speed = 8,
        max_advance = 0.2,
        stripes =
        {
          {
            filename = "__base__/graphics/entity/car/car-1.png",
            width_in_frames = 2,
            height_in_frames = 22
          },
          {
            filename = "__base__/graphics/entity/car/car-2.png",
            width_in_frames = 2,
            height_in_frames = 22
          },
          {
            filename = "__base__/graphics/entity/car/car-3.png",
            width_in_frames = 2,
            height_in_frames = 20
          }
        },
        hr_version =
        {
          priority = "low",
          width = 201,
          height = 172,
          frame_count = 2,
          scale = 0.5,
          direction_count = 64,
          shift = util.by_pixel(0+2, -11.5+8.5),
          animation_speed = 8,
          max_advance = 0.2,
          stripes =
          {
            {
              filename = "__base__/graphics/entity/car/hr-car-1.png",
              width_in_frames = 2,
              height_in_frames = 11
            },
            {
              filename = "__base__/graphics/entity/car/hr-car-2.png",
              width_in_frames = 2,
              height_in_frames = 11
            },
            {
              filename = "__base__/graphics/entity/car/hr-car-3.png",
              width_in_frames = 2,
              height_in_frames = 11
            },
            {
              filename = "__base__/graphics/entity/car/hr-car-4.png",
              width_in_frames = 2,
              height_in_frames = 11
            },
            {
              filename = "__base__/graphics/entity/car/hr-car-5.png",
              width_in_frames = 2,
              height_in_frames = 11
            },
            {
              filename = "__base__/graphics/entity/car/hr-car-6.png",
              width_in_frames = 2,
              height_in_frames = 9
            }
          }
        }
      },
      {
        priority = "low",
        width = 100,
        height = 75,
        frame_count = 2,
        apply_runtime_tint = true,
        direction_count = 64,
        max_advance = 0.2,
        line_length = 2,
        shift = {0, -0.171875},
        stripes = util.multiplystripes(2,
        {
          {
            filename = "__base__/graphics/entity/car/car-mask-1.png",
            width_in_frames = 1,
            height_in_frames = 22
          },
          {
            filename = "__base__/graphics/entity/car/car-mask-2.png",
            width_in_frames = 1,
            height_in_frames = 22
          },
          {
            filename = "__base__/graphics/entity/car/car-mask-3.png",
            width_in_frames = 1,
            height_in_frames = 20
          }
        }),
        hr_version =
        {
          priority = "low",
          width = 199,
          height = 147,
          frame_count = 2,
          apply_runtime_tint = true,
          scale = 0.5,
          axially_symmetrical = false,
          direction_count = 64,
          max_advance = 0.2,
          shift = util.by_pixel(0+2, -11+8.5),
          line_length = 1,
          stripes = util.multiplystripes(2,
          {
            {
              filename = "__base__/graphics/entity/car/hr-car-mask-1.png",
              width_in_frames = 1,
              height_in_frames = 13
            },
            {
              filename = "__base__/graphics/entity/car/hr-car-mask-2.png",
              width_in_frames = 1,
              height_in_frames = 13
            },
            {
              filename = "__base__/graphics/entity/car/hr-car-mask-3.png",
              width_in_frames = 1,
              height_in_frames = 13
            },
            {
              filename = "__base__/graphics/entity/car/hr-car-mask-4.png",
              width_in_frames = 1,
              height_in_frames = 13
            },
            {
              filename = "__base__/graphics/entity/car/hr-car-mask-5.png",
              width_in_frames = 1,
              height_in_frames = 12
            }
          })
        }
      },
      {
        priority = "low",
        width = 114,
        height = 76,
        frame_count = 2,
        draw_as_shadow = true,
        direction_count = 64,
        shift = {0.28125, 0.25},
        max_advance = 0.2,
        stripes = util.multiplystripes(2,
        {
          {
            filename = "__base__/graphics/entity/car/car-shadow-1.png",
            width_in_frames = 1,
            height_in_frames = 22
          },
          {
            filename = "__base__/graphics/entity/car/car-shadow-2.png",
            width_in_frames = 1,
            height_in_frames = 22
          },
          {
            filename = "__base__/graphics/entity/car/car-shadow-3.png",
            width_in_frames = 1,
            height_in_frames = 20
          }
        })
      }
    }},
  attack_parameters =
  {
    type = "projectile",
    ammo_category = "bullet",
	  shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0.1},
        creation_distance = -0.5,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
    cooldown = 16,
    projectile_center = {0, 0.5},
    projectile_creation_distance = 0.6,
    range = 18,
    sound = make_heavy_shot_sounds(1.0),
	  animation =
		  {
        filename = "__base__/graphics/entity/car/car-turret.png",
        priority = "low",
        line_length = 8,
        width = 36,
        height = 29,
        frame_count = 1,
        direction_count = 64,
        shift = {0.03125, -0.890625},
        animation_speed = 8,
        hr_version =
          {
            priority = "low",
            width = 71,
            height = 57,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 64,
            shift = util.by_pixel(0+2, -33.5+8.5),
            animation_speed = 8,
            scale = 0.5,
            stripes =
            {
              {
                filename = "__base__/graphics/entity/car/hr-car-turret-1.png",
                width_in_frames = 1,
                height_in_frames = 32
              },
              {
                filename = "__base__/graphics/entity/car/hr-car-turret-2.png",
                width_in_frames = 1,
                height_in_frames = 32
              }
            }
          }
	  	},
    ammo_type =
      {
        category = "bullet",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            source_effects =
            {
              type = "create-explosion",
              entity_name = "explosion-gunshot-small"
            },
            target_effects =
            {
              {
                type = "create-entity",
                entity_name = "explosion-hit"
              },
              {
                type = "damage",
                damage = { amount = 8*DAMAGE_SCALAR , type = "physical"}
              }
            }
          }
        }
       }
      }
}

local dred =
{
    type = "unit",
    name = "dred",
    icon_size = 64,
    icon = "__base__/graphics/icons/tank.png",
    flags = {"placeable-player", "player-creation", "placeable-off-grid"},
    subgroup="creatures",
    order="e-a-b-d",
    max_health = 450 * HEALTH_SCALAR,       --хп + множитель см. конфиг файл
    has_belt_immunity = true,               -- имунетет на конвееры 
    alert_when_damaged = false,             -- тревога при атаке
    healing_per_tick = 0.01,                --реген
    collision_box = {{-0.7, -1}, {0.7, 1}},
    selection_box = {{-0.7, -1}, {0.7, 1}},
    sticker_box = {{-0.7, -1}, {0.7, 1}},
	  vision_distance = 28,                   -- дситанция вижена(узнать что значит)
    radar_range = 1,                        -- радар
    can_open_gates = true,
    movement_speed = 0.15,                  -- скорость движения
	  minable = {hardness = 0.1, mining_time = 0.1, result = "dred"},
	  pollution_to_join_attack = 0.0,
	  distraction_cooldown = 0,
    distance_per_frame =  0.05,
	  friendly_map_color = droidMapColour,
	  dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        decrease = 15,
        percent = 60
      },
      {
        type = "physical",
        decrease = 15,
        percent = 60
      },
      {
        type = "impact",
        decrease = 50,
        percent = 80
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 70
      },
      {
        type = "acid",
        decrease = 0,
        percent = 70
      }
    },
    destroy_action =
    {
       type = "direct",
      action_delivery =
      {
        type = "instant",
        source_effects =
        {
          {
            type = "nested-result",
            affects_target = true,
            action =
            {
              type = "area",
              perimeter = 6,
              collision_mask = { "player-layer" },
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  type = "damage",
                  damage = { amount = 40, type = "explosion"}
                }
              }
            },
          },
          {
            type = "create-entity",
            entity_name = "explosion"
          },
          {
            type = "damage",
            damage = { amount = 100, type = "explosion"}
          }
        }
      }
 
    },
    run_animation = sprite_base.animation,
  attack_parameters =
  {
    type = "projectile",
    ammo_category = "cannon-shell",
	  shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0.1},
        creation_distance = -0.5,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
    cooldown = 90,
    projectile_center = {-0.15625, -0.07812},
    projectile_creation_distance = 1.6,
    range = 25,
    sound = make_heavy_shot_sounds(1.0),
	  animation = sprite_base.animation,
    ammo_type =
      {
        category = "cannon-shell",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            source_effects =
            {
              type = "create-explosion",
              entity_name = "explosion-gunshot-small"
            },
            target_effects =
            {
              {
                type = "create-entity",
                entity_name = "explosion-hit"
              },
              {
                type = "damage",
                damage = { amount = 8*DAMAGE_SCALAR , type = "physical"}
              }
            }
          }
        }
       }
      }
}
data:extend({scaut, dred})