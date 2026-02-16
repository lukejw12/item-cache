$data modify storage icache:temp delete_folder set value "$(folder_name)"
function icache:admin/folder/delete_items
$data remove storage icache:cache folders.$(folder_name)
$data remove storage icache:cache folder_list[{name:"$(folder_name)"}]
$tellraw @s [{"text":"[iCache]","color":"gold"},{"text":" Deleted folder: ","color":"red"},{"text":"$(folder_name)","color":"aqua"}]
function icache:admin/menu