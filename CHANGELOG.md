# Freewood-Pet – Änderungen und Details · Changelog and details

Die vollständige bisherige Beschreibung mit allen Versionseinträgen (vorher README.md). The complete previous description with all version entries (formerly README.md). Kurzfassung · Summary: [README.md](README.md).

**Deutsch & English · German & English.** Autor · Author: Lacustat. Version 0.3.5 · Interface 16001 (World of Warcraft: Forever).

![PET](https://github.com/Lacustat/Freewood-OctoWoW-Bilder/blob/main/companion.jpg)

## Inhalt · Contents
- [Deutsch](#deutsch)
- [English](#english)
- [Tastenbelegung · Key bindings](#tastenbelegung--key-bindings)

## Deutsch

### Was ist das?
Erfasst deine Jäger-Begleiter mit Werten, Familienfaktoren und Fähigkeiten, mit Export und Import.

### Funktionen
- Ab 0.3.5: Begleiter mit leerem Realm im Schlüssel („Pinky-:Alice“) werden beim Anmelden in den richtigen Charakter übernommen (neuerer Stand gewinnt, das erste Sehen bleibt). Braucht Core 0.57.0. Test `tests/realmfix_test.lua`.
- Ein Tier erscheint nach einem Aufruf im Spiel in der Liste.
- Werte und Fähigkeiten pro Begleiter.
- Export und Import über den Austausch im Core.

### Abhängigkeiten
- Benötigt: `Freewood-Core`
- Optional: –

### Befehle
- `/fwpet`: Reiter öffnen

### Installation
Den Ordner `Freewood-Pet` nach `World of Warcraft\_forever_\Interface\AddOns\` kopieren. Neue Dateien lädt das Spiel erst nach einem kompletten Neustart; ein `/reload` genügt nur, wenn sich bestehende Dateien geändert haben. Fehler sichtbar machen: `/console scriptErrors 1`, danach `/reload`.

### Hinweise
Alles Neue ist, soweit nicht anders vermerkt, im Spiel noch nicht geprüft (getestet wurde in einer Simulation).

### Lizenz
GPL-3.0, siehe `LICENSE`.

---

## English

### What is it?
Records your hunter companions with stats, family factors and abilities, with export and import.

### Features
- Since 0.3.5: companions with an empty realm in their key ("Pinky-:Alice") are merged into the right character on login (newer state wins, first-seen kept). Needs Core 0.57.0. Test `tests/realmfix_test.lua`.
- A pet appears in the list after you summon it in game.
- Stats and abilities per companion.
- Export and import via the exchange in Core.

### Dependencies
- Required: `Freewood-Core`
- Optional: –

### Commands
- `/fwpet`: Reiter öffnen

### Installation
Copy the folder `Freewood-Pet` to `World of Warcraft\_forever_\Interface\AddOns\`. New files only load after a full game restart; a `/reload` is enough only when existing files changed. To see errors: `/console scriptErrors 1`, then `/reload`.

### Notes
Unless marked otherwise, everything new has not yet been verified in game (it was tested in a simulation).

### License
GPL-3.0, see `LICENSE`.

## Tastenbelegung · Key bindings
**DE:** Unter Optionen > Tastaturbelegung gibt es einen eigenen Abschnitt für dieses Modul. Dort lässt sich eine Taste zum Öffnen und Schließen des Reiters belegen (zum Beispiel J für die Gilde). Ist der Reiter schon offen, schließt dieselbe Taste das Fenster. Nach der Installation einmal das Spiel neu starten, damit die neue Datei Bindings.xml gelesen wird.
**EN:** Options > Key Bindings has its own section for this module. Bind a key to open and close the tab (for example J for the guild). If the tab is already open, the same key closes the window. Restart the game once after installing so the new Bindings.xml file is read.
