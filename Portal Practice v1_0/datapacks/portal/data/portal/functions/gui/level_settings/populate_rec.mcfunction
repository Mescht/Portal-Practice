# check if disabled
execute store result score disabled gui run data get storage portal:gui buffer[0].disabled

# add element to gui
execute if score disabled gui matches 0 run data modify storage portal:gui settings append value {id:"minecraft:glowstone_dust",Count:1b,tag:{display:{Lore:['{"text":"Enabled","color":"green" }']}}}
execute if score disabled gui matches 1 run data modify storage portal:gui settings append value {id:"minecraft:gunpowder",Count:1b,tag:{display:{Lore:['{"text":"Disabled","color":"red"}']}}}
# set slot number from scoreboard index
execute store result storage portal:gui settings[-1].Slot short 1 run scoreboard players get i gui
execute store result storage portal:gui settings[-1].tag.index byte 1 run scoreboard players get i gui

# set name
data modify storage portal:gui settings[-1].tag.display.Name set from storage portal:gui buffer[0].text

# set pb text
execute if data storage portal:gui buffer[0].pb run function portal:gui/level_settings/set_pb_text

# drop element from buffer
data remove storage portal:gui buffer[0]

# increment i
scoreboard players add i gui 1

# repeat if buffer not empty
execute if data storage portal:gui buffer[0] run function portal:gui/level_settings/populate_rec