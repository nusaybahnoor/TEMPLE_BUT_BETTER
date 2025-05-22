## Mounts horse, when killed gets speed (angry)

summon skeleton_horse ~ ~ ~ {Health:20f,Tame:0b,Tags:["N.boss_husk.horse"],attributes:[{id:"minecraft:max_health",base:20}]}
ride @s mount @n[type=skeleton_horse,tag=N.boss_husk.horse]
## Max Seconds 7s = 140t 9s = 180t
execute store result score @s N.boss.cooldown run random value -180..-140