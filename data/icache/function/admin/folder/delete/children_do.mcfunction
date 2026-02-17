data modify storage icache:temp _saved_df set from storage icache:temp delete_folder
$data modify storage icache:temp delete_folder set value "$(name)"
function icache:admin/folder/delete/items
function icache:admin/folder/delete/children
$data remove storage icache:cache folder_list[{name:"$(name)"}]
data modify storage icache:temp delete_folder set from storage icache:temp _saved_df