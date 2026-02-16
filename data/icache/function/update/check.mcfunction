tag @s add icache.checked
data modify storage icache:temp player set value {}
data modify storage icache:temp player.Inventory set from entity @s Inventory
data modify storage icache:temp player.EnderItems set from entity @s EnderItems
function icache:update/scan_inventory
function icache:update/scan_enderchest