ai_start:
    call ai_find_biomass

    cmp [found_biomass], 1
    jz ai_start_approach_biomass

    cmp [found_biomass], 0
    jz ai_start_migrate

    end_ai_loop:
        ret
    ai_start_approach_biomass:
        call ai_approach_biomass
        jmp end_ai_loop
    ai_start_migrate:
        call ai_migrate
        jmp end_ai_loop
