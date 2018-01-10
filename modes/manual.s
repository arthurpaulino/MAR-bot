mode_manual:
    call keyboard_fetch_key

    cmp B, KEY_ESC
    jz set_mode_auto
    cmp B, KEY_2
    jz mode_manual_north
    cmp B, KEY_Q
    jz mode_manual_south
    cmp B, KEY_1
    jz mode_manual_west
    cmp B, KEY_W
    jz mode_manual_east
    cmp B, KEY_D
    jz mode_manual_drill
    cmp B, KEY_C
    jz mode_manual_inventory_clear
    cmp B, KEY_E
    jz mode_manual_laser_biomass

    mode_manual_end:
        call keyboard_clear
        jmp main_end
    set_mode_auto:
        mov [mode], MODE_AUTO
        jmp mode_manual_end
    mode_manual_north:
        call legs_walk_north
        jmp mode_manual_end
    mode_manual_south:
        call legs_walk_south
        jmp mode_manual_end
    mode_manual_east:
        call legs_walk_east
        jmp mode_manual_end
    mode_manual_west:
        call legs_walk_west
        jmp mode_manual_end
    mode_manual_drill:
        call drill_gather
        jmp mode_manual_end
    mode_manual_inventory_clear:
        call inv_clear
        jmp mode_manual_end
    mode_manual_laser_biomass:
        call laser_biomass
        jmp mode_manual_end
