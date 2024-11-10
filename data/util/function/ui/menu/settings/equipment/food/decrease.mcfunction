#> args:
# key (saturation/nutrition/eat_seconds)
$execute store result score #val util.val run data get entity @s data.item.components."minecraft:food".$(key) $(scale)
$scoreboard players set #scale util.val $(scale)
scoreboard players remove #val util.val 1
# scale division by scale
scoreboard players operation #val util.val *= 1000 util.s
scoreboard players operation #val util.val /= #scale util.val
$execute store result entity @s data.item.components."minecraft:food".$(key) $(type) 0.001 run scoreboard players get #val util.val