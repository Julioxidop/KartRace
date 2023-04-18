###
#Working as 0
###

#add 1 to the working id of the marker to gen
scoreboard players add .working .kdata 1
execute if entity @s[tag=checkpoint] run scoreboard players add .workingCp .kdata 1

tag @e[tag=0type_marker] add working_0
tag @e[tag=1type_marker] add working_1

tp @s ~ ~ ~ facing entity @e[tag=working_1,limit=1] feet
execute as @e[tag=working_1,limit=1] at @s run tp @s ~ ~ ~ facing entity @e[tag=working_0,limit=1] eyes

#summon starting marker and final marker
execute unless entity @s[tag=checkpoint] at @e[tag=working_0] run function kart:gen_marker/gen_marker
execute unless entity @s[tag=checkpoint] at @e[tag=working_1] run function kart:gen_marker/gen_marker

execute if entity @s[tag=checkpoint] at @e[tag=working_0] run function kart:gen_marker/gen_checkpoint
execute if entity @s[tag=checkpoint] at @e[tag=working_1] run function kart:gen_marker/gen_checkpoint

execute as @s at @s run function kart:gen_marker/line
