# Duralumin flare - massively amplify all current Allomantic effects
# Countdown the duration (100 ticks = 5 seconds)
execute as @a[tag=flaring_duralumin,scores={duralumin_duration=1..}] run scoreboard players remove @s duralumin_duration 1

# Amplify Pewter effects while flaring (add higher level effects temporarily)
execute as @a[tag=flaring_duralumin] run effect @s speed 1 4 true
execute as @a[tag=flaring_duralumin] run effect @s jump_boost 1 5 true
execute as @a[tag=flaring_duralumin] run effect @s strength 1 4 true
execute as @a[tag=flaring_duralumin] run effect @s resistance 1 2 true

# Amplify Tin effects while flaring
execute as @a[tag=flaring_duralumin,tag=burning_tin] run effect @s night_vision 1 0 true

# Visual and audio feedback every 20 ticks
execute as @a[tag=flaring_duralumin,scores={duralumin_duration=80}] at @s run particle minecraft:totem_particle ~ ~1 ~
execute as @a[tag=flaring_duralumin,scores={duralumin_duration=60}] at @s run particle minecraft:totem_particle ~ ~1 ~
execute as @a[tag=flaring_duralumin,scores={duralumin_duration=40}] at @s run particle minecraft:totem_particle ~ ~1 ~
execute as @a[tag=flaring_duralumin,scores={duralumin_duration=20}] at @s run particle minecraft:totem_particle ~ ~1 ~

# Warning when flare is about to end
execute as @a[tag=flaring_duralumin,scores={duralumin_duration=20}] run title @s actionbar §c§lFlare ending soon!
execute as @a[tag=flaring_duralumin,scores={duralumin_duration=20}] run playsound note.pling @s ~ ~ ~ 1 0.5

# Remove flaring tag when duration expires
execute as @a[tag=flaring_duralumin,scores={duralumin_duration=..0}] run tag @s remove flaring_duralumin
execute as @a[scores={duralumin_duration=..0}] run title @s actionbar §7Duralumin flare ended