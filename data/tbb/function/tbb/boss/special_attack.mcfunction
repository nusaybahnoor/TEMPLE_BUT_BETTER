## Special attack
execute store result score #attack N.boss.cooldown run random value 0..7
execute if score #attack N.boss.cooldown matches 0..2 run function tbb:tbb/boss/special_attack/baby_spawn
execute if score #attack N.boss.cooldown matches 3 run function tbb:tbb/boss/special_attack/buff_army
execute if score #attack N.boss.cooldown matches 4 run function tbb:tbb/boss/special_attack/bone_throw
execute if score #attack N.boss.cooldown matches 5 run function tbb:tbb/boss/special_attack/heal
execute if score #attack N.boss.cooldown matches 6 run function tbb:tbb/boss/special_attack/big_stomp
execute if score #attack N.boss.cooldown matches 7 run function tbb:tbb/boss/special_attack/horse
