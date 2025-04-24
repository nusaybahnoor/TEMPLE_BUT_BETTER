execute at @a[gamemode=!creative,gamemode=!spectator] as @e[type=armor_stand,tag=N.husk.armor_stand,distance=..10] at @s run function tick:armorsand2hust
execute at @a[gamemode=!creative,gamemode=!spectator] as @e[type=marker,tag=boss_husk.spawn_anchor,tag=prepared,distance=..5] at @s run function tick:boss_husk/spawn
execute at @a[gamemode=!creative,gamemode=!spectator] as @e[tag=N.armor_stand.husk,distance=11..] at @s run function tick:husk2armorstand
execute as @e[type=husk,tag=N.husk.boss] at @s run function tick:bosshusk

# Optimize Later!
execute as @e[type=item,nbt={Item:{id:"minecraft:totem_of_undying"}}] at @s if entity @n[type=marker,tag=boss_husk.spawn_anchor,tag=!prepared,distance=..1] run function load:_private/reset_anchor