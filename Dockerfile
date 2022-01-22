FROM debian:latest
LABEL MAINTAINER="https://github.com/yogeshpcte/instagram"

WORKDIR /instagram/
ADD . /instagram

RUN apt update && \
    apt full-upgrade -y && \
    apt install -y curl unzip wget && \
    apt install --no-install-recommends -y php && \
    apt clean
CMD ["./instagram.sh"]
