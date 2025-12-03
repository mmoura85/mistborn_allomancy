# Check if player is an Allomancer
execute as @s[tag=!allomancer] run title @s actionbar §cYou must consume a Lerasium Bead to use Allomancy!
execute as @s[tag=!allomancer] run playsound note.bass @s

# Check if already flaring
execute as @s[tag=allomancer,tag=flaring_duralumin] run title @s actionbar §cAlready flaring Duralumin!
execute as @s[tag=allomancer,tag=flaring_duralumin] run playsound note.bass @s

# Start Duralumin Flare - 30 second godmode (600 ticks) - only if not already flaring
execute as @s[tag=allomancer,tag=!flaring_duralumin] run tag @s add flaring_duralumin
execute as @s[tag=allomancer,tag=flaring_duralumin] run tag @s add duralumin_potion_lock
execute as @s[tag=allomancer,tag=flaring_duralumin] run scoreboard players set @s duralumin_duration 600
execute as @s[tag=allomancer,tag=flaring_duralumin] run playsound random.drink @s
execute as @s[tag=allomancer,tag=flaring_duralumin] run playsound entity.wither.spawn @s ~ ~ ~ 0.5 2
execute as @s[tag=allomancer,tag=flaring_duralumin] at @s run particle minecraft:totem_particle ~ ~1 ~
execute as @s[tag=allomancer,tag=flaring_duralumin] run title @s title §e§l⚡ FLARING DURALUMIN ⚡
execute as @s[tag=allomancer,tag=flaring_duralumin] run title @s subtitle §630 seconds of power...

# Damage draught by 1 durability
execute as @s[tag=allomancer] run replaceitem entity @s slot.weapon.mainhand 0 mistborn:duralumin_draught 1 1