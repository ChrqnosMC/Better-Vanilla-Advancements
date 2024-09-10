execute as @a[scores={bva_apple_eaten=1..99}] run scoreboard players add @s bva_apple_days 1
execute as @a[scores={bva_apple_eaten=1..}] run scoreboard players set @s bva_apple_eaten 100
execute as @a[scores={bva_apple_days=30..}] at @s run advancement grant @s only bettervanillaadvancements:farming/an_apple_a_day

scoreboard players operation previous bva_current_time = time bva_current_time
execute store result score time bva_current_time run time query daytime
execute if score time bva_current_time matches 0..200 run function bettervanillaadvancements:increase_day

execute if score time bva_current_time matches 23000..23200 run advancement grant @a[gamemode=!spectator] only bettervanillaadvancements:statistics/the_first_night
scoreboard players operation previous bva_current_time -= time bva_current_time
execute unless score previous bva_current_time matches ..13000 run advancement grant @a[gamemode=!spectator] only bettervanillaadvancements:statistics/the_first_night
 
execute as @e[type=strider,tag=!zp_ridden,tag=!not_zp_ridden] at @s run function bettervanillaadvancements:strider_check

execute as @e[type=#minecraft:zombies,tag=!bva_baby] run tag @s[predicate=bettervanillaadvancements:is_baby] add bva_baby

execute as @a[gamemode=!spectator] at @s store result score @s bva_ten_withers run execute if entity @e[type=wither,distance=..128]
execute as @a[gamemode=!spectator] if score @s bva_ten_withers matches 10.. run advancement grant @s only bettervanillaadvancements:challenges/the_world_is_ending

execute as @a[gamemode=!spectator,advancements={bettervanillaadvancements:biomes/unite_storm=false},predicate=bettervanillaadvancements:unite_storm_check] at @s run function bettervanillaadvancements:unite_storm_check

scoreboard players set ten_second bva_timer 0