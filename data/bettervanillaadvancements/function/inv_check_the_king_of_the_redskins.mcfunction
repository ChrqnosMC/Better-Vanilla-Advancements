scoreboard players set @s bva_inv_check 0
scoreboard players set @s bva_inv_the_king_of_the_redskins 0

execute store result score @s bva_inv_check if items entity @s inventory.* minecraft:redstone_block
scoreboard players operation @s bva_inv_the_king_of_the_redskins += @s bva_inv_check
execute store result score @s bva_inv_check if items entity @s hotbar.* minecraft:redstone_block
scoreboard players operation @s bva_inv_the_king_of_the_redskins += @s bva_inv_check
execute store result score @s bva_inv_check if items entity @s weapon.offhand minecraft:redstone_block
scoreboard players operation @s bva_inv_the_king_of_the_redskins += @s bva_inv_check

execute if entity @s[scores={bva_inv_the_king_of_the_redskins=2368..}] run advancement grant @s only bettervanillaadvancements:redstone/the_king_of_the_redskins