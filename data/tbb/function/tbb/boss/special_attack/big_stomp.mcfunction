## 4 Blocks Tall - AOE
# Invincible
# Only lasts 2-3 seconds
effect give @s levitation 1 100 true
tag @s add N.boss_husk.jump_start
execute store result score @s N.boss.cooldown run random value -200..-100
