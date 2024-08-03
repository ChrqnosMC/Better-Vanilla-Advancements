execute if entity @s[predicate=bettervanillaadvancements:zombified_piglin_passenger] run tag @e[type=zombified_piglin,sort=nearest,limit=1] add strider_jockey
execute if entity @s[predicate=bettervanillaadvancements:zombified_piglin_passenger] run tag @s add zp_ridden
execute unless entity @s[predicate=bettervanillaadvancements:zombified_piglin_passenger] run tag @s add not_zp_ridden