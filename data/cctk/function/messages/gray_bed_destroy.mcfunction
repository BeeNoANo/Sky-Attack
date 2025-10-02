# GRAY
execute as @a[team=gray,tag=has_bed] run function cctk:messages/bed_destroy
tag @a[team=gray,tag=has_bed] remove has_bed
scoreboard players set #gray_bed bed_status 1

tellraw @a ["",{"text":"Xám","bold":true,"color":"dark_gray"},{"text":" chơi ngu nên đã bị ai đó phá giường mất rồi","color":"white"}]
