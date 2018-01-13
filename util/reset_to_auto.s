reset_to_auto:
    mov [old_target_biomass_world_x], 0
    mov [old_target_biomass_world_y], 0
    mov [old_target_biomass_x], 0
    mov [old_target_biomass_y], 0
    mov [faced_to_biomass], 0
    mov [has_migrating_target_cell], 0
    mov [has_migrating_path], 0
    ret
