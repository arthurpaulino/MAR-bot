ai_hunt_biomass:
    mov A, [path_ptr]
    mov B, [A]
    cmp B, LIDAR_GET_PATH_END
    jnz ai_hunt_biomass_walk

    call ai_face_biomass
    call laser_biomass

    jmp ai_hunt_biomass_end
    ai_hunt_biomass_walk:
        call legs_walk
        inc [path_ptr]
        mov [faced_to_biomass], 0
    ai_hunt_biomass_end:
        ret
