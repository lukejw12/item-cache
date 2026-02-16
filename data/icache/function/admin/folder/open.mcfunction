$data modify storage icache:temp active_folder set value "$(folder_name)"
scoreboard players set @s icache.page 0
$function icache:admin/folder/render {folder_name:"$(folder_name)"}