execute as @a[scores={bva_apple_eaten=1..99}] run scoreboard players add @s bva_apple_days 1
execute as @a[scores={bva_apple_eaten=1..}] run scoreboard players set @s bva_apple_eaten 100

scoreboard players set @s bva_apple_a_day 0