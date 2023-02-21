tell @a you're no longer sneaking :)

scoreboard players operation #tmp_caster sa_player_id = @s sa_player_id
tag @s add sa_0Tick_Marker


execute as @e[x=0,y=0,z=1,tag=sa_StoresArmour] if score @s sa_player_id = #tmp_caster sa_player_id run item replace entity @a[tag=sa_0Tick_Marker] armor.head from entity @s armor.head
execute as @e[x=0,y=0,z=1,tag=sa_StoresArmour] if score @s sa_player_id = #tmp_caster sa_player_id run item replace entity @a[tag=sa_0Tick_Marker] armor.chest from entity @s armor.chest
execute as @e[x=0,y=0,z=1,tag=sa_StoresArmour] if score @s sa_player_id = #tmp_caster sa_player_id run item replace entity @a[tag=sa_0Tick_Marker] armor.legs from entity @s armor.legs
execute as @e[x=0,y=0,z=1,tag=sa_StoresArmour] if score @s sa_player_id = #tmp_caster sa_player_id run item replace entity @a[tag=sa_0Tick_Marker] armor.feet from entity @s armor.feet

execute as @e[x=0,y=0,z=1,tag=sa_StoresArmour] if score @s sa_player_id = #tmp_caster sa_player_id run kill @s

tag @s remove sa_0Tick_Marker

attribute @s generic.armor base set 0
tag @s remove total_invisility