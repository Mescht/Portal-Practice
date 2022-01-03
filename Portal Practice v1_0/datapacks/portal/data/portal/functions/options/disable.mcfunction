data modify storage portal:levels levels[{selected:1b}].structures[{selected:1b}].disabled set value 1b

tellraw @a [{"nbt":"levels[{selected:1b}].structures[{selected:1b}].text","storage":"portal:levels","interpret":true,"color":"dark_red"},{"text":" disabled","color":"red"}]