# ORANGE
execute as @a[team=orange,tag=has_bed] run function cctk:messages/bed_destroy
tag @a[team=orange,tag=has_bed] remove has_bed
scoreboard players set #orange_bed bed_status 1

tellraw @a ["",{"text":"Cam","bold":true,"color":"gold"},{"text":" chơi ngu nên đã bị ai đó phá giường mất rồi","color":"white"}]
