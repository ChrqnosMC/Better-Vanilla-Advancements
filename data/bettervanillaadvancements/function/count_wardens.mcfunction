execute store result score @s bva_warden_count run execute if entity @e[type=warden,distance=..16]
execute store result score @s bva_overwarden_count run execute if entity @e[type=warden,distance=..100]

execute if score @s bva_warden_count matches 5.. run advancement grant @s only bettervanillaadvancements:monsters/house_of_freaks
execute if score @s bva_overwarden_count matches 50.. run advancement grant @s only bettervanillaadvancements:challenges/overwarden