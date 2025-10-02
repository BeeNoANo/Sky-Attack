# ================================
# Bed check system (run every tick)
# ================================

# Team red
execute if score #red_bed bed_status matches 0 unless block -45 89 -159 minecraft:red_bed run function cctk:messages/red_bed_destroy

# Team blue
execute if score #blue_bed bed_status matches 0 unless block -32 89 -159 minecraft:blue_bed run function cctk:messages/blue_bed_destroy

# Team black
execute if score #black_bed bed_status matches 0 unless block -57 89 -147 minecraft:black_bed run function cctk:messages/black_bed_destroy

# Team green
execute if score #green_bed bed_status matches 0 unless block -57 89 -134 minecraft:green_bed run function cctk:messages/green_bed_destroy

# Team orange
execute if score #orange_bed bed_status matches 0 unless block -45 89 -122 minecraft:orange_bed run function cctk:messages/orange_bed_destroy

# Team white
execute if score #white_bed bed_status matches 0 unless block -32 89 -122 minecraft:white_bed run function cctk:messages/white_bed_destroy

# Team purple
execute if score #purple_bed bed_status matches 0 unless block -20 89 -134 minecraft:purple_bed run function cctk:messages/purple_bed_destroy

# Team gray
execute if score #gray_bed bed_status matches 0 unless block -20 89 -147 minecraft:gray_bed run function cctk:messages/gray_bed_destroy
