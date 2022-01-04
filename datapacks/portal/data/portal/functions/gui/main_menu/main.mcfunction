scoreboard players set index gui -1

# clear items and get index
function portal:gui/clear_by_index

# run select event if item has been selected
execute if score index gui matches 0.. run function portal:gui/main_menu/event
