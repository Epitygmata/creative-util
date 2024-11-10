#> from: on_input

execute if data storage util:ui in[0].components.minecraft:custom_model_data run return run data modify entity @s data.item.components.minecraft:custom_model_data set from storage util:ui in[0].components.minecraft:custom_model_data
execute unless data storage util:ui in[0].components.minecraft:custom_name run return fail
# double parsing
data modify storage util:args in set from storage util:ui in[0].components.minecraft:custom_name
function util:internal/parse with storage util:args
data modify storage util:args in set from storage util:temp out
function util:internal/parse with storage util:args
data modify entity @s data.item.components.minecraft:custom_model_data set from storage util:temp out