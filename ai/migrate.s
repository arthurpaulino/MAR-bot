ai_migrate:
    cmp [has_migrating_target_cell], 1
    jz ai_migrate_has_migrating_target_cell
    ai_migrate_choose_door:
        call rng_poll
        mov A, B
        div 4
        cmp Y, [invalid_door]
        jz ai_migrate_choose_door
        mov [target_door], Y
    call ai_decide_migrating_cell
    ai_migrate_has_migrating_target_cell:
        cmp [has_migrating_path], 1
        jz ai_migrate_has_migrating_path
        mov X, [target_migrating_cell_x]
        mov Y, [target_migrating_cell_y]
        mov B, 0
        call lidar_get_path
        mov [path_ptr], LIDAR_GET_PATH_START
        mov [has_migrating_path], 1
        ai_migrate_has_migrating_path:
            mov A, [path_ptr]
            mov B, [A]

            cmp B, LIDAR_GET_PATH_INVALID
            jnz ai_migrate_has_migrating_path_go_on
            mov [target_door], [invalid_door]
            call ai_decide_migrating_cell
            mov X, [target_migrating_cell_x]
            mov Y, [target_migrating_cell_y]
            mov B, 0
            call lidar_get_path
            mov [path_ptr], LIDAR_GET_PATH_START

            ai_migrate_has_migrating_path_go_on:

            cmp B, LIDAR_GET_PATH_END
            jnz ai_migrate_walk

            call ai_enter_new_world
            jmp ai_migrate_end

            ai_migrate_walk:
                call legs_walk
                inc [path_ptr]
    ai_migrate_end:
        ret
