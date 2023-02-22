#if still sneaking do:
execute as @a[scores={sneakingTime=40..},tag=total_invisility] run effect give @s invisibility 1 0 true

#if not still sneaking replace armour with
execute as @a[tag=total_invisility,scores={sneakingTime=..39}] run function stealthy_armour:no_longer_sneaking

schedule function stealthy_armour:recursive_check 10
