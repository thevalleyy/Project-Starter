# Project-Starter
>Customise the beginning of your minecraft project

# ⚠ This project needs a lot of customization to work as you wish. If you want to use the preconfigured version, this is the seed you need: `3609195531708178749`
>The most important things you might want to change

>`/data/internal/functions/timer.mcfunction`
```mcfunction
execute if score -timer bafkTimer matches 72000 run tellraw @a ["",{"text":"[","color":"gold"},{"text":"Project","color":"blue"},{"text":"] ","color":"gold"},{"text":"Start in ","color":"gray"},{"text": "one","color": "red"},{"text": " hour!","color": "gray"}]
```
This code is used to send a message x seconds before the project starts.
The `72000` is the amount of ticks (`1/20` of one seconds) that lay between now and the start date.
`72000/(20*60)=60` which means this message will be sent exactly `60` minutes before the start is triggered.

Also, here you can modify these messages or disable them as you like.


```mcfunction
execute if score -timer bafkTimer matches 1 run playsound minecraft:entity.firework_rocket.launch master @a -53 82 -650 1 1
```
Line `52`.
`minecraft:entity.firework_rocket.launch` will be the sound played at the start.


```mcfunction
execute if score -timer bafkTimer matches 1 run title @a times 60 260 80
execute if score -timer bafkTimer matches 1 run title @a title {"text":"Welcome","color":"yellow"}
execute if score -timer bafkTimer matches 1 run title @a subtitle {"text":"to my Minecraft-Project","color": "gold"}
execute if score -timer bafkTimer matches 1 run playsound entity.ender_dragon.death master @a
execute if score -timer bafkTimer matches 1 run tellraw @s ["",{"text":"[","color":"gold"},{"text":"Project","color":"blue"},{"text":"]","color":"gold"},{"text":" Start was successful","color":"gray"}]
```
This chunk of code (line `122 - 126`) defines what happens at start.


```mcfunction
execute if score -remainderSec bafkTimer matches ..60 run title @a actionbar ["",{"text":"|","obfuscated":true,"color":"red"},{"text":" Start in","color":"blue"},{"text":":","color":"gray"},{"text":" ","color":"gold"},{"score":{"name":"-remainderSec","objective":"bafkTimer"},"color":"gold"},{"text":" seconds ","color":"gray"},{"text":"|","obfuscated":true,"color":"red"}]
```
At line `152` you can find this codeline. Here you can customize the actionbar message.



>/data/control/functions/reset.mcfunction
```mcfunction
spreadplayers -53 -650 5 4 false @a
```
Line `19`. Defines the area the players will get spread on.


```mcfunction
setworldspawn -53 82 -650
```
Line `25`. Defines the default worldspawn.


```mcfunction
spawnpoint @a -53 82 -650
```
Line `31`. Defines the default spawnpoint.


```mcfunction
gamemode survival @a
clear @a
xp set @a 0 levels
xp set @a 0 points
recipe take @a *
advancement revoke @a everything
```
Line `35 - 40`. Defines how the players get resetted.



# ⚠ Most important line (`22`)
>/data/control/functions/start.mcfunction
```mcfunction
scoreboard players set -timer bafkTimer 2400 
```
This defines the timer duration.
This value must be greater or equal to 1200 and be divisable by 1200. Formula: `time in seconds*20`.

# ⚠ Also, please disable the datapack after the start in order to avoid unforeseen behavior.
```
/datapack disable "file/project-starter.zip"
```



<sup>if someone actually finds this useful, i'll consider updating the datapack</sup>
