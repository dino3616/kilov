FROM debian:bullseye-slim

WORKDIR /kilov

# hadolint ignore=DL3008
RUN apt-get update \
    && apt-get --no-install-recommends -y install git gnupg2 gcc g++ \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists
