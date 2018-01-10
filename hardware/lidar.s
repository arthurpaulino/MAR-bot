lidar_get_map:
    mov A, LIDAR_GET_MAP
    hwi HWID_LIDAR
    ret

lidar_get_pos:
    mov A, LIDAR_GET_POS
    hwi HWID_LIDAR
    ret
