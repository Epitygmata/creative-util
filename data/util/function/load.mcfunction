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
#! [§9Creative Utils§f] Reloaded !
scoreboard objectives add util.ui_id dummy
scoreboard objectives add util.s dummy
scoreboard objectives add util.val dummy
scoreboard objectives add util.timer.ui_closing dummy

# constants
scoreboard players set 2 util.s 2
scoreboard players set 1000 util.s 1000
# scores to text
forceload add 0 0
summon text_display 0.0 -65.0 0.0 {UUID:[I;0,0,0,2],view_range:0.0f,shadow_strength:0.0f,shadow_radius:0.0f}