
#using Node v10
FROM node:10

#Work directory
WORKDIR /usr/src/app

#install app dependencies
#use a wildcard(*) to ensure both the package.json and the package-lock.json are copied
COPY package*.json ./

RUN npm i -g @angular/cli@v6-lts
RUN npm i
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

#expose port 4200 outside of container
EXPOSE 4200
#Command uised to start server
CMD ["ng", "serve", "--host", "0.0.0.0"]
