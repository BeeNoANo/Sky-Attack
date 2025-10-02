execute as @a[scores={deaths=1}] run function cctk:event/utils/death


execute as @a[scores={deaths=2}, tag=!has_bed] run function cctk:messages/game_over
execute as @a[scores={deaths=2}, tag=!has_bed] run scoreboard players remove #players_alive alive 1
execute as @a[scores={deaths=2}, tag=!has_bed] run tag @s remove winner
execute as @a[scores={deaths=2}, tag=!has_bed] run scoreboard players set @s deaths 3

execute as @a[scores={respawn_timer=1..}, tag=has_bed] run function cctk:messages/death
execute if score #flag time_elapsed matches 1 run scoreboard players remove @a[scores={respawn_timer=1..}] respawn_timer 1

execute as @a[scores={respawn_timer=0}, tag=has_bed] run function cctk:event/respawn
