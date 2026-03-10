# start timer logic
scoreboard players set use_legacy_timer vars 0
execute if score current_level vars matches 1 if score legacy_timer settings matches 1 run scoreboard players set use_legacy_timer vars 1
execute if entity @a if score use_legacy_timer vars matches 0 run function portal:timer/check_start
execute if entity @a if score use_legacy_timer vars matches 1 run function portal:timer/check_start_water  

# increment timer
execute if score active timer matches 1 run scoreboard players add timer timer 1

# display timer in actionbar
function portal:timer/calculate_units
function portal:timer/parser

title @a actionbar [{"nbt":"time_string","storage":"portal:timeparser","interpret":true},{"nbt":"time_diff_string","storage":"portal:timeparser","interpret":true}]
