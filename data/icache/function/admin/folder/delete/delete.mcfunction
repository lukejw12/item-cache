$data modify storage icache:temp delete_folder set value "$(folder_name)"
function icache:admin/folder/delete/items
$data remove storage icache:cache folder_list[{name:"$(folder_name)"}]
function icache:admin/folder/delete/all_children
$tellraw @s [{"text":"[iCache]","color":"gold"},{"text":" Deleted folder: ","color":"red"},{"text":"$(folder_name)","color":"aqua"}]
function icache:admin/admin_utils/menu