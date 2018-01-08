.data
    mode: dw MODE_AUTO

.text
    call mode_display

    cmp [mode], MODE_MANUAL
    jz mode_manual

    cmp [mode], MODE_AUTO
    jz mode_auto

    main_end:
        brk
