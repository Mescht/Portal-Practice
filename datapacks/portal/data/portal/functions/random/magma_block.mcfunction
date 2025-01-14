fill -10 0 30 10 31 50 glass replace air
fill -10 0 30 10 31 50 glass replace cave_air

fill -10 0 30 10 32 50 air replace minecraft:lava
setblock 0 63 29 minecraft:structure_block{posX:-10,mode:"LOAD",posY:-15,sizeX:21,posZ:1,integrity:0.20f,name:"portal:magma",sizeY:32,sizeZ:21}
setblock 0 62 29 minecraft:redstone_block

clone -10 0 30 10 32 50 -10 48 30 masked

fill -10 48 30 10 79 50 minecraft:lava replace air

clone -10 48 30 10 79 50 -10 0 30 replace move

fill -10 0 30 10 32 50 air replace glass

fill 0 63 29 0 62 29 air