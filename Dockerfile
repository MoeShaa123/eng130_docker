#FROM nginx
#LABEL MAINTAINER=mohamed
#COPY app /home/
#EXPOSE 80
#EXPOSE 3000
#RUN apt-get update
#RUN apt-get install -y
#RUN apt-get install software-properties-common -y
#RUN apt-get install npm -y
#CMD ["nginx", "-g", "daemon off;"]
#WORKDIR /home/app
#RUN npm install
#CMD ["npm", "start"]

FROM node

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install -g npm@7.20.6

COPY . .
# copy everything from current location to default location of WRK

EXPOSE 3000

CMD ["node", "app.js"]



# Let's build a bulti-stage production ready image

FROM node:alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install -g npm@7.20.6

COPY --from=app /usr/src/app /usr/src/app
# COPY --from=app does the magic here to compress the image
# COPY . .

EXPOSE 3000

CMD ["node", "app.js"]
