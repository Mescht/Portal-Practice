# add crying button
data modify storage portal:gui settings append value {id:"minecraft:crying_obsidian",Count:1b,Slot:18s,tag:{index:25b,display:{Name:'{"text":"Random Crying Obsidian","italic":"false","color":"yellow"}'}}}

# check if crying is set
execute store result score disabled filter run data get storage portal:levels levels[{selected:1b}].crying

# set lore text from whether crying is set
execute if score disabled filter matches 1 run data modify storage portal:gui settings[{tag:{index:25b}}].tag.display.Lore set value ['{"text":"Enbaled","color":"green"}']
execute if score disabled filter matches 0 run data modify storage portal:gui settings[{tag:{index:25b}}].tag.display.Lore set value ['{"text":"Disabled","color":"red"}']
