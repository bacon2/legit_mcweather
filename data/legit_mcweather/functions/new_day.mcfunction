#weather key: 1-blizzard, 2-tornado, 3-flood, 4-heatwave, 5-spring growth, 6-nothing, 7-
execute store result storage legit_mcweather:time moon short 1 run data get storage legit_mcweather:time moon 0.9
execute if data storage legit_mcweather:time {moon:0s} if data storage legit_mcweather:time {season:"winter"} run data modify storage legit_mcweather:time season set value "easter_egg"
execute if data storage legit_mcweather:time {moon:0s} if data storage legit_mcweather:time {season:"fall"} run data modify storage legit_mcweather:time season set value "winter"
execute if data storage legit_mcweather:time {moon:0s} if data storage legit_mcweather:time {season:"summer"} run data modify storage legit_mcweather:time season set value "fall"
execute if data storage legit_mcweather:time {moon:0s} if data storage legit_mcweather:time {season:"spring"} run data modify storage legit_mcweather:time season set value "summer"
execute if data storage legit_mcweather:time {moon:0s} if data storage legit_mcweather:time {season:"easter_egg"} run data modify storage legit_mcweather:time season set value "spring"
execute if data storage legit_mcweather:time {moon:0s} run data modify storage legit_mcweather:time moon set value 8
execute if data storage legit_mcweather:time {season:"spring"} run data modify storage legit_mcweather:weather weather set value 6
execute if data storage legit_mcweather:time {season:"spring"} if predicate legit_mcweather:1_in_2 if predicate legit_mcweather:1_in_2 run data modify storage legit_mcweather:weather weather set value 5
execute if data storage legit_mcweather:time {season:"spring"} if predicate legit_mcweather:1_in_2 run data modify storage legit_mcweather:weather weather set value 3
execute if data storage legit_mcweather:time {season:"summer"} run data modify storage legit_mcweather:weather weather set value 6
execute if data storage legit_mcweather:time {season:"summer"} if predicate legit_mcweather:1_in_2 run data modify storage legit_mcweather:weather weather set value 4
execute if data storage legit_mcweather:time {season:"winter"} run data modify storage legit_mcweather:weather weather set value 6
execute if data storage legit_mcweather:time {season:"winter"} if predicate legit_mcweather:1_in_2 run data modify storage legit_mcweather:weather weather set value 1
execute if data storage legit_mcweather:time {season:"fall"} run data modify storage legit_mcweather:weather weather set value 6
execute if data storage legit_mcweather:time {season:"fall"} if predicate legit_mcweather:1_in_2 run data modify storage legit_mcweather:weather weather set value 2