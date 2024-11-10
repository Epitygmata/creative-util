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
#> OPERATES ON THE CURRENT GAMERULE
# 'current' here refers to the selected gamerule in the gamerules_number .
# it is actually stored in @storage util:args id
#
# args : 
# - operation
# - val
$data modify storage util:args val set value $(val)
$function util:ui/menu/settings/$(operation)_gamerule with storage util:args
# update item every time
function util:ui/menu/settings/update_item with storage util:args