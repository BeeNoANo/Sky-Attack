# BLUE
execute as @a[team=blue,tag=has_bed] run function cctk:messages/bed_destroy
tag @a[team=blue,tag=has_bed] remove has_bed
scoreboard players set #blue_bed bed_status 1

tellraw @a ["",{"text":"Xanh dương","bold":true,"color":"dark_blue"},{"text":" chơi ngu nên đã bị ai đó phá giường mất rồi","color":"white"}]
