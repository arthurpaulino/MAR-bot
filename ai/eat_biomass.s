ai_eat_biomass:
    call inv_poll
    cmp B, ITEM_BIOMASS
    jnz ai_eat_biomass_done
    call inv_clear
    
    ai_eat_biomass_done:
        ret
