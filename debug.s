; Displays what's in D

debug_hex:
    call debug_save_then_clear
    mov A, HOLO_DISPLAY_HEX
    call debug_display_then_recover
    ret

debug_dec:
    call debug_save_then_clear
    mov A, HOLO_DISPLAY_DEC
    call debug_display_then_recover
    ret

debug_save_then_clear:
    mov [temp_A], A
    mov [temp_B], B
    mov A, HOLO_CLEAR
    hwi HWID_HOLO
    ret

debug_display_then_recover:
    mov B, D
    hwi HWID_HOLO
    mov A, [temp_A]
    mov B, [temp_B]
    ret
