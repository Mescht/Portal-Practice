execute store result score compare vars run data modify storage portal:importer comparer.structures[0].name set from storage portal:importer new_levels[-1].structures[-1].name

#tellraw @a [{"text":"compared "},{"nbt":"comparer.structures[0].name","storage":"portal:importer"},{"text":" with "},{"nbt":"new_levels[0].structures[0].name","storage":"portal:importer"}]

execute if score compare vars matches 0 run data modify storage portal:importer new_levels[-1].structures[-1].pb set from storage portal:importer comparer.structures[0].pb
execute if score compare vars matches 0 run data modify storage portal:importer new_levels[-1].structures[-1].disabled set from storage portal:importer comparer.structures[0].disabled
execute if score compare vars matches 0 run tellraw @a [{"text":"    ","color":"green"},{"nbt":"new_levels[-1].structures[-1].text","storage":"portal:importer","interpret":true,"color":"dark_green"},{"text":" successfully imported"}]

data remove storage portal:importer comparer.structures[0]

execute if score compare vars matches 1 unless data storage portal:importer comparer.structures[0] run tellraw @a [{"text":"    ","color":"yellow"},{"nbt":"new_levels[-1].structures[-1].text","storage":"portal:importer","interpret":true,"color":"gold"},{"text":" not found"}]
execute if score compare vars matches 1 if data storage portal:importer comparer.structures[0] run function portal:importer/compare_structures
