FROM node:18-alpine
WORKDIR /app
COPY ./*.json /app/
RUN npm install
#RUN npm audit fix --force
RUN yarn add react-scripts
RUN apk add --no-cache --virtual .build-deps build-base python3
COPY . .
EXPOSE 5000
CMD ["node", "index.js"]
## run start