scoreboard objectives add time_elapsed dummy
scoreboard objectives add stage_game dummy
scoreboard objectives add respawn_timer dummy
scoreboard objectives add deaths minecraft.custom:minecraft.deaths
scoreboard objectives add tickTimer dummy
scoreboard objectives add bed_status dummy
scoreboard objectives add alive dummy
scoreboard objectives add cctk dummy

# XÓA TEAM CŨ (nếu tồn tại)
team remove red
team remove blue
team remove black
team remove green
team remove orange
team remove white
team remove purple
team remove gray

team add green "Xanh lá"
team modify green color green

team add orange "Cam"
team modify orange color gold

team add gray "Xám"
team modify gray color gray

team add purple "Hồng"
team modify purple color light_purple

team add red "Đỏ"
team modify red color red

team add blue "Xanh dương"
team modify blue color blue

team add black "Đen"
team modify black color black

team add white "Trắng"
team modify white color white
