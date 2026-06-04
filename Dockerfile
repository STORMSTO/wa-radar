FROM ghcr.io/puppeteer/puppeteer:latest
USER root
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=false
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/google-chrome-stable
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
CMD ["node", "index.js"]
