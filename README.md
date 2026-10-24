# ParadoxHub

Roblox script hub for 10 Player Flee.

## Load

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/ParadoxRBX/ParadoxHub/main/main.lua"))()
```

`main.lua` reads `game.PlaceId` and pulls the matching script. Press **Right Shift** once loaded. `_G.SpectreUnload()` removes it.

Point at a **file** - the bare `.../main/` directory returns 404 on raw GitHub.

## Games

| Place | Script |
| --- | --- |
| 10 Player Flee (`17600423422`) | `Spectre_10PlayerFlee.lua` |

## Features

Built on the game's real internals: `ReplicatedStorage.Challenge` for skill checks, `ComputerTable` `Progress`/`Enabled`, and the `Beast` / `ChosenPower` / `BeastChance` / `CarriedBy` player attributes.

**Survivor** auto hack with retargeting, perfect skill checks, auto escape, rescue, anti-freeze, auto hide, teleports.
**Beast** master loop, downed-priority swinging, auto aim, auto grab and pod, hack interruption, ability trigger.
**Visuals** player and beast ESP, off-screen arrows, computer ESP with live %, objectives, hazards, tracers, fullbright.
**Movement** speed, jump, inf jump, noclip, fly, click-teleport.

Dark hand-built UI: live themes, search, drag, resize, config persistence.
