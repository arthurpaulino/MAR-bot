ai_eat_biomass:
    call inv_poll
    cmp B, ITEM_BIOMASS
    jnz ai_eat_biomass_done
    call inv_clear
    mov [faced_to_biomass], 0

    ai_eat_biomass_done:
        ret
