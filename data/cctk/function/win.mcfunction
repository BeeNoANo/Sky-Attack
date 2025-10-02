function cctk:event/reset
tp @a 991 12 -130

# Chuyển gamemode adventure cho tất cả
gamemode adventure @a

# Thông báo chúc mừng người thắng
title @a times 5 40 10
title @a title {"text":"Chúc mừng người thắng cuộc","color":"yellow","bold":true}
title @a subtitle {"selector":"@a[tag=winner]","color":"gold","bold":true}

# Hiệu ứng pháo hoa quanh người thắng
execute as @a[tag=winner] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:15,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:1,explosions:[{shape:"large_ball",has_twinkle:0,has_trail:0,colors:[I;11743532],fade_colors:[I;11743532,14602026]}]}}}}

spawnpoint @a 991 12 -130
scoreboard players set #ctrl stage_game 0


