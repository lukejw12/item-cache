execute as @a at @s run function icache:update/scan_inventory
data modify storage icache:temp _settings set from storage icache:cache settings
execute unless data storage icache:temp _settings run data modify storage icache:temp _settings set value {}
execute unless data storage icache:temp _settings{scan_enderchest:0b} as @a at @s run function icache:update/scan_enderchest
execute unless data storage icache:temp _settings{scan_pets:0b} as @a at @s run function icache:update/scan_pets
tellraw @a [{"text":"[iCache]","color":"gold"},{"text":" Forced item scan complete.","color":"green"}]