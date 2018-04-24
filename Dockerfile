FROM alpine:3.7

RUN apk update && apk add \
  nginx



EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
