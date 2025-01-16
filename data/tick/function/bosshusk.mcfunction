
execute store result bossbar minecraft:husk value run data get entity @s Health

bossbar set minecraft:husk players @a[distance=..32] 
schedule function tick:boss_husk/death 1s
execute unless entity @p[distance=..64] run function tick:boss_husk/despawn
execute as @e[type=item,nbt={Item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{boss_husk:true}}}}] at @s run function tick:boss_husk/convert_bone

scoreboard players add @s N.boss.cooldown 1
execute if score @s N.boss.cooldown matches 1.. run function tick:boss_husk/special_attack