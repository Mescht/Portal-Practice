tp @a 0 33 0 0 0
clear @a
effect clear @a
scoreboard players set in_lobby vars 1
scoreboard players set active timer 0

fill 10 0 30 -10 32 50 air
execute positioned 0.5 33 40.5 run kill @e[type=!player,distance=..15]

data modify block 0 15 29 mode set value "LOAD"

data modify block 0 15 29 name set value "portal:blank"
setblock 0 14 29 minecraft:redstone_block
setblock 0 14 29 minecraft:barrier
kill @e[type=item]

function portal:gui/main_menu/load