bossbar set minecraft:husk players
say despawn
kill @s
schedule clear tick:boss_husk/death
tag @n[type=marker,tag=boss_husk.spawn_anchor] add prepared