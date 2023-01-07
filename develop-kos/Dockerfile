FROM ghcr.io/cepawiel/kos-sh4-toolchain:br-containers
# FROM ghcr.io/cepawiel/kos-sh4-toolchain:br-containers-GCC9
# FROM ghcr.io/cepawiel/kos-sh4-toolchain:br-containers-GCC4


# copy entire KOS folder into container
COPY KallistiOS /opt/toolchains/dc/kos

RUN cd /opt/toolchains/dc/kos \
	&& cp doc/environ.sh.sample environ.sh \
	# create link so environ.sh is sourced for interactive shells
	&& ln -s /opt/toolchains/dc/kos/environ.sh /etc/profile.d/kos.sh

# set BASH_ENV so it works for non interactive as well
ENV BASH_ENV="/opt/toolchains/dc/kos/environ.sh"

RUN echo Building KOS for $KOS_SUBARCH

SHELL ["/bin/bash", "-c"]
ENTRYPOINT ["/bin/bash", "-c"]
CMD ["bash"]

RUN cd /opt/toolchains/dc/kos && make
