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
--Улучшения военки
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
disable_technology("follower-robot-count-1")
disable_technology("follower-robot-count-2")
disable_technology("follower-robot-count-3")
disable_technology("follower-robot-count-4")
disable_technology("follower-robot-count-5")
disable_technology("follower-robot-count-6")
disable_technology("follower-robot-count-7")

--броня и модули
disable_technology("modular-armor")                     --Модульная броня
disable_technology("power-armor")             	        --Силовая броня
disable_technology("power-armor-mk2")                   --Силовая броня мк2
disable_technology("heavy-armor")						
disable_technology("energy-shield-equipment")		    
disable_technology("energy-shield-mk2-equipment")	    
disable_technology("night-vision-equipment")            --ПНВ
disable_technology("belt-immunity-equipment")			--Оборудование игнорирования конвееров
disable_technology("battery-equipment")					--Аккумулятор переносной
disable_technology("battery-mk2-equipment")				--Аккумулятор переносной мк2
disable_technology("solar-panel-equipment")				--Солн. панель переносная
disable_technology("personal-laser-defense-equipment")  
disable_technology("discharge-defense-equipment")		
disable_technology("fusion-reactor-equipment")			--Теромояд переносной
disable_technology("exoskeleton-equipment")
disable_technology("personal-roboport-equipment")       --робот станция
disable_technology("personal-roboport-mk2-equipment")   --робот станция мк 2


--Вся остальная военка
disable_technology("military") 							--Военка
disable_technology("military-2")						--бронебойные патроны
disable_technology("military-3")						--
disable_technology("military-4")						--

disable_technology("gun-turret")						--Турель мелкокалиберная
disable_technology("laser-turret")						--Турель лазерная
disable_technology("laser")
disable_technology("flamethrower")						--Огнемёт
disable_technology("stone-wall")						--Стена
disable_technology("gate")								--Врата
disable_technology("artillery")
disable_technology("uranium-ammo")						--Урановые патроны
disable_technology("atomic-bomb")						--Ядерка						
disable_technology("rocketry")							--Ракеты
disable_technology("explosive-rocketry")				--

disable_technology("defender")                          --Капсулы
disable_technology("distractor")						--
disable_technology("destroyer")							--
disable_technology("land-mine")							--

--Логистика
disable_technology("fluid-handling")
disable_technology("logistics")							--Логистика
disable_technology("logistics-2")						--
disable_technology("logistics-3")						--
disable_technology("circuit-network")					--Логика
disable_technology("stack-inserter")					--Манипулятор пакетный
disable_technology("fast-inserter")						--Манипулятор быстрый
disable_technology("railway")							--Поезда, вагоны
disable_technology("automated-rail-transportation")		--
disable_technology("rail-signals")						--
disable_technology("fluid-wagon")						--
disable_technology("toolbelt")							--Разширение инвертаря
disable_technology("cliff-explosives")					--Взрывчатка для скал
disable_technology("robotics")							--Дроны
disable_technology("construction-robotics")				--
disable_technology("logistic-robotics")					--
disable_technology("logistic-system")					--
disable_technology("modules")							--Модули
disable_technology("speed-module")						--
disable_technology("speed-module-2")					--
disable_technology("speed-module-3")					--
disable_technology("productivity-module")				--
disable_technology("productivity-module-2")				--
disable_technology("productivity-module-3")				--
disable_technology("effectivity-module")				--
disable_technology("effectivity-module-2")				--
disable_technology("effectivity-module-3")				--
				
--наука
disable_technology("logistic-science-pack")
disable_technology("chemical-science-pack")
disable_technology("military-science-pack")
disable_technology("production-science-pack")
disable_technology("utility-science-pack")
disable_technology("space-science-pack")


--завод
disable_technology("automation")						--Автоматизация
disable_technology("automation-2")						--
disable_technology("automation-3")						--
disable_technology("electronics")                     	--Электроника, з.схема
disable_technology("advanced-electronics-2")			--
disable_technology("advanced-electronics")				--
disable_technology("optics")                          	--лампа
disable_technology("advanced-material-processing")    	--средняя печь
disable_technology("advanced-material-processing-2")	--Электропечь
disable_technology("effect-transmission")				--Маяки


--материалы и компоненты
disable_technology("steel-processing")					--Сталь
disable_technology("steel-axe")							--Стальные инструменты
disable_technology("engine")							--Твердотопливный двигатель
disable_technology("electric-engine")					--Электродвигатель
disable_technology("explosives")						--Взрывчатка
disable_technology("flammables")						--Топливо для огнемёта
disable_technology("rocket-fuel")						--Ракетное топливо
disable_technology("low-density-structure")				--Конструкция малой плотности
disable_technology("rocket-control-unit")				--Блок управления ракетой
disable_technology("rocket-silo")						--Ракетная шахта
disable_technology("electric-energy-accumulators")		--Стационарный аккумулятор
disable_technology("lubricant")							--Смазка
disable_technology("battery")							--Аккумулятор
disable_technology("oil-processing")					--Переработка нефти
disable_technology("advanced-oil-processing")			--
disable_technology("coal-liquefaction")					--Переработка угля
disable_technology("sulfur-processing")					--Сера
disable_technology("plastics")							--Пластик
disable_technology("uranium-processing")				--Переработка урана
disable_technology("kovarex-enrichment-process")		--Обогащение урана по 235-му изотопу имени Коварекса
disable_technology("nuclear-fuel-reprocessing")			--Переработка отработаных ядерных стержней

--энергия
disable_technology("solar-energy")						--Солнечная панель
disable_technology("electric-energy-distribution-1")  	--ЛЭП средняя и большая 
disable_technology("electric-energy-distribution-2")	--Трансформатор
disable_technology("nuclear-power")						--Ядерный реактор

--техника
disable_technology("automobilism")						--Автомобиль
disable_technology("tank")								--Танк
disable_technology("spidertron")						--Паукобот

--пол
disable_technology("concrete")							--Бетон
disable_technology("landfill")							--Отсыпка


--Гражданские улучшения
disable_technology("inserter-capacity-bonus-1")
disable_technology("inserter-capacity-bonus-2")
disable_technology("inserter-capacity-bonus-3")
disable_technology("inserter-capacity-bonus-4")
disable_technology("inserter-capacity-bonus-5")
disable_technology("inserter-capacity-bonus-6")
disable_technology("inserter-capacity-bonus-7")
disable_technology("mining-productivity-1")
disable_technology("mining-productivity-2")
disable_technology("mining-productivity-3")
disable_technology("mining-productivity-4")
disable_technology("research-speed-1")
disable_technology("research-speed-2")
disable_technology("research-speed-3")
disable_technology("research-speed-4")
disable_technology("research-speed-5")
disable_technology("research-speed-6")
disable_technology("worker-robots-speed-1")
disable_technology("worker-robots-speed-2")
disable_technology("worker-robots-speed-3")
disable_technology("worker-robots-speed-4")
disable_technology("worker-robots-speed-5")
disable_technology("worker-robots-speed-6")
disable_technology("worker-robots-storage-1")
disable_technology("worker-robots-storage-2")
disable_technology("worker-robots-storage-3")
disable_technology("braking-force-1")
disable_technology("braking-force-2")
disable_technology("braking-force-3")
disable_technology("braking-force-4")
disable_technology("braking-force-5")
disable_technology("braking-force-6")
disable_technology("braking-force-7")