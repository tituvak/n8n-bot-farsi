FROM node:20-alpine

# نصب N8N
RUN npm install -g n8n

# ایجاد کاربر غیر-root برای امنیت
RUN addgroup -g 1000 node && \
    adduser -u 1000 -G node -s /bin/sh -D node

# تغییر به کاربر غیر-root
USER node

# ایجاد پوشه‌های مورد نیاز
WORKDIR /home/node

# تنظیمات فارسی
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV WEBHOOK_URL=https://snb-bot-farsi.onrender.com
ENV GENERIC_TIMEZONE=Asia/Tehran
ENV N8N_PROTOCOL=https
ENV EXECUTIONS_DATA_PRUNE=true

# پورت N8N
EXPOSE 5678

# اجرای N8N
CMD ["n8n", "start"]
