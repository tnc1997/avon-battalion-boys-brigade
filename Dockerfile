ARG PROJECT="avon"

FROM node:12 as builder
WORKDIR /usr/src/app
COPY package.json ./
RUN npm install
COPY . .
ARG PROJECT
RUN npm run build -- --prod ${PROJECT}

FROM nginx:1
COPY default.conf /etc/nginx/conf.d
RUN rm -rf /usr/share/nginx/html/*
ARG PROJECT
COPY --from=builder /usr/src/app/dist/${PROJECT} /usr/share/nginx/html
ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]
