# SSHBot

Easily access your servers using **SSH over a Telegram Bot**.  
Written in **Python**, designed for fast, interactive, and secure remote server access.

---

## 🚀 What is SSHBot?

**SSHBot** allows you to open and control SSH sessions directly from Telegram.  
No terminal, no VPN hopping — just your Telegram app.

It supports interactive shells, keyboard shortcuts, and command combinations, making it suitable for real server administration.

---

## ✨ Features

- 🔐 SSH access over Telegram
- ⌨️ Interactive terminal rendering
- 🧠 Keyboard combinations via commands:
  - `/ctrl c` → Ctrl + C
  - `/alt a` → Alt + A
  - `/shift x` → Shift + X
  - `/ctrl alt c` → Ctrl + Alt + C
- 🛑 Stop SSH sessions instantly
- 🧹 Automatically removes sensitive messages (like passwords)
- 🌍 English & Persian friendly
- ⚙️ Runs as a systemd service
- 🐧 Optimized for Linux servers

---

## 🤖 Sample Bot

Try the demo bot here:  
👉 **https://t.me/ssh4ccess_bot**

> ⚠️ This is a demo bot. Sessions may be limited or reset at any time.

---

## 📥 Installation (One-Line)

Run this command on your server:

```bash
bash <(curl -Ls https://github.com/ItzGlace/SSHBot/raw/refs/heads/main/install.sh)
```

---

## 🐳 Docker Compose

Run `SSHBot` inside a container instead of installing it system-wide. Docker Compose builds the Python environment, keeps the original dependencies, and exposes logs via a named volume.

1. Copy the environment template and add your Telegram bot token:

   ```bash
   cp .env.example .env
   # then edit .env and set BOT_TOKEN to your token
   ```

2. Build the image and start the service:

   ```bash
   docker compose up -d --build
   ```

3. Follow the logs while the bot starts:

   ```bash
   docker compose logs -f sshbot
   ```

4. Stop and remove containers with:

   ```bash
   docker compose down
   ```

### Logs & Persistence

- Logs are written to `/var/log/ssh-bot` inside the container and persisted in the `sshbot-logs` volume declared in `docker-compose.yml`.
- To inspect the logs from the host, mount a path as shown in the compose file (`volumes` section) or run `docker compose logs -f sshbot`.

Make sure `BOT_TOKEN` is populated in your `.env` file before starting the service — Docker Compose still needs that secret to function.
