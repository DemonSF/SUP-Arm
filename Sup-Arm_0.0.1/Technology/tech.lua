-- remove a specific prereq from a tech

function remove_prereq_from_tech(tech, prereq)
    if not data.raw.technology[tech] or not data.raw.technology[tech].prerequisites then return end
    local t = {}
    for _,v in pairs(data.raw.technology[tech].prerequisites) do
        if v ~= prereq then table.insert(t,v) end
    end
    data.raw.technology[tech].prerequisites = t
end

-- disable a tech - also remove it as a prereq from all other techs

function disable_technology(tech)
    tech = data.raw.technology[tech]
    tech.enabled = false
    tech.hidden = true
    tech.prerequisites = nil
    for _,rawtech in pairs(data.raw.technology) do
        remove_prereq_from_tech(rawtech.name, tech)
    end
end
--урон патрон и орудия и броня и модули
disable_technology("physical-projectile-damage-1")
disable_technology("physical-projectile-damage-2")
disable_technology("weapon-shooting-speed-1")
disable_technology("weapon-shooting-speed-2")
disable_technology("stronger-explosives-1")
disable_technology("physical-projectile-damage-3")
disable_technology("physical-projectile-damage-4")
disable_technology("physical-projectile-damage-5")
disable_technology("physical-projectile-damage-6")
disable_technology("physical-projectile-damage-7")
disable_technology("stronger-explosives-2")
disable_technology("stronger-explosives-3")
disable_technology("stronger-explosives-4")
disable_technology("stronger-explosives-5")
disable_technology("stronger-explosives-6")
disable_technology("stronger-explosives-7")
disable_technology("refined-flammables-1")
disable_technology("refined-flammables-2")
disable_technology("refined-flammables-3")
disable_technology("refined-flammables-4")
disable_technology("refined-flammables-5")
disable_technology("refined-flammables-6")
disable_technology("refined-flammables-7")
disable_technology("energy-weapons-damage-1")
disable_technology("energy-weapons-damage-2")
disable_technology("energy-weapons-damage-3")
disable_technology("energy-weapons-damage-4")
disable_technology("energy-weapons-damage-5")
disable_technology("energy-weapons-damage-6")
disable_technology("energy-weapons-damage-7")
disable_technology("weapon-shooting-speed-3")
disable_technology("weapon-shooting-speed-4")
disable_technology("weapon-shooting-speed-5")
disable_technology("weapon-shooting-speed-6")
disable_technology("laser-shooting-speed-1")
disable_technology("laser-shooting-speed-2")
disable_technology("laser-shooting-speed-3")
disable_technology("laser-shooting-speed-4")
disable_technology("laser-shooting-speed-5")
disable_technology("laser-shooting-speed-6")
disable_technology("laser-shooting-speed-7")
disable_technology("artillery-shell-range-1")
disable_technology("artillery-shell-speed-1")
disable_technology("military")
disable_technology("military-2")
disable_technology("heavy-armor")
disable_technology("gun-turret")
disable_technology("stone-wall")
disable_technology("gate")
disable_technology("military-3")
disable_technology("military-4")
disable_technology("uranium-ammo")
disable_technology("atomic-bomb")
disable_technology("laser")
disable_technology("rocketry")
disable_technology("explosive-rocketry")
disable_technology("modular-armor")
disable_technology("power-armor")
disable_technology("power-armor-mk2")
disable_technology("laser-turret")
disable_technology("energy-shield-equipment")
disable_technology("night-vision-equipment")
disable_technology("belt-immunity-equipment")
disable_technology("energy-shield-mk2-equipment")
disable_technology("battery-equipment")
disable_technology("")
disable_technology("")
disable_technology("")
disable_technology("")
disable_technology("")
disable_technology("")
disable_technology("")
disable_technology("")

--логистика
disable_technology("stack-inserter")
disable_technology("inserter-capacity-bonus-1")
disable_technology("inserter-capacity-bonus-2")
disable_technology("inserter-capacity-bonus-3")
disable_technology("inserter-capacity-bonus-4")
disable_technology("inserter-capacity-bonus-5")
disable_technology("inserter-capacity-bonus-6")
disable_technology("inserter-capacity-bonus-7")
disable_technology("fast-inserter")
disable_technology("logistics")
disable_technology("railway")
disable_technology("automated-rail-transportation")
disable_technology("rail-signals")
disable_technology("logistics-2")
disable_technology("toolbelt")
disable_technology("cliff-explosives")
disable_technology("land-mine")
disable_technology("flamethrower")
disable_technology("fluid-wagon")
disable_technology("braking-force-1")
disable_technology("braking-force-2")
disable_technology("braking-force-3")
disable_technology("braking-force-4")
disable_technology("braking-force-5")
disable_technology("braking-force-6")
disable_technology("braking-force-7")
disable_technology("logistics-3")
disable_technology("robotics")
disable_technology("construction-robotics")
disable_technology("logistic-robotics")
disable_technology("logistic-system")
disable_technology("worker-robots-speed-1")
disable_technology("worker-robots-speed-2")
disable_technology("worker-robots-speed-3")
disable_technology("worker-robots-speed-4")
disable_technology("worker-robots-speed-5")
disable_technology("worker-robots-speed-6")
disable_technology("worker-robots-storage-1")
disable_technology("worker-robots-storage-2")
disable_technology("worker-robots-storage-3")
disable_technology("")
disable_technology("")
disable_technology("")
disable_technology("")

--наука
disable_technology("logistic-science-pack")
disable_technology("chemical-science-pack")
disable_technology("military-science-pack")
disable_technology("production-science-pack")
disable_technology("utility-science-pack")
disable_technology("space-science-pack")
disable_technology("research-speed-1")
disable_technology("research-speed-2")
disable_technology("research-speed-3")
disable_technology("research-speed-4")
disable_technology("research-speed-5")
disable_technology("research-speed-6")
disable_technology("")
disable_technology("")
disable_technology("")
disable_technology("")

--завод
disable_technology("automation")                      --завод 1 и длинная рука
disable_technology("automation-2")                    --завод 2
disable_technology("automation-3")
disable_technology("electronics")                     --з.схема
disable_technology("optics")                          --лампа
disable_technology("advanced-material-processing")    --средняя печь
disable_technology("advanced-electronics")
disable_technology("advanced-electronics-2")
disable_technology("advanced-material-processing-2")
disable_technology("effect-transmission")
disable_technology("")
disable_technology("")
disable_technology("")
disable_technology("")

--материалы и компоненты
disable_technology("steel-processing")
disable_technology("steel-axe")
disable_technology("engine")
disable_technology("explosives")
disable_technology("flammables")
disable_technology("rocket-fuel")
disable_technology("low-density-structure")
disable_technology("rocket-control-unit")
disable_technology("rocket-silo")
disable_technology("electric-energy-accumulators")
disable_technology("lubricant")
disable_technology("electric-engine")
disable_technology("battery")
disable_technology("")
disable_technology("")
disable_technology("")
disable_technology("")
disable_technology("")
disable_technology("")
disable_technology("")
disable_technology("")

--энергия
disable_technology("solar-energy")
disable_technology("electric-energy-distribution-1")  --ЛЭП средняя и большая 
disable_technology("electric-energy-distribution-2")
disable_technology("")
disable_technology("")
disable_technology("")
disable_technology("")
disable_technology("")

--техника
disable_technology("automobilism")
disable_technology("tank")
disable_technology("")
disable_technology("")
disable_technology("")
disable_technology("")
disable_technology("")
disable_technology("")
disable_technology("")

--пол
disable_technology("concrete")
disable_technology("landfill")                        --отсыпка
disable_technology("")
disable_technology("")
disable_technology("")
disable_technology("")
disable_technology("")
disable_technology("")
disable_technology("")
disable_technology("")