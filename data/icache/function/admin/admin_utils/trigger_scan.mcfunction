execute as @a at @s run function icache:update/scan_inventory
execute as @a at @s run function icache:update/scan_enderchest
tellraw @a [{"text":"[iCache]","color":"gold"},{"text":" Forced item scan complete.","color":"green"}]