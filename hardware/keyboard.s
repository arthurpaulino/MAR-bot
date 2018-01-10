keyboard_clear:
    mov A, KEYBOARD_CLEAR
    hwi HWID_KEYBOARD
    ret

keyboard_fetch_key:
    mov A, KEYBOARD_FETCH_KEY
    hwi HWID_KEYBOARD
    ret
