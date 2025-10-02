scoreboard players set #loot_timer time_elapsed 5
execute store result score $rand cctk run random value 1..10

execute if score $rand cctk matches 1 run execute as @a[scores={deaths=0}] run loot give @s loot cctk:item/enchant_book
execute if score $rand cctk matches 2 run execute as @a[scores={deaths=0}] run loot give @s loot cctk:item/potions
execute if score $rand cctk matches 3 run execute as @a[scores={deaths=0}] run loot give @s loot cctk:item/splash_potions
execute if score $rand cctk matches 4..10 run execute as @a[scores={deaths=0}] run loot give @s loot cctk:item/random_items
