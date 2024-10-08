scoreboard objectives add bva_day_count
scoreboard objectives add bva_current_time
scoreboard objectives add bva_underwater
scoreboard objectives add bva_painting
scoreboard objectives add bva_stat_loot_chest
scoreboard objectives add bva_stat_food
scoreboard objectives add bva_castaway
scoreboard objectives add bva_just_keep
scoreboard objectives add bva_let_me_out
scoreboard objectives add bva_i_have_lost_the_exit
scoreboard objectives add bva_ten_withers
scoreboard objectives add bva_dvd
scoreboard objectives add bva_dvd2eb
scoreboard objectives add bva_dveps
scoreboard objectives add bva_withercool
scoreboard objectives add bva_unending_death
scoreboard objectives add bva_part_of_raid
scoreboard objectives add bva_health health
scoreboard objectives add bva_wiz_break
scoreboard objectives add bva_chorus_reset
scoreboard objectives add bva_hh_life
scoreboard objectives add bva_apple_eaten
scoreboard objectives add bva_apple_days
scoreboard objectives add bva_pr_tl
scoreboard objectives add bva_pr_dmgt
scoreboard objectives add bva_pr_dmga
scoreboard objectives add bva_pr_dmgr
scoreboard objectives add bva_pigling
scoreboard objectives add bva_captain_america
scoreboard objectives add bva_warden_count
scoreboard objectives add bva_oar_start_x
scoreboard objectives add bva_oar_start_z
scoreboard objectives add bva_oar_current_x
scoreboard objectives add bva_oar_current_z
scoreboard objectives add bva_oar_eligible_x
scoreboard objectives add bva_oar_eligible_z
scoreboard objectives add bva_1000th_item
scoreboard objectives add bva_inv_check
scoreboard objectives add bva_inv_chestful_of_cobblestone
scoreboard objectives add bva_factorio_count
scoreboard objectives add bva_vault_hunter_count
scoreboard objectives add bva_whack_a_mole_count
scoreboard objectives add bva_whack_a_mole_count
scoreboard objectives add bva_divers_dozen_count
scoreboard objectives add bva_overwarden_count
scoreboard objectives add bva_timer

gamerule announceAdvancements true

schedule clear bettervanillaadvancements:lucky_break_check2
schedule clear bettervanillaadvancements:one_second_timer

tellraw @a ["",{"text":"Better Vanilla Advancements datapack has been uninstall"}]