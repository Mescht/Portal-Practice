scoreboard players set i gui 0
scoreboard players set menu gui 1

data modify storage portal:gui buffer set from storage portal:levels levels
data modify storage portal:gui settings set value []

function portal:gui/random_settings/populate_rec

data modify storage portal:gui settings append value {id:"minecraft:nether_star",Count:1b,Slot:26s,tag:{display:{Name:'{"text":"Main Menu"}'}}}

data modify block 0 34 3 Items set from storage portal:gui settings