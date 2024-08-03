execute if entity @s[predicate=bettervanillaadvancements:in_the_overworld] run advancement revoke @s only bettervanillaadvancements:technical/unending_hell_end
execute if score @s bva_unending_death matches 1.. run advancement revoke @s only bettervanillaadvancements:technical/unending_hell_end
scoreboard players set @s bva_unending_death 0