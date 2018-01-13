# MAR-bot

My bot for the [Much Assembly Required](https://muchassemblyrequired.com) game.

1. Build with `$ sh build.sh`
2. Copy the code from the (new) `MuchAssemblyRequired.s` file and then paste it into the game editor
3. Upload the code
4. Contemplate the cubot in the *Game* tab. It displays its battery's energy level.

Press `ENTER` to go switch to *manual mode* (red). In *manual mode*, press `ESC` to switch back to *auto mode* (blue).

## Manual mode

* `2` goes north
* `q` goes south
* `1` goes west
* `w` goes east
* `e` collects biomass
* `d` drills
* `c` clears inventory (restores energy)

## Auto mode

```
tick:
    bio <- closest biomass
    if (bio exists):
        if (bio is reachable):
            hunt bio
        else:
            migrate
    else:
        migrate

migrate:
    door <- random door different from entrance
    if (door is reachable):
        perform migration
    else:
        go back to previous map

```
