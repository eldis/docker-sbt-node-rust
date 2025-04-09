# docker-sbt-node-rust

Docker image for building scala, js and rust applications. Contains JDK, SBT,
NodeJS and Yarn. This image is based on
[hseeberger/scala-sbt](https://hub.docker.com/r/hseeberger/scala-sbt).

## Builds

Automated builds are available on [Dockerhub](https://hub.docker.com/r/vegansk/sbt-node-rust).

## Versioning

Tag versioning scheme: `A_B_C_D[-psql]`:

- `A` is JDK version
- `B` is SBT version
- `C` is NodeJS version
- `D` is rust version
- `psq` means presence of postgresql client
