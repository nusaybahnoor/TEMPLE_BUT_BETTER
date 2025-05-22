## Heals + gives army speed
## IF no army, summon husk
## Min Seconds 5s = 100
## Max Seconds 15s = 300t
execute store result score @s N.boss.cooldown run random value -300..-100
effect give @s instant_damage 1 3 true
effect give @e[type=husk,distance=1..32] speed 3 0 true