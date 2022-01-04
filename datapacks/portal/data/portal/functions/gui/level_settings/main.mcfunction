scoreboard players set index gui -1

# clear items and get index
function portal:gui/clear_by_index

# trigger event
execute if score index gui matches 0.. run function portal:gui/level_settings/event