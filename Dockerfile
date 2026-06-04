FROM ghcr.io/puppeteer/puppeteer:latest
USER root
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=false
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
CMD ["node", "index.js"]
