data modify storage util:ui a set from storage util:ui temp
data remove storage util:ui a[].components.minecraft:custom_data.prev
data modify storage util:ui b set from entity @s Items
# now enter the death loop
function util:test_loop