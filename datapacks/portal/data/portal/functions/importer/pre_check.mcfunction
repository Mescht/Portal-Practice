execute if data storage portal_import:levels levels run function portal:importer/import
execute unless data storage portal_import:levels levels run tellraw @a [{"text":"\nImport data not found\nFile ","color":"red"},{"text":"'command_storage_portal_import.dat'","color":"dark_red"},{"text":" likely missing or corrupted"}]

scoreboard players reset * import