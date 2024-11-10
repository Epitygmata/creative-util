#> DECREASES A GAMERULE
#> args : id, val.
$data modify storage util:args id set value $(id)
$execute store result storage util:args val int 1 run scoreboard players remove gamerule.$(id) util.s $(val)
function util:ui/menu/settings/set_gamerule with storage util:args