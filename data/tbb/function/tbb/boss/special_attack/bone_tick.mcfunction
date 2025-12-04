## Ticks the item display once activated
scoreboard players add @s N.boss.cooldown 1

# in 1 second, raise 2 blocks
# or in 20 ticks, raise 2 blocks

# 2 blocks / 20 ticks = .1 blocks/tick

# 20 ticks = 1 second
execute if score @s N.boss.cooldown matches ..20 run tp @s ~ ~.1 ~ ~ ~
execute if score @s N.boss.cooldown matches ..20 run particle minecraft:small_gust ~ ~ ~ 0.1 0.1 0.1 0 3 normal
execute if score @s N.boss.cooldown matches ..20 at @s facing entity @p eyes run tp @s ^ ^ ^ ~ ~

# Raycast
execute if score @s N.boss.cooldown matches 21.. run tp @s ^ ^ ^0.5 ~ ~
execute if score @s N.boss.cooldown matches 21.. run particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0 1 force
execute if score @s N.boss.cooldown matches 21.. run particle minecraft:white_smoke ~ ~ ~ 0.1 0.1 0.1 0 5 force

# Hits player
execute positioned ~ ~-1.5 ~ if entity @p[distance=..0.5] run damage @p 7 magic by @n[type=husk,tag=N.husk.boss]
execute positioned ~ ~-1.5 ~ if entity @p[distance=..0.5] run function tbb:tbb/boss/special_attack/bone_kill

# Hits block
execute unless block ~ ~ ~ #air run function tbb:tbb/boss/special_attack/bone_kill