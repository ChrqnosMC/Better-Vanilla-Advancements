execute unless entity @s[predicate=bettervanillaadvancements:minecart_sit] run scoreboard players set @s bva_oar_eligible_x 0
execute unless entity @s[predicate=bettervanillaadvancements:minecart_sit] run scoreboard players set @s bva_oar_eligible_z 0

execute store result score @s bva_oar_current_x run data get entity @s Pos.[0]
execute store result score @s bva_oar_current_z run data get entity @s Pos.[2]

execute unless score @s bva_oar_current_x = @s bva_oar_start_x run scoreboard players set @s bva_oar_eligible_z 0
execute unless score @s bva_oar_current_z = @s bva_oar_start_z run scoreboard players set @s bva_oar_eligible_x 0

scoreboard players operation @s bva_oar_current_x -= @s bva_oar_start_x
scoreboard players operation @s bva_oar_current_z -= @s bva_oar_start_z

execute if score @s bva_oar_eligible_x matches 1 if score @s bva_oar_current_x matches 1000.. run advancement grant @s only bettervanillaadvancements:redstone/on_a_rail
execute if score @s bva_oar_eligible_x matches 1 if score @s bva_oar_current_x matches ..-1000 run advancement grant @s only bettervanillaadvancements:redstone/on_a_rail
execute if score @s bva_oar_eligible_z matches 1 if score @s bva_oar_current_z matches 1000.. run advancement grant @s only bettervanillaadvancements:redstone/on_a_rail
execute if score @s bva_oar_eligible_z matches 1 if score @s bva_oar_current_z matches ..-1000 run advancement grant @s only bettervanillaadvancements:redstone/on_a_rail