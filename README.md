# Ubuntu GUI in Docker

Run a full Ubuntu desktop environment inside a Docker container, accessible via **VNC** or **noVNC**. Ideal for testing, development, or lightweight desktop access without installing a full OS.


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

## Build and Run Locally

Clone the repository:
```bash
git clone https://github.com/ZayanMuhammed/ubuntu-gui-docker.git
cd ubuntu-gui-docker
```

Build the Docker image:
```bash
docker build -t ubuntu-gui .
```

Run the container:
```bash
docker run -d -p 5900:5900 -p 6080:80 ubuntu-gui
```

Access the desktop environment as described above.

## 🔐 Access Credentials

Username: ubuntu

Password: ubuntu

## 🧪 Customization

VNC Password: Modify the vnc_startup.sh script to set a custom password.

Desktop Environment: Customize the Dockerfile to install different desktop environments or applications.

📄 License

Distributed under the MIT License. See LICENSE for more information.

>[!CAUTION]
>This setup is intended for development and testing purposes only. For production environments, consider using more robust solutions.



