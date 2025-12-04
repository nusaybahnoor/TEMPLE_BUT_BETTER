summon husk ~ ~ ~ {Health:100f,Tags:["N.husk.boss"],CustomName:{"bold":true,"color":"dark_gray","italic":true,"strikethrough":true,"text":"The king of husks"},equipment:{\
feet:{id:"minecraft:golden_boots",count:1,components:{"minecraft:unbreakable":{},"minecraft:trim":{material:"minecraft:quartz",pattern:"minecraft:ward"}}},\
legs:{id:"minecraft:golden_leggings",count:1,components:{"minecraft:unbreakable":{},"minecraft:trim":{material:"minecraft:quartz",pattern:"minecraft:ward"}}},\
chest:{id:"minecraft:golden_chestplate",count:1,components:{"minecraft:unbreakable":{},"minecraft:trim":{material:"minecraft:quartz",pattern:"minecraft:ward"}}},\
head:{id:"minecraft:golden_helmet",count:1,components:{"minecraft:unbreakable":{},"minecraft:trim":{material:"minecraft:quartz",pattern:"minecraft:ward"}}},\
mainhand:{id:"minecraft:golden_axe",count:1,components:{item_model:"axe_of_death","minecraft:item_name":{"bold":true,"color":"dark_gray","italic":true,"strikethrough":true,"text":"Axe of Death"},"minecraft:unbreakable":{},"minecraft:attribute_modifiers":[{id:"attack_damage",type:"attack_damage",amount:10,operation:"add_value",slot:"mainhand"}]}}},\
drop_chances:{feet:0.085,legs:0.500,chest:0.500,head:0.500,mainhand:100.000},attributes:[{id:"minecraft:max_health",base:100}]}


bossbar add husk "king of husks"
bossbar set minecraft:husk max 100
bossbar set husk color yellow
bossbar set husk style notched_12
particle block{block_state:"minecraft:sand"} ~ ~1 ~ 0.25 1 0.25 10 500 force
execute as @n[tag=N.husk.boss] at @s run function tbb:tbb/boss/special_attack/baby_spawn
execute as @n[tag=N.husk.boss] at @s run function tbb:tbb/boss/special_attack/baby_spawn
execute as @n[tag=N.husk.boss] at @s run function tbb:tbb/boss/special_attack/baby_spawn
execute as @n[tag=N.husk.boss] at @s run function tbb:tbb/boss/special_attack/baby_spawn
execute as @n[tag=N.husk.boss] at @s run function tbb:tbb/boss/special_attack/baby_spawn

kill @s[type=item]