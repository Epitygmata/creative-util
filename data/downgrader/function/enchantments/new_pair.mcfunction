data modify storage downgrader:temp out append value {}
data modify storage downgrader:temp out[-1].id set from storage downgrader:temp id
data modify storage downgrader:temp out[-1].lvl set from storage downgrader:temp lvl

data modify storage downgrader:temp id set value ""
data modify storage downgrader:temp lvl set value ""