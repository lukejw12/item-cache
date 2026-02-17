$data modify storage icache:temp delete_folder set value "$(folder_name)"
function icache:admin/folder/delete/items
function icache:admin/folder/delete/children
$data remove storage icache:cache folder_list[{name:"$(folder_name)"}]
$tellraw @s [{"text":"[iCache]","color":"gold"},{"text":" Deleted folder: ","color":"red"},{"text":"$(folder_name)","color":"aqua"}]
function icache:admin/admin_utils/menu