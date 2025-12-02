# Push yourself away from nearby metal blocks (mobility)
# Cost: 15 Investiture (8 with armor set bonus)

# Check if enough Investiture
execute as @s[tag=!wearing_full_mistcloak,scores={investiture=..14}] run title @s actionbar §cNot enough Investiture! (Need 15)
execute as @s[tag=!wearing_full_mistcloak,scores={investiture=..14}] run playsound note.bass @s
execute as @s[tag=wearing_full_mistcloak,scores={investiture=..7}] run title @s actionbar §cNot enough Investiture! (Need 8)
execute as @s[tag=wearing_full_mistcloak,scores={investiture=..7}] run playsound note.bass @s

# Check for metal blocks nearby (iron blocks, anvils, iron bars, etc.)
execute as @s[tag=!wearing_full_mistcloak,scores={investiture=15..}] at @s if block ~ ~-1 ~ iron_block run tag @s add found_metal
execute as @s[tag=!wearing_full_mistcloak,scores={investiture=15..}] at @s if block ~ ~-1 ~ anvil run tag @s add found_metal
execute as @s[tag=!wearing_full_mistcloak,scores={investiture=15..}] at @s if block ~ ~-2 ~ iron_block run tag @s add found_metal
execute as @s[tag=!wearing_full_mistcloak,scores={investiture=15..}] at @s if block ~ ~-2 ~ anvil run tag @s add found_metal

execute as @s[tag=wearing_full_mistcloak,scores={investiture=8..}] at @s if block ~ ~-1 ~ iron_block run tag @s add found_metal
execute as @s[tag=wearing_full_mistcloak,scores={investiture=8..}] at @s if block ~ ~-1 ~ anvil run tag @s add found_metal
execute as @s[tag=wearing_full_mistcloak,scores={investiture=8..}] at @s if block ~ ~-2 ~ iron_block run tag @s add found_metal
execute as @s[tag=wearing_full_mistcloak,scores={investiture=8..}] at @s if block ~ ~-2 ~ anvil run tag @s add found_metal

# Launch player upward if metal found
execute as @s[tag=found_metal,tag=!wearing_full_mistcloak,scores={investiture=15..}] run effect @s levitation 1 30 true
execute as @s[tag=found_metal,tag=wearing_full_mistcloak,scores={investiture=8..}] run effect @s levitation 1 30 true

# Consume Investiture
execute as @s[tag=found_metal,tag=!wearing_full_mistcloak] run scoreboard players remove @s investiture 15
execute as @s[tag=found_metal,tag=wearing_full_mistcloak] run scoreboard players remove @s investiture 8

# Set cooldown (5 seconds = 100 ticks)
execute as @s[tag=found_metal] run scoreboard players set @s steel_push_cooldown 100

# Visual/audio feedback
execute as @s[tag=found_metal] run playsound random.explode @s ~ ~ ~ 0.5 2
execute as @s[tag=found_metal] at @s run particle minecraft:lava_particle ~ ~-1 ~
execute as @s[tag=found_metal] run title @s actionbar §7⚡ Steel Launch!

# No metal found
execute as @s[tag=!found_metal,scores={investiture=8..}] run title @s actionbar §cNo metal blocks nearby!
execute as @s[tag=!found_metal,scores={investiture=8..}] run playsound note.bass @s

# Cleanup
tag @s remove found_metal