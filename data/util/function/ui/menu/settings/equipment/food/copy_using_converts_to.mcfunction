data modify storage util:temp item set from entity @s data.item.components.minecraft:food.using_converts_to
# slot
data modify storage util:temp item."Slot" set value 4b
# count
data modify storage util:temp item.count set value 1
data modify storage util:temp item.components.minecraft:custom_data."util.ui_item" set value {\
"input": "execute on passengers run function util:ui/menu/settings/equipment/food/set_using_converts_to"}
data modify storage util:ui mask[{"Slot":4b}] set from storage util:temp item