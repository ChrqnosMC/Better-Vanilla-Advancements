scoreboard players set @s bva_inv_check 0
scoreboard players set @s bva_inv_rocketman 0

execute store result score @s bva_inv_check if items entity @s inventory.* minecraft:firework_rocket
scoreboard players operation @s bva_inv_rocketman += @s bva_inv_check
execute store result score @s bva_inv_check if items entity @s hotbar.* minecraft:firework_rocket
scoreboard players operation @s bva_inv_rocketman += @s bva_inv_check
execute store result score @s bva_inv_check if items entity @s weapon.offhand minecraft:firework_rocket
scoreboard players operation @s bva_inv_rocketman += @s bva_inv_check

execute if entity @s[scores={bva_inv_rocketman=2368..}] run advancement grant @s only bettervanillaadvancements:end/rocketman