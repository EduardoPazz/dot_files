# Fix Internal Mic problem
File to fix: `/usr/share/pulseaudio/alsa-mixer/paths/analog-input-internal-mic.conf`

Changes do be made:
```
...

[Jack Mic]
# state.plugged = no
state.plugged = yes

...
```
The commented line was the original state. Add that line below the comment.
