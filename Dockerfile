# Our node app is based on `18-alpine` image 
FROM node:18-alpine

# Setting up the environment variables needed:
ENV DOMAIN="http://localhost:3000" \
PORT=3000 \
STATIC_DIR="./client" \
PUBLISHABLE_KEY="pk_test_51P1pzjSBrkUldytvyP3qhHf9Nd0zkv3PrPmQ5sfcD7hFQI1LXCJrmExsGshgBQpzNVkgOrSNWkoPj0j55AMluSvD009XLO29r3" \
SECRET_KEY="sk_test_51P1pzjSBrkUldytvOBricr38kKQQTgcRqXT01zVLToUk4QtmGNIJOcAgHomqz2I6fHGikjlkQEduMgYGkHefNKg000QQuPM8JV"

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]
