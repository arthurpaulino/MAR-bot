# MAR-bot

My bot for the [Much Assembly Required](https://muchassemblyrequired.com) game.

Build with `$ sh build.sh`, copy the code from the (new) `MuchAssemblyRequired.s` file and then paste it into the game editor.

Press `ENTER` to go to *manual mode* (red). In *manual mode*, press `ESC` to go to *auto mode* (blue color).

## Manual mode

* `2` goes north
* `q` goes south
* `1` goes west
* `w` goes east
* `e` collects biomass
* `d` drills
* `c` clears inventory

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
