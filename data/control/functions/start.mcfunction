# gamemode
gamemode survival @a

# title in actionbar 
title @s actionbar {"text":"Starting...","color":"green"}

# title configuration
title @a title ""
title @a subtitle ""
title @a times 0 40 0

# remove scoreboards and clear slots
scoreboard objectives remove bafkDeaths
scoreboard objectives remove bafkHealth
scoreboard objectives remove bafkTimer
scoreboard objectives setdisplay list
scoreboard objectives setdisplay belowName
scoreboard objectives setdisplay sidebar

# add timer scoreboard
scoreboard objectives add bafkTimer dummy
scoreboard players set -timer bafkTimer 2400 
# this value must be greater or equal to 1200 and be divisable by 1200. Formula: time in second*20. 
scoreboard players set -minRemainderSec bafkTimer 60
scoreboard players set -constantSec bafkTimer 20
scoreboard players set -constantMin bafkTimer 60
scoreboard players operation -remainderSec bafkTimer = -timer bafkTimer
scoreboard players operation -remainderSec bafkTimer /= -constantSec bafkTimer
scoreboard players operation -remainderMin bafkTimer = -remainderSec bafkTimer
scoreboard players operation -remainderMin bafkTimer /= -constantMin bafkTimer
scoreboard players remove -remainderMin bafkTimer 1

# run timer function
function internal:timer

# death and health cound
scoreboard objectives add bafkDeaths deathCount "Tode"
scoreboard objectives add bafkHealth health

# scoreboard objectives setdisplay sidebar bafkTimer