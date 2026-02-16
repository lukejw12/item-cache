scoreboard players set @s icache.leave 0
execute as @a at @s run function icache:update/scan_inventory
execute as @a at @s run function icache:update/scan_enderchest