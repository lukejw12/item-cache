scoreboard players add #icache.shown icache.action 1
execute if data storage icache:temp current{type:"folder"} run function icache:admin/folder/render/sub_folder_entry
execute unless data storage icache:temp current{type:"folder"} run function icache:admin/folder/open/dispatch_item