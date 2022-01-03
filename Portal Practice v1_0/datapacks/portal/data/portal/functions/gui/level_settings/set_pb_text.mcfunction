execute store result score timer timer run data get storage portal:gui buffer[0].pb
function portal:timer/calculate_units

execute if score minutes timer matches 0 if score thousth timer matches ..9 run data modify block 0 0 0 Text1 set value '[{"text":"PB: ","color":"gold"},{"color":"gold","score":{"name":"seconds","objective":"timer"}},{"text":".0"},{"score":{"name":"thousth","objective":"timer"}},{"text":"s"}]'

execute if score minutes timer matches 0 if score thousth timer matches 10.. run data modify block 0 0 0 Text1 set value '[{"text":"PB: ","color":"gold"},{"color":"gold","score":{"name":"seconds","objective":"timer"}},{"text":"."},{"score":{"name":"thousth","objective":"timer"}},{"text":"s"}]'

execute if score minutes timer matches 1.. if score thousth timer matches ..9 run data modify block 0 0 0 Text1 set value '[{"text":"PB: ","color":"gold"},{"color":"gold","score":{"name":"minutes","objective":"timer"}},{"text":"m "},{"score":{"name":"seconds","objective":"timer"}},{"text":".0"},{"score":{"name":"thousth","objective":"timer"}},{"text":"s"}]'

execute if score minutes timer matches 1.. if score thousth timer matches 10.. run data modify block 0 0 0 Text1 set value '[{"text":"PB: ","color":"gold"},{"color":"gold","score":{"name":"minutes","objective":"timer"}},{"text":"m "},{"score":{"name":"seconds","objective":"timer"}},{"text":"."},{"score":{"name":"thousth","objective":"timer"}},{"text":"s"}]'

data modify storage portal:gui settings[-1].tag.display.Lore append from block 0 0 0 Text1