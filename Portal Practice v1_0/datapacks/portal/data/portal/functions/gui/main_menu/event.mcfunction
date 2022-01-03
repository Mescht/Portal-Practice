# store loadout if player was in editing mode
execute if score editing_loadout vars matches 1 run function portal:inventory/save_loadout

# remove entchantment glit from all itmes
execute unless score index gui matches 26 run data remove storage portal:gui main_menu[].tag.Enchantments

# apply enchantment glit to selected item
execute if score index gui matches 0 run data modify storage portal:gui main_menu[{tag:{index:0b}}] merge value {tag:{Enchantments:[{}]}}
execute if score index gui matches 1 run data modify storage portal:gui main_menu[{tag:{index:1b}}] merge value {tag:{Enchantments:[{}]}}
execute if score index gui matches 2 run data modify storage portal:gui main_menu[{tag:{index:2b}}] merge value {tag:{Enchantments:[{}]}}
execute if score index gui matches 3 run data modify storage portal:gui main_menu[{tag:{index:3b}}] merge value {tag:{Enchantments:[{}]}}
execute if score index gui matches 4 run data modify storage portal:gui main_menu[{tag:{index:4b}}] merge value {tag:{Enchantments:[{}]}}
execute if score index gui matches 5 run data modify storage portal:gui main_menu[{tag:{index:5b}}] merge value {tag:{Enchantments:[{}]}}
execute if score index gui matches 6 run data modify storage portal:gui main_menu[{tag:{index:6b}}] merge value {tag:{Enchantments:[{}]}}
execute if score index gui matches 7 run data modify storage portal:gui main_menu[{tag:{index:7b}}] merge value {tag:{Enchantments:[{}]}}
execute if score index gui matches 8 run data modify storage portal:gui main_menu[{tag:{index:8b}}] merge value {tag:{Enchantments:[{}]}}
execute if score index gui matches 9 run data modify storage portal:gui main_menu[{tag:{index:9b}}] merge value {tag:{Enchantments:[{}]}}

execute if score index gui matches 25 run data modify storage portal:gui main_menu[{tag:{index:25b}}] merge value {tag:{Enchantments:[{}]}}

# set current level to selected index
execute if score index gui matches ..24 run scoreboard players operation current_level vars = index gui
execute if score index gui matches ..24 run scoreboard players set random_levels vars 0

# set random level flag if random was selected
execute if score index gui matches 25 run scoreboard players set random_levels vars 1

# load the main menu gui into chest
execute unless score index gui matches 26 run function portal:gui/main_menu/load

execute if score index gui matches 26 run function portal:gui/level_settings/load

# apply level selection
function portal:select_level
