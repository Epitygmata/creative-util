function util:ui/menu/settings/equipment/rarity/mask
data modify storage util:ui current set from storage util:ui mask
execute on passengers run data modify entity @s data.page.mask set value "function util:ui/menu/settings/equipment/rarity/mask"