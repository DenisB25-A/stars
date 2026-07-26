# Conversation Log

## 2026-07-26

- Restored context from the project history and current files.
- Recent work appears to have focused on the mannequin sequence:
  - `room40.asc` starts a cutscene and sets `ManekenPhase = 1`.
  - `room44.asc` plays the first mannequin animation and moves the mannequin to the door.
  - `room43.asc` completes the second phase, restores the player, ends the cutscene, and returns to room 40.
- Recent work also added or connected the mood panel:
  - `ChangeMood(int amount)` and `UpdateMoodUI()` are in `GlobalScript.asc`.
  - Mood assets live in `Assets\Панель настроения`.
  - `lblMoodStatus` briefly shows mood changes, controlled by `moodTimer`.
- Current warning noticed in `warnings.log`:
  - `room44.asc:15`: AGS warns that `Wait()` was used in `Before Fadein`; it recommends using `After Fadein` instead.
- User asked to start keeping a separate written record of our conversations.
- Room 36 mechanism correction: `oZodiakWheel` must remain still; `oPrincess`, `oSun`, `oMoon`, `oDemon`, and `oKnight` should orbit around it as one group.
- Keep the existing interaction trigger on `oZodiakWheel` for now. Each action should rotate the five figures by 30 degrees, completing a full circle in 12 actions.
- Implemented the room 36 orbit behavior: the wheel remains static while the five figures rotate around its center by 30 degrees per click.
- `oZodiakWheel` was removed from room 36. The orbit center is now calculated from the five figures' initial positions, and the deleted object's interaction handler was removed.
- Correction: `oZodiakWheel_Interact` is the existing shared interaction callback for the five figures. Restored the callback name without restoring any dependency on the deleted wheel object.
- Room 23: added a test `dBeatle` dialog. The beetle's Talk event is bound to `cBeatle_Talk`, which starts the dialog without speech animation.
- Dialog rule: when Ilya's reply duplicates a player-selected option, do not repeat it with `TypeText`; keep the option's `Say` value `False`.
- Room 23 beetle dialog: beer options depend on inventory. With either beer bottle, the player may give one to the beetle; with both bottles, the player may drink with the beetle. The corresponding bottle(s) are removed from inventory.
- Beer audio added for the beetle dialog: one bottle plays opening then fizz; two bottles play glass clink, opening, then fizz.
