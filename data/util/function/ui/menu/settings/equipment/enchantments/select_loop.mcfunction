#> from: util:ui/menu/settings/equipment/enchantments/select
# loops through the enchantments of @in to generate enchanted books

# increment the index to prevent overriding the category item itself.
execute if score ui.slot util.val = i util.val run scoreboard players add i util.val 1
# create the default enchanted book
data modify storage util:temp arr1 append value {\
    "Slot": 1b,\
    "id": "minecraft:enchanted_book",\
    "components": {\
      "minecraft:item_name": '"Figure out the name"',\
      "minecraft:custom_data": {\
        "util.ui_item": {\
          "cmd": "execute on passengers run function util:ui/menu/settings/equipment/enchantments/choose"\
        }\
      },\
      "minecraft:stored_enchantments": {\
      }\
    }\
  }
##apply the enchantments
# upgrade the old enchantment format
function util:ui/menu/settings/equipment/enchantments/upgrade_format with storage util:temp arr[0]
data modify storage util:temp arr1[-1].components.minecraft:stored_enchantments set from storage util:temp out
data modify storage util:temp arr1[-1].components.minecraft:item_name set from storage util:temp name
# set the slot
execute store result storage util:temp arr1[-1].Slot byte 1 run scoreboard players get i util.val
# pop
data remove storage util:temp arr[0]
# break
execute unless data storage util:temp arr[0] run return 0
# loop
scoreboard players add i util.val 1
function util:ui/menu/settings/equipment/enchantments/select_loop