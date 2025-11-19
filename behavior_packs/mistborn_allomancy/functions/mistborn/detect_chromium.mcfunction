# Track chromium draught in hand and detect actual drinking
execute as @a[hasitem={item=mistborn:chromium_draught,location=slot.weapon.mainhand}] run scoreboard players add @s chromium_use_check 1

# Reset counter if they stop holding it
execute as @a unless entity @s[hasitem={item=mistborn:chromium_draught,location=slot.weapon.mainhand}] run scoreboard players set @s chromium_use_check 0

# Only after holding for 32 ticks (1.6 seconds), check if they drank it
execute as @a[scores={chromium_use_check=32..}] run tag @s add chromium_ready

# If ready and still has the item, they completed drinking
execute as @a[tag=chromium_ready,hasitem={item=mistborn:chromium_draught,location=slot.weapon.mainhand}] at @s run function mistborn/grant_chromium
execute as @a[tag=chromium_ready] run tag @s remove chromium_ready
execute as @a[tag=chromium_ready] run scoreboard players set @s chromium_use_check 0