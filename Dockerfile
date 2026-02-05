FROM node:20-alpine

# نصب N8N با نسخه پایدار
RUN npm install -g n8n@1.40.0

# تنظیمات فارسی
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV GENERIC_TIMEZONE=Asia/Tehran
ENV WEBHOOK_URL=https://snb-bot-farsi.onrender.com
ENV N8N_PROTOCOL=https

# پورت
EXPOSE 5678

# اجرا
CMD ["n8n", "start"]
