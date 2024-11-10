# Creative Util est un datapack pour Minecraft proposant divers outils pour le mode créatif.
# Copyright (C) 2024  darukshock

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
#> from: util:ui/minecart/on_change
# on right click or partial drop

playsound ui.button.click master @p
data modify storage util:ui a set from storage util:ui temp
data remove storage util:ui a[].components.minecraft:custom_data.prev
data modify storage util:ui b set from entity @s Items
# now enter the death loop
function util:ui/menu/find_loop
# ! {storage util:ui clicked}
execute if score ui.clicked_amount util.val matches 0 run function util:ui/run_drop with storage util:ui clicked.components."minecraft:custom_data"."util.ui_item"
execute unless score ui.clicked_amount util.val matches 0 run function util:ui/run_right with storage util:ui clicked.components."minecraft:custom_data"."util.ui_item"
function util:ui/menu/refresh
