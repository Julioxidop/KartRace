execute as @e[tag=working_0] at @s if entity @e[tag=working_1, distance=0..2] run kill @s
execute as @e[tag=working_0] at @s run tp @s ^ ^ ^2
execute as @e[tag=working_0] unless entity @s[tag=checkpoint] at @s run function kart:gen_marker/gen_marker
execute as @e[tag=working_0] if entity @s[tag=checkpoint] at @s run function kart:gen_marker/gen_checkpoint
execute as @e[tag=working_0] at @s run schedule function kart:gen_marker/line 1t
