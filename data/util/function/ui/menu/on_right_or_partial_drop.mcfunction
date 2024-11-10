#> from: util:ui/minecart/on_change
# on right click or partial drop

playsound ui.button.click master @p
data modify storage util:ui a set from storage util:ui temp
data remove storage util:ui a[].components.minecraft:custom_data.prev
data modify storage util:ui b set from entity @s Items
# now enter the death loop
function util:ui/menu/find_loop
# ! {storage util:ui clicked}
execute if score ui.clicked_amount util.val matches 0 run function util:ui/run_drop with storage util:ui clicked.components."minecraft:custom_data"."util.ui_item"
execute unless score ui.clicked_amount util.val matches 0 run function util:ui/run_right with storage util:ui clicked.components."minecraft:custom_data"."util.ui_item"
function util:ui/menu/refresh
