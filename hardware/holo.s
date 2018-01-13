holo_clear:
    mov A, HOLO_CLEAR
    hwi HWID_HOLO
    ret

holo_display_hex:
    mov A, HOLO_DISPLAY_HEX
    hwi HWID_HOLO
    ret

holo_display_string:
    mov A, HOLO_DISPLAY_STRING
    hwi HWID_HOLO
    ret

holo_display_dec:
    mov A, HOLO_DISPLAY_DEC
    hwi HWID_HOLO
    ret

holo_display_color:
    mov A, HOLO_DISPLAY_COLOR
    hwi HWID_HOLO
    ret
