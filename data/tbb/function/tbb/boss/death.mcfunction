bossbar set minecraft:husk players
say de
particle block{block_state:"minecraft:sand"} ~ ~1 ~ 0.25 1 0.25 10 500 force

execute as @e[type=item_display,tag=N.boss_husk.healing_totem] unless entity @n[type=husk,tag=boss_husk,distance=..32] run kill @s