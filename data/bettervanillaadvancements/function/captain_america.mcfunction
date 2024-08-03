execute if block ~ ~ ~ minecraft:powder_snow if block ~ ~1 ~ minecraft:powder_snow run scoreboard players add @s bva_captain_america 1

execute unless block ~ ~ ~ minecraft:powder_snow run scoreboard players set @s bva_captain_america 0
execute unless block ~ ~1 ~ minecraft:powder_snow run scoreboard players set @s bva_captain_america 0

execute if score @s bva_captain_america matches 1200.. run advancement grant @s only bettervanillaadvancements:biomes/captain_america