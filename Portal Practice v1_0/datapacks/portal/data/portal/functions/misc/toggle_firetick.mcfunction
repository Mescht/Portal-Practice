scoreboard players add firetick settings 1
scoreboard players operation firetick settings %= 2 c

execute if score firetick settings matches 0 run gamerule doFireTick false
execute if score firetick settings matches 1 run gamerule doFireTick true

execute if score firetick settings matches 0 run data modify block 0 34 -2 Text3 set value '{"text":"False","color":"red"}'
execute if score firetick settings matches 1 run data modify block 0 34 -2 Text3 set value '{"text":"True","color":"green"}'