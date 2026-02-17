data modify storage icache:temp _csb set value {}
data modify storage icache:temp _csb.parent set from storage icache:temp active_folder
$data modify storage icache:temp _csb.child set value "$(folder_name)"
function icache:admin/folder/open/create_sub_exec with storage icache:temp _csb