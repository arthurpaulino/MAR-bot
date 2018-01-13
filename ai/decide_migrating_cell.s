ai_decide_migrating_cell:
    cmp [target_door], DIR_NORTH
    jz ai_decide_migrating_cell_north

    cmp [target_door], DIR_EAST
    jz ai_decide_migrating_cell_east

    cmp [target_door], DIR_SOUTH
    jz ai_decide_migrating_cell_south

    cmp [target_door], DIR_WEST
    jz ai_decide_migrating_cell_west

    ai_decide_migrating_cell_north:
        mov [target_migrating_cell_x], MIGRATING_CELL_NORTH_X
        mov [target_migrating_cell_y], MIGRATING_CELL_NORTH_Y
        jmp ai_decide_migrating_cell_end

    ai_decide_migrating_cell_east:
        mov [target_migrating_cell_x], MIGRATING_CELL_EAST_X
        mov [target_migrating_cell_y], MIGRATING_CELL_EAST_Y
        jmp ai_decide_migrating_cell_end

    ai_decide_migrating_cell_south:
        mov [target_migrating_cell_x], MIGRATING_CELL_SOUTH_X
        mov [target_migrating_cell_y], MIGRATING_CELL_SOUTH_Y
        jmp ai_decide_migrating_cell_end

    ai_decide_migrating_cell_west:
        mov [target_migrating_cell_x], MIGRATING_CELL_WEST_X
        mov [target_migrating_cell_y], MIGRATING_CELL_WEST_Y
        jmp ai_decide_migrating_cell_end

    ai_decide_migrating_cell_end:
        mov [has_migrating_target_cell], 1
        ret
