Telegram MTProto proxy docker image supporting docker secrets
===

A slightly modified original mtproto image with the ability
to pass `SECRET` env variable via [docker secrets](https://docs.docker.com/engine/swarm/secrets/).

### Example of docker-compose.yml

To pass `SECRET` env use a special `X_SECRET_FILE` variable pointing to secret file mounted by docker secrets feature.

```yml
version: "3.1"

services:
  mtproto:
    image: petrovalexander/mtproto-docker-secrets
    environment:
      X_SECRET_FILE: /run/secrets/proxy_secrets
    secrets:
      - proxy_secrets

secrets:
  proxy_secrets:
    file: ./secrets/proxy_secrets
```

When no such variable is provided, then standard mtproto mechanism with creating a new one will be used.

### License

[MIT](http://opensource.org/licenses/MIT)

Copyright (c) 2019-present, "Petrov Aleksandr" <petrov.aa@phystech.edu>
