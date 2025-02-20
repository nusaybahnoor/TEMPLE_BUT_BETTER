tp @s ~ ~ ~ facing entity @n[type=husk,tag=N.husk.boss] feet

scoreboard players add @s N.boss.cooldown 1

execute if score @s N.boss.cooldown matches 40 run effect give @n[type=husk,tag=N.husk.boss] instant_damage 1 1
execute if score @s N.boss.cooldown matches 80 run effect give @n[type=husk,tag=N.husk.boss] instant_damage 1 1
execute if score @s N.boss.cooldown matches 120 run effect give @n[type=husk,tag=N.husk.boss] instant_damage 1 1

execute if score @s N.boss.cooldown matches 160 run kill @s