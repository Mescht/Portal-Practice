scoreboard players add nightvision settings 1
scoreboard players operation nightvision settings %= 2 c

execute if score nightvision settings matches 0 run data modify block 1 34 -2 Text3 set value '{"text":"False","color":"red"}'
execute if score nightvision settings matches 1 run data modify block 1 34 -2 Text3 set value '{"text":"True","color":"green"}'
execute if score nightvision settings matches 0 run effect clear @a