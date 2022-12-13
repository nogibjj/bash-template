## How To

Builds from Alpine Linux

* https://hub.docker.com/_/alpine

```
FROM alpine:latest
RUN apk update && apk add bash

WORKDIR /app
COPY phrase.sh /app
```

1. `docker build .`
2. `docker image ls`
3. `docker run -it --rm adaf5a928ce4`
4. Run it all `docker run -it --rm adaf5a928ce4 /bin/bash ./phrase.sh -c 4 -p foo`  
