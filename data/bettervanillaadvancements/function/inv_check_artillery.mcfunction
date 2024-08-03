scoreboard players set @s bva_inv_check 0
scoreboard players set @s bva_inv_artillery 0

execute store result score @s bva_inv_check if items entity @s hotbar.* minecraft:crossbow[minecraft:charged_projectiles=[{"id":"minecraft:arrow","count":1}]]
scoreboard players operation @s bva_inv_artillery += @s bva_inv_check
execute store result score @s bva_inv_check if items entity @s hotbar.* minecraft:crossbow[minecraft:charged_projectiles=[{"id":"minecraft:arrow","count":1},{"id":"minecraft:arrow","count":1,"components":{"minecraft:intangible_projectile":{}}},{"id":"minecraft:arrow","count":1,"components":{"minecraft:intangible_projectile":{}}}]]
scoreboard players operation @s bva_inv_artillery += @s bva_inv_check

execute if entity @s[scores={bva_inv_artillery=9..}] run advancement grant @s only bettervanillaadvancements:weaponry/artillery