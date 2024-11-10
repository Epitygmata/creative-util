# summon the ui minecart stack
summon item_display ~ ~ ~ {view_range:0f,width:0f,height:0f,teleport_duration:0,Tags:["util.ui","new"],Passengers:[{id:"minecraft:chest_minecart",Invulnerable:1b,Tags:["util.ui","new","invisible_minecart"],CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Passengers:[{id:"minecraft:marker",Tags:["util.ui","new"]}]}]}

# assign a util.ui_id that is unique to the player and the minecart stack
scoreboard players add .global util.ui_id 1
scoreboard players operation @s util.ui_id = .global util.ui_id
scoreboard players operation @e[tag=new] util.ui_id = .global util.ui_id

# Open initial page
scoreboard players set .type util.val 1
execute as @e[type=chest_minecart,tag=new] run function util:ui/menu/settings/root/open
execute as @e[type=chest_minecart,tag=new] run function util:ui/minecart/load_page


tag @e remove new