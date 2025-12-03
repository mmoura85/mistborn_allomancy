# Detect when player uses (right-clicks) a steel coin
# Initialize scoreboard
scoreboard players add @a coin_throw_check 0

# Track when holding and using coin (right-click held)
execute as @a[hasitem={item=mistborn:steel_coin,location=slot.weapon.mainhand}] run scoreboard players add @s coin_throw_check 1

# Reset if not holding
execute as @a unless entity @s[hasitem={item=mistborn:steel_coin,location=slot.weapon.mainhand}] run scoreboard players set @s coin_throw_check 0

# At exactly 10 ticks (0.5 seconds), fire the coin ONCE
execute as @a[tag=burning_steel,scores={coin_throw_check=10}] at @s run function mistborn/coin_throw_effect

# After firing, set to high number to prevent re-triggering
execute as @a[scores={coin_throw_check=10}] run scoreboard players set @s coin_throw_check 999

# When they stop holding (release right-click), reset for next use
execute as @a[scores={coin_throw_check=999}] unless entity @s[hasitem={item=mistborn:steel_coin,location=slot.weapon.mainhand}] run scoreboard players set @s coin_throw_check 0