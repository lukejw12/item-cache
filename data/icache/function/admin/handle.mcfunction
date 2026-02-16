execute if score @s icache.action matches 1 run function icache:admin/menu
execute if score @s icache.action matches 2 run function icache:admin/page/next
execute if score @s icache.action matches 3 run function icache:admin/page/prev
execute if score @s icache.action matches 9 run function icache:admin/folder/prev
execute if score @s icache.action matches 10 run function icache:admin/folder/next
execute if score @s icache.action matches 11 run dialog show @s icache:create_folder
execute if score @s icache.action matches 12 run dialog show @s icache:move_item
execute if score @s icache.action matches 100..199 run function icache:admin/item/expand_trigger
execute if score @s icache.action matches 200..299 run function icache:admin/folder/open_trigger
execute if score @s icache.action matches 300..399 run function icache:admin/item/delete_trigger
execute if score @s icache.action matches 400..499 run function icache:admin/folder/delete_trigger

scoreboard players set @s icache.action 0
scoreboard players enable @s icache.action