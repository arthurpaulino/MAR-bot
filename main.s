.text
    call display_battery

    cmp [mode], MODE_MANUAL
    jz mode_manual

    cmp [mode], MODE_AUTO
    jz mode_auto

    main_end:
        brk
