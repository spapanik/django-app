FROM spapanik/django-api:2.0.0

USER root

RUN dnf --assumeyes --nodocs --setopt install_weak_deps=False install gettext nodejs npm && \
    dnf --assumeyes clean all

USER ${DJANGO_USER}

RUN npm config set prefix '~/.local/' && \
    npm install -g sass
