add() {
	cat "$1" >> MuchAssemblyRequired.s
	echo >>  MuchAssemblyRequired.s
}

# Clear it
echo -n > MuchAssemblyRequired.s

# Declarations
add declarations/mar_constants.s
add declarations/my_constants.s
add declarations/variables.s

# Main
add main.s

# Modes
add modes/manual.s
add modes/auto.s

# AI
add ai/start.s
add ai/eat_biomass.s
add ai/find_biomass.s
add ai/face_biomass.s
add ai/hunt_biomass.s
add ai/migrate.s

# Hardware
add hardware/holo.s
add hardware/keyboard.s
add hardware/legs.s
add hardware/drill.s
add hardware/inv.s
add hardware/laser.s
add hardware/lidar.s

# Util
add util/display_mode.s
add util/manhattan_distance.s
add util/update_path.s
add util/debug.s
