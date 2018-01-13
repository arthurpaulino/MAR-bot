; computes the manhattan distance between ([orig_x], [orig_y]) and
; ([dest_x], [dest_y]) then stores it into A
manhattan_distance:
    mov [temp_B], B
    cmp [orig_x], [dest_x]
    jl manhattan_distance_greater_dest_x

    mov A, [orig_x]
    sub A, [dest_x]

    jmp manhattan_distance_compute_y

    manhattan_distance_greater_dest_x:
        mov A, [dest_x]
        sub A, [orig_x]

    manhattan_distance_compute_y:
        cmp [orig_y], [dest_y]
        jl manhattan_distance_greater_dest_y

        mov B, [orig_y]
        sub B, [dest_y]

        jmp end_manhattan_distance

        manhattan_distance_greater_dest_y:
            mov B, [dest_y]
            sub B, [orig_y]

    end_manhattan_distance:
        add A, B
        mov B, [temp_B]
        ret
