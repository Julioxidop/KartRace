#execute for each player until stop
execute as @s unless entity @s[tag=stop] as @a[gamemode=!spectator,gamemode=!creative,tag=!sorted,tag=!arrived,sort=random,limit=1] run function kart:sort/check

#loop
scoreboard players remove @s .sort 1
execute if score @s .sort matches 1.. run function kart:sort/loop