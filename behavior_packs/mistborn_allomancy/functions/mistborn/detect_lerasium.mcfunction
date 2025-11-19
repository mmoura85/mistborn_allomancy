# Track lerasium bead in hand and detect actual eating
execute as @a[hasitem={item=mistborn:lerasium_bead,location=slot.weapon.mainhand}] run scoreboard players add @s lerasium_use_check 1

# Reset counter if they stop holding it
execute as @a unless entity @s[hasitem={item=mistborn:lerasium_bead,location=slot.weapon.mainhand}] run scoreboard players set @s lerasium_use_check 0

# Only after holding for 64 ticks (3.2 seconds - the use_duration for eating), check if they ate it
execute as @a[scores={lerasium_use_check=64..}] run tag @s add lerasium_ready

# If ready and item is gone (using_converts_to is air, so it disappears), they completed eating
execute as @a[tag=lerasium_ready] unless entity @s[hasitem={item=mistborn:lerasium_bead}] at @s run function mistborn/grant_allomancy
execute as @a[tag=lerasium_ready] unless entity @s[hasitem={item=mistborn:lerasium_bead}] run tag @s remove lerasium_ready
execute as @a[tag=lerasium_ready] unless entity @s[hasitem={item=mistborn:lerasium_bead}] run scoreboard players set @s lerasium_use_check 0