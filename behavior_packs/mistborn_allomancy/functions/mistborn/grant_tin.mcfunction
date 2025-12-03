# Check if player is an Allomancer
execute as @s[tag=!allomancer] run title @s actionbar §cYou must consume a Lerasium Bead to use Allomancy!
execute as @s[tag=!allomancer] run playsound note.bass @s

# Add Investiture - 50 normally, 75 with full Mistcloak set (50% bonus)
execute as @s[tag=allomancer,tag=!wearing_full_mistcloak] run scoreboard players add @s investiture 50
execute as @s[tag=allomancer,tag=wearing_full_mistcloak] run scoreboard players add @s investiture 75
execute as @s[tag=allomancer] run tag @s add burning_tin
execute as @s[tag=allomancer] run scoreboard players set @s tin_duration 3600
execute as @s[tag=allomancer] run playsound random.drink @s
execute as @s[tag=allomancer] run particle minecraft:villager_happy ~ ~1 ~

# Damage draught by 1 durability
execute as @s[tag=allomancer] run replaceitem entity @s slot.weapon.mainhand 0 mistborn:tin_draught 1 1