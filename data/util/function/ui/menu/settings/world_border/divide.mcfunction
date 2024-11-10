#> DECREASES A GAMERULE
#> args : id, val.
$data modify storage util:args id set value $(id)
$scoreboard players set number util.val $(val)
$execute store result storage util:args val int 1 run scoreboard players operation gamerule.$(id) util.s /= number util.val
function util:ui/menu/settings/set_gamerule with storage util:args