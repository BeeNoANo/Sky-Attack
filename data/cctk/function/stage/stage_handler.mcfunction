# 0–15 phút: chạy function A
execute if score #tick_real_game time_elapsed matches 4 run function cctk:messages/stage1_welcome
execute if score #time_real_game time_elapsed matches 0..899 run function cctk:stage/stage1

# 15–20 phút: chạy function B
execute if score #tick_real_game time_elapsed matches 18000 run function cctk:messages/stage2_welcome
execute if score #tick_real_game time_elapsed matches 18000 run experience set @a 30 levels
execute if score #time_real_game time_elapsed matches 900.. run function cctk:stage/stage2

# 20–25 phút: chạy function C
execute if score #tick_real_game time_elapsed matches 30060 run function cctk:messages/stage3_welcome
execute if score #time_real_game time_elapsed matches 1499 run function cctk:stage/stage3

# 25–30 phút: chạy function D
execute if score #tick_real_game time_elapsed matches 35980 run function cctk:messages/stage4_welcome
execute if score #time_real_game time_elapsed matches 1799 run function cctk:stage/stage4
