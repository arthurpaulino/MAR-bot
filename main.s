.data
	mode: dw MODE_AUTO

.text
	call mode_display

	cmp [mode], MODE_MANUAL
	jz call_manual

	cmp [mode], MODE_AUTO
	jz call_auto

	call_manual:
		call mode_manual
		jmp main_end

	call_auto:
		call mode_auto
		jmp main_end

	main_end:
		brk
