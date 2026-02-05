FROM n8nio/n8n:latest

# تنظیمات فارسی
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV WEBHOOK_URL=https://n8n-bot-farsi.onrender.com
ENV GENERIC_TIMEZONE=Asia/Tehran
ENV N8N_PROTOCOL=https
ENV EXECUTIONS_DATA_PRUNE=true

EXPOSE 5678

CMD ["n8n", "start"]
