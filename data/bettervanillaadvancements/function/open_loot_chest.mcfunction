scoreboard players add @s bva_stat_loot_chest 1
advancement revoke @s only bettervanillaadvancements:technical/open_loot_chest

execute if score @s bva_stat_loot_chest matches 10.. run advancement grant @s only bettervanillaadvancements:statistics/loot_em
execute if score @s bva_stat_loot_chest matches 100.. run advancement grant @s only bettervanillaadvancements:statistics/more_for_me
execute if score @s bva_stat_loot_chest matches 500.. run advancement grant @s only bettervanillaadvancements:statistics/i_heart_chests