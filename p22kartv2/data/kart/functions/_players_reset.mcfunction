scoreboard objectives remove .players
scoreboard objectives remove .place
scoreboard objectives remove .lifetime

scoreboard objectives add .players dummy
scoreboard objectives add .place dummy
scoreboard objectives add .lifetime dummy

scoreboard objectives setdisplay sidebar .players
scoreboard players set @a .players 1
scoreboard players set @a .players 0
scoreboard players set .arrived .kdata 0


tag @a remove c1
tag @a remove c2
tag @a remove c3
tag @a remove c4
tag @a remove c5
tag @a remove arrived
tag @a remove sorted
tag @a remove sorting
tag @a remove swaped

function kart:_kill
scoreboard players set @a .place 0

scoreboard players set .started .kdata 0