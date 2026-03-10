scoreboard players set active timer 0

playsound minecraft:entity.experience_orb.pickup master @a

# stop portal sound
stopsound @a * minecraft:block.portal.trigger

# display final time as title
title @a title [{"nbt":"time_string","storage":"portal:timeparser","interpret":true}]
title @a subtitle [{"nbt":"time_diff_string","storage":"portal:timeparser","interpret":true}]

execute if score pb timer matches 0 run scoreboard players set pb timer 2147483647

execute if score timer timer < pb timer run title @a subtitle [{"text":"New PB! ","color":"yellow"},{"nbt":"time_diff_string","storage":"portal:timeparser","interpret":true}]
execute if score timer timer < pb timer store result storage portal:levels levels[{selected:1b}].structures[{selected:1b}].pb int 1 run scoreboard players get timer timer

function portal:select_level
function portal:reset