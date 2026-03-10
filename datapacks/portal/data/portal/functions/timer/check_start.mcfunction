execute store result score x playerpos run data get entity @p Pos[0] 100
execute store result score y playerpos run data get entity @p Pos[1] 100
execute store result score z playerpos run data get entity @p Pos[2] 100
execute store result score w playerpos run data get entity @p Rotation[0] 100
execute store result score r playerpos run data get entity @p Rotation[1] 100

execute unless score x playerpos matches 50 run scoreboard players set active timer 1
execute unless score y playerpos matches 1600..1680 run scoreboard players set active timer 1
execute unless score z playerpos matches 3250 run scoreboard players set active timer 1
execute unless score r playerpos matches -100..100 run scoreboard players set active timer 1
execute unless score w playerpos matches -100..100 run scoreboard players set active timer 1