scoreboard players reset @s RocketLauncher

summon area_effect_cloud ~ ~ ~ {Duration:100,Tags:["newRocket","rocket"]}
tp @e[tag=newRocket] ~ ~1.8 ~ ~ ~
execute as @e[tag=newRocket] at @s run tp @s ^ ^ ^1
tag @e[tag=newRocket] remove newRocket