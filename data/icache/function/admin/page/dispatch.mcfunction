scoreboard players add #icache.shown icache.action 1
execute if data storage icache:temp current{type:"folder"} run function icache:admin/page/dispatch_folder
execute unless data storage icache:temp current{type:"folder"} run function icache:admin/page/dispatch_item