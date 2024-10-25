FROM node:18-alpine
RUN apk add --no-cache libc6-compat
WORKDIR /app
EXPOSE 3000
COPY package.json package-lock.json ./
RUN npm install
COPY . ./
ENV HOSTNAME="0.0.0.0"
CMD ["npm", "run", "preview"]
