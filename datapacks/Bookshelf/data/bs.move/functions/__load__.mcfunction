# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# CODE ------------------------------------------------------------------------

forceload add -30000000 1600
execute unless entity B5-0-0-0-1 run summon minecraft:marker -30000000 0 1600 {UUID:[I;181,0,0,1],Tags:["bs.entity","bs.persistent"],CustomName:'[{"text":"BS ","color":"dark_gray"},{"text":"Marker","color":"aqua"}]'}

scoreboard objectives add bs.in dummy [{"text":"BS ","color":"dark_gray"},{"text":"Input","color":"aqua"}]
scoreboard objectives add bs.data dummy [{"text":"BS ","color":"dark_gray"},{"text":"Data","color":"aqua"}]
scoreboard objectives add bs.const dummy [{"text":"BS ","color":"dark_gray"},{"text":"Constants","color":"aqua"}]
scoreboard objectives add bs.height dummy [{"text":"BS ","color":"dark_gray"},{"text":"Height","color":"aqua"}]
scoreboard objectives add bs.width dummy [{"text":"BS ","color":"dark_gray"},{"text":"Width","color":"aqua"}]
scoreboard objectives add bs.vel.x dummy [{"text":"BS ","color":"dark_gray"},{"text":"Velocity X","color":"aqua"}]
scoreboard objectives add bs.vel.y dummy [{"text":"BS ","color":"dark_gray"},{"text":"Velocity Y","color":"aqua"}]
scoreboard objectives add bs.vel.z dummy [{"text":"BS ","color":"dark_gray"},{"text":"Velocity Z","color":"aqua"}]

scoreboard players set -1000 bs.const -1000
scoreboard players set -2 bs.const -2
scoreboard players set -1 bs.const -1
scoreboard players set 2 bs.const 2
scoreboard players set 500 bs.const 500
scoreboard players set 1000 bs.const 1000

execute unless data storage bs:in move run data modify storage bs:in move set value { \
  block_collision: true, \
  entity_collision: false, \
  on_collision: "#bs.move:on_collision/slide", \
  ignored_blocks: "#bs.move:can_pass_through", \
  solid_entities: "bs.move.is_solid", \
}
