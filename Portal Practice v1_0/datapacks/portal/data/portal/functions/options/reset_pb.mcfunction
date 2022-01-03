data remove storage portal:levels levels[{selected:1b}].structures[{selected:1b}].pb
tellraw @a [{"text":"PB for ","color":"green"},{"nbt":"levels[{selected:1b}].structures[{selected:1b}].text","storage":"portal:levels","interpret":true,"color":"dark_green"},{"text":" has been reset","color":"green"}]
function portal:reset