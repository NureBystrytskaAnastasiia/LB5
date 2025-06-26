# Взяти офіційний Node.js образ (легковаговий)
FROM node:18-alpine

# Створити робочу папку в контейнері
WORKDIR /app

# Копіюємо package.json та package-lock.json
COPY package*.json ./

# Встановлюємо залежності
RUN npm install

# Копіюємо увесь код додатка
COPY . .

# Відкриваємо порт, на якому додаток слухає (3000)
EXPOSE 3000

# Команда для запуску додатку
CMD ["node", "server.js"]
