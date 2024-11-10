say open equipment
function util:ui/menu/settings/equipment/mask
data modify storage util:ui current set from storage util:ui mask
execute on passengers store result entity @s data.page.waiting_for_item byte 1 unless data entity @s data.item
execute on passengers run data modify entity @s data.page.mask set value "function util:ui/menu/settings/equipment/mask"