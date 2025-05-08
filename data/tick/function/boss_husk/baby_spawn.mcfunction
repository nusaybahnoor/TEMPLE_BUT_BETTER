
particle poof ~ ~ ~ 0.25 0.25 0.25 .1 25 normal
summon husk ~ ~ ~ {IsBaby:1b,Tags:["husk_spawner"],equipment:{mainhand:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{boss_husk:true}}}},drop_chances:{mainhand:100.000}}

## Min Seconds 3s = 60t
## Max Seconds 10s = 200t
execute store result score @s N.boss.cooldown run random value -200..-60