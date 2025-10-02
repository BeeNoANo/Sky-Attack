# WHITE
execute as @a[team=white,tag=has_bed] run function cctk:messages/bed_destroy
tag @a[team=white,tag=has_bed] remove has_bed
scoreboard players set #white_bed bed_status 1

tellraw @a ["",{"text":"Trắng","bold":true,"color":"white"},{"text":" chơi ngu nên đã bị ai đó phá giường mất rồi","color":"white"}]
