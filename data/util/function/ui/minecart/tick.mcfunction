#> from: util/tick_entity
# make a copy of current Items
data modify storage util:ui current set from entity @s Items

# obtain the previous tick's Items
execute on passengers run data modify storage util:ui previous set from entity @s data.previous

# save current tick's Items over previous, if you are able to then something has changed
execute on passengers store result score #bool util.val run data modify entity @s data.previous set from storage util:ui current

execute if score #bool util.val matches 1 run function util:ui/minecart/on_change