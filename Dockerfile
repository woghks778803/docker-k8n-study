FROM node:alpine as builder

WORKDIR /var/www/html

COPY package.json ./

RUN npm install

COPY ./ ./

RUN npm run build

FROM nginx

COPY --from=builder /var/www/html/build /usr/share/nginx/html
