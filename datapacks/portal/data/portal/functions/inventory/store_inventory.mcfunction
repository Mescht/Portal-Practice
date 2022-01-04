data modify storage portal:loadouts current.inventory append from storage portal:loadouts current.inventory_all[-1]

execute store result storage portal:loadouts current.inventory[-1].Slot byte 1 run scoreboard players remove slot_num inv 9
scoreboard players add slot_num inv 9