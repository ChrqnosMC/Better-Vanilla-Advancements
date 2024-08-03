advancement revoke @s only bettervanillaadvancements:technical/inventory_changed

execute if entity @s[advancements={bettervanillaadvancements:weaponry/artillery=false}] run function bettervanillaadvancements:inv_check_artillery
execute if entity @s[advancements={bettervanillaadvancements:end/rocketman=false}] run function bettervanillaadvancements:inv_check_rocketman
execute if entity @s[advancements={bettervanillaadvancements:challenges/immortal=false}] run function bettervanillaadvancements:inv_check_immortal