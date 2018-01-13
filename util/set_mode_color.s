set_manual_color:
    mov B, 0x00FF
    mov C, 0x0000
    call holo_display_color
    ret

set_auto_color:
    mov B, 0x0000
    mov C, 0x00FF
    call holo_display_color
    ret
