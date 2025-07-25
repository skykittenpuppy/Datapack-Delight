#say RandomTicked

#TODO: LIGHT DETECTION

scoreboard players set @s datapack_delight.points 0
scoreboard players set NS datapack_delight.points 0
scoreboard players set EW datapack_delight.points 0
scoreboard players set HALF datapack_delight.points 0
scoreboard players set VAR datapack_delight.points 100

execute if block ~01 ~ ~01 farmland[moisture=7] run scoreboard players add @s datapack_delight.points 2
execute if block ~01 ~ ~01 farmland run scoreboard players add @s datapack_delight.points 1
execute if block ~01 ~ ~00 farmland[moisture=7] run scoreboard players add @s datapack_delight.points 2
execute if block ~01 ~ ~00 farmland run scoreboard players add @s datapack_delight.points 1
execute if block ~01 ~ ~-1 farmland[moisture=7] run scoreboard players add @s datapack_delight.points 2
execute if block ~01 ~ ~-1 farmland run scoreboard players add @s datapack_delight.points 1
execute if block ~00 ~ ~01 farmland[moisture=7] run scoreboard players add @s datapack_delight.points 2
execute if block ~00 ~ ~01 farmland run scoreboard players add @s datapack_delight.points 1
execute if block ~00 ~ ~00 farmland[moisture=7] run scoreboard players add @s datapack_delight.points 8
execute if block ~00 ~ ~00 farmland run scoreboard players add @s datapack_delight.points 4
execute if block ~00 ~ ~-1 farmland[moisture=7] run scoreboard players add @s datapack_delight.points 2
execute if block ~00 ~ ~-1 farmland run scoreboard players add @s datapack_delight.points 1
execute if block ~-1 ~ ~01 farmland[moisture=7] run scoreboard players add @s datapack_delight.points 2
execute if block ~-1 ~ ~01 farmland run scoreboard players add @s datapack_delight.points 1
execute if block ~-1 ~ ~00 farmland[moisture=7] run scoreboard players add @s datapack_delight.points 2
execute if block ~-1 ~ ~00 farmland run scoreboard players add @s datapack_delight.points 1
execute if block ~-1 ~ ~-1 farmland[moisture=7] run scoreboard players add @s datapack_delight.points 2
execute if block ~-1 ~ ~-1 farmland run scoreboard players add @s datapack_delight.points 1

$execute positioned ~01 ~ ~01 if entity @n[type=interaction, tag=datapack_delight_crop, distance=..0.2, nbt={data: {datapack_delight_crop: "$(datapack_delight_crop)"}}] run scoreboard players add HALF datapack_delight.points 1
$execute positioned ~01 ~ ~-1 if entity @n[type=interaction, tag=datapack_delight_crop, distance=..0.2, nbt={data: {datapack_delight_crop: "$(datapack_delight_crop)"}}] run scoreboard players add HALF datapack_delight.points 1
$execute positioned ~-1 ~ ~01 if entity @n[type=interaction, tag=datapack_delight_crop, distance=..0.2, nbt={data: {datapack_delight_crop: "$(datapack_delight_crop)"}}] run scoreboard players add HALF datapack_delight.points 1
$execute positioned ~-1 ~ ~-1 if entity @n[type=interaction, tag=datapack_delight_crop, distance=..0.2, nbt={data: {datapack_delight_crop: "$(datapack_delight_crop)"}}] run scoreboard players add HALF datapack_delight.points 1

$execute positioned ~01 ~ ~00 if entity @n[type=interaction, tag=datapack_delight_crop, distance=..0.2, nbt={data: {datapack_delight_crop: "$(datapack_delight_crop)"}}] \
		positioned ~-1 ~ ~00 if entity @n[type=interaction, tag=datapack_delight_crop, distance=..0.2, nbt={data: {datapack_delight_crop: "$(datapack_delight_crop)"}}] run scoreboard players set EW datapack_delight.points 1
$execute positioned ~00 ~ ~01 if entity @n[type=interaction, tag=datapack_delight_crop, distance=..0.2, nbt={data: {datapack_delight_crop: "$(datapack_delight_crop)"}}] \
		positioned ~00 ~ ~-1 if entity @n[type=interaction, tag=datapack_delight_crop, distance=..0.2, nbt={data: {datapack_delight_crop: "$(datapack_delight_crop)"}}] run scoreboard players set NS datapack_delight.points 1

$execute if score NS datapack_delight.points matches 1.. \
		positioned ~01 ~ ~00 if entity @n[type=interaction, tag=datapack_delight_crop, distance=..0.2, nbt={data: {datapack_delight_crop: "$(datapack_delight_crop)"}}] \
		positioned ~-1 ~ ~00 if entity @n[type=interaction, tag=datapack_delight_crop, distance=..0.2, nbt={data: {datapack_delight_crop: "$(datapack_delight_crop)"}}] run scoreboard players add HALF datapack_delight.points 1
$execute if score EW datapack_delight.points matches 1.. \
		positioned ~00 ~ ~01 if entity @n[type=interaction, tag=datapack_delight_crop, distance=..0.2, nbt={data: {datapack_delight_crop: "$(datapack_delight_crop)"}}] \
		positioned ~00 ~ ~-1 if entity @n[type=interaction, tag=datapack_delight_crop, distance=..0.2, nbt={data: {datapack_delight_crop: "$(datapack_delight_crop)"}}] run scoreboard players add HALF datapack_delight.points 1

execute if score HALF datapack_delight.points matches 1.. run scoreboard players operation @s datapack_delight.points /= CONST2 datapack_delight.points

scoreboard players operation VAR datapack_delight.points /= @s datapack_delight.points
scoreboard players operation VAR datapack_delight.points += CONST1 datapack_delight.points
scoreboard players set @s datapack_delight.points 10000
scoreboard players operation @s datapack_delight.points /= VAR datapack_delight.points

execute store result score VAR datapack_delight.points run random value 1..10000
execute if score @s datapack_delight.points >= VAR datapack_delight.points run scoreboard players add @s datapack_delight.growth 1
#execute if score @s datapack_delight.points >= VAR datapack_delight.points run say Grew