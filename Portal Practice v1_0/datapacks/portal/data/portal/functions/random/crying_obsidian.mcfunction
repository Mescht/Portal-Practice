fill -10 17 30 10 48 50 glass replace air
fill -10 17 30 10 48 50 glass replace cave_air

fill -10 17 30 10 48 50 air replace minecraft:obsidian
setblock 0 80 29 minecraft:structure_block{posX:-10,mode:"LOAD",posY:-15,sizeX:21,posZ:1,integrity:0.15f,name:"portal:crying",sizeY:32,sizeZ:21}
setblock 0 79 29 minecraft:redstone_block

clone -10 17 30 10 48 50 -10 65 30 masked

fill -10 65 30 10 96 50 minecraft:obsidian replace air

clone -10 65 30 10 96 50 -10 17 30 replace move

fill -10 17 30 10 48 50 air replace glass

fill 0 80 29 0 79 29 air