# Check if player is an Allomancer
execute as @s[tag=!allomancer] run title @s actionbar §cYou must consume a Lerasium Bead to use Allomancy!
execute as @s[tag=!allomancer] run playsound note.bass @s

# Grant Aluminum Allomancy Powers - Wipe your own metals immediately (only if Allomancer)
execute as @s[tag=allomancer] run effect @s clear
execute as @s[tag=allomancer] run tag @s remove burning_tin
execute as @s[tag=allomancer] run tag @s remove burning_chromium
execute as @s[tag=allomancer] run scoreboard players set @s tin_duration 0
execute as @s[tag=allomancer] run scoreboard players set @s chromium_duration 0
execute as @s[tag=allomancer] run playsound random.drink @s
execute as @s[tag=allomancer] run playsound random.break @s
execute as @s[tag=allomancer] run title @s actionbar §7Burned Aluminum - All metals wiped!

# Damage draught by 1 durability
execute as @s[tag=allomancer] run replaceitem entity @s slot.weapon.mainhand 0 mistborn:aluminum_draught 1 1