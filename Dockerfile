FROM node
ENV NODE_ENV=production
WORKDIR /app
COPY ["package.json", "package-lock.json", "./"]
RUN npm install
COPY . .

RUN npm run css:prod
CMD ["npm", "start"]

EXPOSE 8000
