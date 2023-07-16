FROM steamcmd/steamcmd:ubuntu-20

# update, setup timezone and install wget, python3
RUN mkdir /script && apt update && apt upgrade -y && apt install wget tzdata python3 -yq && \
	ln -fs /usr/share/zoneinfo/Asia/Hong_Kong /etc/localtime && dpkg-reconfigure -f noninteractive tzdata

# install wine and xvfb enviroment for running vrising server
RUN dpkg --add-architecture i386 && locale-gen en_US.UTF-8 && \
	mkdir -pm755 /etc/apt/keyrings && wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key && \
	wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/focal/winehq-focal.sources && \
	apt update && apt install --install-recommends winehq-stable xvfb -y && apt clean

# set working path
WORKDIR /script

# add scripts
ADD run.sh /script
ADD create_enviroment.py /script

# startup command
ENTRYPOINT ["/bin/bash"]
CMD ["/script/run.sh"]
