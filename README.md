# Screen Swap
On a dual screen/monitor/display setup, swap your mouse pointer from one screen to the other instantly.

# Installation
1. Install xdotool if you dont have it
  ```
  sudo apt install xdotool
  ```
2. Download and open ```screen-swap.sh``` in a text editor and change the settings to match your screen setup. To find your screen values:
  ```
  xrandr | grep " connected"
  ```
4. Make the script executable if required
  ```
  chmod +x swap-screen.sh
  ```
3. Copy the script to somewhere on your path
  ```
  cp swap-screeh.sh ~/.local/bin/
  ```
4. Test by running ```swap-screeh.sh```, then bind this command to a hot-key.  For example I bind it to an extra side-button on my mouse using Keyboard Shortcuts settings in Ubuntu Gnome Desktop.
