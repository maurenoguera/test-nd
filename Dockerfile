FROM node:argon

# Create app directory
RUN mkdir -p /usr/src/app
#ojo
RUN mkdir -p /var/jenkins_home/jobs/test/workspace
#WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

EXPOSE 8081
CMD [ "npm", "start" ]
