scoreboard players add @a investiture 0
scoreboard players add @a investiture_max 0
scoreboard players add @a lerasium_count 0

execute as @a[tag=allomancer,scores={investiture=1..}] run tag @s add has_investiture
execute as @a[tag=allomancer,scores={investiture=..0}] run tag @s remove has_investiture

execute as @a[scores={investiture=..0}] run scoreboard players set @s investiture 0