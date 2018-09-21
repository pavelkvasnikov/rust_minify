FROM debian
# FROM alpine:3.8
WORKDIR minifier
ADD . minifier

EXPOSE 8000
CMD ["minifier/bin/rust_minify"]