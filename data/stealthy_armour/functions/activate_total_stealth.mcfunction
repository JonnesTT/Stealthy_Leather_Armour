scoreboard players add @s sa_player_id 0
execute if score @s sa_player_id matches ..0 run function stealthy_armour:custom_id/assign_id

attribute @s generic.armor base set 7
tag @s add total_invisility
tag @s add sa_0Tick_Marker

summon armor_stand 0 1 0 {Invulnerable:1b,NoGravity:1b,Tags:[sa_StoresArmour]}

#mark armourstand with owner
scoreboard players operation #tmp_caster sa_player_id = @s sa_player_id
execute as @e[x=0,y=0,z=1,tag=sa_StoresArmour,limit=1] unless score @s sa_player_id matches 1.. run scoreboard players operation @s sa_player_id = #tmp_caster sa_player_id

#give armourstand items
execute as @e[x=0,y=0,z=1,tag=sa_StoresArmour,limit=1] if score @s sa_player_id = #tmp_caster sa_player_id run function stealthy_armour:armour_to_stand

#remove marker tag
execute as @e[x=0,y=0,z=1,tag=sa_StoresArmour, tag=sa_0Tick_Marker] if score @s sa_player_id = #tmp_caster sa_player_id run tag @s remove sa_0Tick_Marker

scoreboard players set #tmp_caster sa_player_id 0

effect give @s invisibility 1 0 true
tag @s remove sa_0Tick_Marker
