;*************************** Hardware IDs
HWID_LEGS     equ 0x1
HWID_LASER    equ 0x2
HWID_LIDAR    equ 0x3
HWID_KEYBOARD equ 0x4
HWID_DRILL    equ 0x5
HWID_INV      equ 0x6
HWID_RNG      equ 0x7
HWID_CLOCK    equ 0x8
HWID_HOLO     equ 0x9
HWID_BATTERY  equ 0xA
HWID_FLOPPY   equ 0xB
HWID_RADIO    equ 0xC
HWID_COMPORT  equ 0xD

;*************************** Drill actions IDs
DRILL_POLL        equ 1
DRILL_GATHER_SLOW equ 2
DRILL_GATHER_FAST equ 3
; Drill status
DRILL_STATUS_OK   equ 0
DRILL_STATUS_BUSY equ 1

;*************************** Inventory actions IDs
INV_CLEAR equ 0
INV_POLL  equ 1

;*************************** Laser actions IDs
LASER_WITHDRAW equ 1
LASER_DEPOSIT  equ 2

;*************************** Legs actions IDs
LEGS_SET_DIRECTION          equ 1
LEGS_SET_DIRECTION_AND_WALK equ 2
; Legs directions
LEGS_DIR_NORTH equ 0
LEGS_DIR_EAST  equ 1
LEGS_DIR_SOUTH equ 2
LEGS_DIR_WEST  equ 3

;*************************** LiDAR actions IDs
LIDAR_GET_POS       equ 1
LIDAR_GET_PATH      equ 2
LIDAR_GET_MAP       equ 3
LIDAR_GET_WORLD_POS equ 4

;*************************** Keyboard actions IDs
KEYBOARD_CLEAR     equ 0
KEYBOARD_FETCH_KEY equ 1

;*************************** Hologram Projector actions IDs
HOLO_CLEAR          equ 0
HOLO_DISPLAY_HEX    equ 1
HOLO_DISPLAY_STRING equ 2
HOLO_DISPLAY_DEC    equ 3
HOLO_DISPLAY_COLOR  equ 4

;*************************** Battery actions IDs
BATTERY_POLL             equ 1
BATTERY_GET_MAX_CAPACITY equ 2

;*************************** Random Number Generator actions IDs
RNG_POLL equ 0

;*************************** Clock actions IDs
CLOCK_POLL equ 0

;*************************** Floppy Disk actions IDs
FLOPPY_POLL         equ 1
FLOPPY_READ_SECTOR  equ 2
FLOPPY_WRITE_SECTOR equ 3

;*************************** Radio actions IDs
RADIO_LISTEN equ 1

;*************************** Com Port actions IDs
COMPORT_POLL           equ 1
COMPORT_FRONT_PORT_OUT equ 2
COMPORT_SELF_OUT       equ 3

;*************************** Keys IDs
KEY_ESC   equ 0x1b
KEY_SPACE equ 0x20
KEY_ENTER equ 0xd
KEY_0     equ 0x30
KEY_1     equ 0x31
KEY_2     equ 0x32
KEY_3     equ 0x33
KEY_4     equ 0x34
KEY_5     equ 0x35
KEY_6     equ 0x36
KEY_7     equ 0x37
KEY_8     equ 0x38
KEY_9     equ 0x39
KEY_A     equ 0x41
KEY_B     equ 0x42
KEY_C     equ 0x43
KEY_D     equ 0x44
KEY_E     equ 0x45
KEY_F     equ 0x46
KEY_G     equ 0x47
KEY_H     equ 0x48
KEY_I     equ 0x49
KEY_J     equ 0x4a
KEY_K     equ 0x4b
KEY_L     equ 0x4c
KEY_M     equ 0x4d
KEY_N     equ 0x4e
KEY_O     equ 0x4f
KEY_P     equ 0x50
KEY_Q     equ 0x51
KEY_R     equ 0x52
KEY_S     equ 0x53
KEY_T     equ 0x54
KEY_U     equ 0x55
KEY_V     equ 0x56
KEY_W     equ 0x57
KEY_X     equ 0x58
KEY_Y     equ 0x59
KEY_Z     equ 0x5a

;*************************** Items IDs
ITEM_BIOMASS equ 1
ITEM_IRON    equ 3
ITEM_COPPER  equ 4
