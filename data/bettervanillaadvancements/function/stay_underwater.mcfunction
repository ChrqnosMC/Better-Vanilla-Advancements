execute if block ~ ~ ~ #minecraft:underwater_blocks run scoreboard players add @a[gamemode=!spectator] bva_underwater 1
execute unless block ~ ~ ~ #minecraft:underwater_blocks run scoreboard players set @s bva_underwater 0
execute if block ~ ~1.7 ~ #minecraft:non_underwater_blocks run scoreboard players set @s bva_underwater 0
advancement grant @s[scores={bva_underwater=120..}] only bettervanillaadvancements:biomes/free_diver
advancement grant @s[scores={bva_underwater=1200..}] only bettervanillaadvancements:biomes/sleep_with_the_fishes