#type marker
tag @s add 1type_marker
#prevent overflow
tag @s add done_marker

#remove unset
tag @s remove unset_marker

#do the line of markers
execute as @e[type=bee,tag=0type_marker] at @s run function kart:gen_marker/main


#set for wait action
function kart:marker/wait_action