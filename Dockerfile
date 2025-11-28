FROM n8nio/n8n:1.121.3

USER root

# Instalar Chromium e dependências
RUN apk update && apk add --no-cache \
    chromium \
    nss \
    freetype \
    freetype-dev \
    harfbuzz \
    ca-certificates \
    ttf-freefont \
    font-noto-emoji

# Configurar Puppeteer para usar Chromium
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser \
    CHROME_BIN=/usr/bin/chromium-browser \
    CHROME_PATH=/usr/bin/chromium-browser

USER node
WORKDIR /home/node

# Garantir que o Puppeteer encontre o Chromium
RUN mkdir -p /home/node/.cache/puppeteer
