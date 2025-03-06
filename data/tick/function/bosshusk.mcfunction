
execute store result bossbar minecraft:husk value run data get entity @s Health

bossbar set minecraft:husk players @a[distance=..32] 
schedule function tick:boss_husk/death 1s
execute unless entity @p[distance=..64] run function tick:boss_husk/despawn


# Bone Attack Extras
execute as @e[type=item,nbt={Item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{boss_husk:true}}}}] at @s run function tick:boss_husk/convert_bone
execute as @e[type=item_display,tag=activated,tag=boss_husk] at @s run function tick:boss_husk/bone_tick

# Totem Attack Extras
execute as @e[type=item_display,tag=N.boss_husk.healing_totem,distance=..32] at @s run function tick:boss_husk/totem_tick
#jump

effect clear @s[tag=N.boss_husk.jump] levitation 
execute if entity @s[tag=N.boss_husk.jump,nbt={OnGround:1b}] run function tick:boss_husk/big_stomp_land


scoreboard players add @s N.boss.cooldown 1
execute if score @s N.boss.cooldown matches 1.. run function tick:boss_husk/special_attack

