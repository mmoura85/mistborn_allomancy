# Check for recently damaged entities near the player
# Apply weakness to all nearby damaged entities
execute as @s at @s run effect @e[r=3,type=!player] weakness 10 1 false

# Apply extra weakness to Allomancers (players with allomancer tag)
execute as @s at @s run effect @a[r=3,tag=allomancer,tag=!holding_glass_knife] weakness 10 2 false
execute as @s at @s run title @a[r=3,tag=allomancer,tag=!holding_glass_knife] actionbar §8Glass knife strike!

# Lifesteal - heal the attacker slightly
execute as @s at @s if entity @e[r=3,type=!player] run effect @s regeneration 2 1 true
execute as @s at @s if entity @a[r=3,tag=!holding_glass_knife] run effect @s regeneration 3 1 true

# Visual and audio feedback
execute as @s at @s if entity @e[r=3] run particle minecraft:enchanting_table_particle ~ ~1 ~
execute as @s at @s if entity @e[r=3] run playsound random.glass @s ~ ~ ~ 0.5 1.5