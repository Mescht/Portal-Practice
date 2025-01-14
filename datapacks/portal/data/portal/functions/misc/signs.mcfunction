# start
setblock 0 33 2 minecraft:oak_wall_sign[facing=north]{Color:"black",Text4:'{"text":""}',Text3:'{"text":""}',Text2:'{"color":"gold","clickEvent":{"action":"run_command","value":"function portal:start"},"text":"Start"}',Text1:'{"text":""}'}

# credits
setblock -2 33 0 minecraft:oak_wall_sign[facing=east]{Color:"black",Text4:'{"text":""}',Text3:'{"text":""}',Text2:'{"color":"gold","clickEvent":{"action":"run_command","value":"function portal:misc/credits"},"text":"Credits"}',Text1:'{"text":""}'}

# edit loadout
setblock 2 33 0 minecraft:oak_wall_sign[facing=west]{Color:"black",Text4:'{"text":""}',Text3:'{"text":""}',Text2:'{"color":"gold","clickEvent":{"action":"run_command","value":"execute if score random_levels vars matches 0 run function portal:inventory/edit_loadout"},"text":"Edit Loadout"}',Text1:'{"text":""}'}

# back to lobby
setblock 0 17 29 minecraft:oak_wall_sign[facing=south]{Color:"black",Text4:'{"text":""}',Text3:'{"text":""}',Text2:'{"color":"gold","clickEvent":{"action":"run_command","value":"function portal:back_to_lobby"},"text":"Back to Lobby"}',Text1:'{"text":""}'}

# options
setblock 0 18 29 minecraft:oak_wall_sign[facing=south]{Color:"black",Text4:'{"text":""}',Text3:'{"text":""}',Text2:'{"color":"yellow","clickEvent":{"action":"run_command","value":"function portal:options/menu"},"text":"Options"}',Text1:'{"text":""}'}

# daytime
setblock -1 34 -2 minecraft:oak_wall_sign[facing=south]{Text2:'{"text":"Change Daytime","color":"gold","clickEvent":{"action":"run_command","value":"time add 1000"}}'} replace

# firetick
setblock 0 34 -2 minecraft:oak_wall_sign[facing=south]{Color:"black",Text4:'{"text":""}',Text3:'{"color":"green","text":"True"}',Text2:'{"color":"gold","clickEvent":{"action":"run_command","value":"function portal:misc/toggle_firetick"},"text":"Fire Tick"}',Text1:'{"text":""}'}

# nightvision
setblock 1 34 -2 minecraft:oak_wall_sign[facing=south]{Color:"black",Text4:'{"text":""}',Text3:'{"color":"green","text":"True"}',Text2:'{"color":"gold","clickEvent":{"action":"run_command","value":"function portal:misc/toggle_nightvision"},"text":"Night Vision"}',Text1:'{"text":""}'}