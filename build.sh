add() {
	cat "$1" >> MuchAssemblyRequired.s
	echo >>  MuchAssemblyRequired.s
}

# Clear it
echo -n > MuchAssemblyRequired.s

# Root
add mar_constants.s
add my_constants.s
add main.s

# Modes
add modes/manual.s
add modes/auto.s

# AI
add ai/start.s
add ai/find_biomass.s
add ai/approach_biomass.s
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
add util/debug.s
