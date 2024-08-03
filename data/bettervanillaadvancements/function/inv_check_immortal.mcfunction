scoreboard players set @s bva_inv_check 0
scoreboard players set @s bva_inv_immortal 0

execute store result score @s bva_inv_check if items entity @s inventory.* minecraft:totem_of_undying
scoreboard players operation @s bva_inv_immortal += @s bva_inv_check
execute store result score @s bva_inv_check if items entity @s hotbar.* minecraft:totem_of_undying
scoreboard players operation @s bva_inv_immortal += @s bva_inv_check
execute store result score @s bva_inv_check if items entity @s weapon.offhand minecraft:totem_of_undying
scoreboard players operation @s bva_inv_immortal += @s bva_inv_check

execute if entity @s[scores={bva_inv_immortal=37..}] run advancement grant @s only bettervanillaadvancements:challenges/immortal