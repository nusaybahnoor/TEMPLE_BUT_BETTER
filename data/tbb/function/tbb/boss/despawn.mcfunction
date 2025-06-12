bossbar set minecraft:husk players
say despawn
tp @s ~ ~-1000 ~
kill @s
schedule clear tick:boss_husk/death
tag @n[type=marker,tag=boss_husk.spawn_anchor] add prepared

execute as @e[type=item_display,tag=N.boss_husk.healing_totem] unless entity @n[type=husk,tag=boss_husk,distance=..32] run kill @s