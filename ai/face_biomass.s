ai_face_biomass:
    cmp [faced_to_biomass], 1
    jz ai_face_biomass_end
    cmp [orig_x], [target_biomass_x]
    jz ai_face_biomass_same_x
    jmp ai_face_biomass_same_y

    ai_face_biomass_same_x:
        cmp [orig_y], [target_biomass_y]
        jl ai_face_biomass_same_x_smaller_orig_y

        call legs_walk_north
        jmp ai_faced_to_biomass

        ai_face_biomass_same_x_smaller_orig_y:
            call legs_walk_south
            jmp ai_faced_to_biomass

    ai_face_biomass_same_y:
        cmp [orig_x], [target_biomass_x]
        jl ai_face_biomass_same_y_smaller_orig_x

        call legs_walk_west
        jmp ai_faced_to_biomass

        ai_face_biomass_same_y_smaller_orig_x:
            call legs_walk_east

    ai_faced_to_biomass:
        mov [faced_to_biomass], 1
    ai_face_biomass_end:
        ret
