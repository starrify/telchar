FROM ubuntu:18.04
WORKDIR /build
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y git curl lsb-core sudo python tzdata
RUN git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
ENV PATH="${PATH}:/build/depot_tools"
RUN curl 'https://chromium.googlesource.com/chromium/src/+/master/build/install-build-deps.sh?format=TEXT' | base64 -d > install-build-deps.sh
RUN bash install-build-deps.sh --no-prompt --no-chromeos-fonts
