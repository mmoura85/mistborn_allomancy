# Apply Tin passive effects to all Allomancers with Investiture
execute as @a[tag=allomancer,tag=has_investiture] run effect @s night_vision 15 0 true

# Enhanced awareness - show particles around nearby mobs
execute as @a[tag=allomancer,tag=has_investiture] at @s positioned as @e[r=30,family=monster] run particle minecraft:villager_happy ~ ~1 ~
execute as @a[tag=allomancer,tag=has_investiture] at @s positioned as @e[r=30,family=mob] run particle minecraft:villager_happy ~ ~1 ~