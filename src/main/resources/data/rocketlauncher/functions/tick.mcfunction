give @a[tag=!rocketlauncherinit] warped_fungus_on_a_stick{display:{Name:'{"text":"Rocket Launcher","color":"red","italic":false}',Lore:['{"text":"Striders love the heat this gives off","color":"gray","italic":true}']},CustomModelData:1} 1
replaceitem entity @a[tag=!rocketlauncherinit] armor.feet leather_boots{Unbreakable:1b,Enchantments:[{id:"feather_falling",lvl:10s}]}
tag @a[tag=!rocketlauncherinit] add rocketlauncherinit

execute as @a[scores={RocketLauncher=1..}] at @s run function rocketlauncher:use

kill @e[type=tnt,tag=rocketDisplay]
execute as @e[tag=rocket] at @s run function rocketlauncher:rockettick

execute as @e[type=item,nbt=!{Invulnerable:1b}] at @s run data merge entity @s {Invulnerable:1b}