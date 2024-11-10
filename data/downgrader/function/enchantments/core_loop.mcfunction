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