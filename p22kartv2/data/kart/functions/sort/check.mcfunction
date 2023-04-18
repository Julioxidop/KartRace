tag @s add sorted
#when more points and lifetime
execute as @s if score @s .place <= @a[tag=sorting,limit=1] .place if score @a[tag=sorting,limit=1] .players > @s .players run function kart:sort/swap
execute as @s unless entity @s[tag=swaped] if score @s .place <= @a[tag=sorting,limit=1] .place if score @a[tag=sorting,limit=1] .players > @s .players if score @a[tag=sorting,limit=1] .lifetime > @s .players run function kart:sort/swap
#when more points
tag @s remove swaped