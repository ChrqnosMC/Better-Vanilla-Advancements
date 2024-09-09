scoreboard players set @s bva_inv_check 0
scoreboard players set @s bva_inv_the_poisonous_potato_update 0

execute store result score @s bva_inv_check if items entity @s inventory.* minecraft:poisonous_potato
scoreboard players operation @s bva_inv_the_poisonous_potato_update += @s bva_inv_check
execute store result score @s bva_inv_check if items entity @s hotbar.* minecraft:poisonous_potato
scoreboard players operation @s bva_inv_the_poisonous_potato_update += @s bva_inv_check
execute store result score @s bva_inv_check if items entity @s weapon.offhand minecraft:poisonous_potato
scoreboard players operation @s bva_inv_the_poisonous_potato_update += @s bva_inv_check

execute if entity @s[scores={bva_inv_the_poisonous_potato_update=2368..}] run advancement grant @s only bettervanillaadvancements:farming/the_poisonous_potato_update