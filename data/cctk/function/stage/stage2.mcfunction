execute if score #flag time_elapsed matches 1 if score #loot_timer time_elapsed matches 1.. run scoreboard players remove #loot_timer time_elapsed 1
execute if score #loot_timer time_elapsed matches 0 run function cctk:event/utils/give_item_3s
