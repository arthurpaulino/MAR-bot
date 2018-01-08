mode_manual:
    mov A, KEYBOARD_FETCH_KEY
    hwi HWID_KEYBOARD
    mov A, LEGS_SET_DIRECTION_AND_WALK

    cmp B, KEY_ESC
    jz set_mode_auto
    cmp B, KEY_2
    jz north
    cmp B, KEY_Q
    jz south
    cmp B, KEY_1
    jz west
    cmp B, KEY_W
    jz east
    cmp B, KEY_D
    jz drill
    cmp B, KEY_C
    jz inventory_clear
    cmp B, KEY_E
    jz laser_biomass

    mode_manual_end:
        mov A, KEYBOARD_CLEAR
        hwi HWID_KEYBOARD
        jmp main_end
    set_mode_auto:
        mov [mode], MODE_AUTO
        jmp mode_manual_end
    north:
        mov B, LEGS_DIR_NORTH
        hwi HWID_LEGS
        jmp mode_manual_end
    south:
        mov B, LEGS_DIR_SOUTH
        hwi HWID_LEGS
        jmp mode_manual_end
    east:
        mov B, LEGS_DIR_EAST
        hwi HWID_LEGS
        jmp mode_manual_end
    west:
        mov B, LEGS_DIR_WEST
        hwi HWID_LEGS
        jmp mode_manual_end
    drill:
        mov A, DRILL_GATHER_SLOW
        hwi HWID_DRILL
        jmp mode_manual_end
    inventory_clear:
        mov A, INV_CLEAR
        hwi HWID_INV
        jmp mode_manual_end
    laser_biomass:
        mov B, ITEM_BIOMASS
        mov A, LASER_WITHDRAW
        hwi HWID_LASER
        jmp mode_manual_end
