execute as @e[type=arrow] at @s run function bettervanillaadvancements:dimpen_tag

execute as @a[scores={bva_whack_a_mole_count=1..}] if predicate bettervanillaadvancements:is_on_ground run scoreboard players set @s bva_whack_a_mole_count 0
execute as @a[scores={bva_divers_dozen_count=1..}] unless predicate bettervanillaadvancements:is_flying run scoreboard players set @s bva_divers_dozen_count 0