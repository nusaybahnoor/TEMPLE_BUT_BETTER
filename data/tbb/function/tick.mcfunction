execute at @a[gamemode=!creative,gamemode=!spectator] as @e[type=armor_stand,tag=N.husk.armor_stand,distance=..10] at @s run function tbb:tbb/armorstand/2husk
execute at @a[gamemode=!creative,gamemode=!spectator] as @e[type=marker,tag=boss_husk.spawn_anchor,tag=prepared,distance=..5] at @s run function tbb:tbb/anchor/spawn_boss
execute at @a[gamemode=!creative,gamemode=!spectator] as @e[tag=N.armor_stand.husk,distance=11..] at @s run function tbb:tbb/armorstand/husk2
execute as @e[type=husk,tag=N.husk.boss] at @s run function tbb:tbb/boss/tick

# Optimize Later!
execute as @e[type=item,nbt={Item:{id:"minecraft:totem_of_undying"}}] at @s if entity @n[type=marker,tag=boss_husk.spawn_anchor,tag=!prepared,distance=..1] run function tbb:tbb/anchor/reset