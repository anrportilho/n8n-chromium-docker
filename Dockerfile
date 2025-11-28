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
```

2. **No EasyPanel:**
   - Vá em **Services** → **Create Service**
   - Escolha **GitHub** como source
   - Conecte seu repositório
   - O EasyPanel vai buildar automaticamente

---

### **Opção 2: Build local e push para registry**

Se preferir, posso te mostrar como fazer o build localmente e usar no EasyPanel.

---

### **Opção 3: Solução temporária - Instalar via terminal**

Se precisar de uma solução **imediata**:

1. **Use a imagem normal:**
```
   n8nio/n8n:1.121.3
