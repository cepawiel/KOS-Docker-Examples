# use GCC9
FROM ghcr.io/cepawiel/dreamcast-kos:br-containers
# FROM ghcr.io/cepawiel/dreamcast-kos:br-containers-GCC9

# use GCC4
# FROM ghcr.io/cepawiel/dreamcast-kos:br-containers-GCC4

# Install Ports
RUN git clone --recursive https://github.com/KallistiOS/kos-ports /opt/toolchains/dc/kos-ports \
	&& source /opt/toolchains/dc/kos/environ.sh \
	&& cd /opt/toolchains/dc/kos-ports \
	&& sh utils/build-all.sh