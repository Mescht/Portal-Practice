# clear all storages
data remove storage portal:loadouts current.offhand
data remove storage portal:loadouts current.armor
data remove storage portal:loadouts current.hotbar
data remove storage portal:loadouts current.inventory

# get number of used slots
execute store result score slot_count inv run data get storage portal:loadouts current.inventory_all

# sort inventory recursively
execute if score slot_count inv matches 1.. run function portal:inventory/sortinv_rec

# copy sorted data to corresponding level
data modify storage portal:levels levels[{selected:1b}].loadout set from storage portal:loadouts current