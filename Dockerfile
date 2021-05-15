FROM node:alpine AS setup-stage
WORKDIR /app
RUN yarn global add @quasar/cli
COPY package*.json ./
RUN yarn
COPY ./ ./
EXPOSE 8080

FROM develop-stage AS build-stage
RUN quasar build -m pwa

FROM nginx:stable-alpine AS production-stage
COPY --from=build-stage /app/dist/pwa /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
