# From base image node
FROM node:15

# Create app directory
WORKDIR /

# Compy package.json
COPY package*.json ./

# Install app dependencies
RUN npm install

#copy all files
COPY . .

# expose port
EXPOSE 3000

# start command as per package.json
CMD ["npm", "start"]