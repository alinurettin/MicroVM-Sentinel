FROM node:18-alpine
WORKDIR /app
COPY package.json ./
COPY src/ ./src/
COPY public/ ./public/
EXPOSE 6049
ENV PORT=6049 NODE_ENV=production
CMD ["node", "src/index.js"]
