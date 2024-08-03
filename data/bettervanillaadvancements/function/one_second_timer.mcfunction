execute as @a at @s unless entity @s[predicate=bettervanillaadvancements:llama_sit] if entity @s[advancements={bettervanillaadvancements:animal/llama_festival=false}] run advancement revoke @s only bettervanillaadvancements:animal/llama_festival

execute as @a[gamemode=!spectator] at @s run function bettervanillaadvancements:stay_underwater

execute as @a[gamemode=!spectator] at @s run function bettervanillaadvancements:captain_america

execute as @a at @s if score @s bva_oar_eligible_x matches 1 run function bettervanillaadvancements:on_a_rail_check
execute as @a at @s unless score @s bva_oar_eligible_x matches 1 if score @s bva_oar_eligible_z matches 1 run function bettervanillaadvancements:on_a_rail_check

execute as @e[type=#minecraft:raiders] store result score @s bva_part_of_raid run data get entity @s Wave
tag @e[type=#minecraft:raiders,scores={bva_part_of_raid=1..}] add part_of_raid

advancement grant @a[nbt={foodLevel:20,foodSaturationLevel:20.0f}] only bettervanillaadvancements:farming/full_stomach

execute as @a[gamemode=!spectator,advancements={bettervanillaadvancements:technical/castaway_start=true}] run scoreboard players add @s bva_castaway 1
advancement grant @a[scores={bva_castaway=3600..}] only bettervanillaadvancements:farming/castaway
execute as @a[advancements={bettervanillaadvancements:technical/castaway_fail=true}] run function bettervanillaadvancements:castaway_fail

scoreboard players add @a[scores={bva_just_keep=1..}] bva_just_keep 1
execute as @a[gamemode=!spectator,advancements={bettervanillaadvancements:technical/just_keeps_going_start=true}] run function bettervanillaadvancements:just_keeps_going
advancement grant @a[scores={bva_just_keep=3600..}] only bettervanillaadvancements:animal/just_keeps_going
execute as @a[advancements={bettervanillaadvancements:technical/just_keeps_going_fail=true}] run function bettervanillaadvancements:just_keeps_going_fail

scoreboard players remove @a[scores={bva_wiz_break=1..,bva_chorus_reset=1..}] bva_chorus_reset 1
execute as @a[advancements={bettervanillaadvancements:technical/a_wizards_breakfast=true}] run function bettervanillaadvancements:a_wizards_breakfast
advancement grant @a[scores={bva_wiz_break=64..}] only bettervanillaadvancements:end/a_wizards_breakfast
execute as @a[advancements={bettervanillaadvancements:technical/a_wizards_breakfast_fail=true}] run function bettervanillaadvancements:a_wizards_breakfast_fail
execute as @a[scores={bva_chorus_reset=0}] run function bettervanillaadvancements:a_wizards_breakfast_fail

scoreboard players add @a[gamemode=!spectator,predicate=bettervanillaadvancements:in_the_nether] bva_let_me_out 1
advancement grant @a[scores={bva_let_me_out=24000..}] only bettervanillaadvancements:nether/let_me_out
execute as @a unless entity @s[predicate=bettervanillaadvancements:in_the_nether] run scoreboard players set @s bva_let_me_out 0

execute as @a[gamemode=!spectator] if score @s bva_health matches 1 run function bettervanillaadvancements:half_heart_life
execute as @a unless score @s bva_health matches 1 run scoreboard players set @s bva_hh_life 0

execute as @a[scores={bva_painting=1..}] at @s run function bettervanillaadvancements:check_paintings

execute as @a[advancements={bettervanillaadvancements:technical/give_piglin_gold=true}] at @s run function bettervanillaadvancements:give_piglin_gold

execute as @a[gamemode=!spectator] at @s if entity @e[type=husk,tag=!bva_baby,distance=..5] if entity @e[type=zombie_villager,tag=!bva_baby,distance=..5] if entity @e[type=drowned,tag=!bva_baby,distance=..5] if entity @e[type=zombified_piglin,tag=!bva_baby,distance=..5] if entity @e[type=zombie,tag=!bva_baby,distance=..5] if entity @e[type=husk,tag=bva_baby,distance=..5] if entity @e[type=zombie_villager,tag=bva_baby,distance=..5] if entity @e[type=drowned,tag=bva_baby,distance=..5] if entity @e[type=zombified_piglin,tag=bva_baby,distance=..5] if entity @e[type=zombie,tag=bva_baby,distance=..5] run advancement grant @s only bettervanillaadvancements:monsters/family_reunion

execute as @a[gamemode=!spectator] at @s if entity @e[type=skeleton_horse,distance=..5] if entity @e[type=wither,distance=..5] if entity @e[type=stray,distance=..5] if entity @e[type=wither_skeleton,distance=..5] if entity @e[type=skeleton,distance=..5] if entity @e[type=bogged,distance=..5] run advancement grant @s only bettervanillaadvancements:monsters/bone_to_party

execute as @e[type=pillager,predicate=bettervanillaadvancements:no_crossbow] at @s run advancement grant @a[gamemode=!spectator,distance=..5] only bettervanillaadvancements:adventure/redemption_arc

execute as @e[type=warden,predicate=bettervanillaadvancements:at_world_height] at @s run advancement grant @a[gamemode=!spectator,distance=..10] only bettervanillaadvancements:monsters/not_afraid_of_heights

execute as @a[gamemode=!spectator] at @s if entity @e[type=warden,distance=..16] run function bettervanillaadvancements:count_wardens

execute as @a[gamemode=!spectator] at @s if entity @e[type=mule,distance=..32] run function bettervanillaadvancements:animal_kingdom_check

execute as @a[advancements={bettervanillaadvancements:technical/unending_hell_end=true}] at @s run function bettervanillaadvancements:unending_hell_check

execute as @a[advancements={bettervanillaadvancements:technical/respawn_dragon=true}] run scoreboard players set @s bva_dvd 1
execute as @a[scores={bva_dvd=1}] unless entity @s[predicate=bettervanillaadvancements:wear_dragon_head] run scoreboard players set @s bva_dvd 0
execute as @a[advancements={bettervanillaadvancements:technical/kill_dragon=true},scores={bva_dvd=1}] run advancement grant @s only bettervanillaadvancements:end/dragon_vs_dragon

execute as @a[advancements={bettervanillaadvancements:technical/respawn_dragon=true}] run function bettervanillaadvancements:dvd2eb_start
execute as @a[scores={bva_dvd2eb=1}] run function bettervanillaadvancements:dvd2eb_fail_check
execute as @a[advancements={bettervanillaadvancements:technical/kill_dragon=true},scores={bva_dvd2eb=1}] run advancement grant @s only bettervanillaadvancements:challenges/dragon_vs_dragon_ii_electric_boogaloo
execute as @a[advancements={bettervanillaadvancements:technical/kill_dragon=true}] run advancement revoke @s only bettervanillaadvancements:technical/kill_dragon

execute as @a[advancements={bettervanillaadvancements:technical/respawn_wither=true}] run function bettervanillaadvancements:dveps_start
scoreboard players remove @a[scores={bva_withercool=1..}] bva_withercool 1
execute as @a[scores={bva_dveps=1}] unless score @s bva_withercool matches 1.. run function bettervanillaadvancements:dveps_fail_check
scoreboard players set @s bva_dveps 0

execute as @a[advancements={bettervanillaadvancements:technical/kill_wither=true},scores={bva_dveps=1}] run advancement grant @s only bettervanillaadvancements:challenges/dragon_vs_wither_the_pre_sequel
execute as @a[advancements={bettervanillaadvancements:technical/kill_wither=true}] run advancement revoke @s only bettervanillaadvancements:technical/kill_wither

execute as @a[advancements={bettervanillaadvancements:technical/spawn_perfect_one=true}] unless score @s bva_pr_tl matches 1.. run function bettervanillaadvancements:perfect_run_start
execute as @a[advancements={bettervanillaadvancements:technical/spawn_perfect_one=false}] run advancement revoke @s only bettervanillaadvancements:technical/spawn_perfect_all
execute as @a[scores={bva_pr_tl=1..}] unless entity @s[advancements={bettervanillaadvancements:technical/spawn_perfect_all=true}] run scoreboard players remove @s bva_pr_tl 1
execute as @a[advancements={bettervanillaadvancements:technical/spawn_perfect_one=true},scores={bva_pr_tl=0}] run function bettervanillaadvancements:perfect_run_fail
execute as @a[advancements={bettervanillaadvancements:technical/spawn_perfect_one=true},scores={bva_pr_dmgt=1..}] run function bettervanillaadvancements:perfect_run_fail
execute as @a[advancements={bettervanillaadvancements:technical/spawn_perfect_one=true},scores={bva_pr_dmga=1..}] run function bettervanillaadvancements:perfect_run_fail
execute as @a[advancements={bettervanillaadvancements:technical/spawn_perfect_one=true},scores={bva_pr_dmgr=1..}] run function bettervanillaadvancements:perfect_run_fail
execute as @a if entity @s[advancements={bettervanillaadvancements:technical/riddle_ninth_line=false}] run scoreboard players set @s bva_1000th_item 0
execute as @a if entity @s[advancements={bettervanillaadvancements:technical/riddle_ninth_line=true}] if score @s bva_1000th_item matches 1000.. run advancement grant @s only bettervanillaadvancements:technical/riddle_tenth_line

execute as @a[advancements={bettervanillaadvancements:mining/chestful_of_cobblestone=false}] at @s run function bettervanillaadvancements:inv_check_chestful_of_cobblestone

execute as @e[type=rabbit,name=Toast] at @s run advancement grant @a[distance=..5] only bettervanillaadvancements:adventure/i_just_want_to_make_toast
execute as @e[name=Dinnerbone] at @s run advancement grant @a[distance=..5] only bettervanillaadvancements:adventure/whats_up_doc
execute as @e[name=Grumm] at @s run advancement grant @a[distance=..5] only bettervanillaadvancements:adventure/whats_up_doc
execute as @e[type=sheep,name=jeb_] at @s run advancement grant @a[distance=..5] only bettervanillaadvancements:adventure/nyan_sheep
execute as @e[type=piglin_brute,name=Technoblade] at @s run advancement grant @a[distance=..5] only bettervanillaadvancements:adventure/nerds_never_die
execute as @e[type=warden,name=Placeholder] at @s run advancement grant @a[distance=..5] only bettervanillaadvancements:adventure/placeholder

execute as @a if items entity @s weapon.* diamond_sword[custom_name='"Diamond Edge"'] run advancement grant @s only bettervanillaadvancements:enchanting/this_name_sounds_cooler
execute as @a if items entity @s weapon.* bow[custom_name='"Terminator"'] run advancement grant @s only bettervanillaadvancements:enchanting/ill_be_back
execute as @a if items entity @s weapon.* trident[custom_name='"Mjolnir"',enchantments={levels:{"minecraft:loyalty":3,"minecraft:channeling":1}}] run advancement grant @s only bettervanillaadvancements:enchanting/god_of_thunder
execute as @a if items entity @s weapon.* #minecraft:shulker_boxes[custom_name='"Blocks"'] run advancement grant @s only bettervanillaadvancements:end/organizational_wizard
execute as @a if items entity @s weapon.* bundle[bundle_contents=[{id:"minecraft:bundle",components:{"minecraft:bundle_contents":[{id:"minecraft:bundle",components:{"minecraft:bundle_contents":[{id:"minecraft:bundle",components:{"minecraft:bundle_contents":[{id:"minecraft:bundle",components:{"minecraft:bundle_contents":[{id:"minecraft:bundle",components:{"minecraft:bundle_contents":[{id:"minecraft:bundle",components:{"minecraft:bundle_contents":[{id:"minecraft:bundle",components:{"minecraft:bundle_contents":[{id:"minecraft:bundle",components:{"minecraft:bundle_contents":[{id:"minecraft:bundle",components:{"minecraft:bundle_contents":[{id:"minecraft:bundle",components:{"minecraft:bundle_contents":[{id:"minecraft:bundle",components:{"minecraft:bundle_contents":[{id:"minecraft:bundle",components:{"minecraft:bundle_contents":[{id:"minecraft:bundle",components:{"minecraft:bundle_contents":[{id:"minecraft:bundle",components:{"minecraft:bundle_contents":[{id:"minecraft:bundle",components:{"minecraft:bundle_contents":[{id:"minecraft:bundle"}]}}]}}]}}]}}]}}]}}]}}]}}]}}]}}]}}]}}]}}]}}]}}]] run advancement grant @s only bettervanillaadvancements:animal/fractal

scoreboard players add ten_second bva_timer 1
execute if score ten_second bva_timer matches 10.. run function bettervanillaadvancements:ten_second_timer

schedule function bettervanillaadvancements:one_second_timer 1s