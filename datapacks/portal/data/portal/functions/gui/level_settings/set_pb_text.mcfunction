execute store result score timer timer run data get storage portal:gui buffer[0].pb
function portal:timer/calculate_units
function portal:timer/parser

data modify block 0 0 0 Text1 set value '[{"nbt":"time_string","storage":"portal:timeparser","interpret":"true","italic":"false"}]'

data modify storage portal:gui settings[-1].tag.display.Lore append from block 0 0 0 Text1