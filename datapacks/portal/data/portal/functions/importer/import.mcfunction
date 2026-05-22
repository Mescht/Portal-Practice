data modify storage portal:importer levels set from storage portal:levels levels
data modify storage portal:importer imported_levels set from storage portal_import:levels levels

data remove storage portal:importer new_levels

function portal:importer/loop_levels

data modify storage portal:levels levels set from storage portal:importer new_levels
function portal:gui/main_menu/load

scoreboard players reset compare vars
scoreboard players reset * import

#data remove storage portal:importer new_levels
#data remove storage portal:importer imported_levels
#data remove storage portal:importer levels
#data remove storage portal:importer comparer

tellraw @a {"text":"\nImport Complete","color":"dark_green"}