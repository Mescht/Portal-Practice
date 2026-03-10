# add legacy timer button
data modify storage portal:gui settings append value {id:"minecraft:clock",Count:1b,Slot:18s,tag:{index:23b,display:{Name:'{"text":"Legacy Timer","italic":"false","color":"yellow"}', Lore:['{"text":"Timer starts when touching the water","color":"gray","italic":"false"}','']}}}

# set lore text from whether legacy timer is enabled
execute if score legacy_timer settings matches 1 run data modify storage portal:gui settings[{tag:{index:23b}}].tag.display.Lore[1] set value '{"text":"Enabled","color":"green","italic":"false"}'
execute unless score legacy_timer settings matches 1 run data modify storage portal:gui settings[{tag:{index:23b}}].tag.display.Lore[1] set value '{"text":"Disabled","color":"red","italic":"false"}'
