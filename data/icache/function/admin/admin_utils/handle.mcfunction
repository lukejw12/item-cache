execute if score @s icache.action matches 1 run function icache:admin/admin_utils/menu
execute if score @s icache.action matches 2 run function icache:admin/page/nav/next
execute if score @s icache.action matches 3 run function icache:admin/page/nav/prev
execute if score @s icache.action matches 9 run function icache:admin/folder/nav/prev
execute if score @s icache.action matches 10 run function icache:admin/folder/nav/next
execute if score @s icache.action matches 11 run dialog show @s icache:create_folder
execute if score @s icache.action matches 12 run dialog show @s icache:move_item
execute if score @s icache.action matches 13 run function icache:admin/item/give/trigger
execute if score @s icache.action matches 14 run function icache:admin/item/expand/lore_trigger
execute if score @s icache.action matches 15 run function icache:admin/item/expand/collapse_lore_trigger
execute if score @s icache.action matches 100..199 run function icache:admin/item/expand/trigger
execute if score @s icache.action matches 200..299 run function icache:admin/folder/open/trigger
execute if score @s icache.action matches 300..399 run function icache:admin/item/delete/trigger
execute if score @s icache.action matches 400..499 run function icache:admin/folder/delete/trigger

scoreboard players set @s icache.action 0
scoreboard players enable @s icache.action
