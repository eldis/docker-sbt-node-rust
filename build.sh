#!/usr/bin/env bash
docker build --progress=plain -t vegansk/sbt-node-rust:11.0.10_1.4.9_16.20.2_1.73.0 -f ./docker/Dockerfile .
