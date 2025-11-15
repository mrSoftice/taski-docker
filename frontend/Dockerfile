FROM node:18
WORKDIR /app

COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm ci

COPY . .
RUN npm run build

# Эта команда запустит встроенный сервер на Node.js, который будет раздавать
# содержимое директории /app/build на порте 8000

# с использованием docker compose данная команда уже не нужна
# Вместо нее используем command в .yml файле
# CMD ["npx", "-y", "http-server", "-p", "8000", "/app/build"]
