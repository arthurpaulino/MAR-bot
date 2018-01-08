mode_auto:
    mov A, KEYBOARD_FETCH_KEY
    hwi HWID_KEYBOARD

    cmp B, KEY_ENTER
    jz set_mode_manual

    mode_auto_end:
        mov A, KEYBOARD_CLEAR
        hwi HWID_KEYBOARD
        ret
    set_mode_manual:
        mov [mode], MODE_MANUAL
        jmp mode_auto_end
