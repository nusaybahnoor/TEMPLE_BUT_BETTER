## Ticks the item display once activated
scoreboard players add @s N.boss.cooldown 1

# in 1 second, raise 2 blocks
# or in 20 ticks, raise 2 blocks

# 2 blocks / 20 ticks = .1 blocks/tick

# 20 ticks = 1 second
execute if score @s N.boss.cooldown matches ..20 run tp @s ~ ~.1 ~ ~ ~

# Raycast
execute if score @s N.boss.cooldown matches 21.. facing entity @p eyes run tp @s ^ ^ ^0.25 ~ ~

# Hits player
execute positioned ~ ~-1.5 ~ if entity @p[distance=..0.5] run damage @p 7 magic by @n[type=husk,tag=N.husk.boss]
execute positioned ~ ~-1.5 ~ if entity @p[distance=..0.5] run kill @s