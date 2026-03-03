execute store success score #icache._tog icache.action if data storage icache:cache settings{scan_enderchest:1b}
execute if score #icache._tog icache.action matches 1 run data modify storage icache:cache settings.scan_enderchest set value 0b
execute if score #icache._tog icache.action matches 0 run data modify storage icache:cache settings.scan_enderchest set value 1b
function icache:admin/settings/menu