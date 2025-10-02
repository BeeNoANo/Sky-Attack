# tăng tick
scoreboard players add #tick time_elapsed 1
scoreboard players add #tick_real_game time_elapsed 1
# Khi đủ 20 tick → tăng giây, bật flag, reset tick
execute if score #tick time_elapsed matches 20 run scoreboard players add #time_real_game time_elapsed 1
execute if score #tick time_elapsed matches 20 run scoreboard players set #flag time_elapsed 1
execute if score #tick time_elapsed matches 20 run scoreboard players set #tick time_elapsed 0
execute as @a at @s if entity @s[y=0,dy=30] run kill @s


function cctk:stage/stage_handler
function cctk:event/death_handler
function cctk:event/bed_status
function cctk:messages/time_messages
function cctk:event/game_handler

execute if score #flag time_elapsed matches 1 run scoreboard players set #flag time_elapsed 0


