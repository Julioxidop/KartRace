
#reset lifetime
scoreboard players set @s .lifetime 0
#set new score
scoreboard players operation @s .players = @e[tag=marker,distance=0..2.5,limit=1] .marker
#sort place
execute as @s at @s unless entity @s[tag=not_check] if entity @e[tag=marker,distance=0..2.5,limit=1] run function kart:sort/main