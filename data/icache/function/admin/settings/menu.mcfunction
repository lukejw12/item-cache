tellraw @s [{"text":"\n\n[iCache Settings]","color":"gold","bold":true}]
tellraw @s [{"text":"━━━━━━━━━━━━━━━━━━━━━━━━━━","color":"dark_gray"}]
function icache:admin/settings/render
tellraw @s [{"text":"━━━━━━━━━━━━━━━━━━━━━━━━━━","color":"dark_gray"}]
tellraw @s [{"text":"[< Back]","color":"gray","click_event":{"action":"run_command","command":"/trigger icache.action set 1"}}]