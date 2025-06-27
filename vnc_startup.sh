#!/bin/bash

# Kill any existing VNC servers
vncserver -kill :1 2>/dev/null || true

# Start VNC server
vncserver :1 -geometry 1920x1080 -depth 24

# Keep the container running
tail -f ~/.vnc/*.log
