FROM spapanik/django-api:2.1.0

USER root

RUN dnf makecache --refresh && \
    dnf --assumeyes --nodocs --setopt install_weak_deps=False install gettext nodejs npm && \
    dnf --assumeyes clean all

USER ${DJANGO_USER}
