# Downgrader is a librairy to downgrade minecraft NBT.
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
##loop once per char in the stringed compound

execute if data storage downgrader:temp {char:'"'} store result score inKey downgrader.bool if score inKey downgrader.bool matches 0
execute if score inKey downgrader.bool matches 1 run function downgrader:enchantments/concat_id with storage downgrader:temp
execute unless data storage downgrader:temp {char:'"'} unless data storage downgrader:temp {char:':'} if score inKey downgrader.bool matches 0 run function downgrader:enchantments/concat_lvl with storage downgrader:temp
# new pair
execute if score inKey downgrader.bool matches 0 if data storage downgrader:temp {char:','} run function downgrader:enchantments/new_pair
execute if score inKey downgrader.bool matches 0 if data storage downgrader:temp {char:'}'} run function downgrader:enchantments/new_pair



# cut string
data modify storage downgrader:temp raw set string storage downgrader:temp raw 1
# remove the previous char to prevent same-value fail
data remove storage downgrader:temp char
# get char
execute store success score next downgrader.bool run data modify storage downgrader:temp char set string storage downgrader:temp raw 0 1
# loop if char getter was successful
execute if score next downgrader.bool matches 1 run function downgrader:enchantments/core_loop