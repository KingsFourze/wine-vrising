# Wine-VRising
A V-Rising Game Server Container based on SteamCMD image with Wine
## Requirment
1. Linux OS (Tested on Debian 11)
2. Docker Engine
## Installation
1. [Install Docker](https://docs.docker.com/engine/install/) (skip if you have been installed)
2. Pull Image: `docker pull kingsfourze/wine-vrising:latest`
3. Create Folder For Server: `mkdir /vrising && mkdir /vrising/data && mkdir /vrising/server`
4. Run Container: `docker run -d --name vrising --restart=always -p 9876:9876/udp -p 9877:9877/udp -v /vrising/data:/data -v /vrising/server:/server kingsfourze/wine-vrising`
5. The startup process will takes about 5 minutes, and the first startup will takes 3 minutes more for downloading the server files, so please be patient.
## Docker Hub
- [Click Here](https://hub.docker.com/r/kingsfourze/wine-vrising)
