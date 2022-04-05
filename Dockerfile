FROM httpd
RUN apt-get update -yq
RUN apt-get -yq install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash
RUN apt-get update -yq \
    && apt-get -yq install curl gnupg ca-certificates \
    && curl -L https://deb.nodesource.com/setup_12.x | bash \
    && apt-get update -yq \
    && apt-get install -yq \
        libvips-dev \
        libgtk-3-0 \
        libgbm-dev \
        libasound-dev \
        apache2 \
        vim \
        git \
        nodejs \
        libgtk2.0-0 \
        libgtk-3-0 \
        libgbm-dev \
        libnotify-dev \
        libgconf-2-4 \
        libnss3 \
        libxss1 \
        libasound2 \
        libxtst6 \
        xauth \
        xvfb \
    && mkdir /root/.cache \
    && mkdir /root/.cache/Cypress/ \
    && chmod -R 777 /root/.cache/ \
    && chmod -R 777 /root/.cache/Cypress/ \
    && npm install --save-dev @4tw/cypress-drag-drop \
    && npm install \
    && npm install cypress \
    && export CYPRESS_PORT=8080
