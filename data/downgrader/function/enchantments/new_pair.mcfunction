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
data modify storage downgrader:temp out append value {}
data modify storage downgrader:temp out[-1].id set from storage downgrader:temp id
data modify storage downgrader:temp out[-1].lvl set from storage downgrader:temp lvl

data modify storage downgrader:temp id set value ""
data modify storage downgrader:temp lvl set value ""