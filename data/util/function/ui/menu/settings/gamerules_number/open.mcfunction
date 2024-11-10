# save the subject item
data modify storage util:ui item set from storage util:ui in[0]
# but don't remember the slot
data remove storage util:ui item.Slot
data modify storage util:ui item.components.minecraft:custom_data."util.ui_item" set value {empty:1b}
function util:ui/menu/settings/gamerules_number/mask
# load important arg: the gamerule ID
data modify storage util:args id set from storage util:ui item.components.minecraft:custom_data.id
data modify storage util:ui current set from storage util:ui mask
execute on passengers run data modify entity @s data.page.mask set value "function util:ui/menu/settings/gamerules_number/mask"