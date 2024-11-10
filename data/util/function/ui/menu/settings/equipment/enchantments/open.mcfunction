execute on passengers run function util:ui/menu/settings/equipment/enchantments/reset_selector
function util:ui/menu/settings/equipment/enchantments/mask
data modify storage util:ui current set from storage util:ui mask
execute on passengers run data modify entity @s data.page.mask set value "function util:ui/menu/settings/equipment/enchantments/mask"

