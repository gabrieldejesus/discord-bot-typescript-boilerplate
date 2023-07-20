# discord-bot-typescript-boilerplate

🤖 NODE.TS - Start your next discord bot project in seconds.

## 🚀 Quick Start

**Clone repository**

```bash
git clone https://github.com/gabrieldejesus/discord-bot-typescript-boilerplate your-app-name
```

```bash
cd your-app-name
```

**Install dependencies**

```bash
npm install
```

**Environment**

Create environment variable files `.env` and `.env.dev` based on [.env.example](./.env.example) on project root folder

```bash
# linux / macOS
cp .env.example .env
cp .env.example .env.dev
```

```bash
# windows
copy .env.example .env
copy .env.example .env.dev
```

### 🦾 Development

Running the bot

```sh
npm run dev
```

### 🚀 Production

**With Docker**

```bash
docker build -t your-app-name .
docker run -it --rm -e BOT_TOKEN="YOUR TOKEN HERE" --name your-app-name your-app-name
```

**With Docker Compose**

```bash
docker compose up -d
```

**Without Docker**

Directly

```bash
npm run deploy
```

Manually

```bash
npm run build
```

Startup bot

```bash
npm run start
```
