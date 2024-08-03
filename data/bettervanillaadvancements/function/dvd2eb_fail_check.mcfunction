execute unless entity @s[nbt={OnGround:0b},predicate=bettervanillaadvancements:wear_dragon_head] run function bettervanillaadvancements:dvd2eb_fail
execute if entity @s[advancements={bettervanillaadvancements:technical/fail_dragon_vs=true}] run function bettervanillaadvancements:dvd2eb_fail
execute at @s if block ~ ~ ~ #minecraft:climbable run function bettervanillaadvancements:dvd2eb_fail
execute at @s if block ~ ~-0.25 ~ #minecraft:climbable run function bettervanillaadvancements:dvd2eb_fail