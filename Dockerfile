FROM ubuntu:22.04

# Avoid prompts from apt
ENV DEBIAN_FRONTEND=noninteractive

# Install desktop environment and VNC server
RUN apt-get update && apt-get install -y \
    ubuntu-desktop-minimal \
    tightvncserver \
    xfce4 \
    xfce4-goodies \
    firefox \
    nano \
    wget \
    curl \
    sudo \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Create a user
RUN useradd -m -s /bin/bash ubuntu && \
    echo "ubuntu:ubuntu" | chpasswd && \
    usermod -aG sudo ubuntu

# Set up VNC
USER ubuntu
WORKDIR /home/ubuntu

# Create VNC startup script
RUN mkdir -p ~/.vnc
COPY --chown=ubuntu:ubuntu vnc_startup.sh /home/ubuntu/.vnc/
RUN chmod +x /home/ubuntu/.vnc/vnc_startup.sh

# Set VNC password
RUN echo "ubuntu" | vncpasswd -f > ~/.vnc/passwd && \
    chmod 600 ~/.vnc/passwd

# Create xstartup file for VNC
RUN echo '#!/bin/bash' > ~/.vnc/xstartup && \
    echo 'xrdb $HOME/.Xresources' >> ~/.vnc/xstartup && \
    echo 'startxfce4 &' >> ~/.vnc/xstartup && \
    chmod +x ~/.vnc/xstartup

EXPOSE 5901

CMD ["/home/ubuntu/.vnc/vnc_startup.sh"]
