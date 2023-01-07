# title in actionbar 
title @s actionbar {"text":"Resetting...","color":"red"}
title @a title ""
title @a subtitle ""

# stopping sound
stopsound @a

# resetting and removing scoreboards and functions
scoreboard objectives remove bafkDeaths
scoreboard objectives remove bafkHealth
scoreboard objectives remove bafkTimer
scoreboard objectives setdisplay list
scoreboard objectives setdisplay belowName
scoreboard objectives setdisplay sidebar
schedule clear internal:timer 

# spread players at given area
spreadplayers -53 -650 5 4 false @a

# clear chat
tellraw @a "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

# set world spawn
setworldspawn -53 82 -650

# set difficulty
difficulty hard

# set individual spawnpoint
spawnpoint @a -53 82 -650
tellraw @a ["",{"text":"[","color":"gold"},{"text":"BAFK","color":"blue"},{"text":"]","color":"gold"},{"text":" Your spawnpoint has been set here","color":"gray"}]

# reset every player
gamemode survival @a
clear @a
xp set @a 0 levels
xp set @a 0 points
recipe take @a *
advancement revoke @a everything

# do some worldborder magic
worldborder warning distance 0
worldborder center -53 -650
worldborder set 10 0

# change some gamerules
gamerule doMobSpawning false
gamerule doDaylightCycle false
gamerule doWeatherCycle false

# set the weather and the time
time set day
weather clear 999999

# give fancy effects
effect give @a minecraft:instant_health 1 255 true
effect give @a minecraft:resistance 999999 255 true
effect give @a minecraft:saturation 999999 255 true
effect give @a[name=!"thevalleyy"] minecraft:weakness 999999 255 true
effect give @a minecraft:mining_fatigue 999999 255 true

# tellraw
tellraw @s ["",{"text":"[","color":"gold"},{"text":"BAFK","color":"blue"},{"text":"]","color":"gold"},{"text":" Project was resetted","color":"gray"}]
