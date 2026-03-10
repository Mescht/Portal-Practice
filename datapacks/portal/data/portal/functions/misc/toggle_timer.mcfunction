scoreboard players add timer settings 1
scoreboard players operation timer settings %= 2 c

execute if score timer settings matches 0 run data modify block -1 34 -2 Text3 set value '{"text":"Timer Only","color":"yellow"}'
execute if score timer settings matches 1 run data modify block -1 34 -2 Text3 set value '{"text":"Timer & Pace","color":"yellow"}'
