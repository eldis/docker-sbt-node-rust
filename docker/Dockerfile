FROM hseeberger/scala-sbt:11.0.10_1.4.9_2.12.13

LABEL org.opencontainers.image.authors="Anatoly Galiulin <galiulin.anatoly@gmail.com>"

ENV NODE_VERSION=10.24.1-1nodesource1
ENV YARN_VERSION=1.22.5-1
ENV RUST_VERSION=1.54.0

RUN rm -rf /var/lib/apt/lists/* && \
  apt-get update && \
  apt-get install -y apt-transport-https pkg-config libssl-dev libglib2.0-dev libgtk2.0-dev libgtk-3-dev && \
  curl https://sh.rustup.rs -sSf | sh -s -- -y --profile minimal --default-toolchain $RUST_VERSION && \
  ( curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - ) && \
  ( echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list ) && \
  ( curl -sL https://deb.nodesource.com/setup_10.x | bash - ) && \
  apt-get install -y nodejs=$NODE_VERSION yarn=$YARN_VERSION build-essential && \
  rm -rf /var/lib/apt/lists/*

ENV PATH="/root/.cargo/bin:${PATH}"
