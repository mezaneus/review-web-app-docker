# using node.js base image
FROM node:14

# defining working directory
WORKDIR /app

# using the root user to execute the container image
USER root

# copying the node.js dependency file to the working directory or .
COPY package.json /app/

# installing npm for nodejs which is the nodejs dependency
RUN npm install

# copying all application files to the work directory
COPY . /app/

# exposing port number 3000 that was not defined in the base code.
EXPOSE 80

# excuting web application from the working directory /app at 
# the level of the container in which all files have been copied to.
CMD [ "node", "/app/server.js" ]
