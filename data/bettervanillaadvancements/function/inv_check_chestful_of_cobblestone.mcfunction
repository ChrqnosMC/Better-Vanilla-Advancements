scoreboard players set @s bva_inv_check 0
scoreboard players set @s bva_inv_chestful_of_cobblestone 0

execute store result score @s bva_inv_check if items block ~ ~-0.5 ~ container.* minecraft:cobblestone
scoreboard players operation @s bva_inv_chestful_of_cobblestone += @s bva_inv_check

execute if entity @s[scores={bva_inv_chestful_of_cobblestone=1728..}] run advancement grant @s only bettervanillaadvancements:mining/chestful_of_cobblestone