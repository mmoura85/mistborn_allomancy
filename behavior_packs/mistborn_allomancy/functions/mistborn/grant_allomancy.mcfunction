execute as @s[scores={lerasium_count=4..}] run title @s actionbar §cMaximum capacity reached - Cannot consume more Lerasium Beads!
execute as @s[scores={lerasium_count=4..}] run playsound note.bass @s
execute as @s[scores={lerasium_count=4..}] run give @s mistborn:lerasium_bead 1

tag @s add processing_lerasium

execute as @s[tag=processing_lerasium,scores={lerasium_count=..0}] run tag @s add allomancer
execute as @s[tag=processing_lerasium,scores={lerasium_count=..0}] run scoreboard players set @s investiture_max 100
execute as @s[tag=processing_lerasium,scores={lerasium_count=..0}] run scoreboard players set @s investiture 100
execute as @s[tag=processing_lerasium,scores={lerasium_count=..0}] run playsound random.levelup @s
execute as @s[tag=processing_lerasium,scores={lerasium_count=..0}] run particle minecraft:totem_particle ~ ~1 ~
execute as @s[tag=processing_lerasium,scores={lerasium_count=..0}] run effect @s regeneration 30 3 true
execute as @s[tag=processing_lerasium,scores={lerasium_count=..0}] run title @s title §6You are Mistborn
execute as @s[tag=processing_lerasium,scores={lerasium_count=..0}] run title @s subtitle §7Investiture Capacity: 100
execute as @s[tag=processing_lerasium,scores={lerasium_count=..0}] run tellraw @s {"rawtext":[{"text":"§6You have consumed the Lerasium Bead and become a Mistborn! Investiture: 100/100"}]}
execute as @s[tag=processing_lerasium,scores={lerasium_count=..0}] run scoreboard players set @s lerasium_count 1

execute as @s[tag=processing_lerasium,scores={lerasium_count=1}] run scoreboard players add @s investiture_max 100
execute as @s[tag=processing_lerasium,scores={lerasium_count=1}] run scoreboard players add @s investiture 100
execute as @s[tag=processing_lerasium,scores={lerasium_count=1}] run playsound random.levelup @s
execute as @s[tag=processing_lerasium,scores={lerasium_count=1}] run particle minecraft:totem_particle ~ ~1 ~
execute as @s[tag=processing_lerasium,scores={lerasium_count=1}] run effect @s regeneration 30 3 true
execute as @s[tag=processing_lerasium,scores={lerasium_count=1}] run title @s title §6Investiture Expanded
execute as @s[tag=processing_lerasium,scores={lerasium_count=1}] run title @s subtitle §7Capacity: 200
execute as @s[tag=processing_lerasium,scores={lerasium_count=1}] run tellraw @s {"rawtext":[{"text":"§6Lerasium Bead consumed! Investiture capacity increased to 200"}]}
execute as @s[tag=processing_lerasium,scores={lerasium_count=1}] run scoreboard players set @s lerasium_count 2

execute as @s[tag=processing_lerasium,scores={lerasium_count=2}] run scoreboard players add @s investiture_max 100
execute as @s[tag=processing_lerasium,scores={lerasium_count=2}] run scoreboard players add @s investiture 100
execute as @s[tag=processing_lerasium,scores={lerasium_count=2}] run playsound random.levelup @s
execute as @s[tag=processing_lerasium,scores={lerasium_count=2}] run particle minecraft:totem_particle ~ ~1 ~
execute as @s[tag=processing_lerasium,scores={lerasium_count=2}] run effect @s regeneration 30 3 true
execute as @s[tag=processing_lerasium,scores={lerasium_count=2}] run title @s title §6Investiture Expanded
execute as @s[tag=processing_lerasium,scores={lerasium_count=2}] run title @s subtitle §7Capacity: 300
execute as @s[tag=processing_lerasium,scores={lerasium_count=2}] run tellraw @s {"rawtext":[{"text":"§6Lerasium Bead consumed! Investiture capacity increased to 300"}]}
execute as @s[tag=processing_lerasium,scores={lerasium_count=2}] run scoreboard players set @s lerasium_count 3

execute as @s[tag=processing_lerasium,scores={lerasium_count=3}] run scoreboard players add @s investiture_max 100
execute as @s[tag=processing_lerasium,scores={lerasium_count=3}] run scoreboard players add @s investiture 100
execute as @s[tag=processing_lerasium,scores={lerasium_count=3}] run playsound random.levelup @s
execute as @s[tag=processing_lerasium,scores={lerasium_count=3}] run particle minecraft:totem_particle ~ ~1 ~
execute as @s[tag=processing_lerasium,scores={lerasium_count=3}] run effect @s regeneration 30 3 true
execute as @s[tag=processing_lerasium,scores={lerasium_count=3}] run title @s title §6Maximum Investiture
execute as @s[tag=processing_lerasium,scores={lerasium_count=3}] run title @s subtitle §7Capacity: 400 (MAX)
execute as @s[tag=processing_lerasium,scores={lerasium_count=3}] run tellraw @s {"rawtext":[{"text":"§6Lerasium Bead consumed! Maximum Investiture capacity reached: 400"}]}
execute as @s[tag=processing_lerasium,scores={lerasium_count=3}] run scoreboard players set @s lerasium_count 4

tag @s remove processing_lerasium