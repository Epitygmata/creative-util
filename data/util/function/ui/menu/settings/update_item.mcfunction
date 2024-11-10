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
# lore
$data modify entity 0-0-0-0-2 text set value '{"color":"#FF8800","italic":false,"translate":"commands.gamerule.query","with":["$(id)",{"score":{"name":"gamerule.$(id)","objective":"util.s"}}]}'
data modify storage util:ui item.components.minecraft:lore[0] set from entity 0-0-0-0-2 text
# count
$execute store result storage util:ui item.count int 1 run scoreboard players get gamerule.$(id) util.s