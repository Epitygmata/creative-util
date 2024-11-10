#> OPERATES ON THE CURRENT GAMERULE
# 'current' here refers to the selected gamerule in the gamerules_number .
# it is actually stored in @storage util:args id
#
# args : 
# - operation
# - val
$data modify storage util:args val set value $(val)
$function util:ui/menu/settings/$(operation)_gamerule with storage util:args
# update item every time
function util:ui/menu/settings/update_item with storage util:args