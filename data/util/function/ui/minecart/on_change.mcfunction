#> from: util/ui/minecart/tick
# remove ui element items from players (also store some numbers if needed)
execute store success score ui.offhand util.val if items entity @p weapon.offhand *[minecraft:custom_data~{"util.ui_item":{}}]
execute store success score ui.shift util.val if items entity @p container.* *[minecraft:custom_data~{"util.ui_item":{}}]
# ! shift = {score ui.shift util.val}
execute store result score ui.clicked_amount util.val run clear @a *[minecraft:custom_data~{"util.ui_item":{}}]
execute if score ui.clicked_amount util.val matches 0 run function util:ui/remove_item_entities
# future proofing, specifies it is a chest minecart
scoreboard players set .type util.val 1
# Detect player putting items into the UI
data modify storage util:ui in set from storage util:ui current
data remove storage util:ui in[{components:{"minecraft:custom_data":{"util.ui_item":{}}}}]
execute if data storage util:ui in[0] run return run function util:ui/menu/on_input

# Using the insert trick to overwrite slots which have been changed.
data modify storage util:ui temp set from storage util:ui previous
data modify storage util:ui temp[].components."minecraft:custom_data" merge value {prev:1b}
execute store result score B util.val run data get entity @s Items
data modify entity @s Items insert 0 from storage util:ui temp[]
execute store result score C util.val run data get entity @s Items
execute if score B util.val = C util.val run return run function util:ui/menu/on_right_or_partial_drop
data remove storage util:ui temp
data modify storage util:ui temp append from entity @s Items[{components:{"minecraft:custom_data":{prev:1b}}}]
data remove storage util:ui in
data modify storage util:ui in append from storage util:ui temp[{components:{"minecraft:custom_data":{util.ui_item:{}}}}]
# bandage to prevent blank spots from clicking
# ! IN = {storage util:ui in[0].components.minecraft:custom_data."util.ui_item".right}
execute if data storage util:ui in[0].components."minecraft:custom_data"."util.ui_item".empty run data remove storage util:ui in[0]
execute if data storage util:ui in[0] unless data storage util:ui in[1] run function util:ui/menu/on_click
# Update Page & History if nothing happened
function util:ui/menu/refresh