battery_poll:
    mov A, BATTERY_POLL
    hwi HWID_BATTERY
    ret
