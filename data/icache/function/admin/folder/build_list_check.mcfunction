$data modify storage icache:temp match_id set value "$(id)"
data modify storage icache:temp match_folder set from storage icache:temp folder_target
function icache:admin/folder/build_list_match with storage icache:temp