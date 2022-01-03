data modify block 0 32 29 mode set value "SAVE"

tp @a 0.5 33.00 30.5 -180 58
gamemode creative @a

tellraw @a [{"text":"Permanent changes have to be saved manually","color":"green"}]

tellraw @a [{"text":"Open the Structure Block and click the [SAVE] button to do so","color":"green"}]

tellraw @a [{"text":"Afterwards click ","color":"green"},{"text":"[HERE]","clickEvent":{"action":"run_command","value":"/function portal:reset"},"color":"dark_green"},{"text":" to coutinue playing","color":"green"}]

#function portal:reset