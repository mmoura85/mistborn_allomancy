# Track pewter draught in hand and detect actual drinking
execute as @a[hasitem={item=mistborn:pewter_draught,location=slot.weapon.mainhand}] run scoreboard players add @s pewter_use_check 1

# Reset counter if they stop holding it
execute as @a unless entity @s[hasitem={item=mistborn:pewter_draught,location=slot.weapon.mainhand}] run scoreboard players set @s pewter_use_check 0

# Only after holding for 32 ticks (1.6 seconds - the use_duration), check if they drank it
execute as @a[scores={pewter_use_check=32..}] run tag @s add pewter_ready

# If ready and still has the item (using_converts_to returned it), they completed drinking
execute as @a[tag=pewter_ready,hasitem={item=mistborn:pewter_draught,location=slot.weapon.mainhand}] at @s run function mistborn/grant_pewter
execute as @a[tag=pewter_ready] run tag @s remove pewter_ready
execute as @a[tag=pewter_ready] run scoreboard players set @s pewter_use_check 0