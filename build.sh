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
add modes/display.s
add modes/manual.s
add modes/auto.s
