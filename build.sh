#!/usr/bin/env bash
docker build --progress=plain -t vegansk/sbt-node-rust:11.0.10_1.4.9_20.11.0_1.73.0-psql -f ./docker/Dockerfile .
