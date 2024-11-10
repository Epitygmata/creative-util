#> from: util:tick
#> entity ticking function, as & at
execute as @s[type=player] run function util:tick_player
execute as @s[type=chest_minecart,tag=util.ui] run function util:ui/minecart/tick
execute as @s[type=#minecarts,tag=!invisible_minecart] run function util:invisible_minecart