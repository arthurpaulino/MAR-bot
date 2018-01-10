laser_biomass:
    mov B, ITEM_BIOMASS
    mov A, LASER_WITHDRAW
    hwi HWID_LASER
    ret
