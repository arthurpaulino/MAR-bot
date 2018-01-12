.data
    mode: dw MODE_AUTO, 0
    tile_ptr: dw 0, 0
    iter_tile_x: dw 0, 0
    iter_tile_y: dw 0, 0
    orig_x: dw 0, 0
    orig_y: dw 0, 0
    dest_x: dw 0, 0
    dest_y: dw 0, 0
    shortest_biomass_distance: dw 0, 0
    found_biomass: dw 0, 0
    target_biomass_x: dw 0, 0
    target_biomass_y: dw 0, 0

    temp_A: dw 0, 0
    temp_B: dw 0, 0

.text
    call display_mode

    cmp [mode], MODE_MANUAL
    jz mode_manual

    cmp [mode], MODE_AUTO
    jz mode_auto

    main_end:
        brk
