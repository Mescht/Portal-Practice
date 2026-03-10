data merge block 0 15 29 {mode:"SAVE",mirror:"NONE",posX:-10}

setblock 0 14 29 minecraft:redstone_block
setblock 0 14 29 minecraft:barrier

tellraw @a [{"text":"Changes saved Temporarily","color":"green"}]

function portal:reset