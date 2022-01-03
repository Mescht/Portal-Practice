# load inventory
function portal:inventory/loadinv

# edit sign data
data merge block 2 33 0 {Text2:'{"text":"Save Loadout","color":"green","clickEvent":{"action":"run_command","value":"function portal:inventory/save_loadout"}}'}

# set editing_loadout flag
scoreboard players set editing_loadout vars 1

gamemode creative @a