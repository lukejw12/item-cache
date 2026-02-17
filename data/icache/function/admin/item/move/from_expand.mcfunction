$data modify storage icache:temp target.folder_name set value "$(folder_name)"
data modify storage icache:temp target.id set from storage icache:temp last_expanded.id
function icache:admin/folder/open/move_item with storage icache:temp target
