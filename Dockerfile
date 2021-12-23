FROM httpd
RUN apt-get update -yq
RUN apt-get -yq install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash
RUN apt-get update -yq \
    && apt-get -yq install curl gnupg ca-certificates \
    && curl -L https://deb.nodesource.com/setup_12.x | bash \
    && apt-get update -yq \
    && apt-get install -yq \
        git
        xvfb
        libvips-dev
        libgtk-3-0
        libgbm-dev
        libasound-dev
        vim
        nodejs
RUN nmp -g install cypress
