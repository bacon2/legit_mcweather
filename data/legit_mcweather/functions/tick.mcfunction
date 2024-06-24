execute as @a[nbt={Dimension:"minecraft:overworld"}] at @s run function legit_mcweather:overworld_tick
execute if data storage legit_mcweather:weather {weather:6} at @a run gamerule randomTickSpeed 3
execute store result storage legit_mcweather:time time short 1 run time query daytime
execute if data storage legit_mcweather:time {time:1234s} run function legit_mcweather:new_day