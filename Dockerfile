FROM node:18-alpine
WORKDIR /app
COPY ./*.json /app/
RUN npm install
#RUN npm audit fix --force
RUN yarn add react-scripts
COPY . .
EXPOSE 5000
CMD ["node", "app.js"]
## run start
