// Main header script - this will be included into every script in
// the game (local and global). Do not place functions here; rather,
// place import definitions and #define names here to be used by all
// scripts.
import function TypeText(String message);
import function ChangeMood(int amount);
import function start_diming();
import function stop_diming();
import function start_lighter();

import int notesOrder[20];
import String notesNames[20];
import function UpdateJournalUI();
import String notesTexts[20];
import function ReadAndAddNote(int id);