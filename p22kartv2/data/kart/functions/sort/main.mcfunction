tag @s add not_check
tag @s add sorting
scoreboard players operation @s .sort = .b _players
execute as @s run function kart:sort/loop
tag @s remove sorting
tag @a[tag=sorted] remove sorted
tag @s remove stop

