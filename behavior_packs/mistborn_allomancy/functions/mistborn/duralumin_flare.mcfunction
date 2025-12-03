# Duralumin flare - massively amplify all Allomantic effects for 30 seconds
# Countdown the duration (600 ticks = 30 seconds)
execute as @a[tag=flaring_duralumin,scores={duralumin_duration=1..}] run scoreboard players remove @s duralumin_duration 1

# MASSIVELY amplified Pewter effects while flaring
execute as @a[tag=flaring_duralumin,scores={duralumin_duration=1..}] run effect @s speed 1 4 true
execute as @a[tag=flaring_duralumin,scores={duralumin_duration=1..}] run effect @s jump_boost 1 5 true
execute as @a[tag=flaring_duralumin,scores={duralumin_duration=1..}] run effect @s strength 1 4 true
execute as @a[tag=flaring_duralumin,scores={duralumin_duration=1..}] run effect @s resistance 1 3 true

# Amplified Tin effects while flaring
execute as @a[tag=flaring_duralumin,scores={duralumin_duration=1..}] run effect @s night_vision 15 0 true

# Visual effects every 5 seconds
execute as @a[tag=flaring_duralumin,scores={duralumin_duration=500}] at @s run particle minecraft:totem_particle ~ ~1 ~
execute as @a[tag=flaring_duralumin,scores={duralumin_duration=400}] at @s run particle minecraft:totem_particle ~ ~1 ~
execute as @a[tag=flaring_duralumin,scores={duralumin_duration=300}] at @s run particle minecraft:totem_particle ~ ~1 ~
execute as @a[tag=flaring_duralumin,scores={duralumin_duration=200}] at @s run particle minecraft:totem_particle ~ ~1 ~
execute as @a[tag=flaring_duralumin,scores={duralumin_duration=100}] at @s run particle minecraft:totem_particle ~ ~1 ~

# Countdown warnings
execute as @a[tag=flaring_duralumin,scores={duralumin_duration=200}] run title @s actionbar §e⚡ Flare: §610 seconds remaining
execute as @a[tag=flaring_duralumin,scores={duralumin_duration=200}] run playsound note.pling @s ~ ~ ~ 1 1

execute as @a[tag=flaring_duralumin,scores={duralumin_duration=100}] run title @s actionbar §6⚡ Flare: §c5 seconds remaining!
execute as @a[tag=flaring_duralumin,scores={duralumin_duration=100}] run playsound note.pling @s ~ ~ ~ 1 1.5

execute as @a[tag=flaring_duralumin,scores={duralumin_duration=60}] run title @s actionbar §c⚡ BURNOUT IMMINENT!
execute as @a[tag=flaring_duralumin,scores={duralumin_duration=60}] run playsound note.pling @s ~ ~ ~ 1 2

# BURNOUT - When flare ends (EXACTLY at 0), complete wipeout
execute as @a[tag=flaring_duralumin,scores={duralumin_duration=0}] run scoreboard players set @s investiture 0
execute as @a[tag=flaring_duralumin,scores={duralumin_duration=0}] run effect @s clear
execute as @a[tag=flaring_duralumin,scores={duralumin_duration=0}] run tag @s remove burning_tin
execute as @a[tag=flaring_duralumin,scores={duralumin_duration=0}] run tag @s remove burning_chromium
execute as @a[tag=flaring_duralumin,scores={duralumin_duration=0}] run tag @s remove duralumin_potion_lock
execute as @a[tag=flaring_duralumin,scores={duralumin_duration=0}] run tag @s remove flaring_duralumin
execute as @a[scores={duralumin_duration=0}] run title @s title §4§l✕ BURNOUT ✕
execute as @a[scores={duralumin_duration=0}] run title @s subtitle §cAll Investiture depleted!
execute as @a[scores={duralumin_duration=0}] at @s run particle minecraft:large_explosion ~ ~1 ~
execute as @a[scores={duralumin_duration=0}] run playsound random.explode @s ~ ~ ~ 1 0.5
execute as @a[scores={duralumin_duration=0}] run effect @s weakness 10 2 true
execute as @a[scores={duralumin_duration=0}] run effect @s slowness 10 2 true
execute as @a[scores={duralumin_duration=0}] run scoreboard players set @s duralumin_duration -1