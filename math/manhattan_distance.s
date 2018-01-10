; computes the manhattan distance between (X, Y) and ([dest_x], [dest_y]) and
; stores it into A
; MODIFIES: A, B
manhattan_distance:
    cmp X, [dest_x]
    jl manhattan_distance_greater_dest_x

    mov A, X
    sub A, [dest_x]

    jmp manhattan_distance_compute_y

    manhattan_distance_greater_dest_x:
        mov A, [dest_x]
        sub A, X

    manhattan_distance_compute_y:
        cmp Y, [dest_y]
        jl manhattan_distance_greater_dest_y

        mov B, Y
        sub B, [dest_y]

        jmp end_manhattan_distance

        manhattan_distance_greater_dest_y:
            mov B, [dest_y]
            sub B, Y

    end_manhattan_distance:
        add A, B
        ret
