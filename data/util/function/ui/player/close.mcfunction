# BUG FIX ; Closing the UI whilst keeping an item in hand
execute if items entity @s weapon.* *[custom_data~{util.ui_item:{}}] run return fail
# BUG FIX ; Closing the UI by inputing the actual UI item.
execute unless score @s util.timer.ui_closing matches 2.. run return run scoreboard players add @s util.timer.ui_closing 1
scoreboard players reset @s util.timer.ui_closing
# find the matching ui with player score
scoreboard players operation #search util.ui_id = @s util.ui_id
# clear the ui that is closing
execute as @e[type=chest_minecart,tag=util.ui] if score @s util.ui_id = #search util.ui_id run data remove entity @s Items
# kill the ui
execute as @e[tag=util.ui] if score @s util.ui_id = #search util.ui_id run kill @s
# reset the player's score
scoreboard players set @s util.ui_id -1