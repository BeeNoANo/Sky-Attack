execute as @a[tag=join_game,scores={deaths=0}] run scoreboard players add #players_alive alive 1
execute if score #players_alive alive matches ..1 run function cctk:win
scoreboard players set #players_alive alive 0


