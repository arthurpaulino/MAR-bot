; Displays what's in D

debug_hex:
    call debug_save_clear_prepare
    call holo_display_hex
    call debug_recover
    ret

debug_dec:
    call debug_save_clear_prepare
    call holo_display_dec
    call debug_recover
    ret

debug_save_clear_prepare:
    mov [temp_A], A
    mov [temp_B], B
    call holo_clear
    mov B, D
    ret

debug_recover:
    mov A, [temp_A]
    mov B, [temp_B]
    ret
