mode_display:
    mov A, HOLO_DISPLAY_STRING

    cmp [mode], MODE_MANUAL
    jz set_mode_msg_manual

    cmp [mode], MODE_AUTO
    jz set_mode_msg_auto

    set_mode_msg_manual:
    mov X, MODE_MANUAL_MSG
    jmp mode_set

    set_mode_msg_auto:
        mov X, MODE_AUTO_MSG

    mode_set:
        hwi HWID_HOLO
        ret
