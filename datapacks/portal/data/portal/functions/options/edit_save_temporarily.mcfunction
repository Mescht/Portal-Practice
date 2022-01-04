data modify block 0 32 29 mode set value "SAVE"

setblock 0 31 29 minecraft:redstone_block
setblock 0 31 29 minecraft:barrier

tellraw @a [{"text":"Changes saved Temporarily","color":"green"}]

function portal:reset