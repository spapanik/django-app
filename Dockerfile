FROM spapanik/django-api:1.4.0

USER root

RUN apt-get update -y && \
    apt-get install -y \
            gettext \
            nodejs \
            npm

USER ${DJANGO_USER}

RUN npm config set prefix '~/.local/' && \
    npm install -g sass
