# GREEN
execute as @a[team=green,tag=has_bed] run function cctk:messages/bed_destroy
tag @a[team=green,tag=has_bed] remove has_bed
scoreboard players set #green_bed bed_status 1

tellraw @a ["",{"text":"Xanh lá","bold":true,"color":"dark_green"},{"text":" chơi ngu nên đã bị ai đó phá giường mất rồi","color":"white"}]
