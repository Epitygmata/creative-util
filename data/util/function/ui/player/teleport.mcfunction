# if you dont have a ui minecart, make one
execute unless score @s util.ui_id matches 0.. run function util:ui/player/open
# find my ui minecart and teleport it to me
scoreboard players operation #search util.ui_id = @s util.ui_id
execute at @s as @e[type=item_display,tag=util.ui] if score @s util.ui_id = #search util.ui_id run tp @s ~ ~1 ~
