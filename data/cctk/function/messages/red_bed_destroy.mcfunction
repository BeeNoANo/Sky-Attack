# RED
execute as @a[team=red,tag=has_bed] run function cctk:messages/bed_destroy
tag @a[team=red,tag=has_bed] remove has_bed
scoreboard players set #red_bed bed_status 1

tellraw @a ["",{"text":"Đỏ","bold":true,"color":"dark_red"},{"text":" chơi ngu nên đã bị ai đó phá giường mất rồi","color":"white"}]
