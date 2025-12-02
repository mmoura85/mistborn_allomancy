# Push nearby mobs/players wearing metal armor
# Cost: 10 Investiture (5 with armor set bonus)

# Check if enough Investiture
execute as @s[tag=!wearing_full_mistcloak,scores={investiture=..9}] run title @s actionbar §cNot enough Investiture! (Need 10)
execute as @s[tag=!wearing_full_mistcloak,scores={investiture=..9}] run playsound note.bass @s
execute as @s[tag=wearing_full_mistcloak,scores={investiture=..4}] run title @s actionbar §cNot enough Investiture! (Need 5)
execute as @s[tag=wearing_full_mistcloak,scores={investiture=..4}] run playsound note.bass @s

# Tag the pusher so we can reference them
execute as @s[scores={investiture=5..}] run tag @s add steel_pusher

# Push players - levitate them and knockback away from pusher
execute as @s[tag=!wearing_full_mistcloak,scores={investiture=10..}] at @s run effect @a[r=10,rm=1] levitation 1 20 true
execute as @s[tag=wearing_full_mistcloak,scores={investiture=5..}] at @s run effect @a[r=10,rm=1] levitation 1 20 true

# Knockback - make them face away from pusher then tp forward
execute as @s[scores={investiture=5..}] at @s as @a[r=10,rm=1] at @s facing entity @p[tag=steel_pusher] feet run tp @s ^ ^ ^-5

# Push hostile mobs - levitate and knockback
execute as @s[scores={investiture=5..}] at @s run effect @e[r=10,rm=1,family=monster] levitation 1 20 true
execute as @s[scores={investiture=5..}] at @s as @e[r=10,rm=1,family=monster] at @s facing entity @p[tag=steel_pusher] feet run tp @s ^ ^ ^-5

# Consume Investiture
execute as @s[tag=!wearing_full_mistcloak,scores={investiture=10..}] run scoreboard players remove @s investiture 10
execute as @s[tag=wearing_full_mistcloak,scores={investiture=5..}] run scoreboard players remove @s investiture 5

# Set cooldown (3 seconds = 60 ticks)
execute as @s[scores={investiture=5..}] run scoreboard players set @s steel_push_cooldown 60

# Visual/audio feedback
execute as @s[scores={investiture=5..}] run playsound random.bow @s ~ ~ ~ 1 0.5
execute as @s[scores={investiture=5..}] at @s run particle minecraft:crit ~ ~1 ~
execute as @s[scores={investiture=5..}] run title @s actionbar §7⚡ Steel Push!

# Cleanup
tag @a remove steel_pusher