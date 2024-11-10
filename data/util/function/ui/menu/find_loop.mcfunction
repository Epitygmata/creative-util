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
#> from: THIS / util:ui/menu/on_right_or_partial_drop
execute store result score #bool util.val run data modify storage util:ui a[0] set from storage util:ui b[0]
execute if score #bool util.val matches 1 run return run data modify storage util:ui clicked set from storage util:ui a[0]
data remove storage util:ui a[0]
data remove storage util:ui b[0]
execute if data storage util:ui a[0] if data storage util:ui b[0] run function util:ui/menu/find_loop