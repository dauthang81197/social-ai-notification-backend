FROM node:18-alpine

WORKDIR /social-ai-notification-backend

COPY ./dist ./dist
COPY package.json .
COPY yarn.lock .

RUN yarn install --frozen-lockfile && yarn cache clean

EXPOSE 8000

CMD ["yarn", "start:prod"]
