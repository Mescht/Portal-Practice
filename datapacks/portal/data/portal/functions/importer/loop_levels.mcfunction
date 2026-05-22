data modify storage portal:importer new_levels append from storage portal:importer levels[0]

tellraw @a [{"text":"Importing ","color":"white"},{"nbt":"levels[0].text","storage":"portal:importer","interpret":true,"color":"gray"}]

# copy loadout
execute if data storage portal:importer imported_levels[0].loadout run tellraw @a [{"text":"  Loadout data successfully imported","color":"green"}]
execute unless data storage portal:importer imported_levels[0].loadout run tellraw @a [{"text":"  Could not find loadout data for ","color":"red"},{"nbt":"levels[0].text","storage":"portal:importer","interpret":true,"color":"dark_red"}]
data modify storage portal:importer new_levels[-1].loadout set from storage portal:importer imported_levels[0].loadout

# import pbs
tellraw @a [{"text":"  Importing PBs and Settings","color":"white"}]
data remove storage portal:importer new_levels[-1].structures
function portal:importer/loop_structures

# remove entry
data remove storage portal:importer levels[0]
data remove storage portal:importer imported_levels[0]

# loop
execute if data storage portal:importer levels[0] run function portal:importer/loop_levels