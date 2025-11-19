execute as @a[tag=allomancer,scores={investiture=81..}] run title @s actionbar §e⚡ Investiture: §a§lHIGH
execute as @a[tag=allomancer,scores={investiture=41..80}] run title @s actionbar §e⚡ Investiture: §eMEDIUM
execute as @a[tag=allomancer,scores={investiture=21..40}] run title @s actionbar §e⚡ Investiture: §6LOW
execute as @a[tag=allomancer,scores={investiture=1..20}] run title @s actionbar §e⚡ Investiture: §c§lCRITICAL
execute as @a[tag=allomancer,scores={investiture=..0}] run title @s actionbar §c⚡ Investiture: §4DEPLETED

execute as @a[tag=allomancer,scores={investiture=1..20}] at @s run particle minecraft:redstone_ore_dust_particle ~ ~1 ~