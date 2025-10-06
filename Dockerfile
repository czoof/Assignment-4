#Use Node.js to build the base image
FROM node:16

#Create the working directory
WORKDIR /app

#Copy package.json to the working directory
COPY package*.json ./

#Install dependencies inside the container
RUN npm install

#Copy all remaining application files into the container
COPY . .

#Send port 3000 so the app is accessible externally
EXPOSE 3000

#Start Node.js
CMD ["npm", "start"]
