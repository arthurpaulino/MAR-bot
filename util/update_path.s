update_path:

    cmp [old_target_biomass_x], [target_biomass_x]
    jnz do_update_path

    cmp [old_target_biomass_y], [target_biomass_y]
    jnz do_update_path

    cmp [old_target_biomass_world_x], [target_biomass_world_x]
    jnz do_update_path

    cmp [old_target_biomass_world_y], [target_biomass_world_y]
    jnz do_update_path

    jmp update_path_done

    do_update_path:
        mov X, [target_biomass_x]
        mov Y, [target_biomass_y]
        mov B, 1
        call lidar_get_path
        mov [path_ptr], LIDAR_GET_PATH_START
        mov [old_target_biomass_world_x], [target_biomass_world_x]
        mov [old_target_biomass_world_y], [target_biomass_world_y]
        mov [old_target_biomass_x], [target_biomass_x]
        mov [old_target_biomass_y], [target_biomass_y]

    update_path_done:
        ret
