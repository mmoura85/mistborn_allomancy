# Block potion use while flaring Duralumin
execute as @a[tag=duralumin_potion_lock,hasitem={item=mistborn:steel_draught,location=slot.weapon.mainhand}] run title @s actionbar §cCannot drink potions while flaring Duralumin!
execute as @a[tag=duralumin_potion_lock,hasitem={item=mistborn:steel_draught,location=slot.weapon.mainhand}] run playsound note.bass @s

# Track steel draught in hand and detect actual drinking
execute as @a[tag=!duralumin_potion_lock,hasitem={item=mistborn:steel_draught,location=slot.weapon.mainhand}] run scoreboard players add @s steel_use_check 1

# Reset counter if they stop holding it
execute as @a unless entity @s[hasitem={item=mistborn:steel_draught,location=slot.weapon.mainhand}] run scoreboard players set @s steel_use_check 0

# Only after holding for 32 ticks (1.6 seconds), check if they drank it
execute as @a[scores={steel_use_check=32}] run tag @s add steel_ready

# If ready and still has the item, they completed drinking
execute as @a[tag=steel_ready,hasitem={item=mistborn:steel_draught,location=slot.weapon.mainhand}] at @s run function mistborn/grant_steel
execute as @a[tag=steel_ready] run tag @s remove steel_ready
execute as @a[tag=steel_ready] run scoreboard players set @s steel_use_check 0