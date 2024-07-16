# UNCOMMENT FOR DOCKER
FROM node:20.15.1
WORKDIR /app
COPY package.json .
RUN npm install
RUN npm i -g serve
COPY . .
RUN npm run build
EXPOSE 3000
CMD [ "serve", "-s", "dist" ]

# # UNCOMMENT FOR ACR
# FROM node:20.15.1
# WORKDIR /app
# COPY package.json .
# RUN npm install -g npm@10.8.2
# RUN npm install
# RUN npm i -g serve
# COPY . .
# RUN npm install -g vite
# RUN npm run build
# EXPOSE 3000
# CMD [ "serve", "-s", "dist" ]