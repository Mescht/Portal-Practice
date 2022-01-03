data modify storage portal:loadouts current.offhand append from storage portal:loadouts current.inventory_all[-1]

execute store result storage portal:loadouts current.offhand[-1].Slot byte 1 run scoreboard players add slot_num inv 106
scoreboard players remove slot_num inv 106