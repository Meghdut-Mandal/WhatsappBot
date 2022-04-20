FROM node:14-stretch

RUN apt -y update && apt -y install ca-certificates ffmpeg libwebp-dev
RUN  ffmpeg -version && ffmpeg -decoders && ffmpeg -encoders
WORKDIR /

COPY package.json /BotsApp/package.json
COPY package-lock.json /BotsApp/package-lock.json

WORKDIR /BotsApp
RUN npm install

COPY . /BotsApp
CMD [ "npm", "start"]