# Ubuntu GUI in Docker

Run a full Ubuntu desktop environment inside a Docker container, accessible via **VNC** or **noVNC**. Ideal for testing, development, or lightweight desktop access without installing a full OS.

![Ubuntu GUI in Docker](https://hub.docker.com/r/dorowu/ubuntu-desktop-lxde-vnc/)

---

## 🚀 Features

- 🖥️ Full Ubuntu desktop environment (LXDE)
- 🔐 Secure access via VNC or noVNC
- 🧪 Lightweight and isolated environment
- 🧩 Easy to set up and use

---

## 🛠️ Requirements

- ✅ Docker installed on your system
- ✅ VNC client (for VNC access)
- ✅ Web browser (for noVNC access)

---

## ⚙️ Usage

### Option 1: Run with Docker

```bash
docker run -d -p 5900:5900 -p 6080:80 dorowu/ubuntu-desktop-lxde-vnc

