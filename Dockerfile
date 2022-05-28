FROM rust:1.61-alpine

RUN USER=root cargo new --bin k8s
WORKDIR /k8s

ENV TZ=UTC

COPY ./Cargo.lock ./Cargo.lock
COPY ./Cargo.toml ./Cargo.toml

RUN cargo build --release
RUN rm src/*.rs

COPY ./src ./src

RUN rm ./target/release/deps/k8s*
RUN cargo install --path .

CMD ["k8s"]