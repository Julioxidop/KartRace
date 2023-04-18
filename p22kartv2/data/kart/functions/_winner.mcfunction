scoreboard players add .arrived .kdata 1
execute if score .arrived .kdata <= .b _max_winners as @s at @s run function kart:modify/winner
execute as @s at @s run function kart:modify/arrived
execute if score .arrived .kdata = .b _max_winners run function kart:modify/max_winners