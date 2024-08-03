scoreboard players add @a bva_day_count 1

advancement grant @a[scores={bva_day_count=100..}] only bettervanillaadvancements:statistics/passing_the_time
advancement grant @a[scores={bva_day_count=365..}] only bettervanillaadvancements:statistics/happy_new_year

execute as @a[scores={bva_apple_eaten=0}] run scoreboard players set @s bva_apple_days 0
execute as @a[scores={bva_apple_eaten=1..}] run scoreboard players set @s bva_apple_eaten 0