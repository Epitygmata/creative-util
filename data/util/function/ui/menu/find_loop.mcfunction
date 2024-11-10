#> from: THIS / util:ui/menu/on_right_or_partial_drop
execute store result score #bool util.val run data modify storage util:ui a[0] set from storage util:ui b[0]
execute if score #bool util.val matches 1 run return run data modify storage util:ui clicked set from storage util:ui a[0]
data remove storage util:ui a[0]
data remove storage util:ui b[0]
execute if data storage util:ui a[0] if data storage util:ui b[0] run function util:ui/menu/find_loop