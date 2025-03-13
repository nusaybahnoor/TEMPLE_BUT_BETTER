## Special attack
execute store result score #attack N.boss.cooldown run random value 0..7
execute if score #attack N.boss.cooldown matches 0..2 run function tick:boss_husk/baby_spawn
execute if score #attack N.boss.cooldown matches 3 run function tick:boss_husk/buff_army
execute if score #attack N.boss.cooldown matches 4 run function tick:boss_husk/bone_throw
execute if score #attack N.boss.cooldown matches 5 run function tick:boss_husk/heal
execute if score #attack N.boss.cooldown matches 6 run function tick:boss_husk/big_stomp
execute if score #attack N.boss.cooldown matches 7 run say attack 7
