execute if data storage legit_mcweather:weather {weather:1} at @s run execute at @a run particle minecraft:falling_dust{block_state:snow} ~ ~ ~ 10 10 10 2 100 force
execute if data storage legit_mcweather:weather {weather:1} at @s run summon minecraft:falling_block ~10 ~50 ~10 {NoGravity:0b, BlockState:{Name:"minecraft:snow"}, Time:1s, Tags:["legit_snow"]}
execute if data storage legit_mcweather:weather {weather:1} at @s run spreadplayers ~ ~ 1 200 false @e[tag=legit_snow]
execute if data storage legit_mcweather:weather {weather:1} run kill @e[type=item, nbt={Item:{id:"minecraft:snow"}}]
execute if data storage legit_mcweather:weather {weather:1} at @s run summon minecraft:armor_stand ~10 ~50 ~10 {Tags:["legit_cold"]}
execute if data storage legit_mcweather:weather {weather:1} at @s run spreadplayers ~ ~ 1 20 false @e[tag=legit_cold]
execute if data storage legit_mcweather:weather {weather:1} at @e[tag=legit_cold] run fill ~-5 ~10 ~-5 ~5 ~-2 ~5 minecraft:ice replace minecraft:water
execute if data storage legit_mcweather:weather {weather:1} as @e[tag=legit_cold] at @s unless block ~ ~-1 ~ air run kill @s
execute if data storage legit_mcweather:weather {weather:1} at @s run gamerule randomTickSpeed 3
execute if data storage legit_mcweather:weather {weather:1} run weather clear
execute if data storage legit_mcweather:weather {weather:2} at @s unless entity @e[tag=legit_tornado] run summon vex ~-20 80 ~10 {Tags:["legit_tornado"]}
execute if data storage legit_mcweather:weather {weather:2} at @e[tag=legit_tornado] run particle minecraft:sweep_attack ~ ~5 ~ 5 5 5 1 10 force
execute if data storage legit_mcweather:weather {weather:2} at @e[tag=legit_tornado] run particle minecraft:dust{scale:4.0, color:[0.5,0.5,0.5]} ~ ~10 ~ 2 10 2 1 100 force
execute if data storage legit_mcweather:weather {weather:2} as @e[tag=!legit_tornado, type=!#legit_mcweather:inanimate] at @s if entity @e[tag=legit_tornado, distance=..20] run tp @s ^ ^3 ^
execute if data storage legit_mcweather:weather {weather:2} at @s run gamerule randomTickSpeed 3
execute if data storage legit_mcweather:weather {weather:2} at @s run weather rain
execute if data storage legit_mcweather:weather {weather:2} at @e[tag=legit_tornado] run playsound minecraft:item.elytra.flying master @a ~ ~ ~ 2 1
execute if data storage legit_mcweather:weather {weather:3} at @s run particle minecraft:falling_water ~ ~20 ~ 10 10 10 10 100 normal
execute if data storage legit_mcweather:weather {weather:3} run weather rain
execute if data storage legit_mcweather:weather {weather:3} as @e[tag=legit_flood] at @s positioned over world_surface if entity @s[distance=..1] run fill ~ ~ ~ ~1 ~1 ~1 water replace air
execute if data storage legit_mcweather:weather {weather:3} at @s run kill @e[tag=legit_flood]
execute if data storage legit_mcweather:weather {weather:3} at @s run summon minecraft:armor_stand ~10 ~50 ~10 {Marker:1b,Tags:["legit_flood"]}
execute if data storage legit_mcweather:weather {weather:3} at @s in minecraft:overworld run spreadplayers ~ ~ 1 200 under 68 false @e[tag=legit_flood]
execute if data storage legit_mcweather:weather {weather:3} at @s run gamerule randomTickSpeed 4
execute if data storage legit_mcweather:weather {weather:4} run weather clear
execute if data storage legit_mcweather:weather {weather:4} at @s run summon minecraft:armor_stand ~10 ~50 ~10 {Tags:["legit_heat"]}
execute if data storage legit_mcweather:weather {weather:4} at @s run spreadplayers ~ ~ 1 200 under 68 false @e[tag=legit_heat]
execute if data storage legit_mcweather:weather {weather:4} at @e[tag=legit_heat] run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:dirt replace minecraft:grass_block
execute if data storage legit_mcweather:weather {weather:4} at @e[tag=legit_heat] run fill ~ ~-1 ~ ~ ~ ~ fire replace minecraft:short_grass
execute if data storage legit_mcweather:weather {weather:4} at @e[tag=legit_heat] run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 structure_void replace #legit_mcweather:sponges
execute if data storage legit_mcweather:weather {weather:4} at @e[tag=legit_heat] run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 sponge replace minecraft:air
execute if data storage legit_mcweather:weather {weather:4} at @e[tag=legit_heat] run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace #legit_mcweather:sponges
execute if data storage legit_mcweather:weather {weather:4} at @e[tag=legit_heat] run fill ~-8 ~-2 ~-8 ~8 ~2 ~8 air replace water
execute if data storage legit_mcweather:weather {weather:4} at @e[tag=legit_heat] run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 sponge replace structure_void
execute if data storage legit_mcweather:weather {weather:4} at @e[tag=legit_heat] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace minecraft:snow
execute if data storage legit_mcweather:weather {weather:4} as @e[tag=legit_heat] at @s unless block ~ ~-1 ~ air run kill @s
execute if data storage legit_mcweather:weather {weather:4} at @s run gamerule randomTickSpeed 2
execute if data storage legit_mcweather:weather {weather:5} at @s run particle minecraft:happy_villager ~ ~-3 ~ 5 5 5 10 1 normal
execute if data storage legit_mcweather:weather {weather:5} at @s run gamerule randomTickSpeed 100
execute if data storage legit_mcweather:weather {weather:5} at @s run summon minecraft:armor_stand ~10 ~50 ~10 {Tags:["legit_growth"]}
execute if data storage legit_mcweather:weather {weather:5} at @s run spreadplayers ~ ~ 1 200 false @e[tag=legit_growth]
execute if data storage legit_mcweather:weather {weather:5} at @e[tag=legit_growth, predicate=legit_mcweather:1_in_100] if block ~ ~-1 ~ minecraft:grass_block run fill ~ ~ ~ ~ ~ ~ minecraft:oak_sapling replace minecraft:air
execute if data storage legit_mcweather:weather {weather:5} at @e[tag=legit_growth, predicate=legit_mcweather:in_oak_biome] if block ~ ~-1 ~ minecraft:grass_block run fill ~ ~ ~ ~ ~ ~ minecraft:oak_sapling replace minecraft:air
execute if data storage legit_mcweather:weather {weather:5} at @e[tag=legit_growth, predicate=legit_mcweather:in_acacia_biome] if block ~ ~-1 ~ minecraft:grass_block run fill ~ ~ ~ ~ ~ ~ minecraft:acacia_sapling replace minecraft:air
execute if data storage legit_mcweather:weather {weather:5} at @e[tag=legit_growth, predicate=legit_mcweather:in_jungle_biome] if block ~ ~-1 ~ minecraft:grass_block run fill ~ ~ ~ ~1 ~ ~1 minecraft:jungle_sapling replace minecraft:air
execute if data storage legit_mcweather:weather {weather:5} at @e[tag=legit_growth, predicate=legit_mcweather:in_birch_biome] if block ~ ~-1 ~ minecraft:grass_block run fill ~ ~ ~ ~ ~ ~ minecraft:birch_sapling replace minecraft:air
execute if data storage legit_mcweather:weather {weather:5} at @e[tag=legit_growth, predicate=legit_mcweather:in_dark_oak_biome] if block ~ ~-1 ~ minecraft:grass_block run fill ~ ~ ~ ~1 ~ ~1 minecraft:dark_oak_sapling replace minecraft:air
execute if data storage legit_mcweather:weather {weather:5} at @e[tag=legit_growth, predicate=legit_mcweather:in_spruce_biome] if block ~ ~-1 ~ minecraft:grass_block run fill ~ ~ ~ ~ ~ ~ minecraft:spruce_sapling replace minecraft:air
execute if data storage legit_mcweather:weather {weather:5} at @e[tag=legit_growth, predicate=legit_mcweather:in_spruce_biome] if block ~ ~-1 ~ minecraft:podzol run fill ~ ~ ~ ~1 ~ ~1 minecraft:spruce_sapling replace minecraft:air
execute if data storage legit_mcweather:weather {weather:5} at @e[tag=legit_growth] run fill ~-10 ~-5 ~-10 ~10 ~5 ~10 minecraft:water replace #minecraft:ice
execute if data storage legit_mcweather:weather {weather:5} as @e[tag=legit_growth] at @s unless block ~ ~-1 ~ air run kill @s