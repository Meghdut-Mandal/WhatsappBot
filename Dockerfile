FROM princemendiratta/botsapp:latest

WORKDIR /

COPY . /BotsApp

WORKDIR /BotsApp

RUN npm install

# RUN cp -r /root/Baileys/lib /BotsApp/node_modules/@adiwajshing/baileys/

CMD [ "npm", "start"]