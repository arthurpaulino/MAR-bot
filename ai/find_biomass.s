ai_find_biomass:
    mov A, LIDAR_GET_MAP
    hwi HWID_LIDAR

    mov [found_biomass], 0
    mov [shortest_biomass_distance], 16
    mov [tile_ptr], LIDAR_GET_MAP_START
    mov [tile_counter], 0
    mov [iter_tile_x], 0
    mov [iter_tile_y], 0

    for_ai_find_biomass:

        mov A, [tile_ptr]
        cmp [A], LIDAR_GET_MAP_BIOMASS
        jnz continuefor_ai_find_biomass

        mov [found_biomass], 1

        mov A, LIDAR_GET_POS
        hwi HWID_LIDAR
        mov [dest_x], [iter_tile_x]
        mov [dest_y], [iter_tile_y]
        call manhattan_distance
        cmp A, [shortest_biomass_distance]
        jge continuefor_ai_find_biomass

        mov [shortest_biomass_distance], A
        mov [target_biomass_x], [iter_tile_x]
        mov [target_biomass_y], [iter_tile_y]

        continuefor_ai_find_biomass:
            inc [tile_counter]

            inc [iter_tile_x]
            cmp [iter_tile_x], 16
            jnz go_on_with_for_loop

            mov [iter_tile_x], 0
            inc [iter_tile_y]

            go_on_with_for_loop:
                cmp [tile_counter], 256
                jg endfor_ai_find_biomass
                inc [tile_ptr]
                jmp for_ai_find_biomass

    endfor_ai_find_biomass:
        ret
