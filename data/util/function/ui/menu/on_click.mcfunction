#> from: util:ui/minecart/on_change
playsound ui.button.click master @p
## bool = if (SHIFTED) AND (SHIFTED_FUNCTION)
## bool1 = if (OFFHAND) AND (OFFHAND_FUNCTION)
## bool2 = if (FULL_DROP) AND (FULL_DROP_FUNCTION)
scoreboard players set bool util.val 0
execute if score ui.shift util.val matches 1 if data storage util:ui in[0].components."minecraft:custom_data"."util.ui_item".shift run scoreboard players set bool util.val 1
scoreboard players set bool1 util.val 0
execute if score ui.offhand util.val matches 1 if data storage util:ui in[0].components."minecraft:custom_data"."util.ui_item".offhand run scoreboard players set bool1 util.val 1
scoreboard players set bool2 util.s 0
execute if score ui.clicked_amount util.val matches 0 if data storage util:ui in[0].components."minecraft:custom_data"."util.ui_item".full_drop run scoreboard players set bool2 util.s 1


execute unless score bool util.val matches 1 unless score bool1 util.val matches 1 unless score bool2 util.s matches 1 run function util:ui/run_cmd with storage util:ui in[0].components."minecraft:custom_data"."util.ui_item"
execute if score bool util.val matches 1 run function util:ui/run_shift with storage util:ui in[0].components."minecraft:custom_data"."util.ui_item"
execute if score bool1 util.val matches 1 run function util:ui/run_offhand with storage util:ui in[0].components."minecraft:custom_data"."util.ui_item"
execute if score bool2 util.s matches 1 run function util:ui/run_full_drop with storage util:ui in[0].components."minecraft:custom_data"."util.ui_item"

execute if score .type util.val matches 1 run function util:ui/minecart/load_page