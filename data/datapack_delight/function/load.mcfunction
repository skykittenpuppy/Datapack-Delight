scoreboard objectives remove datapack_delight.points
scoreboard objectives add datapack_delight.points dummy "Points"
scoreboard players set CONST1 datapack_delight.points 1
scoreboard players set CONST2 datapack_delight.points 2
scoreboard players set VAR datapack_delight.points 100
scoreboard objectives add datapack_delight.growth dummy "Growth"
data modify storage datapack_delight:const Crops set value {\
	wheat: {\
		id: "wheat",\
		model: "datapack_delight:crop_blocks/wheat",\
		loot_destroy: "datapack_delight:crops/wheat_destroy",\
		loot_harvest: "datapack_delight:crops/wheat_harvest",\
		heights: [0.1250f, 0.2500f, 0.3750f, 0.5000f, 0.6250f, 0.7500f, 0.8750f, 1.0000f],\
	},\
	beetroot: {\
		id: "beetroot",\
		model: "datapack_delight:crop_blocks/beetroot",\
		loot_destroy: "datapack_delight:crops/beetroot_destroy",\
		loot_harvest: "datapack_delight:crops/beetroot_harvest",\
		heights: [0.1250f, 0.1250f, 0.2500f, 0.2500f, 0.3750f, 0.3750f, 0.3750f, 0.5000f],\
	},\
	carrot: {\
		id: "carrot",\
		model: "datapack_delight:crop_blocks/carrot",\
		loot_destroy: "datapack_delight:crops/carrot_destroy",\
		loot_harvest: "datapack_delight:crops/carrot_harvest",\
		heights: [0.1250f, 0.1875f, 0.2500f, 0.3125f, 0.3750f, 0.4375f, 0.5000f, 0.5625f],\
	},\
	potato: {\
		id: "potato",\
		model: "datapack_delight:crop_blocks/potato",\
		loot_destroy: "datapack_delight:crops/potato_destroy",\
		loot_harvest: "datapack_delight:crops/potato_harvest",\
		heights: [0.1250f, 0.1875f, 0.2500f, 0.3125f, 0.3750f, 0.4375f, 0.5000f, 0.5625f],\
	},\
	cabbage: {\
		id: "cabbage",\
		model: "datapack_delight:crop_blocks/cabbage",\
		loot_destroy: "datapack_delight:crops/cabbage_destroy",\
		loot_harvest: "datapack_delight:crops/cabbage_harvest",\
		heights: [0.1250f, 0.1875f, 0.2500f, 0.3125f, 0.3750f, 0.4375f, 0.5000f, 0.5625f],\
	},\
	onion: {\
		id: "onion",\
		model: "datapack_delight:crop_blocks/onion",\
		loot_destroy: "datapack_delight:crops/onion_destroy",\
		loot_harvest: "datapack_delight:crops/onion_harvest",\
		heights: [0.1250f, 0.1875f, 0.2500f, 0.3125f, 0.3750f, 0.4375f, 0.5000f, 0.5625f],\
	},\
	rice: {\
		id: "rice",\
		model: "datapack_delight:crop_blocks/rice",\
		loot_destroy: "datapack_delight:crops/rice_destroy",\
		loot_harvest: "datapack_delight:crops/rice_harvest",\
		heights: [0.2500f, 0.5000f, 0.7500f, 1.0000f, 1.2500f, 1.5000f, 1.7500f, 2.0000f],\
	},\
	tomato: {\
		id: "tomato",\
		model: "datapack_delight:crop_blocks/tomato",\
		loot_destroy: "datapack_delight:crops/tomato_destroy",\
		loot_harvest: "datapack_delight:crops/tomato_harvest",\
		heights: [1.0000f, 1.0000f, 1.0000f, 1.0000f, 1.0000f, 1.0000f, 1.0000f, 1.0000f],\
	},\
\
	dog: {\
		id: "dog",\
		model: "datapack_delight:crop_blocks/dog",\
		loot_destroy: "datapack_delight:crops/dog_destroy",\
		loot_harvest: "datapack_delight:crops/dog_harvest",\
		heights: [0.1250f, 0.1875f, 0.2500f, 0.3125f, 0.3750f, 0.4375f, 0.5000f, 0.5625f],\
	},\
}

kill @e[type=interaction]
kill @e[type=item_display]
execute positioned 57.5 0 5.5 run function datapack_delight:crops/spawn with storage datapack_delight:const Crops.wheat
execute positioned 58.5 0 5.5 run function datapack_delight:crops/spawn with storage datapack_delight:const Crops.beetroot
execute positioned 59.5 0 5.5 run function datapack_delight:crops/spawn with storage datapack_delight:const Crops.carrot
execute positioned 60.5 0 5.5 run function datapack_delight:crops/spawn with storage datapack_delight:const Crops.potato
execute positioned 61.5 0 5.5 run function datapack_delight:crops/spawn with storage datapack_delight:const Crops.cabbage
execute positioned 62.5 0 5.5 run function datapack_delight:crops/spawn with storage datapack_delight:const Crops.onion
execute positioned 63.5 0 5.5 run function datapack_delight:crops/spawn with storage datapack_delight:const Crops.rice
execute positioned 64.5 0 5.5 run function datapack_delight:crops/spawn with storage datapack_delight:const Crops.tomato

execute positioned 64.5 0 3.5 run function datapack_delight:crops/spawn with storage datapack_delight:const Crops.dog
