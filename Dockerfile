#Use an official Node js run time as the base image 
FROM node:21-alpine

#set the working directory in the container
WORKDIR /app

#copy package.json and package-lock.json file to the working directory 
COPY package*.json ./   

#install dependencies
RUN npm install 

#copy the rest of the application code to the working directory 
COPY . . 

#Expose the port on which your Node.js app runs
EXPOSE 3000

#command to run your application
CMD ["npm","start"]
