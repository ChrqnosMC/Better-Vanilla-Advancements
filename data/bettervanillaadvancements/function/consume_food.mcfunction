scoreboard players add @s[advancements={bettervanillaadvancements:technical/consume_food_null=false}] bva_stat_food 1
advancement revoke @s only bettervanillaadvancements:technical/consume_food
advancement revoke @s only bettervanillaadvancements:technical/consume_food_null

execute if score @s bva_stat_food matches 200.. run advancement grant @s only bettervanillaadvancements:statistics/om_nom_nom
execute if score @s bva_stat_food matches 1000.. run advancement grant @s only bettervanillaadvancements:statistics/yum_yum_yummo
execute if score @s bva_stat_food matches 5000.. run advancement grant @s only bettervanillaadvancements:statistics/food_glorious_food