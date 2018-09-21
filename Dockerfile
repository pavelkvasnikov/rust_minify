FROM alpine:3.8
WORKDIR minifier
RUN apk add --no-cache curl && curl https://sh.rustup.rs -sSf | sh && rustup default nightly && rustup update && cargo update && cargo build --release
CMD target/release/rust_minifer