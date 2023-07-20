FROM node:lts-alpine AS builder
WORKDIR /var/bot

COPY package.json ./
RUN npm install

COPY . .

RUN npm run build

# RUNNER
FROM node:lts-alpine AS runner
WORKDIR /var/bot

COPY package.json ./
ARG NODE_ENV=production
RUN npm install

COPY --from=builder /var/bot/dist/ ./

RUN adduser -S bot
USER bot

ENTRYPOINT [ "node", "index.js" ]