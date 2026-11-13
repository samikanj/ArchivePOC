ARCHIVE TABLE (build 6) - run it on your own computer

1. Mac: double-click start-mac.command (first time: right-click > Open, then Open).
   Windows: double-click start-windows.bat.
   Linux: run  python3 -m http.server 8096  in this folder.
2. Your browser opens http://localhost:8096 . Press "Fullscreen" for table mode.
3. Close the terminal window to stop it.

Why not just double-click index.html? YouTube only plays inside a page that
has a normal web address (like localhost), not a file opened from disk.
You need an internet connection for the YouTube tapes.

ADDING MORE YOUTUBE TAPES
Open index.html in a text editor and search for YT_TAPES. Copy a line and change:
  youtube:   the id after "watch?v=" in the YouTube link
  clipStart: where the fragment starts, in seconds (2:15 = 135)
  dur:       how long the fragment is, in seconds
  title/meta: the text on the cassette label
