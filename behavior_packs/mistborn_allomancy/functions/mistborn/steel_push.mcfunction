# Steel Push mechanics - activates when sneaking while burning steel
# Requires: burning_steel tag, sufficient Investiture, sneaking

# Initialize cooldown scoreboard for all players
scoreboard players add @a steel_push_cooldown 0

# Cooldown countdown
execute as @a[scores={steel_push_cooldown=1..}] run scoreboard players remove @s steel_push_cooldown 1

# Detect sneaking players (crouching lowers hitbox)
tag @a remove is_sneaking
execute as @a at @s unless entity @s[y=~1.5, dy=0] if entity @s[y=~0.7, dy=0] run tag @s add is_sneaking

# Reset tracking tags
tag @a remove has_knife_main
tag @a remove has_coin_offhand

# Tag players with glass knife in main hand
execute as @a[hasitem={item=mistborn:glass_knife,location=slot.weapon.mainhand}] run tag @s add has_knife_main

# Tag players with coin in offhand (once we create the coin item)
# execute as @a[hasitem={item=mistborn:steel_coin,location=slot.weapon.mainhand}] run tag @s add has_coin_offhand

# Mode 1: Glass Knife in main, empty offhand, sneaking → Push mobs/players  
execute as @a[tag=burning_steel,tag=has_investiture,scores={steel_push_cooldown=..0},tag=is_sneaking,tag=has_knife_main] run tag @s add steel_push_entities

# #mode 1.5: main hand coin shot
# execute as @a[tag=burning_steel,tag=has_investiture,scores={steel_push_cooldown=..0},tag=has_coin_offhand] run tag @s add steel_push_entities

# Mode 2: Empty hands, sneaking → Push from metal blocks (mobility)
execute as @a[tag=burning_steel,tag=has_investiture,scores={steel_push_cooldown=..0},tag=is_sneaking,tag=!has_knife_main] run tag @s add steel_push_mobility

# Execute push modes
execute as @a[tag=steel_push_entities] at @s run function mistborn/steel_push_entities
execute as @a[tag=steel_push_mobility] at @s run function mistborn/steel_push_mobility

# Cleanup tags
tag @a remove is_sneaking
tag @a remove has_knife_main
tag @a remove has_coin_offhand
tag @a remove steel_push_entities
tag @a remove steel_push_mobility