# Reset map
worldborder set 10000000
clear @a
scoreboard players set #players_alive alive 0
experience set @a 0
fill -89 40 -190 -65 64 -166 minecraft:air
fill -89 65 -190 -65 89 -166 minecraft:air
fill -89 90 -190 -65 114 -166 minecraft:air
fill -89 115 -190 -65 140 -166 minecraft:air
fill -89 40 -165 -65 64 -141 minecraft:air
fill -89 65 -165 -65 89 -141 minecraft:air
fill -89 90 -165 -65 114 -141 minecraft:air
fill -89 115 -165 -65 140 -141 minecraft:air
fill -89 40 -140 -65 64 -116 minecraft:air
fill -89 65 -140 -65 89 -116 minecraft:air
fill -89 90 -140 -65 114 -116 minecraft:air
fill -89 115 -140 -65 140 -116 minecraft:air
fill -89 40 -115 -65 64 -90 minecraft:air
fill -89 65 -115 -65 89 -90 minecraft:air
fill -89 90 -115 -65 114 -90 minecraft:air
fill -89 115 -115 -65 140 -90 minecraft:air
fill -64 40 -190 -40 64 -166 minecraft:air
fill -64 65 -190 -40 89 -166 minecraft:air
fill -64 90 -190 -40 114 -166 minecraft:air
fill -64 115 -190 -40 140 -166 minecraft:air
fill -64 40 -165 -40 64 -141 minecraft:air
fill -64 65 -165 -40 89 -141 minecraft:air
fill -64 90 -165 -40 114 -141 minecraft:air
fill -64 115 -165 -40 140 -141 minecraft:air
fill -64 40 -140 -40 64 -116 minecraft:air
fill -64 65 -140 -40 89 -116 minecraft:air
fill -64 90 -140 -40 114 -116 minecraft:air
fill -64 115 -140 -40 140 -116 minecraft:air
fill -64 40 -115 -40 64 -90 minecraft:air
fill -64 65 -115 -40 89 -90 minecraft:air
fill -64 90 -115 -40 114 -90 minecraft:air
fill -64 115 -115 -40 140 -90 minecraft:air
fill -39 40 -190 -15 64 -166 minecraft:air
fill -39 65 -190 -15 89 -166 minecraft:air
fill -39 90 -190 -15 114 -166 minecraft:air
fill -39 115 -190 -15 140 -166 minecraft:air
fill -39 40 -165 -15 64 -141 minecraft:air
fill -39 65 -165 -15 89 -141 minecraft:air
fill -39 90 -165 -15 114 -141 minecraft:air
fill -39 115 -165 -15 140 -141 minecraft:air
fill -39 40 -140 -15 64 -116 minecraft:air
fill -39 65 -140 -15 89 -116 minecraft:air
fill -39 90 -140 -15 114 -116 minecraft:air
fill -39 115 -140 -15 140 -116 minecraft:air
fill -39 40 -115 -15 64 -90 minecraft:air
fill -39 65 -115 -15 89 -90 minecraft:air
fill -39 90 -115 -15 114 -90 minecraft:air
fill -39 115 -115 -15 140 -90 minecraft:air
fill -14 40 -190 11 64 -166 minecraft:air
fill -14 65 -190 11 89 -166 minecraft:air
fill -14 90 -190 11 114 -166 minecraft:air
fill -14 115 -190 11 140 -166 minecraft:air
fill -14 40 -165 11 64 -141 minecraft:air
fill -14 65 -165 11 89 -141 minecraft:air
fill -14 90 -165 11 114 -141 minecraft:air
fill -14 115 -165 11 140 -141 minecraft:air
fill -14 40 -140 11 64 -116 minecraft:air
fill -14 65 -140 11 89 -116 minecraft:air
fill -14 90 -140 11 114 -116 minecraft:air
fill -14 115 -140 11 140 -116 minecraft:air
fill -14 40 -115 11 64 -90 minecraft:air
fill -14 65 -115 11 89 -90 minecraft:air
fill -14 90 -115 11 114 -90 minecraft:air
fill -14 115 -115 11 140 -90 minecraft:air


setblock -45 89 -159 red_bed[facing=south,part=head]
setblock -45 89 -160 red_bed[facing=south,part=foot]
fill -45 88 -159 -45 88 -160 red_wool

setblock -32 89 -159 blue_bed[facing=south,part=head]
setblock -32 89 -160 blue_bed[facing=south,part=foot]
fill -32 88 -159 -32 88 -160 blue_wool

setblock -57 89 -147 black_bed[facing=east,part=head]
setblock -58 89 -147 black_bed[facing=east,part=foot]
fill -57 88 -147 -58 88 -147 black_wool

setblock -57 89 -134 green_bed[facing=east,part=head]
setblock -58 89 -134 green_bed[facing=east,part=foot]
fill -57 88 -134 -58 88 -134 green_wool

setblock -45 89 -122 orange_bed[facing=north,part=head]
setblock -45 89 -121 orange_bed[facing=north,part=foot]
fill -45 88 -122 -45 88 -121 orange_wool

setblock -32 89 -122 white_bed[facing=north,part=head]
setblock -32 89 -121 white_bed[facing=north,part=foot]
fill -32 88 -122 -32 88 -121 white_wool

setblock -20 89 -134 purple_bed[facing=west,part=head]
setblock -19 89 -134 purple_bed[facing=west,part=foot]
fill -20 88 -134 -19 88 -134 purple_wool

setblock -20 89 -147 gray_bed[facing=west,part=head]
setblock -19 89 -147 gray_bed[facing=west,part=foot]
fill -20 88 -147 -19 88 -147 gray_wool

kill @e[type=item]
