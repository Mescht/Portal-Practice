# start timer logic
execute store result score x playerpos run data get entity @p Pos[0] 100
execute store result score y playerpos run data get entity @p Pos[1] 100
execute store result score z playerpos run data get entity @p Pos[2] 100
execute store result score w playerpos run data get entity @p Rotation[0] 100
execute store result score r playerpos run data get entity @p Rotation[1] 100

execute if score x playerpos matches 50 if score y playerpos matches 1600..1680 if score z playerpos matches 3250 if score r playerpos matches -100..100 if score w playerpos matches -100..100 run scoreboard players set active timer 0

execute if score x playerpos matches 50 if score y playerpos matches 1600..1680 if score z playerpos matches 3250 if score r playerpos matches -100..100 if score w playerpos matches -100..100 run scoreboard players set timer timer 0

execute unless score x playerpos matches 50 run scoreboard players set active timer 1
execute unless score y playerpos matches 1600..1680 run scoreboard players set active timer 1
execute unless score z playerpos matches 3250 run scoreboard players set active timer 1
execute unless score r playerpos matches -100..100 run scoreboard players set active timer 1
execute unless score w playerpos matches -100..100 run scoreboard players set active timer 1

# increment timer
execute if score active timer matches 1 run scoreboard players add timer timer 1

# calculate units
function portal:timer/calculate_units

# display timer in actionbar
function portal:timer/format
execute if score minutes timer matches 0 if score thousth timer matches ..9 run title @a actionbar [{"color":"gold","score":{"name":"seconds","objective":"timer"}},{"text":".0"},{"score":{"name":"thousth","objective":"timer"}},{"text":"s"}]

execute if score minutes timer matches 0 if score thousth timer matches 10.. run title @a actionbar [{"color":"gold","score":{"name":"seconds","objective":"timer"}},{"text":"."},{"score":{"name":"thousth","objective":"timer"}},{"text":"s"}]

execute if score minutes timer matches 1.. if score thousth timer matches ..9 run title @a actionbar [{"color":"gold","score":{"name":"minutes","objective":"timer"}},{"text":"m "},{"score":{"name":"seconds","objective":"timer"}},{"text":".0"},{"score":{"name":"thousth","objective":"timer"}},{"text":"s"}]

execute if score minutes timer matches 1.. if score thousth timer matches 10.. run title @a actionbar [{"color":"gold","score":{"name":"minutes","objective":"timer"}},{"text":"m "},{"score":{"name":"seconds","objective":"timer"}},{"text":"."},{"score":{"name":"thousth","objective":"timer"}},{"text":"s"}]