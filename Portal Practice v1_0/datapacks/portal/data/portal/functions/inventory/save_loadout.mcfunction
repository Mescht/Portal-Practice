# store inventory
execute as @p run function portal:inventory/storeinv

# edit sign data
data merge block 2 33 0 {Text2:'{"text":"Edit Loadout","color":"gold","clickEvent":{"action":"run_command","value":"execute if score random_levels vars matches 0 run function portal:inventory/edit_loadout"}}'}

# clear editing_loadout flag
scoreboard players set editing_loadout vars 0

clear @a
gamemode survival @a
function portal:select_level