# Check if player is an Allomancer
execute as @s[tag=!allomancer] run title @s actionbar §cYou must consume a Lerasium Bead to use Allomancy!
execute as @s[tag=!allomancer] run playsound note.bass @s

# Grant Duralumin Flare - Massively amplify current burns for short duration (only if Allomancer)
execute as @s[tag=allomancer] run tag @s add flaring_duralumin
execute as @s[tag=allomancer] run scoreboard players set @s duralumin_duration 100
execute as @s[tag=allomancer] run playsound random.drink @s
execute as @s[tag=allomancer] run playsound entity.wither.spawn @s ~ ~ ~ 0.5 2
# execute as @s[tag=allomancer] run title @s actionbar §e§lFLARING DURALUMIN!
execute as @s[tag=allomancer] run particle minecraft:totem_particle ~ ~1 ~

# Damage draught by 1 durability
execute as @s[tag=allomancer] run replaceitem entity @s slot.weapon.mainhand 0 mistborn:duralumin_draught 1 1