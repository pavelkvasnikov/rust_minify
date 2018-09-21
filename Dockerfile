FROM debian
# FROM alpine:3.8
WORKDIR minifier
ADD . minifier
ENV ROCKET_ENV production
ENV ROCKET_ADDRESS 0.0.0.0
ENV ROCKET_PORT 8000
EXPOSE 8000
CMD ["minifier/bin/rust_minify"]