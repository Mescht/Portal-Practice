scoreboard players set i gui 0
scoreboard players set menu gui 1

# copy structures or levels to buffer
execute if score random_levels vars matches 0 run data modify storage portal:gui buffer set from storage portal:levels levels[{selected:1b}].structures
execute if score random_levels vars matches 1 run data modify storage portal:gui buffer set from storage portal:levels levels

# clear settings gui
data modify storage portal:gui settings set value []

setblock 0 0 0 oak_sign
function portal:gui/level_settings/populate_rec
setblock 0 0 0 air

# add crying button if ruind portal level is selected
execute if score current_level vars matches 6 if score random_levels vars matches 0 run function portal:gui/level_settings/populate_crying

# add return button
data modify storage portal:gui settings append value {id:"minecraft:nether_star",Count:1b,Slot:26s,tag:{index:26b,display:{Name:'{"text":"Main Menu","italic":"false","color":"yellow"}'}}}

# copy gui to chest
data modify block 0 34 3 Items set from storage portal:gui settings
#data modify block 0 34 3 CustomName set from storage portal:levels levels[{selected:1b}].text