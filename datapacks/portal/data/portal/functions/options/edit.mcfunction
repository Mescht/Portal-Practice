gamemode creative @a
clear @a

data merge block 0 15 29 {mirror:"NONE",rotation:"NONE",posX:-10,posY:-15,posZ:1}
setblock 0 14 29 minecraft:redstone_block
setblock 0 14 29 minecraft:barrier

tellraw @a [{"text":"[Save Temporarily]","color":"green","clickEvent":{"action":"run_command","value":"/function portal:options/edit_save_temporarily"},"hoverEvent":{"action":"show_text","contents":[{"text":"Changes will be lost when exiting the world"}]}},{"text":"   [Save Permanently]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function portal:options/edit_save_permanent"},"hoverEvent":{"action":"show_text","contents":[{"text":"Changes will be saved premanently"},{"text":"\nUse at own risk","color":"red"}]}},{"text":"   [Cancel]","color":"red","clickEvent":{"action":"run_command","value":"/function portal:reset"},"hoverEvent":{"action":"show_text","contents":[{"text":"Exit editing mode"}]}}]