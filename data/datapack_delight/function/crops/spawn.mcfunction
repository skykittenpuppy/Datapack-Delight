$summon interaction ~ 400.0 ~ {height: 0.125d, width: 1.001d, Tags: [datapack_delight_crop], data:{datapack_delight_crop: "$(id)"}}
execute positioned ~ 400.0 ~ run scoreboard players add @n[type=interaction, tag=datapack_delight_crop] datapack_delight.growth 0
summon interaction ~ 400.0 ~ {height: 0.000d, width: 1.000d}
execute positioned ~ 400.0 ~ run ride @n[type=interaction, tag=!datapack_delight_crop] mount @n[type=interaction, tag=datapack_delight_crop]
$summon item_display ~ 400.0 ~ {item: {id: "poisonous_potato", components: {item_model: "$(model)", custom_model_data: {floats: [0]}}}, transformation: [\
	1.0, 0.0, 0.0, 0.0,\
	0.0, 1.0, 0.0, 0.5,\
	0.0, 0.0, 1.0, 0.0,\
	0.0, 0.0, 0.0, 1.0\
]}
execute positioned ~ 400.0 ~ run ride @n[type=item_display] mount @n[type=interaction, tag=datapack_delight_crop]

execute positioned ~ 400.0 ~ run tp @n[type=interaction, tag=datapack_delight_crop] ~ 63.875 ~
