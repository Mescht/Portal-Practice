scoreboard players set active timer 0

playsound minecraft:entity.experience_orb.pickup master @a

# stop portal sound
stopsound @a * minecraft:block.portal.trigger

# display final time as title
execute if score minutes timer matches 0 if score thousth timer matches ..9 run title @a title [{"color":"gold","score":{"name":"seconds","objective":"timer"}},{"text":".0"},{"score":{"name":"thousth","objective":"timer"}},{"text":"s"}]

execute if score minutes timer matches 0 if score thousth timer matches 10.. run title @a title [{"color":"gold","score":{"name":"seconds","objective":"timer"}},{"text":"."},{"score":{"name":"thousth","objective":"timer"}},{"text":"s"}]

execute if score minutes timer matches 1.. if score thousth timer matches ..9 run title @a title [{"color":"gold","score":{"name":"minutes","objective":"timer"}},{"text":"m "},{"score":{"name":"seconds","objective":"timer"}},{"text":".0"},{"score":{"name":"thousth","objective":"timer"}},{"text":"s"}]

execute if score minutes timer matches 1.. if score thousth timer matches 10.. run title @a title [{"color":"gold","score":{"name":"minutes","objective":"timer"}},{"text":"m "},{"score":{"name":"seconds","objective":"timer"}},{"text":"."},{"score":{"name":"thousth","objective":"timer"}},{"text":"s"}]

execute if score timer timer < pb timer run title @a subtitle {"text":"New PB","color":"yellow"}
execute if score timer timer < pb timer store result storage portal:levels levels[{selected:1b}].structures[{selected:1b}].pb int 1 run scoreboard players get timer timer

function portal:select_level
function portal:reset