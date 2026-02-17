data modify storage icache:temp dc_scan set from storage icache:cache folder_list
data modify storage icache:temp dc_args set value {}
data modify storage icache:temp dc_args.target set from storage icache:temp delete_folder
function icache:admin/folder/delete/children_find with storage icache:temp dc_args