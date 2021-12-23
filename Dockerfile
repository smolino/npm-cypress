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
        nodejs
RUN mkdir /root/.cache
RUN chmod -R 777 /root/.cache/
RUN npm -g install cypress
