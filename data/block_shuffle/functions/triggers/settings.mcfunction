#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s bs.settings 0

#> List our settings
tellraw @s [" "]
tellraw @s [{"text":"===== Settings =====","color":"gold"}]

#execute if score #game_mode bs.settings matches 0 run tellraw @s [{"text":"Game mode: ","hoverEvent":{"action":"show_text","value":{"text":"Game mode"}}},{"text":"[Point Limit]","color":"aqua","clickEvent":{"action":"run_command","value":"/function block_shuffle:settings/game_mode"},"hoverEvent":{"action":"show_text","value":{"text":"Once 1 player finds a specified amount of blocks, they win"}}}]
#execute if score #game_mode bs.settings matches 1 run tellraw @s [{"text":"Game mode: ","hoverEvent":{"action":"show_text","value":{"text":"Game mode"}}},{"text":"[Time Limit]","color":"aqua","clickEvent":{"action":"run_command","value":"/function block_shuffle:settings/game_mode"},"hoverEvent":{"action":"show_text","value":{"text":"Each player will have a specified amount of time to find their block, if you run out of time, you lose"}}}]

execute if score #game_mode bs.settings matches 0 if score #point_limit bs.settings matches 10 run tellraw @s [{"text":"Point limit: ","hoverEvent":{"action":"show_text","value":{"text":"How many points you need to win"}}},{"text":"[10]","color":"aqua","clickEvent":{"action":"run_command","value":"/function block_shuffle:settings/point_limit"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score #game_mode bs.settings matches 0 if score #point_limit bs.settings matches 20 run tellraw @s [{"text":"Point limit: ","hoverEvent":{"action":"show_text","value":{"text":"How many points you need to win"}}},{"text":"[20]","color":"aqua","clickEvent":{"action":"run_command","value":"/function block_shuffle:settings/point_limit"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score #game_mode bs.settings matches 0 if score #point_limit bs.settings matches 30 run tellraw @s [{"text":"Point limit: ","hoverEvent":{"action":"show_text","value":{"text":"How many points you need to win"}}},{"text":"[30]","color":"aqua","clickEvent":{"action":"run_command","value":"/function block_shuffle:settings/point_limit"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]

#execute if score #game_mode bs.settings matches 1 if score #time_limit bs.settings matches 180 run tellraw @s [{"text":"Time limit: ","hoverEvent":{"action":"show_text","value":{"text":"How long you will have to find your block"}}},{"text":"[3 Minutes]","color":"aqua","clickEvent":{"action":"run_command","value":"/function block_shuffle:settings/time_limit"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
#execute if score #game_mode bs.settings matches 1 if score #time_limit bs.settings matches 300 run tellraw @s [{"text":"Time limit: ","hoverEvent":{"action":"show_text","value":{"text":"How long you will have to find your block"}}},{"text":"[5 Minutes]","color":"aqua","clickEvent":{"action":"run_command","value":"/function block_shuffle:settings/time_limit"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
#execute if score #game_mode bs.settings matches 1 if score #time_limit bs.settings matches 420 run tellraw @s [{"text":"Time limit: ","hoverEvent":{"action":"show_text","value":{"text":"How long you will have to find your block"}}},{"text":"[7 Minutes]","color":"aqua","clickEvent":{"action":"run_command","value":"/function block_shuffle:settings/time_limit"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
#execute if score #game_mode bs.settings matches 1 if score #time_limit bs.settings matches 600 run tellraw @s [{"text":"Time limit: ","hoverEvent":{"action":"show_text","value":{"text":"How long you will have to find your block"}}},{"text":"[10 Minutes]","color":"aqua","clickEvent":{"action":"run_command","value":"/function block_shuffle:settings/time_limit"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]

#execute if score #block_type bs.settings matches 0 run tellraw @s [{"text":"Block type: ","hoverEvent":{"action":"show_text","value":{"text":"Block type"}}},{"text":"[Shared]","color":"aqua","clickEvent":{"action":"run_command","value":"/function block_shuffle:settings/block_type"},"hoverEvent":{"action":"show_text","value":{"text":"Each player will get the same set of blocks to find"}}}]
#execute if score #block_type bs.settings matches 1 run tellraw @s [{"text":"Block type: ","hoverEvent":{"action":"show_text","value":{"text":"Block type"}}},{"text":"[Individual]","color":"aqua","clickEvent":{"action":"run_command","value":"/function block_shuffle:settings/block_type"},"hoverEvent":{"action":"show_text","value":{"text":"Each player will get a randomised set of blocks to find"}}}]

tellraw @s [" "]

tellraw @s [{"text":"must be server op to change these","color":"gray","italic":true}]
