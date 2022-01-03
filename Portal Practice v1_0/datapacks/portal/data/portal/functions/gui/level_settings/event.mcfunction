execute if score index gui matches ..17 run function portal:gui/level_settings/disable_init

execute if score index gui matches 25 if score current_level vars matches 6 run function portal:gui/level_settings/disable_crying

# switch to main menu
execute if score index gui matches 26 run function portal:gui/main_menu/load

execute if score index gui matches ..25 run function portal:gui/level_settings/load

