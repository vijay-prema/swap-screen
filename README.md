# Swap Screen
On a Linux-based dual screen/monitor/display setup, swap your mouse pointer from one screen to the other instantly.

# Requirements
* Dual screens/monitors/displays
* xdotool installed
* Tested working on Ubuntu 20.04 (Gnome Desktop), but probably works on many others.

# Installation
1. Install xdotool if you dont have it
   ```
   sudo apt install xdotool
   ```
2. Download and open ```screen-swap.sh``` in a text editor and change the settings to match your screen setup.

   To find your screen values:
   ```
   xrandr | grep " connected"
   ```
   Take note of the `widthxheight+X+Y` values (e.g. `3840x2160+0+0`) for both connected screens
   Then edit the script with these values
   ```
   nano screen-swap.sh
   ```
3. Make the script executable if required
   ```
   chmod +x swap-screen.sh
   ```
4. Copy the script to somewhere on your path
   ```
   cp swap-screen.sh ~/.local/bin/
   ```
5. Test by running ```swap-screen.sh```, then bind this command to a hot-key or mouse button.  For example I bind it to an extra side-button on my mouse using Keyboard Shortcuts settings in Ubuntu Gnome Desktop.

# TODO
Suggestions/PRs welcome.
- Make the script auto-detect monitor dimensions
