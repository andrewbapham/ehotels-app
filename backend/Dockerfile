FROM node:lts-alpine
ENV NODE_ENV=production
RUN mkdir -p /usr/src/app
RUN mkdir -p /usr/src/app/backend
WORKDIR /usr/src/app/backend
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install --production --silent && mv node_modules ../
COPY . .
EXPOSE 3000
RUN chown -R node /usr/src/app
USER node
CMD ["node", "app.js"]
