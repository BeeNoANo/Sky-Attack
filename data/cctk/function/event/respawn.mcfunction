# Player còn giường → hồi sinh và teleport về giường tương ứng
scoreboard players set @s respawn_timer -1

execute as @s[tag=has_bed,scores={deaths=2}] run gamemode survival @s

execute as @s[tag=has_bed,team=red,scores={deaths=2}] run spreadplayers -45 -159 0 1 false @s

execute as @s[tag=has_bed,team=blue,scores={deaths=2}] run spreadplayers -32 -159 0 1 false @s

execute as @s[tag=has_bed,team=black,scores={deaths=2}] run spreadplayers -57 -147 0 1 false @s

execute as @s[tag=has_bed,team=green,scores={deaths=2}] run spreadplayers -57 -134 0 1 false @s

execute as @s[tag=has_bed,team=orange,scores={deaths=2}] run spreadplayers -45 -122 0 1 false @s

execute as @s[tag=has_bed,team=white,scores={deaths=2}] run spreadplayers -32 -122 0 1 false @s

execute as @s[tag=has_bed,team=purple,scores={deaths=2}] run spreadplayers -20 -134 0 1 false @s

execute as @s[tag=has_bed,team=gray,scores={deaths=2}] run spreadplayers -20 -147 0 1 false @s


scoreboard players set @s deaths 0
