# Apply Pewter passive effects to all Allomancers with Investiture
execute as @a[tag=allomancer,tag=has_investiture] run effect @s speed 2 1 true
execute as @a[tag=allomancer,tag=has_investiture] run effect @s jump_boost 2 2 true
execute as @a[tag=allomancer,tag=has_investiture] run effect @s strength 2 1 true
execute as @a[tag=allomancer,tag=has_investiture] run effect @s resistance 2 0 true