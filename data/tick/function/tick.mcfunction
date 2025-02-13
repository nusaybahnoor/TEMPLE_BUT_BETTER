execute at @a[gamemode=!creative,gamemode=!spectator] as @e[type=armor_stand,tag=N.husk.armor_stand,distance=..10] at @s run function tick:armorsand2hust
execute at @a[gamemode=!creative,gamemode=!spectator] as @e[tag=N.armor_stand.husk,distance=11..] at @s run function tick:husk2armorstand
execute as @e[type=husk,tag=N.husk.boss] at @s run function tick:bosshusk
