# Steel-pushed coin throw - costs Investiture
# Cost: 5 Investiture (3 with armor set)

# Check if enough Investiture
execute as @s[tag=!wearing_full_mistcloak,scores={investiture=..4}] run title @s actionbar §cNot enough Investiture to push coin!
execute as @s[tag=!wearing_full_mistcloak,scores={investiture=..4}] run playsound note.bass @s

execute as @s[tag=wearing_full_mistcloak,scores={investiture=..2}] run title @s actionbar §cNot enough Investiture to push coin!
execute as @s[tag=wearing_full_mistcloak,scores={investiture=..2}] run playsound note.bass @s

# Consume Investiture
execute as @s[tag=!wearing_full_mistcloak,scores={investiture=5..}] run scoreboard players remove @s investiture 5
execute as @s[tag=wearing_full_mistcloak,scores={investiture=3..}] run scoreboard players remove @s investiture 3

# Visual/audio feedback
execute as @s[scores={investiture=3..}] run playsound random.bow @s ~ ~ ~ 1 2
execute as @s[scores={investiture=3..}] run playsound entity.arrow.shoot @s ~ ~ ~ 1 2
execute as @s[scores={investiture=3..}] at @s run particle minecraft:crit ^ ^1.5 ^1
execute as @s[scores={investiture=3..}] run title @s actionbar §7⚡ Steel Coin Shot!