FROM node:20-slim

WORKDIR /app

COPY . .

RUN apt-get update && apt-get install -y \
    curl \
    iproute2 \
    ca-certificates \
    util-linux \
    htop \
    openssh-client \
    && rm -rf /var/lib/apt/lists/*

RUN chmod +x index.js && npm install

CMD ["node", "index.js"]
