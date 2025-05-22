
execute store result bossbar minecraft:husk value run data get entity @s Health

bossbar set minecraft:husk players @a[distance=..32] 
schedule function tbb:tbb/boss/death 1s
execute unless entity @p[distance=..64] run function tbb:tbb/boss/despawn


# Bone Attack Extras
execute as @e[type=item,nbt={Item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{boss_husk:true}}}}] at @s run function tbb:tbb/boss/special_attack/convert_bone
execute as @e[type=item_display,tag=activated,tag=boss_husk] at @s run function tbb:tbb/boss/special_attack/bone_tick

# Totem Attack Extras
execute as @e[type=item_display,tag=N.boss_husk.healing_totem,distance=..32] at @s run function tbb:tbb/boss/special_attack/totem_tick
#jump

tag @s[tag=N.boss_husk.jump_start,nbt={OnGround:0b}] add N.boss_husk.jumping
effect clear @s[tag=N.boss_husk.jumping] levitation
execute if entity @s[tag=N.boss_husk.jumping,nbt={OnGround:1b}] run function tbb:tbb/boss/special_attack/big_stomp_land


scoreboard players add @s N.boss.cooldown 1
execute if score @s N.boss.cooldown matches 1.. run function tbb:tbb/boss/special_attack

