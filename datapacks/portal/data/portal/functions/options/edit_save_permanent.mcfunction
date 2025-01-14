data modify block 0 15 29 mode set value "SAVE"

tp @a 0.5 16.00 30.5 -180 58
gamemode creative @a

tellraw @a [{"text":"Permanent changes have to be saved manually.","color":"green"}]

tellraw @a [{"text":"Open the Structure Block in front of you and click the [","color":"green"},{"translate":"structure_block.button.save"},{"text":"] button in the bottom right."}]

tellraw @a [{"text":"Afterwards click ","color":"green"},{"text":"[HERE]","clickEvent":{"action":"run_command","value":"/function portal:reset"},"color":"dark_green"},{"text":" to continue playing.","color":"green"}]

#function portal:reset