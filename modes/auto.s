mode_auto:
    call keyboard_fetch_key

    cmp B, KEY_ENTER
    jz set_mode_manual

    jmp go_auto

    mode_auto_end:
        call keyboard_clear
        jmp main_end
    set_mode_manual:
        mov [mode], MODE_MANUAL
        call set_manual_color
        jmp mode_auto_end

go_auto:
    call ai_start
    jmp mode_auto_end
