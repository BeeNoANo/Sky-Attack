# BLACK
execute as @a[team=black,tag=has_bed] run function cctk:messages/bed_destroy
tag @a[team=black,tag=has_bed] remove has_bed
scoreboard players set #black_bed bed_status 1

tellraw @a ["",{"text":"Đen","bold":true,"color":"black"},{"text":" chơi ngu nên đã bị ai đó phá giường mất rồi","color":"white"}]
