# Glass Knife special effects when hitting entities
# This runs every tick checking for players holding the glass knife

# Tag players holding glass knife
execute as @a[hasitem={item=mistborn:glass_knife,location=slot.weapon.mainhand}] run tag @s add holding_glass_knife

# Detect when they hit something (we'll use a damage indicator)
# When a player with glass knife hits an entity, apply effects
execute as @a[tag=holding_glass_knife] at @s run function mistborn/glass_knife_check_hit

# Remove tag when not holding
execute as @a[tag=holding_glass_knife] unless entity @s[hasitem={item=mistborn:glass_knife,location=slot.weapon.mainhand}] run tag @s remove holding_glass_knife