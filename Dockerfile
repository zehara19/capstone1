FROM node:16-alpine as build
WORKDIR /zehbuildapp
COPY package*.json /zehbuildapp/
RUN npm install
COPY . .
RUN npm run build
FROM nginx:latest
COPY --from=build /zehbuildapp/build/ /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
