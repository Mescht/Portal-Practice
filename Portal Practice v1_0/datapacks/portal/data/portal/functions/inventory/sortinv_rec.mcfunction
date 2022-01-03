# store id of last slot in array
execute store result score slot_num inv run data get storage portal:loadouts current.inventory_all[-1].Slot

# copy element to corresponding array depending of slot id
execute if score slot_num inv matches -106 run function portal:inventory/store_offhand
execute if score slot_num inv matches 100..103 run function portal:inventory/store_armor
execute if score slot_num inv matches 9..35 run function portal:inventory/store_inventory
execute if score slot_num inv matches 0..8 run data modify storage portal:loadouts current.hotbar append from storage portal:loadouts current.inventory_all[-1]

#remove last elemet from arary
data remove storage portal:loadouts current.inventory_all[-1]

#execute store result score slot_count inv run data get storage portal:loadouts current.inventory_all
#execute if score slot_count inv matches 1.. run function portal:inventory/sortinv_rec

# repeat if array not empty
execute if data storage portal:loadouts current.inventory_all[] run function portal:inventory/sortinv_rec