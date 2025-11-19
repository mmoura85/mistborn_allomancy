execute as @a[tag=burning_chromium,scores={chromium_duration=1..}] run scoreboard players remove @s chromium_duration 1

execute as @a[tag=burning_chromium] at @s run effect @a[r=3,tag=allomancer,tag=!burning_chromium] clear
execute as @a[tag=burning_chromium] at @s run title @a[r=3,tag=allomancer,tag=!burning_chromium] actionbar §cYour metals have been wiped!
execute as @a[tag=burning_chromium] at @s run playsound random.break @a[r=3,tag=allomancer,tag=!burning_chromium]

execute as @a[tag=burning_chromium] at @s run tag @a[r=3,tag=burning_tin] remove burning_tin
execute as @a[tag=burning_chromium] at @s run tag @a[r=3,tag=flaring_duralumin] remove flaring_duralumin

execute as @a[tag=burning_chromium] at @s run scoreboard players set @a[r=3,tag=allomancer,tag=!burning_chromium] tin_duration 0
execute as @a[tag=burning_chromium] at @s run scoreboard players set @a[r=3,tag=allomancer,tag=!burning_chromium] chromium_duration 0
execute as @a[tag=burning_chromium] at @s run scoreboard players set @a[r=3,tag=allomancer,tag=!burning_chromium] duralumin_duration 0

execute as @a[tag=burning_chromium,scores={chromium_duration=..0}] run tag @s remove burning_chromium