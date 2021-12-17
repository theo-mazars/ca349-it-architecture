FROM node:16-alpine
WORKDIR /usr/src/app

COPY package.json .
COPY yarn.lock .

RUN yarn
RUN yarn global add prisma

COPY . .

RUN npx prisma generate
RUN yarn build

CMD ["yarn", "start"]
