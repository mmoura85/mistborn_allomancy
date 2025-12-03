# Per-piece armor effects
execute as @a[hasitem={item=mistborn:mistcloak_hood,location=slot.armor.head}] run effect @s night_vision 15 0 true

execute as @a[hasitem={item=mistborn:mistcloak,location=slot.armor.chest}] run effect @s resistance 2 1 true

execute as @a[hasitem={item=mistborn:mistcloak_pants,location=slot.armor.legs}] run effect @s speed 2 0 true

execute as @a[hasitem={item=mistborn:mistcloak_boots,location=slot.armor.feet}] run effect @s jump_boost 2 0 true

# Mistcloak gliding effect (chest only)
execute as @a[hasitem={item=mistborn:mistcloak,location=slot.armor.chest}] at @s unless block ~ ~-1 ~ air run tag @s remove mistcloak_gliding
execute as @a[hasitem={item=mistborn:mistcloak,location=slot.armor.chest}] at @s if block ~ ~-1 ~ air run tag @s add mistcloak_gliding
execute as @a[tag=mistcloak_gliding] run effect @s slow_falling 2 0 true
execute as @a[tag=mistcloak_gliding] run effect @s speed 2 1 true

# Full set detection
execute as @a[hasitem={item=mistborn:mistcloak_hood,location=slot.armor.head}] run tag @s add temp_has_hood
execute as @a[hasitem={item=mistborn:mistcloak,location=slot.armor.chest}] run tag @s add temp_has_cloak
execute as @a[hasitem={item=mistborn:mistcloak_pants,location=slot.armor.legs}] run tag @s add temp_has_pants
execute as @a[hasitem={item=mistborn:mistcloak_boots,location=slot.armor.feet}] run tag @s add temp_has_boots

execute as @a[tag=temp_has_hood,tag=temp_has_cloak,tag=temp_has_pants,tag=temp_has_boots] run tag @s add wearing_full_mistcloak
execute as @a unless entity @s[tag=temp_has_hood,tag=temp_has_cloak,tag=temp_has_pants,tag=temp_has_boots] run tag @s remove wearing_full_mistcloak

tag @a remove temp_has_hood
tag @a remove temp_has_cloak
tag @a remove temp_has_pants
tag @a remove temp_has_boots