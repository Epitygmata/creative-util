#> SETS A GAMERULE
$gamerule $(id) $(val)
$scoreboard players set gamerule.$(id) util.s $(val)
# update item every time
function util:ui/menu/settings/update_item with storage util:args