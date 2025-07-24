playsound block.crop.break block @a ~ ~ ~
$execute if score @s datapack_delight.growth matches 7.. run loot spawn ~ ~0.5 ~ loot $(loot_harvest)
$loot spawn ~ ~0.5 ~ loot $(loot_destroy)
execute on passengers run kill @s
kill @s