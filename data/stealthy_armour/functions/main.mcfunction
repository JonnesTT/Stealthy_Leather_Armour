execute as @a[predicate=stealthy_armour:is_wearing_leather_armour,scores={sneakingTime=40}] run function stealthy_armour:activate_total_stealth

scoreboard players set @a[predicate=!stealthy_armour:is_sneaking] sneakingTime 0