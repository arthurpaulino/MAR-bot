ai_start:
    call ai_eat_biomass

    call ai_find_biomass

    cmp [bad_world], 1
    jz ai_start_migrate

    cmp [found_biomass], 1
    jz ai_start_hunt_biomass

    cmp [found_biomass], 0
    jz ai_start_migrate

    end_ai_loop:
        ret
    ai_start_hunt_biomass:
        mov [has_migrating_target_cell], 0
        mov [has_migrating_path], 0
        call ai_hunt_biomass
        jmp end_ai_loop
    ai_start_migrate:
        call ai_migrate
        jmp end_ai_loop
