FROM node:14

# Create app directory
RUN mkdir -p /usr/app/src

WORKDIR /usr/app/src


# Bundle app source
COPY / /usr/app/src
RUN rm -rf /usr/app/src/node_modules

RUN rm /usr/app/src/.env

#server1
RUN mv /usr/app/src/.env.server1 /usr/app/src/.env
#server2
#RUN mv /usr/app/src/.env.server2 /usr/app/src/.env


# Install
RUN npm install

# Run
CMD ["npm", "start"]

