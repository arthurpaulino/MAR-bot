legs_walk_north:
    mov A, LEGS_SET_DIRECTION_AND_WALK
    mov B, DIR_NORTH
    hwi HWID_LEGS
    ret

legs_walk_south:
    mov A, LEGS_SET_DIRECTION_AND_WALK
    mov B, DIR_SOUTH
    hwi HWID_LEGS
    ret

legs_walk_west:
    mov A, LEGS_SET_DIRECTION_AND_WALK
    mov B, DIR_WEST
    hwi HWID_LEGS
    ret

legs_walk_east:
    mov A, LEGS_SET_DIRECTION_AND_WALK
    mov B, DIR_EAST
    hwi HWID_LEGS
    ret

legs_walk:
    mov A, LEGS_SET_DIRECTION_AND_WALK
    hwi HWID_LEGS
    ret
