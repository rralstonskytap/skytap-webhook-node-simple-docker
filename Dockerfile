FROM node:8
# Create app directory
WORKDIR /usr/src/app
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY skytap-webhook-node-simple/package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm install --only=production
COPY skytap-webhook-node-simple .
EXPOSE 8080

CMD [ "npm", "start" ]
