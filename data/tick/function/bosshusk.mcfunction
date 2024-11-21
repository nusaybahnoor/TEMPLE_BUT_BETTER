
execute store result bossbar minecraft:husk value run data get entity @s Health

bossbar set minecraft:husk players @a[distance=..32] 
schedule function tick:boss_husk/death 1s
execute unless entity @p[distance=..64] run function tick:boss_husk/despawn