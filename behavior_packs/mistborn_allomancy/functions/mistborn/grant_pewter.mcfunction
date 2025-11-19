# Check if player is an Allomancer
execute as @s[tag=!allomancer] run title @s actionbar §cYou must consume a Lerasium Bead to use Allomancy!
execute as @s[tag=!allomancer] run playsound note.bass @s

# Grant Pewter Allomancy Powers (only if Allomancer)
execute as @s[tag=allomancer] run effect @s speed 180 1 true
execute as @s[tag=allomancer] run effect @s jump_boost 180 2 true
execute as @s[tag=allomancer] run effect @s strength 180 1 true
execute as @s[tag=allomancer] run effect @s resistance 180 0 true
execute as @s[tag=allomancer] run playsound random.drink @s
# execute as @s[tag=allomancer] run title @s actionbar §7Burning Pewter...

# Damage draught by 1 durability (after 10 uses it breaks) - only if Allomancer
execute as @s[tag=allomancer] run replaceitem entity @s slot.weapon.mainhand 0 mistborn:pewter_draught 1 1