# Destroy/Harvest
execute if block ~ ~ ~ farmland[moisture=0] run setblock ~ ~ ~ farmland[moisture=1]
$execute unless block ~ ~ ~ farmland run function datapack_delight:crops/destroy with storage datapack_delight:const Crops.$(datapack_delight_crop)
$execute on passengers if data entity @s attack on vehicle run function datapack_delight:crops/destroy with storage datapack_delight:const Crops.$(datapack_delight_crop)
$execute on passengers if data entity @s interaction on vehicle if score @s datapack_delight.growth matches 7.. run function datapack_delight:crops/harvest with storage datapack_delight:const Crops.$(datapack_delight_crop)
execute on passengers if data entity @s interaction run data remove entity @s interaction

# Grow


# Update Size/Visuals
execute if score @s datapack_delight.growth matches 7.. on passengers run data modify entity @s[type=interaction] response set value true
execute unless score @s datapack_delight.growth matches 7.. on passengers run data modify entity @s[type=interaction] response set value false
$execute on passengers run data modify entity @s[type=item_display] item.components."minecraft:custom_model_data".floats[0] set value $(datapack_delight_growth)
$execute on passengers run data modify entity @s[type=interaction] height set from storage datapack_delight:const Crops.$(datapack_delight_crop).heights[$(datapack_delight_growth)]
