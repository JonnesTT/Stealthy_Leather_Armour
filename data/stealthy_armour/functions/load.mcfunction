scoreboard objectives add sneakingTime custom:sneak_time
#scoreboard objectives add sa_armour_owner dummy
scoreboard objectives add sa_player_id dummy
scoreboard players set @a sa_player_id 0

schedule function stealthy_armour:recursive_check 10