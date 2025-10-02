# PURPLE
execute as @a[team=purple,tag=has_bed] run function cctk:messages/bed_destroy
tag @a[team=purple,tag=has_bed] remove has_bed
scoreboard players set #purple_bed bed_status 1

tellraw @a ["",{"text":"Tím","bold":true,"color":"dark_purple"},{"text":" chơi ngu nên đã bị ai đó phá giường mất rồi","color":"white"}]
