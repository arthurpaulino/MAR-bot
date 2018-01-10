legs_walk_north:
    mov A, LEGS_SET_DIRECTION_AND_WALK
    mov B, LEGS_DIR_NORTH
    hwi HWID_LEGS
    ret

legs_walk_south:
    mov A, LEGS_SET_DIRECTION_AND_WALK
    mov B, LEGS_DIR_SOUTH
    hwi HWID_LEGS
    ret

legs_walk_west:
    mov A, LEGS_SET_DIRECTION_AND_WALK
    mov B, LEGS_DIR_WEST
    hwi HWID_LEGS
    ret

legs_walk_east:
    mov A, LEGS_SET_DIRECTION_AND_WALK
    mov B, LEGS_DIR_EAST
    hwi HWID_LEGS
    ret
