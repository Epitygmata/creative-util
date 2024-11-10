#> recommended use : 
# function downgrader:enchantments with <path to item>.components.minecraft:enchantments
# @storage downgrader:temp out : array of {String id, int lvl} that follows the syntax of former 'Enchantments' array.


$data modify storage downgrader:temp preRaw set value $(levels)
# toString() to parse char by char
$data modify storage downgrader:temp raw set value '$(levels)'
# pre-loop char cutting
data modify storage downgrader:temp char set string storage downgrader:temp raw 0 1
# isn't a compound or a string starting by '{'
execute store result score isString downgrader.bool run data modify storage downgrader:temp out set string storage downgrader:temp preRaw 0 0 
# isn't a string
execute unless data storage downgrader:temp {char:'{'} run return fail
execute if score isString downgrader.bool matches 1 run return fail
# setup data workspace
data modify storage downgrader:temp id set value ""
data modify storage downgrader:temp lvl set value ""
data modify storage downgrader:temp out set value []
scoreboard players set inKey downgrader.bool 0
function downgrader:enchantments/core_loop