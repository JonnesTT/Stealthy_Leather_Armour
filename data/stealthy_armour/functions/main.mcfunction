#I am convinced this is where the error lies. This'll controll the scheduling... I just don't know what's wrong.
execute as @a[predicate=stealthy_armour:is_wearing_leather_armour,scores={sneakingTime=40}] run function stealthy_armour:activate_total_stealth

execute as @a[scores={sa_player_id=0}] run function stealthy_armour:custom_id/assign_id

scoreboard players set @a[predicate=!stealthy_armour:is_sneaking] sneakingTime 0