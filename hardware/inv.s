inv_clear:
    mov A, INV_CLEAR
    hwi HWID_INV
    ret

inv_poll:
    mov A, INV_POLL
    hwi HWID_INV
    ret
