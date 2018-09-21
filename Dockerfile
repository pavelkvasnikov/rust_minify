FROM tatsushid/tinycore:9.0-x86_64
WORKDIR minifier
ADD . /target/release
# CMD ./rust_minifer