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
        xvfb
RUN mkdir /root/.cache
RUN mkdir /root/.cache/Cypress/
RUN chmod -R 777 /root/.cache/
RUN chmod -R 777 /root/.cache/Cypress/
RUN npm install --save-dev @4tw/cypress-drag-drop
RUN npm install
RUN npm install cypress
RUN export CYPRESS_PORT=8080
