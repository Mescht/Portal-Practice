data modify storage portal:importer new_levels[-1].structures append from storage portal:importer levels[0].structures[0]

data modify storage portal:importer comparer.structures set from storage portal:importer imported_levels[0].structures

execute if data storage portal:importer comparer.structures[0] run function portal:importer/compare_structures

data remove storage portal:importer levels[0].structures[0]

execute if data storage portal:importer levels[0].structures[0] run function portal:importer/loop_structures