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

# Hardware
add hardware/holo.s
add hardware/keyboard.s
add hardware/legs.s
add hardware/drill.s
add hardware/inv.s
add hardware/laser.s
add hardware/lidar.s

# Modes
add modes/display.s
add modes/manual.s
add modes/auto.s

# AI
add ai/start.s
add ai/find_biomass.s
add ai/approach_biomass.s
add ai/migrate.s

# Math
add math/manhattan_distance.s

# Debug
add debug.s
