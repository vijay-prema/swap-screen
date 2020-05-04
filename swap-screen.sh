#!/bin/bash

#   USAGE   ###################################################################
#
# 1. Install xdotool
#      e.g. 'sudo apt install xdotool'
# 2. Edit the settings below to match your screen setup
#      e.g. 'xrandr | grep " connected"' to find your values
# 4. Make the script executable if required
#      e.g. 'chmod +x swap-screen.sh'
# 3. Copy this script to somewhere on your path
#      e.g. 'cp swap-screeh.sh ~/.local/bin/'
# 4. Test by running 'swap-screeh.sh', then bind this command to a hot-key.
#

##   CHANGE THESE SETTINGS!!   ################################################
#
# Set according to your dual-screens dimensions and position
S1Width=3840
S1Height=2160
S1XPos=0
S1YPos=0
#
S2Width=1920
S2Height=1280
S2XPos=0
S2YPos=2160
#
# Set (1 or 0) if you want the window under the mouse to activate automatically
# apon switching screen
activatateWin=1
#
###############################################################################


# Check that xdotool is installed
command -v xdotool >/dev/null 2>&1 || { echo >&2 "xdotool not found. Install using 'sudo apt install xdotool'. Aborting."; exit 1; }

# Get the current mouse location and move the mouse to other screen
eval $(xdotool getmouselocation --shell)

if (( $X >= S1XPos && $X <= S1XPos + S1Width && $Y >= S1YPos && $Y <= S1YPos + S1Height))
then
	xdotool mousemove $((S2XPos + S2Width/2)) $((S2YPos + S2Height/2))
else
	xdotool mousemove $((S1XPos + S1Width/2)) $((S1YPos + S1Height/2))
fi

# Get the new mouse location and window under mouse pointer (returned to shell as $X, $Y and $WINDOW)
eval $(xdotool getmouselocation --shell)
# Activate the window
if (( activatateWin == 1 ))
then
	xdotool windowactivate $WINDOW
fi
