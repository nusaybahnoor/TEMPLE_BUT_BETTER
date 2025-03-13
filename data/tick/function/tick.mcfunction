execute at @a[gamemode=!creative,gamemode=!spectator] as @e[type=armor_stand,tag=N.husk.armor_stand,distance=..10] at @s run function tick:armorsand2hust
execute at @a[gamemode=!creative,gamemode=!spectator] as @e[tag=N.armor_stand.husk,distance=11..] at @s run function tick:husk2armorstand
execute as @e[type=husk,tag=N.husk.boss] at @s run function tick:bosshusk

# Optimize Later!
execute as @e[type=item,nbt={Item:{id:"minecraft:ominous_trial_key"}}] at @s if block ~ ~-0.5 ~ end_portal_frame run function load:_private/king_of_the_husks