rng_poll:
    mov A, RNG_POLL
    hwi HWID_RNG
    ret
