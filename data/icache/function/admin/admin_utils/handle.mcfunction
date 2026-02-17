execute if score @s icache.action matches 1 run function icache:admin/admin_utils/menu
execute if score @s icache.action matches 2 run function icache:admin/page/nav/next
execute if score @s icache.action matches 3 run function icache:admin/page/nav/prev
execute if score @s icache.action matches 9 run function icache:admin/folder/nav/prev
execute if score @s icache.action matches 10 run function icache:admin/folder/nav/next
execute if score @s icache.action matches 11 run dialog show @s icache:create_folder
execute if score @s icache.action matches 12 run dialog show @s icache:move_item
execute if score @s icache.action matches 13 run function icache:admin/item/give/trigger
execute if score @s icache.action matches 14 run function icache:admin/item/expand/toggle/lore_open
execute if score @s icache.action matches 15 run function icache:admin/item/expand/toggle/lore_close
execute if score @s icache.action matches 16 run function icache:admin/item/expand/toggle/cdata_open
execute if score @s icache.action matches 17 run function icache:admin/item/expand/toggle/cdata_close
execute if score @s icache.action matches 18 run function icache:admin/item/expand/toggle/attr_open
execute if score @s icache.action matches 19 run function icache:admin/item/expand/toggle/attr_close
execute if score @s icache.action matches 20 run function icache:admin/item/expand/toggle/ench_open
execute if score @s icache.action matches 21 run function icache:admin/item/expand/toggle/ench_close
execute if score @s icache.action matches 22 run function icache:admin/item/expand/toggle/tool_open
execute if score @s icache.action matches 23 run function icache:admin/item/expand/toggle/tool_close
execute if score @s icache.action matches 24 run function icache:admin/item/expand/toggle/food_open
execute if score @s icache.action matches 25 run function icache:admin/item/expand/toggle/food_close
execute if score @s icache.action matches 26 run function icache:admin/item/expand/toggle/equip_open
execute if score @s icache.action matches 27 run function icache:admin/item/expand/toggle/equip_close
execute if score @s icache.action matches 28 run dialog show @s icache:mass_move
execute if score @s icache.action matches 100..199 run function icache:admin/item/expand/trigger
execute if score @s icache.action matches 200..299 run function icache:admin/folder/open/trigger
execute if score @s icache.action matches 300..399 run function icache:admin/item/delete/trigger
execute if score @s icache.action matches 400..499 run function icache:admin/folder/delete/trigger

scoreboard players set @s icache.action 0
scoreboard players enable @s icache.action