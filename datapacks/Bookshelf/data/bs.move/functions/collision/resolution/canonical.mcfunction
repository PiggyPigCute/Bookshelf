# compute the collision point and remaining velocity
scoreboard players operation $move.vel_remaining.x bs.out = #move.vx bs.data
scoreboard players operation $move.vel_remaining.y bs.out = #move.vy bs.data
scoreboard players operation $move.vel_remaining.z bs.out = #move.vz bs.data
scoreboard players operation $move.vel_remaining.x bs.out *= #move.ctime bs.data
scoreboard players operation $move.vel_remaining.y bs.out *= #move.ctime bs.data
scoreboard players operation $move.vel_remaining.z bs.out *= #move.ctime bs.data
scoreboard players operation $move.vel_remaining.x bs.out /= -1000 bs.const
scoreboard players operation $move.vel_remaining.y bs.out /= -1000 bs.const
scoreboard players operation $move.vel_remaining.z bs.out /= -1000 bs.const
execute store result entity B5-0-0-0-1 Pos[0] double .001 run scoreboard players operation #move.x bs.data -= $move.vel_remaining.x bs.out
execute store result entity B5-0-0-0-1 Pos[1] double .001 run scoreboard players operation #move.y bs.data -= $move.vel_remaining.y bs.out
execute store result entity B5-0-0-0-1 Pos[2] double .001 run scoreboard players operation #move.z bs.data -= $move.vel_remaining.z bs.out
scoreboard players operation $move.vel_remaining.x bs.out += #move.vx bs.data
scoreboard players operation $move.vel_remaining.y bs.out += #move.vy bs.data
scoreboard players operation $move.vel_remaining.z bs.out += #move.vz bs.data

# move the entity out of the collision
execute if score $move.hit_face bs.out matches 5 as B5-0-0-0-1 at @s run tp @s ~.0011 ~ ~
execute if score $move.hit_face bs.out matches 4 as B5-0-0-0-1 at @s run tp @s ~-.0011 ~ ~
execute if score $move.hit_face bs.out matches 3 as B5-0-0-0-1 at @s run tp @s ~ ~ ~.0011
execute if score $move.hit_face bs.out matches 2 as B5-0-0-0-1 at @s run tp @s ~ ~ ~-.0011
execute if score $move.hit_face bs.out matches 1 as B5-0-0-0-1 at @s run tp @s ~ ~.0011 ~
execute if score $move.hit_face bs.out matches 0 as B5-0-0-0-1 at @s run tp @s ~ ~-.0011 ~
execute positioned as B5-0-0-0-1 run tp @s ~ ~ ~

# resolve the collision using the on_collision callback
$function $(on_collision)
