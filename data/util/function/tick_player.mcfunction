#> from: util:tick_entity
#> player ticking function, as & at
execute if items entity @s weapon.mainhand nether_star[minecraft:custom_data~{"util.ui":1b}] anchored eyes run function util:ui/player/teleport
execute unless items entity @s weapon.mainhand nether_star[minecraft:custom_data~{"util.ui":1b}] if score @s util.ui_id matches 0.. run function util:ui/player/close