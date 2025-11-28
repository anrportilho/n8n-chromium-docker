# N8N com Chromium para Puppeteer

Imagem customizada do N8N com Chromium pré-instalado para usar com n8n-nodes-puppeteer.

## Como usar no EasyPanel

1. Crie um novo serviço
2. Escolha "GitHub" como source
3. Conecte este repositório
4. Adicione as variáveis de ambiente:
```
   N8N_PROXY_HOPS=1
   PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
   PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser
```

## Baseado em

- n8n versão: 1.121.3
- Chromium: latest (Alpine)
