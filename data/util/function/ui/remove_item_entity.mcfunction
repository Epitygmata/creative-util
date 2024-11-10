#> from: util:ui/remove_item_entities
# as every item when a drop is done
execute store result score #this util.val if items entity @s contents *[minecraft:custom_data~{"util.ui_item":{}}]
execute if score #this util.val matches 1.. run kill @s
scoreboard players operation ui.dropped util.val += #this util.val
