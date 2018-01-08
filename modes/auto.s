mode_auto:
    mov A, KEYBOARD_FETCH_KEY
    hwi HWID_KEYBOARD

    cmp B, KEY_ENTER
    jz set_mode_manual

    jmp go_auto

    mode_auto_end:
        mov A, KEYBOARD_CLEAR
        hwi HWID_KEYBOARD
        jmp main_end
    set_mode_manual:
        mov [mode], MODE_MANUAL
        jmp mode_auto_end

go_auto:
    ; todo
    jmp mode_auto_end
