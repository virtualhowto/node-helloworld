FROM node:latest

#Working directory in container
WORKDIR /user/src/app

#copy package*.json and then install dependecies 
COPY package*.json ./
#relates to section in package*.json 
RUN npm install --production

#copy app files
COPY . .

#Port to expose
EXPOSE 3000

#Start app - Referer to package*.json = start
CMD ["npm", "start"]
