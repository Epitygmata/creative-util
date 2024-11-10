data modify storage util:ui mask set from storage util:ui current
execute on passengers run function util:ui/menu/get_mask with entity @s data.page
data modify storage util:ui current set from storage util:ui mask

execute if score .type util.val matches 1 run function util:ui/minecart/load_page