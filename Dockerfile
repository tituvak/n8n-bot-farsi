FROM n8nio/n8n:1.40.0

# تنظیمات فارسی
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV GENERIC_TIMEZONE=Asia/Tehran
ENV WEBHOOK_URL=https://snb-bot-farsi.onrender.com

EXPOSE 5678

ENTRYPOINT ["n8n"]
CMD ["start"]
