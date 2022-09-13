#execute store result score #mobGriefing RocketLauncher run gamerule mobGriefing
#gamerule mobGriefing false

summon tnt ^ ^ ^-1
summon tnt ^ ^ ^-1 {Fuse:2,NoGravity:1}
summon tnt ^ ^ ^-1 {Fuse:2,NoGravity:1}

effect give @a[distance=..8.5] resistance 1 100 true

#execute if score #mobGriefing RocketLauncher matches 1 run schedule function rocketlauncher:undogamerule 1 append

tag @s add exploded
kill @s