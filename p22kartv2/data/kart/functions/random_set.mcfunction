execute if score .random .sort matches 1.. as @a[tag=!random,limit=1,sort=random] run function kart:random_player 
scoreboard players remove .random .sort 1
execute if score .random .sort matches 1.. run function kart:random_set