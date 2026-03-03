$data modify storage icache:temp _stf_folder set value "$(folder_name)"
execute if data storage icache:temp {_stf_folder:""} run return 0
$execute unless data storage icache:cache folder_list[{name:"$(folder_name)"}] run function icache:cache/store_create_folder {folder_name:"$(folder_name)"}
data modify storage icache:temp _stf_args set value {}
data modify storage icache:temp _stf_args.id set from storage icache:temp _last_stored_id
$data modify storage icache:temp _stf_args.folder_name set value "$(folder_name)"
function icache:cache/store_move with storage icache:temp _stf_args