FROM hseeberger/scala-sbt:11.0.10_1.4.9_2.12.13

LABEL org.opencontainers.image.authors="Anatoly Galiulin <galiulin.anatoly@gmail.com>"

ENV NODESOURCE_VERSION=20.x
ENV NODE_VERSION=20.11.0-1nodesource1
ENV YARN_VERSION=1.22.19-1
ENV RUST_VERSION=1.73.0

RUN rm -rf /var/lib/apt/lists/* && \
  apt-get update && \
  apt-get install -y apt-transport-https pkg-config libssl-dev libglib2.0-dev libgtk2.0-dev libgtk-3-dev

RUN ( curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - ) && \
  ( echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list ) && \
  ( curl -sL https://deb.nodesource.com/setup_${NODESOURCE_VERSION} | bash - ) && \
  apt-get install -y nodejs=$NODE_VERSION yarn=$YARN_VERSION build-essential && \
  apt-get install -y postgresql-client libpq-dev

RUN curl https://sh.rustup.rs -sSf | sh -s -- -y --profile minimal --default-toolchain $RUST_VERSION && \
  rm -rf /var/lib/apt/lists/*

ENV PATH="/root/.cargo/bin:${PATH}"

RUN rustup component add rustfmt clippy

RUN cargo --locked install sqlx-cli@0.7.3 --no-default-features --features rustls,postgres --force
