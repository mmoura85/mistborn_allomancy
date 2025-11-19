# Check if player is an Allomancer
execute as @s[tag=!allomancer] run title @s actionbar §cYou must consume a Lerasium Bead to use Allomancy!
execute as @s[tag=!allomancer] run playsound note.bass @s

# Grant Tin Allomancy Powers - Enhanced Senses (only if Allomancer)
execute as @s[tag=allomancer] run effect @s night_vision 180 0 true
execute as @s[tag=allomancer] run tag @s add burning_tin
execute as @s[tag=allomancer] run scoreboard players set @s tin_duration 3600
execute as @s[tag=allomancer] run playsound random.drink @s
# execute as @s[tag=allomancer] run title @s actionbar §bBurning Tin...

# Damage draught by 1 durability (after 10 uses it breaks) - only if Allomancer
execute as @s[tag=allomancer] run replaceitem entity @s slot.weapon.mainhand 0 mistborn:tin_draught 1 1