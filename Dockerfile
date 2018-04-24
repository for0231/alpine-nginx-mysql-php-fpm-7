FROM alpine:3.7

RUN apk update \
  &&  apk add --no-cache --virtual .build-deps \
      nginx
  && apk del .build-deps


EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
