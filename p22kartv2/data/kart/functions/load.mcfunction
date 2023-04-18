scoreboard objectives add .kdata dummy
scoreboard objectives add .marker dummy
scoreboard objectives add _k_particle dummy
scoreboard objectives add .players dummy
scoreboard objectives add .cp dummy
scoreboard objectives add .sort dummy
scoreboard objectives add .place dummy
scoreboard objectives add .lifetime dummy
scoreboard objectives add _max_winners dummy

scoreboard players set .bounding .kdata 1
scoreboard players set .started .kdata 0
scoreboard players set .arrived .kdata 0
scoreboard players set @a .players 0

scoreboard objectives add _players dummy
scoreboard players set .b _k_particle 1

scoreboard objectives add .confirm minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add .cancel minecraft.dropped:minecraft.carrot_on_a_stick

say kart reloaded