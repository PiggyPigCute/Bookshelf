execute if score $bitwise.bit_length.n bs.in matches 0 run return run scoreboard players set $bitwise.bit_length bs.out 0
execute if score $bitwise.bit_length.n bs.in matches 1 run return run scoreboard players set $bitwise.bit_length bs.out 1
execute if score $bitwise.bit_length.n bs.in matches 2..3 run return run scoreboard players set $bitwise.bit_length bs.out 2
execute if score $bitwise.bit_length.n bs.in matches 4..7 run return run scoreboard players set $bitwise.bit_length bs.out 3
execute if score $bitwise.bit_length.n bs.in matches 8..15 run return run scoreboard players set $bitwise.bit_length bs.out 4
execute if score $bitwise.bit_length.n bs.in matches 16..31 run return run scoreboard players set $bitwise.bit_length bs.out 5
execute if score $bitwise.bit_length.n bs.in matches 32..63 run return run scoreboard players set $bitwise.bit_length bs.out 6
execute if score $bitwise.bit_length.n bs.in matches 64..127 run return run scoreboard players set $bitwise.bit_length bs.out 7
