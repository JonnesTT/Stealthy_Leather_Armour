attribute @s generic.armor base set 7
tag @s add total_invisility


summon armor_stand 0 1 0 {Invulnerable:1b,NoGravity:1b,Tags:[sa_StoresArmour,sa_0Tick_Marker]}
#mark armourstand with owner
scoreboard players operation #tmp_caster sa_player_id = @s sa_player_id
execute as @e[x=0,y=0,z=1,tag=sa_StoresArmour, tag=sa_0Tick_Marker,limit=1] run scoreboard players operation @s sa_player_id = #tmp_caster sa_player_id

#give armourstand items
item replace entity @e[x=0,y=0,z=1,tag=sa_StoresArmour, tag=sa_0Tick_Marker,limit=1] armor.head from entity @s armor.head
item replace entity @e[x=0,y=0,z=1,tag=sa_StoresArmour, tag=sa_0Tick_Marker,limit=1] armor.chest from entity @s armor.chest
item replace entity @e[x=0,y=0,z=1,tag=sa_StoresArmour, tag=sa_0Tick_Marker,limit=1] armor.legs from entity @s armor.legs
item replace entity @e[x=0,y=0,z=1,tag=sa_StoresArmour, tag=sa_0Tick_Marker,limit=1] armor.feet from entity @s armor.feet

item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

#remove marker tag
execute as @e[x=0,y=0,z=1,tag=sa_StoresArmour, tag=sa_0Tick_Marker] if score @s sa_player_id = #tmp_caster sa_player_id run tag @s remove sa_0Tick_Marker

scoreboard players set #tmp_caster sa_player_id 0

effect give @s invisibility 1 0 true
