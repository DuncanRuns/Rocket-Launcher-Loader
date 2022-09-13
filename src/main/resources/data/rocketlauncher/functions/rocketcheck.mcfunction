summon tnt ~ ~-0.5 ~ {Tags:["rocketDisplay"],Fuse:4000}
tp @s ^ ^ ^0.5
execute at @s unless block ~ ~ ~ #rocketlauncher:nocol run function rocketlauncher:explode

execute positioned ^ ^ ^2 if entity @e[type=ender_dragon,distance=..7] run function rocketlauncher:flip

execute at @s if block ~ ~ ~ #rocketlauncher:nocol if entity @e[type=!#rocketlauncher:noexplode,distance=..1] run function rocketlauncher:explode
execute at @s if block ~ ~ ~ #rocketlauncher:nocol positioned ~ ~-1 ~ if entity @e[type=!#rocketlauncher:noexplode,distance=..1] at @s run function rocketlauncher:explode