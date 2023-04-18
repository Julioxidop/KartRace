execute if score .mtype .kdata matches 0 as @s[tag=!done_marker] run function kart:marker/0type_marker
execute if score .mtype .kdata matches 1 as @s[tag=!done_marker] run function kart:marker/1type_marker
tag @s remove done_marker