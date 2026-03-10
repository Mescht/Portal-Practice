execute positioned 0 33 0 run kill @e[distance=..10,type=!player]
setblock 0 31 0 minecraft:structure_block[mode=load]{ignoreEntities:0b,mirror:"NONE",rotation:"NONE",mode:"LOAD",posX:-5,posY:1,posZ:-5,name:"portal:lobby"}
setblock 0 30 0 redstone_block
fill 0 31 0 0 30 0 air

function portal:gui/main_menu/load

tellraw @a {"text":"Map Repaired","color":"dark_green"}

execute if score timer settings matches 0 run data modify block -1 34 -2 Text3 set value '{"text":"Timer Only","color":"yellow"}'
execute if score timer settings matches 1 run data modify block -1 34 -2 Text3 set value '{"text":"Timer & Pace","color":"yellow"}'

execute if score nightvision settings matches 0 run data modify block 1 34 -2 Text3 set value '{"text":"False","color":"red"}'
execute if score nightvision settings matches 1 run data modify block 1 34 -2 Text3 set value '{"text":"True","color":"green"}'

execute if score firetick settings matches 0 run data modify block 0 34 -2 Text3 set value '{"text":"False","color":"red"}'
execute if score firetick settings matches 1 run data modify block 0 34 -2 Text3 set value '{"text":"True","color":"green"}'

fill 11 31 29 11 0 51 barrier
fill 11 0 51 -11 31 51 barrier
fill -11 31 51 -11 0 29 barrier
fill -11 0 29 11 31 29 barrier
fill 1 18 28 -1 16 28 barrier

setblock 0 15 29 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:-10,mode:"LOAD",posY:-15,sizeX:21,posZ:1,integrity:1.0f,showair:0b,name:"portal:blank",sizeY:32,sizeZ:21,showboundingbox:1b}
function portal:misc/signs
function portal:back_to_lobby

scoreboard players reset * repair