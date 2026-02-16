$data modify storage icache:temp del_id set value "$(id)"
data modify storage icache:temp del_target set from storage icache:temp delete_folder
function icache:admin/folder/delete_items_reset with storage icache:temp