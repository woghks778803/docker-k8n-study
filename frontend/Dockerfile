FROM node:alpine as builder
WORKDIR /var/www/frontend
COPY package.json ./
RUN npm install
COPY ./ ./
RUN npm run build

FROM nginx
EXPOSE 3000
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /var/www/frontend/build /usr/share/nginx/html