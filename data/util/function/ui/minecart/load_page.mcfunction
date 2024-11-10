# Update Page & History
data modify entity @s Items set from storage util:ui current
data modify storage util:ui current set from entity @s Items
execute on passengers run data modify entity @s data.previous set from storage util:ui current