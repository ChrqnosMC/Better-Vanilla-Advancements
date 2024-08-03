scoreboard objectives add bva_day_count dummy
scoreboard objectives add bva_current_time dummy
scoreboard objectives add bva_underwater dummy
scoreboard objectives add bva_painting minecraft.used:minecraft.painting
scoreboard objectives add bva_stat_loot_chest dummy
scoreboard objectives add bva_stat_food dummy

scoreboard objectives add bva_castaway dummy
scoreboard objectives add bva_just_keep dummy
scoreboard objectives add bva_let_me_out dummy
scoreboard objectives add bva_ten_withers dummy
scoreboard objectives add bva_dvd dummy
scoreboard objectives add bva_dvd2eb dummy
scoreboard objectives add bva_dveps dummy
scoreboard objectives add bva_withercool dummy
scoreboard objectives add bva_unending_death deathCount
scoreboard objectives add bva_part_of_raid dummy
scoreboard objectives add bva_health health
scoreboard objectives add bva_wiz_break dummy
scoreboard objectives add bva_chorus_reset dummy
scoreboard objectives add bva_hh_life dummy
scoreboard objectives add bva_apple_eaten minecraft.used:minecraft.apple
scoreboard objectives add bva_apple_days dummy
scoreboard objectives add bva_pr_tl dummy
scoreboard objectives add bva_pr_dmgt minecraft.custom:minecraft.damage_taken
scoreboard objectives add bva_pr_dmga minecraft.custom:minecraft.damage_absorbed
scoreboard objectives add bva_pr_dmgr minecraft.custom:minecraft.damage_resisted
scoreboard objectives add bva_pigling dummy
scoreboard objectives add bva_captain_america dummy
scoreboard objectives add bva_warden_count dummy
scoreboard objectives add bva_oar_start_x dummy
scoreboard objectives add bva_oar_start_z dummy
scoreboard objectives add bva_oar_current_x dummy
scoreboard objectives add bva_oar_current_z dummy
scoreboard objectives add bva_oar_eligible_x dummy
scoreboard objectives add bva_oar_eligible_z dummy
scoreboard objectives add bva_1000th_item minecraft.used:minecraft.oak_button
scoreboard objectives add bva_inv_check dummy
scoreboard objectives add bva_inv_artillery dummy
scoreboard objectives add bva_inv_chestful_of_cobblestone dummy
scoreboard objectives add bva_inv_rocketman dummy
scoreboard objectives add bva_inv_immortal dummy
scoreboard objectives add bva_factorio_count dummy
scoreboard objectives add bva_vault_hunter_count dummy
scoreboard objectives add bva_whack_a_mole_count dummy
scoreboard objectives add bva_whack_a_mole_count dummy
scoreboard objectives add bva_divers_dozen_count dummy
scoreboard objectives add bva_overwarden_count dummy

scoreboard objectives add bva_timer dummy

gamerule announceAdvancements false

function bettervanillaadvancements:one_second_timer
function bettervanillaadvancements:ten_second_timer

tellraw @a ["",{"text":"Better Vanilla Advancements datapack has been reloaded","bold":true,"color":"white"}]