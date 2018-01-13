ai_enter_new_world:
    mov B, [target_door]
    call legs_walk

    cmp [target_door], DIR_NORTH
    jnz not_north
    mov [invalid_door], DIR_SOUTH
    jmp ai_enter_new_world_go_on
    not_north:

    cmp [target_door], DIR_SOUTH
    jnz not_south
    mov [invalid_door], DIR_NORTH
    jmp ai_enter_new_world_go_on
    not_south:

    cmp [target_door], DIR_EAST
    jnz not_east
    mov [invalid_door], DIR_WEST
    jmp ai_enter_new_world_go_on
    not_east:

    cmp [target_door], DIR_WEST
    jnz not_west
    mov [invalid_door], DIR_EAST
    jmp ai_enter_new_world_go_on
    not_west:

    ai_enter_new_world_go_on:
    mov [has_migrating_path], 0
    mov [has_migrating_target_cell], 0
    mov [bad_world], 0
    ret
