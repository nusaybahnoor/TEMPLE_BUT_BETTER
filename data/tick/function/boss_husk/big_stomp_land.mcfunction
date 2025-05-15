
execute as @a[distance=..5] run damage @s 8 mace_smash by @n[type=husk,tag=N.husk.boss]
tag @s remove N.boss_husk.jumping
tag @s remove N.boss_husk.jump_start
particle gust_emitter_large