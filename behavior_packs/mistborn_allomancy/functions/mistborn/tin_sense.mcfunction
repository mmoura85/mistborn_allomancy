# Enhanced senses for Tin burners
# Countdown the duration
execute as @a[tag=burning_tin,scores={tin_duration=1..}] run scoreboard players remove @s tin_duration 1

# Spawn particles around nearby mobs to simulate enhanced awareness (integers only in Bedrock)
execute as @a[tag=burning_tin] at @s positioned as @e[r=30,family=monster] run particle minecraft:villager_happy ~ ~1 ~
execute as @a[tag=burning_tin] at @s positioned as @e[r=30,family=mob] run particle minecraft:villager_happy ~ ~1 ~

# Remove burning_tin tag when duration expires
execute as @a[tag=burning_tin,scores={tin_duration=..0}] run tag @s remove burning_tin
execute as @a[tag=burning_tin,scores={tin_duration=..0}] run effect @s clear night_vision