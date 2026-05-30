# Project Notes

This project is an Adventure Game Studio game.

## Setting

The game setting is intimate late-1980s USSR: old Stalin-era residential blocks in a sleeping district, with all their dignity and decay. Interiors should feel lived-in and tired: old grandmother furniture, carpets, painted walls, cold rooms, loneliness, memory, and domestic unease.

## Asset Paths

- Object assets live in `C:\phpstorm\stars\Assets\Объекты`.
- Close-up room images live in `C:\phpstorm\stars\Assets\Комнаты\Ночные комнаты\Крупные планы`.

## Working Rules

- Do not edit files unless the user explicitly asks for edits.
- If the user asks a question, answer without changing files.
- Prefer reading project files first before making any assumptions.
- Treat `Game.agf`, `GlobalScript.asc`, and room scripts as primary sources of truth.
- When discussing AGS behavior, be precise about scope: global script, room script, dialog script, or GUI event.
- Keep changes small and consistent with the existing project style.
- Avoid unnecessary refactors.
- If a task depends on the exact AGS event or function name, verify it in the project before answering.
- Use clear, practical answers focused on the current task.
- The function `show_accumulated_text_after` is the project term for the accumulated narrative text display mode.
- Name newly created asset files with Latin characters only, even when parent folders use Cyrillic names.
