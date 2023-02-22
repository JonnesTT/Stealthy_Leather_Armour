#tell @a you're no longer sneaking :)

scoreboard players operation #tmp_caster sa_player_id = @s sa_player_id
tag @s add sa_0Tick_Marker

execute as @e[x=0,y=0,z=1,tag=sa_StoresArmour] if score @s sa_player_id = #tmp_caster sa_player_id run function stealthy_armour:armour_to_player

tag @s remove sa_0Tick_Marker

scoreboard players set #tmp_caster sa_player_id 0


attribute @s generic.armor base set 0
tag @s remove total_invisility