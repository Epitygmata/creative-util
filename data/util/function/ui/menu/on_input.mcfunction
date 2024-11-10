#> from: util:ui/minecart/on_change
# ! Input from player = {storage util:ui in[0]}

### Data-driven on_input mechanic
# retrieve which item was switched
function util:ui/menu/get_clicked_item with storage util:ui in[0]
# ! {storage util:ui clicked}
function util:ui/run_input with storage util:ui clicked.components.minecraft:custom_data."util.ui_item"
###

execute on passengers if data entity @s {data:{page:{mask:"function util:ui/menu/settings/equipment/mask"}}} run function util:ui/menu/settings/equipment/handle_input
execute as @p run function util:ui/player/return
function util:ui/menu/refresh