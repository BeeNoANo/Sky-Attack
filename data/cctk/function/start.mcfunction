scoreboard players set #time_real_game time_elapsed 0
scoreboard players set #loot_timer time_elapsed 0
scoreboard players set #flag time_elapsed 0
scoreboard players set #tick time_elapsed 0
scoreboard players set @a deaths 0
scoreboard players set @a respawn_timer -1
scoreboard players set #tick_real_game time_elapsed 0

function cctk:event/reset
scoreboard players set #red_bed bed_status 0
scoreboard players set #blue_bed bed_status 0
scoreboard players set #black_bed bed_status 0
scoreboard players set #green_bed bed_status 0
scoreboard players set #orange_bed bed_status 0
scoreboard players set #white_bed bed_status 0
scoreboard players set #purple_bed bed_status 0
scoreboard players set #gray_bed bed_status 0
team leave @a

tag @a add winner
tag @a add join_game
gamerule naturalRegeneration false
effect give @a saturation infinite 255 true
effect give @a minecraft:regeneration 1 255
function cctk:team/team_color_choose
tag @a[team=!] add has_bed
function cctk:team/team_color_teleport_bed

gamemode survival @a[team=!]
gamerule doImmediateRespawn true

scoreboard players set #ctrl stage_game 1

spawnpoint @a -38 100 -139
# Create border
worldborder center -38 -139
worldborder set 200
