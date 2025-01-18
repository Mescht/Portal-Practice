# add crying button
data modify storage portal:gui settings append value {id:"minecraft:magma_block",Count:1b,Slot:19s,tag:{index:24b,display:{Name:'{"text":"Random Magma Blocks","italic":"false","color":"yellow"}'}}}

# check if crying is set
execute store result score disabled filter run data get storage portal:levels levels[{selected:1b}].magma

# set lore text from whether crying is set
execute if score disabled filter matches 1 run data modify storage portal:gui settings[{tag:{index:24b}}].tag.display.Lore set value ['{"text":"Enabled","color":"green"}']
execute if score disabled filter matches 0 run data modify storage portal:gui settings[{tag:{index:24b}}].tag.display.Lore set value ['{"text":"Disabled","color":"red"}']
